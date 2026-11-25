# 第三方组件许可证汇总（THIRD-PARTY LICENSES）

本项目分发包含以下第三方组件。各组件的版权与许可归其原作者所有，
本项目仅按各自许可条款进行分发。**请在使用、再分发前阅读对应许可证原文。**

---

## 一、核心运行时组件

| 组件 | 用途 | 许可证 | 项目地址 |
|---|---|---|---|
| **Wine** | Windows API 兼容层 | LGPL-2.1 | https://www.winehq.org/ |
| **Box86 / Box64** | x86/x86_64 → ARM 指令翻译 | MIT | https://github.com/ptitSeb/box64 |
| **PRoot** | 用户态 chroot | GPL-2.0 | https://proot-me.github.io/ |
| **Mesa (Turnip / Zink / VirGL)** | OpenGL / Vulkan 驱动 | MIT | https://www.mesa3d.org/ |
| **DXVK** | Direct3D 9/10/11 → Vulkan | zlib | https://github.com/doitsujin/dxvk |
| **VKD3D** | Direct3D 12 → Vulkan | LGPL-2.1 | https://gitlab.winehq.org/wine/vkd3d |
| **CNC DDraw** | DirectDraw 兼容层 | MIT | https://github.com/FunkyFr3sh/cnc-ddraw |

## 二、字体

| 组件 | 许可证 | 说明 |
|---|---|---|
| **WenQuanYi Micro Hei** | GPL-2.0 + 字体嵌入例外 | 文泉驿微米黑，开源中文字体 |
| **Microsoft YaHei（msyh.ttf）** | Microsoft 专有许可 | ⚠️ **见下方重要提示** |

> ⚠️ **关于微软雅黑的重要提示**
>
> `msyh.ttf` 是微软公司的专有字体，**不允许随软件再分发**。
> 本项目的上游分发包中存在该文件，本项目沿用未作改动。
>
> **再分发者注意**：若你要公开分发本项目，建议**移除 `assets/fonts/msyh.ttf`**，
> 仅保留 GPL 授权的 `wqy-microhei.ttf`，以避免字体版权风险。
> 代码已做回退处理：缺少 msyh.ttf 时使用 wqy-microhei 代替。

## 三、Android 库

| 组件 | 许可证 |
|---|---|
| AndroidX（appcompat / preference / recyclerview 等） | Apache-2.0 |
| Material Components for Android | Apache-2.0 |
| zstd-jni | BSD-2-Clause |
| XZ for Java (org.tukaani:xz) | Public Domain |
| Apache Commons Compress | Apache-2.0 |

## 四、本项目自身

| 项目 | 许可证 |
|---|---|
| 无忧 Winlator 修改部分 | LGPL-2.1（与上游一致） |
| 应用图标 | 本项目原创，随项目以 LGPL-2.1 分发 |

---

## 五、合规建议

如果你要**基于本项目再分发**，请注意：

1. 保留本文件与 `LICENSE` 全文
2. 保留源码中所有原始版权声明与「已修改」标注
3. 考虑移除 `assets/fonts/msyh.ttf`（微软专有字体）
4. Wine / PRoot / VKD3D 等 LGPL/GPL 组件的修改（如有）必须开源
5. 不得移除任何组件的版权声明
