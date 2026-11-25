# ============================================================================
# 已修改 (MODIFIED) - 无忧win虚拟机 / Wuyou Winlator Mod
# 修改者: wuyouxiaokang  <3266636647@qq.com>
# 修改日期: 2026-11-25
# 本项目: https://github.com/wuyouxiaokang/wuyou-winlator
#
# 本文件源自 Winlator (https://github.com/brunodev85/winlator)
# 原始版权: Copyright (c) BrunoSX / brunodev85
# 原始许可证: GNU Lesser General Public License v2.1 (见 LICENSE)
#
# 修改内容: 见仓库 CHANGES.md 中对应条目。主要涉及虚拟键盘接入、中文适配、
#           UI 增强等，均以 LGPL-2.1 同样条款开放。
# ============================================================================
.class public Lcom/winlator/xserver/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/xserver/Keyboard$OnKeyboardListener;
    }
.end annotation


# instance fields
.field private final keycodeMap:[Lcom/winlator/xserver/XKeycode;

.field public final keysyms:[I

.field private final modifiersMask:Lcom/winlator/core/Bitmask;

.field private final onKeyboardListeners:Ljava/util/ArrayList;

.field private final pressedKeys:Landroidx/collection/ArraySet;

.field private final xServer:Lcom/winlator/xserver/XServer;


# direct methods
.method public static synthetic $r8$lambda$BizGNC5IajwBigS9oCBeZtOuH5M(Lcom/winlator/xserver/Keyboard;Lcom/winlator/xserver/XKeycode;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/xserver/Keyboard;->lambda$onKeyEvent$0(Lcom/winlator/xserver/XKeycode;)V

    return-void
.end method

.method public constructor <init>(Lcom/winlator/xserver/XServer;)V
    .locals 1
    .param p1, "xServer"    # Lcom/winlator/xserver/XServer;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0xf8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/winlator/xserver/Keyboard;->keysyms:[I

    .line 19
    new-instance v0, Lcom/winlator/core/Bitmask;

    invoke-direct {v0}, Lcom/winlator/core/Bitmask;-><init>()V

    iput-object v0, p0, Lcom/winlator/xserver/Keyboard;->modifiersMask:Lcom/winlator/core/Bitmask;

    .line 20
    invoke-static {}, Lcom/winlator/xserver/Keyboard;->createKeycodeMap()[Lcom/winlator/xserver/XKeycode;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/xserver/Keyboard;->keycodeMap:[Lcom/winlator/xserver/XKeycode;

    .line 21
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/winlator/xserver/Keyboard;->pressedKeys:Landroidx/collection/ArraySet;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winlator/xserver/Keyboard;->onKeyboardListeners:Ljava/util/ArrayList;

    .line 32
    iput-object p1, p0, Lcom/winlator/xserver/Keyboard;->xServer:Lcom/winlator/xserver/XServer;

    .line 33
    return-void
.end method

.method public static createKeyboard(Lcom/winlator/xserver/XServer;)Lcom/winlator/xserver/Keyboard;
    .locals 5
    .param p0, "xServer"    # Lcom/winlator/xserver/XServer;

    .line 252
    new-instance v0, Lcom/winlator/xserver/Keyboard;

    invoke-direct {v0, p0}, Lcom/winlator/xserver/Keyboard;-><init>(Lcom/winlator/xserver/XServer;)V

    .line 253
    .local v0, "keyboard":Lcom/winlator/xserver/Keyboard;
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_ESC:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xff1b

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 254
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_ENTER:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xff0d

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 255
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_RIGHT:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xff53

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 256
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_UP:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xff52

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 257
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_LEFT:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xff51

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 258
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_DOWN:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xff54

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 259
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_DEL:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffff

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 260
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_BKSP:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xff08

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 261
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_INSERT:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xff63

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 262
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_PRIOR:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xff55

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 263
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_NEXT:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xff56

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 264
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_HOME:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xff50

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 265
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_END:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xff57

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 266
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_SHIFT_L:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffe1

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 267
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_SHIFT_R:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffe2

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 268
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_CTRL_L:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffe3

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 269
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_CTRL_R:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffe4

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 270
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_ALT_L:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffe7

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 271
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_ALT_R:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffe8

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 272
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_TAB:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xff09

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 273
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_SPACE:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2, v2}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 274
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_A:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x61

    const/16 v4, 0x41

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 275
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_B:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x62

    const/16 v4, 0x42

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 276
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_C:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x63

    const/16 v4, 0x43

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 277
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_D:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x64

    const/16 v4, 0x44

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 278
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_E:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x65

    const/16 v4, 0x45

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 279
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_F:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x66

    const/16 v4, 0x46

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 280
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_G:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x67

    const/16 v4, 0x47

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 281
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_H:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x68

    const/16 v4, 0x48

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 282
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_I:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x69

    const/16 v4, 0x49

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 283
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_J:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x6a

    const/16 v4, 0x4a

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 284
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_K:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x6b

    const/16 v4, 0x4b

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 285
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_L:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x6c

    const/16 v4, 0x4c

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 286
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_M:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x6d

    const/16 v4, 0x4d

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 287
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_N:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x6e

    const/16 v4, 0x4e

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 288
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_O:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x6f

    const/16 v4, 0x4f

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 289
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_P:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x70

    const/16 v4, 0x50

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 290
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_Q:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x71

    const/16 v4, 0x51

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 291
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_R:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x72

    const/16 v4, 0x52

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 292
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_S:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x73

    const/16 v4, 0x53

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 293
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_T:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x74

    const/16 v4, 0x54

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 294
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_U:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x75

    const/16 v4, 0x55

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 295
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_V:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x76

    const/16 v4, 0x56

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 296
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_W:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x77

    const/16 v4, 0x57

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 297
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_X:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x78

    const/16 v4, 0x58

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 298
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_Y:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x79

    const/16 v4, 0x59

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 299
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_Z:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x7a

    const/16 v4, 0x5a

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 300
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_1:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x31

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 301
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_2:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x32

    const/16 v4, 0x40

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 302
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_3:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x33

    const/16 v4, 0x23

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 303
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_4:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x34

    const/16 v4, 0x24

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 304
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_5:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x35

    const/16 v4, 0x25

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 305
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_6:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x36

    const/16 v4, 0x5e

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 306
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_7:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x37

    const/16 v4, 0x26

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 307
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_8:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x38

    const/16 v4, 0x2a

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 308
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_9:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x39

    const/16 v4, 0x28

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 309
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_0:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x30

    const/16 v4, 0x29

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 310
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_COMMA:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x2c

    const/16 v4, 0x3c

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 311
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_PERIOD:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x2e

    const/16 v4, 0x3e

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 312
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_SEMICOLON:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x3b

    const/16 v4, 0x3a

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 313
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_APOSTROPHE:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x27

    const/16 v4, 0x22

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 314
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_BRACKET_LEFT:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x5b

    const/16 v4, 0x7b

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 315
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_BRACKET_RIGHT:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x5d

    const/16 v4, 0x7d

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 316
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_GRAVE:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x60

    const/16 v4, 0x7e

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 317
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_MINUS:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x2d

    const/16 v4, 0x5f

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 318
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_EQUAL:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x3d

    const/16 v4, 0x2b

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 319
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_SLASH:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x2f

    const/16 v4, 0x3f

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 320
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_BACKSLASH:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const/16 v2, 0x5c

    const/16 v4, 0x7c

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 321
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_KP_DIVIDE:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffaf

    invoke-virtual {v0, v1, v2, v2}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 322
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_KP_MULTIPLY:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffaa

    invoke-virtual {v0, v1, v2, v2}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 323
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_KP_SUBTRACT:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffad

    invoke-virtual {v0, v1, v2, v2}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 324
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_KP_ADD:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffab

    invoke-virtual {v0, v1, v2, v2}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 325
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_KP_0:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffb0

    const v4, 0xff9e

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 326
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_KP_1:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffb1

    const v4, 0xff9c

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 327
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_KP_2:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffb2

    const v4, 0xff99

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 328
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_KP_3:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffb3

    invoke-virtual {v0, v1, v2, v2}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 329
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_KP_4:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffb4

    const v4, 0xff96

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 330
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_KP_5:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffb5

    invoke-virtual {v0, v1, v2, v2}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 331
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_KP_6:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffb6

    const v4, 0xff98

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 332
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_KP_7:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffb7

    const v4, 0xff95

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 333
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_KP_8:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffb8

    const v4, 0xff97

    invoke-virtual {v0, v1, v2, v4}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 334
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_KP_9:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffb9

    invoke-virtual {v0, v1, v2, v2}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 335
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_KP_DEL:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xff9f

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 336
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_F1:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffbe

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 337
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_F2:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffbf

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 338
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_F3:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffc0

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 339
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_F4:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffc1

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 340
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_F5:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffc2

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 341
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_F6:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffc3

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 342
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_F7:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffc4

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 343
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_F8:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffc5

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 344
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_F9:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffc6

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 345
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_F10:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffc7

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 346
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_F11:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 347
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_F12:Lcom/winlator/xserver/XKeycode;

    iget-byte v1, v1, Lcom/winlator/xserver/XKeycode;->id:B

    const v2, 0xffc9

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 348
    return-object v0
.end method

.method private static createKeycodeMap()[Lcom/winlator/xserver/XKeycode;
    .locals 3

    .line 146
    const/16 v0, 0x9f

    new-array v0, v0, [Lcom/winlator/xserver/XKeycode;

    .line 147
    .local v0, "keycodeMap":[Lcom/winlator/xserver/XKeycode;
    const/16 v1, 0x42

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_ENTER:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 148
    const/16 v1, 0x6f

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_ESC:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 149
    const/16 v1, 0x15

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_LEFT:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 150
    const/16 v1, 0x16

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_RIGHT:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 151
    const/16 v1, 0x13

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_UP:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 152
    const/16 v1, 0x14

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_DOWN:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 153
    const/16 v1, 0x43

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_BKSP:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 154
    const/16 v1, 0x7c

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_INSERT:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 155
    const/16 v1, 0x70

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_DEL:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 156
    const/16 v1, 0x7a

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_HOME:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 157
    const/16 v1, 0x7b

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_END:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 158
    const/16 v1, 0x5c

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_PRIOR:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 159
    const/16 v1, 0x5d

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_NEXT:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 160
    const/16 v1, 0x3b

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_SHIFT_L:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 161
    const/16 v1, 0x3c

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_SHIFT_R:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 162
    const/16 v1, 0x71

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_CTRL_L:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 163
    const/16 v1, 0x72

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_CTRL_R:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 164
    const/16 v1, 0x39

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_ALT_L:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 165
    const/16 v1, 0x3a

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_ALT_R:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 166
    const/16 v1, 0x3d

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_TAB:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 167
    const/16 v1, 0x3e

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_SPACE:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 168
    const/16 v1, 0x1d

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_A:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 169
    const/16 v1, 0x1e

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_B:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 170
    const/16 v1, 0x1f

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_C:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 171
    const/16 v1, 0x20

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_D:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 172
    const/16 v1, 0x21

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_E:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 173
    const/16 v1, 0x22

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_F:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 174
    const/16 v1, 0x23

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_G:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 175
    const/16 v1, 0x24

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_H:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 176
    const/16 v1, 0x25

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_I:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 177
    const/16 v1, 0x26

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_J:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 178
    const/16 v1, 0x27

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_K:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 179
    const/16 v1, 0x28

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_L:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 180
    const/16 v1, 0x29

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_M:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 181
    const/16 v1, 0x2a

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_N:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 182
    const/16 v1, 0x2b

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_O:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 183
    const/16 v1, 0x2c

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_P:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 184
    const/16 v1, 0x2d

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_Q:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 185
    const/16 v1, 0x2e

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_R:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 186
    const/16 v1, 0x2f

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_S:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 187
    const/16 v1, 0x30

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_T:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 188
    const/16 v1, 0x31

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_U:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 189
    const/16 v1, 0x32

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_V:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 190
    const/16 v1, 0x33

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_W:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 191
    const/16 v1, 0x34

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_X:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 192
    const/16 v1, 0x35

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_Y:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 193
    const/16 v1, 0x36

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_Z:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 194
    const/4 v1, 0x7

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_0:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 195
    const/16 v1, 0x8

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_1:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 196
    const/16 v1, 0x9

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_2:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 197
    const/16 v1, 0xa

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_3:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 198
    const/16 v1, 0xb

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_4:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 199
    const/16 v1, 0xc

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_5:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 200
    const/16 v1, 0xd

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_6:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 201
    const/16 v1, 0xe

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_7:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 202
    const/16 v1, 0xf

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_8:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 203
    const/16 v1, 0x10

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_9:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 204
    const/16 v1, 0x11

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_8:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 205
    const/16 v1, 0x12

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_3:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 206
    const/16 v1, 0x37

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_COMMA:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 207
    const/16 v1, 0x38

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_PERIOD:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 208
    const/16 v1, 0x4a

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_SEMICOLON:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 209
    const/16 v1, 0x4b

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_APOSTROPHE:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 210
    const/16 v1, 0x47

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_BRACKET_LEFT:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 211
    const/16 v1, 0x48

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_BRACKET_RIGHT:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 212
    const/16 v1, 0x44

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_GRAVE:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 213
    const/16 v1, 0x45

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_MINUS:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 214
    const/16 v1, 0x51

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_EQUAL:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 215
    const/16 v1, 0x46

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_EQUAL:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 216
    const/16 v1, 0x4c

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_SLASH:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 217
    const/16 v1, 0x4d

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_2:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 218
    const/16 v1, 0x49

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_BACKSLASH:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 219
    const/16 v1, 0x9a

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_KP_DIVIDE:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 220
    const/16 v1, 0x9b

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_KP_MULTIPLY:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 221
    const/16 v1, 0x9c

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_KP_SUBTRACT:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 222
    const/16 v1, 0x9d

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_KP_ADD:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 223
    const/16 v1, 0x9e

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_KP_DEL:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 224
    const/16 v1, 0x90

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_KP_0:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 225
    const/16 v1, 0x91

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_KP_1:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 226
    const/16 v1, 0x92

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_KP_2:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 227
    const/16 v1, 0x93

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_KP_3:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 228
    const/16 v1, 0x94

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_KP_4:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 229
    const/16 v1, 0x95

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_KP_5:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 230
    const/16 v1, 0x96

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_KP_6:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 231
    const/16 v1, 0x97

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_KP_7:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 232
    const/16 v1, 0x98

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_KP_8:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 233
    const/16 v1, 0x99

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_KP_9:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 234
    const/16 v1, 0x83

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_F1:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 235
    const/16 v1, 0x84

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_F2:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 236
    const/16 v1, 0x85

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_F3:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 237
    const/16 v1, 0x86

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_F4:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 238
    const/16 v1, 0x87

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_F5:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 239
    const/16 v1, 0x88

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_F6:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 240
    const/16 v1, 0x89

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_F7:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 241
    const/16 v1, 0x8a

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_F8:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 242
    const/16 v1, 0x8b

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_F9:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 243
    const/16 v1, 0x8c

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_F10:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 244
    const/16 v1, 0x8d

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_F11:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 245
    const/16 v1, 0x8e

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_F12:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 246
    const/16 v1, 0x8f

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_NUM_LOCK:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 247
    const/16 v1, 0x73

    sget-object v2, Lcom/winlator/xserver/XKeycode;->KEY_CAPS_LOCK:Lcom/winlator/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 248
    return-object v0
.end method

.method private getCustomXKeycodeForKeysym(I)Lcom/winlator/xserver/XKeycode;
    .locals 8
    .param p1, "keysym"    # I

    .line 131
    invoke-static {}, Lcom/winlator/xserver/XKeycode;->getCustomKeys()[Lcom/winlator/xserver/XKeycode;

    move-result-object v0

    .line 132
    .local v0, "customKeys":[Lcom/winlator/xserver/XKeycode;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .local v4, "xKeycode":Lcom/winlator/xserver/XKeycode;
    iget-byte v5, v4, Lcom/winlator/xserver/XKeycode;->id:B

    invoke-virtual {p0, v5, p1}, Lcom/winlator/xserver/Keyboard;->hasKeysym(BI)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    .end local v4    # "xKeycode":Lcom/winlator/xserver/XKeycode;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    :cond_1
    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 134
    .restart local v4    # "xKeycode":Lcom/winlator/xserver/XKeycode;
    iget-byte v5, v4, Lcom/winlator/xserver/XKeycode;->id:B

    add-int/lit8 v5, v5, -0x8

    .line 135
    .local v5, "index":I
    iget-object v6, p0, Lcom/winlator/xserver/Keyboard;->keysyms:[I

    mul-int/lit8 v7, v5, 0x2

    add-int/2addr v7, v2

    aget v6, v6, v7

    if-nez v6, :cond_2

    return-object v4

    .line 133
    .end local v4    # "xKeycode":Lcom/winlator/xserver/XKeycode;
    .end local v5    # "index":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 137
    :cond_3
    array-length v1, v0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 138
    .restart local v4    # "xKeycode":Lcom/winlator/xserver/XKeycode;
    iget-byte v5, v4, Lcom/winlator/xserver/XKeycode;->id:B

    add-int/lit8 v5, v5, -0x8

    .line 139
    .restart local v5    # "index":I
    iget-object v6, p0, Lcom/winlator/xserver/Keyboard;->keysyms:[I

    mul-int/lit8 v7, v5, 0x2

    add-int/2addr v7, v2

    aput v2, v6, v7

    .line 140
    iget-object v6, p0, Lcom/winlator/xserver/Keyboard;->keysyms:[I

    mul-int/lit8 v7, v5, 0x2

    add-int/lit8 v7, v7, 0x1

    aput v2, v6, v7

    .line 137
    .end local v4    # "xKeycode":Lcom/winlator/xserver/XKeycode;
    .end local v5    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 142
    :cond_4
    sget-object v1, Lcom/winlator/xserver/XKeycode;->KEY_CUSTOM_1:Lcom/winlator/xserver/XKeycode;

    return-object v1
.end method

.method public static getModifierFlag(B)I
    .locals 1
    .param p0, "keycode"    # B

    .line 365
    sget-object v0, Lcom/winlator/xserver/XKeycode;->KEY_SHIFT_L:Lcom/winlator/xserver/XKeycode;

    iget-byte v0, v0, Lcom/winlator/xserver/XKeycode;->id:B

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/winlator/xserver/XKeycode;->KEY_SHIFT_R:Lcom/winlator/xserver/XKeycode;

    iget-byte v0, v0, Lcom/winlator/xserver/XKeycode;->id:B

    if-ne p0, v0, :cond_1

    :cond_0
    goto :goto_2

    .line 368
    :cond_1
    sget-object v0, Lcom/winlator/xserver/XKeycode;->KEY_CAPS_LOCK:Lcom/winlator/xserver/XKeycode;

    iget-byte v0, v0, Lcom/winlator/xserver/XKeycode;->id:B

    if-ne p0, v0, :cond_2

    .line 369
    const/4 v0, 0x2

    return v0

    .line 371
    :cond_2
    sget-object v0, Lcom/winlator/xserver/XKeycode;->KEY_CTRL_L:Lcom/winlator/xserver/XKeycode;

    iget-byte v0, v0, Lcom/winlator/xserver/XKeycode;->id:B

    if-eq p0, v0, :cond_3

    sget-object v0, Lcom/winlator/xserver/XKeycode;->KEY_CTRL_R:Lcom/winlator/xserver/XKeycode;

    iget-byte v0, v0, Lcom/winlator/xserver/XKeycode;->id:B

    if-ne p0, v0, :cond_4

    :cond_3
    goto :goto_1

    .line 374
    :cond_4
    sget-object v0, Lcom/winlator/xserver/XKeycode;->KEY_ALT_L:Lcom/winlator/xserver/XKeycode;

    iget-byte v0, v0, Lcom/winlator/xserver/XKeycode;->id:B

    if-eq p0, v0, :cond_5

    sget-object v0, Lcom/winlator/xserver/XKeycode;->KEY_ALT_R:Lcom/winlator/xserver/XKeycode;

    iget-byte v0, v0, Lcom/winlator/xserver/XKeycode;->id:B

    if-ne p0, v0, :cond_6

    :cond_5
    goto :goto_0

    .line 377
    :cond_6
    sget-object v0, Lcom/winlator/xserver/XKeycode;->KEY_NUM_LOCK:Lcom/winlator/xserver/XKeycode;

    iget-byte v0, v0, Lcom/winlator/xserver/XKeycode;->id:B

    if-ne p0, v0, :cond_7

    .line 378
    const/16 v0, 0x10

    return v0

    .line 380
    :cond_7
    const/4 v0, 0x0

    return v0

    .line 375
    :goto_0
    const/16 v0, 0x8

    return v0

    .line 372
    :goto_1
    const/4 v0, 0x4

    return v0

    .line 366
    :goto_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isModifier(B)Z
    .locals 1
    .param p0, "keycode"    # B

    .line 352
    sget-object v0, Lcom/winlator/xserver/XKeycode;->KEY_SHIFT_L:Lcom/winlator/xserver/XKeycode;

    iget-byte v0, v0, Lcom/winlator/xserver/XKeycode;->id:B

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/winlator/xserver/XKeycode;->KEY_SHIFT_R:Lcom/winlator/xserver/XKeycode;

    iget-byte v0, v0, Lcom/winlator/xserver/XKeycode;->id:B

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/winlator/xserver/XKeycode;->KEY_CTRL_L:Lcom/winlator/xserver/XKeycode;

    iget-byte v0, v0, Lcom/winlator/xserver/XKeycode;->id:B

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/winlator/xserver/XKeycode;->KEY_CTRL_R:Lcom/winlator/xserver/XKeycode;

    iget-byte v0, v0, Lcom/winlator/xserver/XKeycode;->id:B

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/winlator/xserver/XKeycode;->KEY_ALT_L:Lcom/winlator/xserver/XKeycode;

    iget-byte v0, v0, Lcom/winlator/xserver/XKeycode;->id:B

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/winlator/xserver/XKeycode;->KEY_ALT_R:Lcom/winlator/xserver/XKeycode;

    iget-byte v0, v0, Lcom/winlator/xserver/XKeycode;->id:B

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/winlator/xserver/XKeycode;->KEY_CAPS_LOCK:Lcom/winlator/xserver/XKeycode;

    iget-byte v0, v0, Lcom/winlator/xserver/XKeycode;->id:B

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/winlator/xserver/XKeycode;->KEY_NUM_LOCK:Lcom/winlator/xserver/XKeycode;

    iget-byte v0, v0, Lcom/winlator/xserver/XKeycode;->id:B

    if-ne p0, v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isModifierSticky(B)Z
    .locals 1
    .param p0, "keycode"    # B

    .line 384
    sget-object v0, Lcom/winlator/xserver/XKeycode;->KEY_CAPS_LOCK:Lcom/winlator/xserver/XKeycode;

    iget-byte v0, v0, Lcom/winlator/xserver/XKeycode;->id:B

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/winlator/xserver/XKeycode;->KEY_NUM_LOCK:Lcom/winlator/xserver/XKeycode;

    iget-byte v0, v0, Lcom/winlator/xserver/XKeycode;->id:B

    if-ne p0, v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private synthetic lambda$onKeyEvent$0(Lcom/winlator/xserver/XKeycode;)V
    .locals 1
    .param p1, "xKeycode"    # Lcom/winlator/xserver/XKeycode;

    .line 124
    iget-object v0, p0, Lcom/winlator/xserver/Keyboard;->xServer:Lcom/winlator/xserver/XServer;

    invoke-virtual {v0, p1}, Lcom/winlator/xserver/XServer;->injectKeyRelease(Lcom/winlator/xserver/XKeycode;)V

    return-void
.end method

.method private triggerOnKeyPress(BI)V
    .locals 2
    .param p1, "keycode"    # B
    .param p2, "keysym"    # I

    .line 87
    iget-object v0, p0, Lcom/winlator/xserver/Keyboard;->onKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/winlator/xserver/Keyboard;->onKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/xserver/Keyboard$OnKeyboardListener;

    invoke-interface {v1, p1, p2}, Lcom/winlator/xserver/Keyboard$OnKeyboardListener;->onKeyPress(BI)V

    .line 87
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 90
    .end local v0    # "i":I
    return-void
.end method

.method private triggerOnKeyRelease(B)V
    .locals 2
    .param p1, "keycode"    # B

    .line 93
    iget-object v0, p0, Lcom/winlator/xserver/Keyboard;->onKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/winlator/xserver/Keyboard;->onKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/xserver/Keyboard$OnKeyboardListener;

    invoke-interface {v1, p1}, Lcom/winlator/xserver/Keyboard$OnKeyboardListener;->onKeyRelease(B)V

    .line 93
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 96
    .end local v0    # "i":I
    return-void
.end method


# virtual methods
.method public addOnKeyboardListener(Lcom/winlator/xserver/Keyboard$OnKeyboardListener;)V
    .locals 1
    .param p1, "onKeyboardListener"    # Lcom/winlator/xserver/Keyboard$OnKeyboardListener;

    .line 79
    iget-object v0, p0, Lcom/winlator/xserver/Keyboard;->onKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public getModifiersMask()Lcom/winlator/core/Bitmask;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/winlator/xserver/Keyboard;->modifiersMask:Lcom/winlator/core/Bitmask;

    return-object v0
.end method

.method public hasKeysym(BI)Z
    .locals 5
    .param p1, "keycode"    # B
    .param p2, "keysym"    # I

    .line 46
    add-int/lit8 v0, p1, -0x8

    .line 47
    .local v0, "index":I
    iget-object v1, p0, Lcom/winlator/xserver/Keyboard;->keysyms:[I

    mul-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    add-int/2addr v2, v3

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, p2, :cond_0

    iget-object v1, p0, Lcom/winlator/xserver/Keyboard;->keysyms:[I

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v2

    aget v1, v1, v4

    if-ne v1, p2, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 99
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/inputcontrols/ExternalController;->isGameController(Landroid/view/InputDevice;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 102
    .local v0, "action":I
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_2

    :cond_1
    goto :goto_0

    .line 118
    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_c

    .line 119
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "chars":Ljava/lang/String;
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v2, :cond_c

    .line 121
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 122
    .local v1, "keysym":I
    invoke-direct {p0, v1}, Lcom/winlator/xserver/Keyboard;->getCustomXKeycodeForKeysym(I)Lcom/winlator/xserver/XKeycode;

    move-result-object v4

    .line 123
    .local v4, "xKeycode":Lcom/winlator/xserver/XKeycode;
    iget-object v5, p0, Lcom/winlator/xserver/Keyboard;->xServer:Lcom/winlator/xserver/XServer;

    invoke-virtual {v5, v4, v1}, Lcom/winlator/xserver/XServer;->injectKeyPress(Lcom/winlator/xserver/XKeycode;I)V

    .line 124
    new-instance v5, Lcom/winlator/xserver/Keyboard$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v4}, Lcom/winlator/xserver/Keyboard$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/xserver/Keyboard;Lcom/winlator/xserver/XKeycode;)V

    const-wide/16 v6, 0x1e

    invoke-static {v5, v6, v7}, Lcom/winlator/core/AppUtils;->runDelayed(Ljava/lang/Runnable;J)V

    goto :goto_4

    .line 103
    .end local v1    # "keysym":I
    .end local v3    # "chars":Ljava/lang/String;
    .end local v4    # "xKeycode":Lcom/winlator/xserver/XKeycode;
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 104
    .local v3, "keyCode":I
    if-ltz v3, :cond_3

    iget-object v4, p0, Lcom/winlator/xserver/Keyboard;->keycodeMap:[Lcom/winlator/xserver/XKeycode;

    array-length v4, v4

    if-lt v3, v4, :cond_4

    :cond_3
    goto :goto_5

    .line 105
    :cond_4
    iget-object v4, p0, Lcom/winlator/xserver/Keyboard;->keycodeMap:[Lcom/winlator/xserver/XKeycode;

    aget-object v4, v4, v3

    .line 106
    .restart local v4    # "xKeycode":Lcom/winlator/xserver/XKeycode;
    if-nez v4, :cond_5

    return v1

    .line 108
    :cond_5
    if-nez v0, :cond_a

    .line 109
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-nez v5, :cond_6

    const/16 v5, 0x4d

    if-eq v3, v5, :cond_6

    const/16 v5, 0x11

    if-eq v3, v5, :cond_6

    const/16 v5, 0x12

    if-eq v3, v5, :cond_6

    const/16 v5, 0x51

    if-ne v3, v5, :cond_7

    :cond_6
    goto :goto_1

    :cond_7
    move v5, v1

    goto :goto_2

    :goto_1
    move v5, v2

    .line 110
    .local v5, "shiftPressed":Z
    :goto_2
    if-eqz v5, :cond_8

    iget-object v6, p0, Lcom/winlator/xserver/Keyboard;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v7, Lcom/winlator/xserver/XKeycode;->KEY_SHIFT_L:Lcom/winlator/xserver/XKeycode;

    invoke-virtual {v6, v7}, Lcom/winlator/xserver/XServer;->injectKeyPress(Lcom/winlator/xserver/XKeycode;)V

    .line 111
    :cond_8
    iget-object v6, p0, Lcom/winlator/xserver/Keyboard;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v7, Lcom/winlator/xserver/XKeycode;->KEY_ENTER:Lcom/winlator/xserver/XKeycode;

    if-eq v4, v7, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    :cond_9
    invoke-virtual {v6, v4, v1}, Lcom/winlator/xserver/XServer;->injectKeyPress(Lcom/winlator/xserver/XKeycode;I)V

    .line 112
    .end local v5    # "shiftPressed":Z
    goto :goto_3

    .line 113
    :cond_a
    if-ne v0, v2, :cond_b

    .line 114
    iget-object v1, p0, Lcom/winlator/xserver/Keyboard;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v5, Lcom/winlator/xserver/XKeycode;->KEY_SHIFT_L:Lcom/winlator/xserver/XKeycode;

    invoke-virtual {v1, v5}, Lcom/winlator/xserver/XServer;->injectKeyRelease(Lcom/winlator/xserver/XKeycode;)V

    .line 115
    iget-object v1, p0, Lcom/winlator/xserver/Keyboard;->xServer:Lcom/winlator/xserver/XServer;

    invoke-virtual {v1, v4}, Lcom/winlator/xserver/XServer;->injectKeyRelease(Lcom/winlator/xserver/XKeycode;)V

    .line 117
    .end local v3    # "keyCode":I
    .end local v4    # "xKeycode":Lcom/winlator/xserver/XKeycode;
    :cond_b
    :goto_3
    nop

    .line 127
    :cond_c
    :goto_4
    return v2

    .line 104
    .restart local v3    # "keyCode":I
    :goto_5
    return v1
.end method

.method public setKeyPress(BI)V
    .locals 2
    .param p1, "keycode"    # B
    .param p2, "keysym"    # I

    .line 51
    invoke-static {p1}, Lcom/winlator/xserver/Keyboard;->isModifierSticky(B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/winlator/xserver/Keyboard;->pressedKeys:Landroidx/collection/ArraySet;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/winlator/xserver/Keyboard;->pressedKeys:Landroidx/collection/ArraySet;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/winlator/xserver/Keyboard;->modifiersMask:Lcom/winlator/core/Bitmask;

    invoke-static {p1}, Lcom/winlator/xserver/Keyboard;->getModifierFlag(B)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->unset(I)V

    .line 55
    invoke-direct {p0, p1}, Lcom/winlator/xserver/Keyboard;->triggerOnKeyRelease(B)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/winlator/xserver/Keyboard;->pressedKeys:Landroidx/collection/ArraySet;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/winlator/xserver/Keyboard;->modifiersMask:Lcom/winlator/core/Bitmask;

    invoke-static {p1}, Lcom/winlator/xserver/Keyboard;->getModifierFlag(B)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->set(I)V

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/winlator/xserver/Keyboard;->triggerOnKeyPress(BI)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/winlator/xserver/Keyboard;->pressedKeys:Landroidx/collection/ArraySet;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 64
    iget-object v0, p0, Lcom/winlator/xserver/Keyboard;->pressedKeys:Landroidx/collection/ArraySet;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {p1}, Lcom/winlator/xserver/Keyboard;->isModifier(B)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/winlator/xserver/Keyboard;->modifiersMask:Lcom/winlator/core/Bitmask;

    invoke-static {p1}, Lcom/winlator/xserver/Keyboard;->getModifierFlag(B)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->set(I)V

    .line 66
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/winlator/xserver/Keyboard;->triggerOnKeyPress(BI)V

    .line 68
    :cond_3
    :goto_0
    return-void
.end method

.method public setKeyRelease(B)V
    .locals 2
    .param p1, "keycode"    # B

    .line 71
    invoke-static {p1}, Lcom/winlator/xserver/Keyboard;->isModifierSticky(B)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/winlator/xserver/Keyboard;->pressedKeys:Landroidx/collection/ArraySet;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/winlator/xserver/Keyboard;->pressedKeys:Landroidx/collection/ArraySet;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 73
    invoke-static {p1}, Lcom/winlator/xserver/Keyboard;->isModifier(B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/xserver/Keyboard;->modifiersMask:Lcom/winlator/core/Bitmask;

    invoke-static {p1}, Lcom/winlator/xserver/Keyboard;->getModifierFlag(B)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->unset(I)V

    .line 74
    :cond_0
    invoke-direct {p0, p1}, Lcom/winlator/xserver/Keyboard;->triggerOnKeyRelease(B)V

    .line 76
    :cond_1
    return-void
.end method

.method public setKeysyms(BII)V
    .locals 3
    .param p1, "keycode"    # B
    .param p2, "minKeysym"    # I
    .param p3, "majKeysym"    # I

    .line 40
    add-int/lit8 v0, p1, -0x8

    .line 41
    .local v0, "index":I
    iget-object v1, p0, Lcom/winlator/xserver/Keyboard;->keysyms:[I

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x0

    aput p2, v1, v2

    .line 42
    iget-object v1, p0, Lcom/winlator/xserver/Keyboard;->keysyms:[I

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aput p3, v1, v2

    .line 43
    return-void
.end method
