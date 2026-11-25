# 修改清单（CHANGES）

本文件逐项列出对上游 Winlator 的修改，用于满足 LGPL-2.1 关于
「修改过的文件应携带醒目声明并说明修改内容」的义务。

修改者：wuyouxiaokang &lt;3266636647@qq.com&gt;
修改起始：2026-11-25

所有修改过的原有文件，文件头部均已附「已修改 (MODIFIED)」声明。

---

## 一、修改过的原有文件

以下文件来自上游 Winlator，本项目对其进行了修改。修改后的版本同样以
**LGPL-2.1** 开放。

| 文件 | 修改内容 |
|---|---|
| `com/winlator/MainActivity.java` | 注入 `WlCrash` 崩溃捕获；启动时显示 `WlAbout` 说明弹窗；Fragment 转场改用 `wl_*` 动画 |
| `com/winlator/XServerDisplayActivity.java` | 新增虚拟键盘相关方法（`wlShowKeyboard` / `wlHideKeyboard` / `wlSendText` / `wlGetHiddenInput` / `wlAddKeyboardButton`）；挂载 `WlHiddenEditText`；菜单「键盘」改为调用自实现路径；启动时应用中文字体补丁与桌面快捷方式 |
| `com/winlator/renderer/GLRenderer.java` | 新增文本输入状态检测（`wlPollTextCursor` / `wlCheckTextCursor` / `wlOnCursorChanged` / `wlWriteState`），依据 X11 光标形状判断是否进入输入态 |
| `com/winlator/widget/TouchpadView.java` | 新增三指轻点回调与触摸时文本态检测 |
| `com/winlator/widget/InputControlsView.java` | 新增「落点就近触发键位」吸附逻辑（`wlSnapEnabled` / `wlNearestElement`） |
| `com/winlator/xserver/Keyboard.java` | 配合 keysym 注入路径的小幅调整 |
| `com/winlator/xserver/InputDeviceManager.java` | 配合文本注入的调试钩子 |

---

## 二、本项目新增的文件

以下文件为**新增的独立文件**，版权归本项目作者所有，同样以 LGPL-2.1 开放
（便于整体分发与合规）。

### Java 源码（`source/java-new/`）

| 文件 | 作用 |
|---|---|
| `com/wuyou/WlAbout.java` | 首次启动说明（二级界面）与使用教程（三级界面） |
| `com/wuyou/WlHiddenEditText.java` | 隐藏输入框，通过 `TextWatcher` 采集已确认文本（含组合态过滤） |
| `com/wuyou/WlImeBridge.java` | 文本出口接口定义 |
| `com/wuyou/WlImeBridgeSink.java` | 接口实现，转发到 Activity |
| `com/wuyou/WlKeyboardHelper.java` | 键盘显隐控制 |
| `com/wuyou/WlTextInjector.java` | 文本注入（X11 keysym 路径，含焦点跟随） |
| `com/wuyou/WlLog.java` | 文件日志（用于无 logcat 环境排查） |

### 资源文件

| 路径 | 作用 |
|---|---|
| `res/values-zh/strings.xml` | 简体中文字符串（470 条） |
| `res/values-zh-rTW/strings.xml` | 繁体中文字符串 |
| `res/anim/wl_*.xml` | 18 个界面动画 |
| `res/drawable/wl_*.xml` | 15 个界面绘制资源 |
| `res/layout/wl_*.xml` | 闪屏、横幅、HUD 布局 |
| `assets/fonts/*.ttf` | 中文字体（WenQuanYi Micro Hei / 微软雅黑） |
| `assets/wine_startmenu.json` | 中文开始菜单 |
| `res/mipmap-*/ic_launcher*.png` | 应用图标（本项目原创，见下方声明） |

### 构建与校验脚本（`source/tools/`）

| 文件 | 作用 |
|---|---|
| `verify_invokes.py` | 校验 invoke 寄存器数量与目标签名 |
| `verify_access.py` | 校验跨类字段访问权限 |
| `verify_field_types.py` | 校验字段赋值类型兼容性 |

---

## 三、开发过程中修复的上游缺陷

以下问题在原始分发包中即存在，本项目已修复：

| 问题 | 现象 | 原因 |
|---|---|---|
| `TouchpadView.handleFingerUp` 校验失败 | 容器启动即崩溃 | 手写 smali 时 `.registers` 改为 `.locals` 导致寄存器映射错位 |
| `WlKeyboardTap` 类型校验失败 | 容器启动即崩溃 | `instance-of` 后接 `check-cast`，ART 不认可类型收窄 |
| `Lambda12` 方法被覆盖 | `NoSuchMethodError` | 新增类与已有合成类同名，覆盖了 `extractDXWrapperFiles` 的监听器 |

---

## 四、图标版权声明

`res/mipmap-*/ic_launcher*.png` 为本项目**原创作品**，
由纯几何图形（圆角矩形、圆形、线段）程序化生成，
**未使用任何第三方图像素材、字体或商业图标**，不存在版权争议。

生成脚本见 `source/tools/gen_icon.py`，可自行运行复现。

---

## 五、未修改的文件

`smlai/` 下除上表所列之外的所有文件，均与上游分发包保持一致，未作修改。

---

## 六、包名变更（v15.1）

自 v15.1 起，包名由 `com.winlator` 改为 **`com.wuyouwin`**，原因：

1. 避免与上游 Winlator 及其他分支的包名冲突
2. 遵循 GPL/LGPL 项目「衍生版不应冒用原项目身份」的惯例
3. 便于用户区分官方版与本修改版

迁移范围（全部已完成）：

| 项 | 变更 |
|---|---|
| `AndroidManifest.xml` | `package="com.wuyouwin"`，所有组件名同步 |
| smali 源码 | `com/winlator/` → `com/wuyouwin/`（3213 个文件） |
| 资源布局 | 自定义 View 全限定名同步替换 |
| FileProvider authority | `com.wuyouwin.FileProvider` |
| 通知 action | `com.wuyouwin.action.ENSURE_FOREGROUND` |

**未变更**：`/data/data/com.winlator/storage` 这一内部路径字符串保持不变，
用于兼容已存在的容器数据（升级时不丢失）。

> 注意：由于包名和签名均与原版不同，安装时需先卸载旧版 `com.winlator`。
