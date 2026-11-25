# 构建说明（BUILDING）

本文件用于满足 LGPL-2.1 关于「提供可复现构建环境」的义务：
任何人依据本文件，可以从本仓库源码完整重建出与本项目发布的功能相同的 APK。

---

## 一、为什么采用「反编译源码 + 重打包」的方式

上游 Winlator 在 **v11.1.0 之后不再公开完整的 app 应用层源码**
（仓库仅保留 native 组件）。因此无法直接 `git clone` 上游并编译出本项目的分发包。

本项目采用的方式是：

```
上游分发包 APK
   └─ apktool 反编译 → smali 源码（本仓库 source/smali/）
          ├─ 加入本项目新增代码（source/java-new/，以 Java 编写后 d8 编成 dex）
          └─ 重新汇编 → 重签名 → APK
```

`source/smali/` 即为本分发包的**完整对应源代码**，可直接汇编回 dex 并重建 APK。

---

## 二、环境需求

| 工具 | 版本 | 用途 |
|---|---|---|
| JDK | 17+ | 运行 apktool / d8 / apksigner |
| apktool | 2.9.3 | 反编译与资源编译（需 aarch64 版 aapt2） |
| Android SDK Build-Tools | 33.0.3+ | `aapt2`、`zipalign`、`apksigner` |
| `android.jar` | API 30（Android 11） | 编译新增 Java 代码 |
| smali/baksmali | 2.5.2 | smali ↔ dex |
| d8 | Build-Tools 内置 | Java class → dex |

> **注意**：aapt2 / zipalign 需与构建机架构匹配。
> 在 ARM64 设备上构建时，需使用 aarch64 版 build-tools（官方 build-tools 为 x86-64，
> 可用社区移植的 aarch64 版本替代）。

---

## 三、目录准备

从你持有的、与本仓库对应的上游分发版 APK 开始：

```bash
# 1. 反编译得到 smali 与资源
apktool d -f base.apk -o work/

# 2. 用本仓库的源码覆盖
cp -r source/smali/*      work/smali/
cp -r source/res/*        work/res/
cp    source/AndroidManifest.xml work/AndroidManifest.xml
```

---

## 四、编译新增的 Java 代码

`source/java-new/` 下的类需要先编译为 dex：

```bash
# 1. 编译（需 android.jar）
javac --release 8 -encoding UTF-8 \
      -cp android.jar \
      -d out/classes \
      source/java-new/com/wuyou/*.java \
      source/java-new/stub/**/*.java

# 2. 转 dex
d8 --min-api 26 --lib android.jar \
   --output out/dex \
   $(find out/classes/com/wuyou -name '*.class')
```

> `stub/` 目录下的 `com.winlator.*` 类仅用于编译期通过，
> **不要**把它们打进最终 dex（真实类已存在于 smali 源码中）。

---

## 五、汇编 smali 并合并

```bash
# 1. smali 源码汇编为 dex
smali a work/smali -o out/main.dex

# 2. 合并主 dex 与新增类 dex
d8 --min-api 26 --lib android.jar \
   --output out/merged \
   out/main.dex out/dex/classes.dex
```

---

## 六、打包与签名

```bash
# 1. 以原始 APK 为底，替换 classes.dex 与图标资源
mkdir pack && cd pack
unzip -o ../base.apk
rm -f classes.dex
cp ../out/merged/classes.dex .
zip -q -r -X ../unsigned.apk . -x 'META-INF/*'

# 2. 对齐与签名
zipalign -f -p 4 ../unsigned.apk ../aligned.apk
apksigner sign --ks my.keystore --ks-key-alias KEY \
              --out ../app-release.apk ../aligned.apk

# 3. 校验签名
apksigner verify ../app-release.apk
```

> **签名说明**：本项目发布版使用项目自有密钥签名。
> 由于签名不同，安装时需先卸载其他来源的同包名版本。

---

## 七、构建校验（推荐）

本仓库提供两个静态校验脚本，可在打包前发现绝大多数 smali 手写错误：

```bash
# 校验 invoke 指令的寄存器数量与目标方法签名是否匹配
python3 source/tools/verify_invokes.py out/merged/classes.dex

# 校验跨类字段访问权限是否合法
python3 source/tools/verify_access.py work/smali/
```

这两个脚本覆盖了实际开发中反复出现的崩溃类型：
- 寄存器数量与签名不符（`VerifyError: expected N argument registers`）
- 非法访问 private/package 字段（`IllegalAccessError`）

此外强烈建议用 `d8` 做一次完整校验：

```bash
d8 --min-api 26 --lib android.jar --output /tmp/check out/merged/classes.dex
```

---

## 八、已知构建注意事项

1. **`move-exception` 陷阱**：smali 中同一个 catch handler 不能出现两个 `move-exception`，
   且它必须是 handler 的第一条指令。否则 ART 校验器会拒绝整个类。
2. **字段类型必须匹配**：把 `TextView` 实例赋给 `Button` 类型字段会导致
   `VerifyError: register has type TextView but expected Button`。
3. **`Editable.delete` 返回值**：签名为 `delete(II)Landroid/text/Editable;`，不是 `void`。
4. **渲染线程不可做文件 IO**：渲染循环中未保护的 IO 异常会导致容器闪退。

以上问题在本项目开发过程中均实际发生过，详见 [CHANGES.md](CHANGES.md)。
