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
.class public Lcom/winlator/xserver/InputDeviceManager;
.super Ljava/lang/Object;
.source "InputDeviceManager.java"

# interfaces
.implements Lcom/winlator/xserver/Pointer$OnPointerMotionListener;
.implements Lcom/winlator/xserver/Keyboard$OnKeyboardListener;
.implements Lcom/winlator/xserver/WindowManager$OnWindowModificationListener;
.implements Lcom/winlator/xserver/XResourceManager$OnResourceLifecycleListener;


# instance fields
.field private pointWindow:Lcom/winlator/xserver/Window;

.field private final xServer:Lcom/winlator/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/winlator/xserver/XServer;)V
    .locals 1
    .param p1, "xServer"    # Lcom/winlator/xserver/XServer;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    .line 25
    iget-object v0, p1, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    iget-object v0, v0, Lcom/winlator/xserver/WindowManager;->rootWindow:Lcom/winlator/xserver/Window;

    iput-object v0, p0, Lcom/winlator/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/xserver/Window;

    .line 26
    iget-object v0, p1, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    invoke-virtual {v0, p0}, Lcom/winlator/xserver/WindowManager;->addOnWindowModificationListener(Lcom/winlator/xserver/WindowManager$OnWindowModificationListener;)V

    .line 27
    iget-object v0, p1, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    invoke-virtual {v0, p0}, Lcom/winlator/xserver/XResourceManager;->addOnResourceLifecycleListener(Lcom/winlator/xserver/XResourceManager$OnResourceLifecycleListener;)V

    .line 28
    iget-object v0, p1, Lcom/winlator/xserver/XServer;->pointer:Lcom/winlator/xserver/Pointer;

    invoke-virtual {v0, p0}, Lcom/winlator/xserver/Pointer;->addOnPointerMotionListener(Lcom/winlator/xserver/Pointer$OnPointerMotionListener;)V

    .line 29
    iget-object v0, p1, Lcom/winlator/xserver/XServer;->keyboard:Lcom/winlator/xserver/Keyboard;

    invoke-virtual {v0, p0}, Lcom/winlator/xserver/Keyboard;->addOnKeyboardListener(Lcom/winlator/xserver/Keyboard$OnKeyboardListener;)V

    .line 30
    return-void
.end method

.method private createPointerEventMask()Lcom/winlator/core/Bitmask;
    .locals 3

    .line 313
    new-instance v0, Lcom/winlator/core/Bitmask;

    invoke-direct {v0}, Lcom/winlator/core/Bitmask;-><init>()V

    .line 314
    .local v0, "eventMask":Lcom/winlator/core/Bitmask;
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->set(I)V

    .line 316
    iget-object v1, p0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->pointer:Lcom/winlator/xserver/Pointer;

    invoke-virtual {v1}, Lcom/winlator/xserver/Pointer;->getButtonMask()Lcom/winlator/core/Bitmask;

    move-result-object v1

    .line 317
    .local v1, "buttonMask":Lcom/winlator/core/Bitmask;
    invoke-virtual {v1}, Lcom/winlator/core/Bitmask;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 318
    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Lcom/winlator/core/Bitmask;->set(I)V

    .line 320
    sget-object v2, Lcom/winlator/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/winlator/xserver/Pointer$Button;

    invoke-virtual {v2}, Lcom/winlator/xserver/Pointer$Button;->flag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Lcom/winlator/core/Bitmask;->set(I)V

    .line 323
    :cond_0
    sget-object v2, Lcom/winlator/xserver/Pointer$Button;->BUTTON_MIDDLE:Lcom/winlator/xserver/Pointer$Button;

    invoke-virtual {v2}, Lcom/winlator/xserver/Pointer$Button;->flag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    const/16 v2, 0x200

    invoke-virtual {v0, v2}, Lcom/winlator/core/Bitmask;->set(I)V

    .line 326
    :cond_1
    sget-object v2, Lcom/winlator/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/winlator/xserver/Pointer$Button;

    invoke-virtual {v2}, Lcom/winlator/xserver/Pointer$Button;->flag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 327
    const/16 v2, 0x400

    invoke-virtual {v0, v2}, Lcom/winlator/core/Bitmask;->set(I)V

    .line 329
    :cond_2
    sget-object v2, Lcom/winlator/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/winlator/xserver/Pointer$Button;

    invoke-virtual {v2}, Lcom/winlator/xserver/Pointer$Button;->flag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 330
    const/16 v2, 0x800

    invoke-virtual {v0, v2}, Lcom/winlator/core/Bitmask;->set(I)V

    .line 332
    :cond_3
    sget-object v2, Lcom/winlator/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/winlator/xserver/Pointer$Button;

    invoke-virtual {v2}, Lcom/winlator/xserver/Pointer$Button;->flag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 333
    const/16 v2, 0x1000

    invoke-virtual {v0, v2}, Lcom/winlator/core/Bitmask;->set(I)V

    .line 336
    :cond_4
    return-object v0
.end method

.method private sendEvent(Lcom/winlator/xserver/Window;ILcom/winlator/xserver/events/Event;)V
    .locals 3
    .param p1, "window"    # Lcom/winlator/xserver/Window;
    .param p2, "eventId"    # I
    .param p3, "event"    # Lcom/winlator/xserver/events/Event;

    .line 72
    iget-object v0, p0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/xserver/XServer;->grabManager:Lcom/winlator/xserver/GrabManager;

    invoke-virtual {v0}, Lcom/winlator/xserver/GrabManager;->getWindow()Lcom/winlator/xserver/Window;

    move-result-object v0

    .line 73
    .local v0, "grabWindow":Lcom/winlator/xserver/Window;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/winlator/xserver/Window;->attributes:Lcom/winlator/xserver/WindowAttributes;

    invoke-virtual {v1}, Lcom/winlator/xserver/WindowAttributes;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    iget-object v1, p0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->grabManager:Lcom/winlator/xserver/GrabManager;

    invoke-virtual {v1}, Lcom/winlator/xserver/GrabManager;->getEventListener()Lcom/winlator/xserver/EventListener;

    move-result-object v1

    .line 75
    .local v1, "eventListener":Lcom/winlator/xserver/EventListener;
    iget-object v2, p0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/xserver/XServer;->grabManager:Lcom/winlator/xserver/GrabManager;

    invoke-virtual {v2}, Lcom/winlator/xserver/GrabManager;->isOwnerEvents()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 76
    iget-object v2, p0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/xserver/XServer;->grabManager:Lcom/winlator/xserver/GrabManager;

    invoke-virtual {v2}, Lcom/winlator/xserver/GrabManager;->getClient()Lcom/winlator/xserver/XClient;

    move-result-object v2

    invoke-virtual {p1, p2, p3, v2}, Lcom/winlator/xserver/Window;->sendEvent(ILcom/winlator/xserver/events/Event;Lcom/winlator/xserver/XClient;)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v1, p2}, Lcom/winlator/xserver/EventListener;->isInterestedIn(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {v1, p3}, Lcom/winlator/xserver/EventListener;->sendEvent(Lcom/winlator/xserver/events/Event;)V

    .line 81
    .end local v1    # "eventListener":Lcom/winlator/xserver/EventListener;
    :cond_1
    :goto_0
    goto :goto_1

    .line 82
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/winlator/xserver/Window;->attributes:Lcom/winlator/xserver/WindowAttributes;

    invoke-virtual {v1}, Lcom/winlator/xserver/WindowAttributes;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    invoke-virtual {p1, p2, p3}, Lcom/winlator/xserver/Window;->sendEvent(ILcom/winlator/xserver/events/Event;)V

    .line 85
    :cond_3
    :goto_1
    return-void
.end method

.method private sendEvent(Lcom/winlator/xserver/Window;Lcom/winlator/core/Bitmask;Lcom/winlator/xserver/events/Event;)V
    .locals 3
    .param p1, "window"    # Lcom/winlator/xserver/Window;
    .param p2, "eventMask"    # Lcom/winlator/core/Bitmask;
    .param p3, "event"    # Lcom/winlator/xserver/events/Event;

    .line 88
    iget-object v0, p0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/xserver/XServer;->grabManager:Lcom/winlator/xserver/GrabManager;

    invoke-virtual {v0}, Lcom/winlator/xserver/GrabManager;->getWindow()Lcom/winlator/xserver/Window;

    move-result-object v0

    .line 89
    .local v0, "grabWindow":Lcom/winlator/xserver/Window;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/winlator/xserver/Window;->attributes:Lcom/winlator/xserver/WindowAttributes;

    invoke-virtual {v1}, Lcom/winlator/xserver/WindowAttributes;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    iget-object v1, p0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->grabManager:Lcom/winlator/xserver/GrabManager;

    invoke-virtual {v1}, Lcom/winlator/xserver/GrabManager;->getEventListener()Lcom/winlator/xserver/EventListener;

    move-result-object v1

    .line 91
    .local v1, "eventListener":Lcom/winlator/xserver/EventListener;
    iget-object v2, p0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/xserver/XServer;->grabManager:Lcom/winlator/xserver/GrabManager;

    invoke-virtual {v2}, Lcom/winlator/xserver/GrabManager;->isOwnerEvents()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 92
    iget-object v2, v1, Lcom/winlator/xserver/EventListener;->client:Lcom/winlator/xserver/XClient;

    invoke-virtual {p1, p2, p3, v2}, Lcom/winlator/xserver/Window;->sendEvent(Lcom/winlator/core/Bitmask;Lcom/winlator/xserver/events/Event;Lcom/winlator/xserver/XClient;)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v1, p2}, Lcom/winlator/xserver/EventListener;->isInterestedIn(Lcom/winlator/core/Bitmask;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {v1, p3}, Lcom/winlator/xserver/EventListener;->sendEvent(Lcom/winlator/xserver/events/Event;)V

    .line 97
    .end local v1    # "eventListener":Lcom/winlator/xserver/EventListener;
    :cond_1
    :goto_0
    goto :goto_1

    .line 98
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/winlator/xserver/Window;->attributes:Lcom/winlator/xserver/WindowAttributes;

    invoke-virtual {v1}, Lcom/winlator/xserver/WindowAttributes;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    invoke-virtual {p1, p2, p3}, Lcom/winlator/xserver/Window;->sendEvent(Lcom/winlator/core/Bitmask;Lcom/winlator/xserver/events/Event;)V

    .line 101
    :cond_3
    :goto_1
    return-void
.end method

.method private updatePointWindow()V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    iget-object v1, p0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->pointer:Lcom/winlator/xserver/Pointer;

    invoke-virtual {v1}, Lcom/winlator/xserver/Pointer;->getClampedX()S

    move-result v1

    iget-object v2, p0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/xserver/XServer;->pointer:Lcom/winlator/xserver/Pointer;

    invoke-virtual {v2}, Lcom/winlator/xserver/Pointer;->getClampedY()S

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/xserver/WindowManager;->findPointWindow(SSZ)Lcom/winlator/xserver/Window;

    move-result-object v0

    .line 64
    .local v0, "pointWindow":Lcom/winlator/xserver/Window;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    iget-object v1, v1, Lcom/winlator/xserver/WindowManager;->rootWindow:Lcom/winlator/xserver/Window;

    :goto_0
    iput-object v1, p0, Lcom/winlator/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/xserver/Window;

    .line 65
    return-void
.end method


# virtual methods
.method public getKeyButMask()Lcom/winlator/core/Bitmask;
    .locals 2

    .line 340
    new-instance v0, Lcom/winlator/core/Bitmask;

    invoke-direct {v0}, Lcom/winlator/core/Bitmask;-><init>()V

    .line 341
    .local v0, "keyButMask":Lcom/winlator/core/Bitmask;
    iget-object v1, p0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->pointer:Lcom/winlator/xserver/Pointer;

    invoke-virtual {v1}, Lcom/winlator/xserver/Pointer;->getButtonMask()Lcom/winlator/core/Bitmask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->join(Lcom/winlator/core/Bitmask;)V

    .line 342
    iget-object v1, p0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->keyboard:Lcom/winlator/xserver/Keyboard;

    invoke-virtual {v1}, Lcom/winlator/xserver/Keyboard;->getModifiersMask()Lcom/winlator/core/Bitmask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->join(Lcom/winlator/core/Bitmask;)V

    .line 343
    return-object v0
.end method

.method public getPointWindow()Lcom/winlator/xserver/Window;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/winlator/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/xserver/Window;

    return-object v0
.end method

.method public onChangeWindowZOrder(Lcom/winlator/xserver/Window;)V
    .locals 0
    .param p1, "window"    # Lcom/winlator/xserver/Window;

    .line 44
    invoke-direct {p0}, Lcom/winlator/xserver/InputDeviceManager;->updatePointWindow()V

    .line 45
    return-void
.end method

.method public onCreateResource(Lcom/winlator/xserver/XResource;)V
    .locals 0
    .param p1, "resource"    # Lcom/winlator/xserver/XResource;

    .line 54
    invoke-direct {p0}, Lcom/winlator/xserver/InputDeviceManager;->updatePointWindow()V

    .line 55
    return-void
.end method

.method public onFreeResource(Lcom/winlator/xserver/XResource;)V
    .locals 0
    .param p1, "resource"    # Lcom/winlator/xserver/XResource;

    .line 59
    invoke-direct {p0}, Lcom/winlator/xserver/InputDeviceManager;->updatePointWindow()V

    .line 60
    return-void
.end method

.method public onKeyPress(BI)V
    .locals 22
    .param p1, "keycode"    # B
    .param p2, "keysym"    # I

    .line 241
    move-object/from16 v0, p0

    move/from16 v11, p1

    move/from16 v12, p2

    iget-object v1, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    invoke-virtual {v1}, Lcom/winlator/xserver/WindowManager;->getFocusedWindow()Lcom/winlator/xserver/Window;

    move-result-object v13

    .line 242
    .local v13, "focusedWindow":Lcom/winlator/xserver/Window;
    if-nez v13, :cond_0

    return-void

    .line 243
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/winlator/xserver/InputDeviceManager;->updatePointWindow()V

    .line 245
    const/4 v1, 0x0

    .line 246
    .local v1, "eventWindow":Lcom/winlator/xserver/Window;
    const/4 v2, 0x0

    .line 247
    .local v2, "child":Lcom/winlator/xserver/Window;
    iget-object v3, v0, Lcom/winlator/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/xserver/Window;

    invoke-virtual {v13, v3}, Lcom/winlator/xserver/Window;->isAncestorOf(Lcom/winlator/xserver/Window;)Z

    move-result v3

    const/4 v14, 0x1

    if-eqz v3, :cond_2

    .line 248
    iget-object v3, v0, Lcom/winlator/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/xserver/Window;

    invoke-virtual {v3, v14, v13}, Lcom/winlator/xserver/Window;->getAncestorWithEventId(ILcom/winlator/xserver/Window;)Lcom/winlator/xserver/Window;

    move-result-object v1

    .line 249
    iget-object v3, v0, Lcom/winlator/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/xserver/Window;

    invoke-virtual {v1, v3}, Lcom/winlator/xserver/Window;->isAncestorOf(Lcom/winlator/xserver/Window;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/winlator/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/xserver/Window;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move-object v2, v3

    move-object v15, v2

    goto :goto_1

    .line 247
    :cond_2
    move-object v15, v2

    .line 251
    .end local v2    # "child":Lcom/winlator/xserver/Window;
    .local v15, "child":Lcom/winlator/xserver/Window;
    :goto_1
    if-nez v1, :cond_4

    .line 252
    invoke-virtual {v13, v14}, Lcom/winlator/xserver/Window;->hasEventListenerFor(I)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    .line 253
    :cond_3
    move-object v1, v13

    move-object v10, v1

    goto :goto_2

    .line 251
    :cond_4
    move-object v10, v1

    .line 256
    .end local v1    # "eventWindow":Lcom/winlator/xserver/Window;
    .local v10, "eventWindow":Lcom/winlator/xserver/Window;
    :goto_2
    iget-object v1, v10, Lcom/winlator/xserver/Window;->attributes:Lcom/winlator/xserver/WindowAttributes;

    invoke-virtual {v1}, Lcom/winlator/xserver/WindowAttributes;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    return-void

    .line 258
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/xserver/InputDeviceManager;->getKeyButMask()Lcom/winlator/core/Bitmask;

    move-result-object v16

    .line 259
    .local v16, "keyButMask":Lcom/winlator/core/Bitmask;
    iget-object v1, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->pointer:Lcom/winlator/xserver/Pointer;

    invoke-virtual {v1}, Lcom/winlator/xserver/Pointer;->getX()S

    move-result v1

    .line 260
    .local v1, "x":S
    iget-object v2, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/xserver/XServer;->pointer:Lcom/winlator/xserver/Pointer;

    invoke-virtual {v2}, Lcom/winlator/xserver/Pointer;->getY()S

    move-result v2

    .line 262
    .local v2, "y":S
    invoke-virtual {v10}, Lcom/winlator/xserver/Window;->getFullscreenTransformation()Lcom/winlator/renderer/FullscreenTransformation;

    move-result-object v9

    .line 263
    .local v9, "fullscreenTransformation":Lcom/winlator/renderer/FullscreenTransformation;
    const/4 v3, 0x0

    if-eqz v9, :cond_6

    .line 264
    invoke-virtual {v9, v1, v2}, Lcom/winlator/renderer/FullscreenTransformation;->transformPointerCoords(SS)[S

    move-result-object v4

    .line 265
    .local v4, "transformedPoint":[S
    aget-short v1, v4, v3

    .line 266
    aget-short v2, v4, v14

    move v8, v1

    move v7, v2

    goto :goto_3

    .line 263
    .end local v4    # "transformedPoint":[S
    :cond_6
    move v8, v1

    move v7, v2

    .line 269
    .end local v1    # "x":S
    .end local v2    # "y":S
    .local v7, "y":S
    .local v8, "x":S
    :goto_3
    invoke-virtual {v10, v8, v7}, Lcom/winlator/xserver/Window;->rootPointToLocal(SS)[S

    move-result-object v17

    .line 270
    .local v17, "localPoint":[S
    if-eqz v12, :cond_7

    iget-object v1, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->keyboard:Lcom/winlator/xserver/Keyboard;

    invoke-virtual {v1, v11, v12}, Lcom/winlator/xserver/Keyboard;->hasKeysym(BI)Z

    move-result v1

    if-nez v1, :cond_7

    .line 271
    iget-object v1, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->keyboard:Lcom/winlator/xserver/Keyboard;

    invoke-virtual {v1, v11, v12, v12}, Lcom/winlator/xserver/Keyboard;->setKeysyms(BII)V

    .line 272
    new-instance v1, Lcom/winlator/xserver/events/MappingNotify;

    sget-object v2, Lcom/winlator/xserver/events/MappingNotify$Request;->KEYBOARD:Lcom/winlator/xserver/events/MappingNotify$Request;

    invoke-direct {v1, v2, v11, v14}, Lcom/winlator/xserver/events/MappingNotify;-><init>(Lcom/winlator/xserver/events/MappingNotify$Request;BI)V

    invoke-virtual {v10, v1}, Lcom/winlator/xserver/Window;->sendEvent(Lcom/winlator/xserver/events/Event;)V

    .line 275
    :cond_7
    new-instance v6, Lcom/winlator/xserver/events/KeyPress;

    iget-object v1, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    iget-object v4, v1, Lcom/winlator/xserver/WindowManager;->rootWindow:Lcom/winlator/xserver/Window;

    aget-short v18, v17, v3

    aget-short v19, v17, v14

    move-object v1, v6

    move/from16 v2, p1

    move-object v3, v4

    move-object v4, v10

    move-object v5, v15

    move-object v0, v6

    move v6, v8

    move/from16 v20, v7

    .end local v7    # "y":S
    .local v20, "y":S
    move/from16 v21, v8

    .end local v8    # "x":S
    .local v21, "x":S
    move/from16 v8, v18

    move-object/from16 v18, v9

    .end local v9    # "fullscreenTransformation":Lcom/winlator/renderer/FullscreenTransformation;
    .local v18, "fullscreenTransformation":Lcom/winlator/renderer/FullscreenTransformation;
    move/from16 v9, v19

    move-object v11, v10

    .end local v10    # "eventWindow":Lcom/winlator/xserver/Window;
    .local v11, "eventWindow":Lcom/winlator/xserver/Window;
    move-object/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/winlator/xserver/events/KeyPress;-><init>(BLcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;SSSSLcom/winlator/core/Bitmask;)V

    invoke-virtual {v11, v14, v0}, Lcom/winlator/xserver/Window;->sendEvent(ILcom/winlator/xserver/events/Event;)V

    .line 276
    return-void
.end method

.method public onKeyRelease(B)V
    .locals 20
    .param p1, "keycode"    # B

    .line 280
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    invoke-virtual {v1}, Lcom/winlator/xserver/WindowManager;->getFocusedWindow()Lcom/winlator/xserver/Window;

    move-result-object v1

    .line 281
    .local v1, "focusedWindow":Lcom/winlator/xserver/Window;
    if-nez v1, :cond_0

    return-void

    .line 282
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/winlator/xserver/InputDeviceManager;->updatePointWindow()V

    .line 284
    const/4 v2, 0x0

    .line 285
    .local v2, "eventWindow":Lcom/winlator/xserver/Window;
    const/4 v3, 0x0

    .line 286
    .local v3, "child":Lcom/winlator/xserver/Window;
    iget-object v4, v0, Lcom/winlator/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/xserver/Window;

    invoke-virtual {v1, v4}, Lcom/winlator/xserver/Window;->isAncestorOf(Lcom/winlator/xserver/Window;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_2

    .line 287
    iget-object v4, v0, Lcom/winlator/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/xserver/Window;

    invoke-virtual {v4, v5, v1}, Lcom/winlator/xserver/Window;->getAncestorWithEventId(ILcom/winlator/xserver/Window;)Lcom/winlator/xserver/Window;

    move-result-object v2

    .line 288
    iget-object v4, v0, Lcom/winlator/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/xserver/Window;

    invoke-virtual {v2, v4}, Lcom/winlator/xserver/Window;->isAncestorOf(Lcom/winlator/xserver/Window;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/winlator/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/xserver/Window;

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    move-object v3, v4

    .line 290
    :cond_2
    if-nez v2, :cond_4

    .line 291
    invoke-virtual {v1, v5}, Lcom/winlator/xserver/Window;->hasEventListenerFor(I)Z

    move-result v4

    if-nez v4, :cond_3

    return-void

    .line 292
    :cond_3
    move-object v2, v1

    .line 295
    :cond_4
    iget-object v4, v2, Lcom/winlator/xserver/Window;->attributes:Lcom/winlator/xserver/WindowAttributes;

    invoke-virtual {v4}, Lcom/winlator/xserver/WindowAttributes;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    return-void

    .line 297
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/xserver/InputDeviceManager;->getKeyButMask()Lcom/winlator/core/Bitmask;

    move-result-object v4

    .line 298
    .local v4, "keyButMask":Lcom/winlator/core/Bitmask;
    iget-object v6, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/xserver/XServer;->pointer:Lcom/winlator/xserver/Pointer;

    invoke-virtual {v6}, Lcom/winlator/xserver/Pointer;->getX()S

    move-result v6

    .line 299
    .local v6, "x":S
    iget-object v7, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/xserver/XServer;->pointer:Lcom/winlator/xserver/Pointer;

    invoke-virtual {v7}, Lcom/winlator/xserver/Pointer;->getY()S

    move-result v7

    .line 301
    .local v7, "y":S
    invoke-virtual {v2}, Lcom/winlator/xserver/Window;->getFullscreenTransformation()Lcom/winlator/renderer/FullscreenTransformation;

    move-result-object v15

    .line 302
    .local v15, "fullscreenTransformation":Lcom/winlator/renderer/FullscreenTransformation;
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v15, :cond_6

    .line 303
    invoke-virtual {v15, v6, v7}, Lcom/winlator/renderer/FullscreenTransformation;->transformPointerCoords(SS)[S

    move-result-object v10

    .line 304
    .local v10, "transformedPoint":[S
    aget-short v6, v10, v9

    .line 305
    aget-short v7, v10, v8

    move v14, v6

    move v13, v7

    goto :goto_1

    .line 302
    .end local v10    # "transformedPoint":[S
    :cond_6
    move v14, v6

    move v13, v7

    .line 308
    .end local v6    # "x":S
    .end local v7    # "y":S
    .local v13, "y":S
    .local v14, "x":S
    :goto_1
    invoke-virtual {v2, v14, v13}, Lcom/winlator/xserver/Window;->rootPointToLocal(SS)[S

    move-result-object v16

    .line 309
    .local v16, "localPoint":[S
    new-instance v12, Lcom/winlator/xserver/events/KeyRelease;

    iget-object v6, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    iget-object v10, v6, Lcom/winlator/xserver/WindowManager;->rootWindow:Lcom/winlator/xserver/Window;

    aget-short v17, v16, v9

    aget-short v18, v16, v8

    move-object v6, v12

    move/from16 v7, p1

    move-object v8, v10

    move-object v9, v2

    move-object v10, v3

    move v11, v14

    move-object v0, v12

    move v12, v13

    move/from16 v19, v13

    .end local v13    # "y":S
    .local v19, "y":S
    move/from16 v13, v17

    move/from16 v17, v14

    .end local v14    # "x":S
    .local v17, "x":S
    move/from16 v14, v18

    move-object/from16 v18, v15

    .end local v15    # "fullscreenTransformation":Lcom/winlator/renderer/FullscreenTransformation;
    .local v18, "fullscreenTransformation":Lcom/winlator/renderer/FullscreenTransformation;
    move-object v15, v4

    invoke-direct/range {v6 .. v15}, Lcom/winlator/xserver/events/KeyRelease;-><init>(BLcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;SSSSLcom/winlator/core/Bitmask;)V

    invoke-virtual {v2, v5, v0}, Lcom/winlator/xserver/Window;->sendEvent(ILcom/winlator/xserver/events/Event;)V

    .line 310
    return-void
.end method

.method public onMapWindow(Lcom/winlator/xserver/Window;)V
    .locals 0
    .param p1, "window"    # Lcom/winlator/xserver/Window;

    .line 34
    invoke-direct {p0}, Lcom/winlator/xserver/InputDeviceManager;->updatePointWindow()V

    .line 35
    return-void
.end method

.method public onPointerButtonPress(Lcom/winlator/xserver/Pointer$Button;)V
    .locals 20
    .param p1, "button"    # Lcom/winlator/xserver/Pointer$Button;

    .line 147
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 148
    iget-object v2, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/xserver/XServer;->getWinHandler()Lcom/winlator/winhandler/WinHandler;

    move-result-object v2

    .line 149
    .local v2, "winHandler":Lcom/winlator/winhandler/WinHandler;
    sget-object v5, Lcom/winlator/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/winlator/xserver/Pointer$Button;

    if-ne v1, v5, :cond_0

    const/16 v5, 0x78

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/winlator/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/winlator/xserver/Pointer$Button;

    if-ne v1, v5, :cond_1

    const/16 v5, -0x78

    goto :goto_0

    :cond_1
    move v5, v4

    .line 150
    .local v5, "wheelDelta":I
    :goto_0
    invoke-static {v1, v3}, Lcom/winlator/winhandler/MouseEventFlags;->getFlagFor(Lcom/winlator/xserver/Pointer$Button;Z)I

    move-result v3

    invoke-virtual {v2, v3, v4, v4, v5}, Lcom/winlator/winhandler/WinHandler;->mouseEvent(IIII)V

    .line 151
    .end local v2    # "winHandler":Lcom/winlator/winhandler/WinHandler;
    .end local v5    # "wheelDelta":I
    goto/16 :goto_4

    .line 153
    :cond_2
    iget-object v2, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/xserver/XServer;->grabManager:Lcom/winlator/xserver/GrabManager;

    invoke-virtual {v2}, Lcom/winlator/xserver/GrabManager;->getWindow()Lcom/winlator/xserver/Window;

    move-result-object v2

    .line 154
    .local v2, "grabWindow":Lcom/winlator/xserver/Window;
    const/4 v5, 0x4

    if-nez v2, :cond_3

    .line 155
    iget-object v6, v0, Lcom/winlator/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/xserver/Window;

    invoke-virtual {v6, v5}, Lcom/winlator/xserver/Window;->getAncestorWithEventId(I)Lcom/winlator/xserver/Window;

    move-result-object v2

    .line 156
    if-eqz v2, :cond_3

    iget-object v6, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/xserver/XServer;->grabManager:Lcom/winlator/xserver/GrabManager;

    invoke-virtual {v6, v2}, Lcom/winlator/xserver/GrabManager;->activatePointerGrab(Lcom/winlator/xserver/Window;)V

    .line 159
    :cond_3
    if-eqz v2, :cond_6

    iget-object v6, v2, Lcom/winlator/xserver/Window;->attributes:Lcom/winlator/xserver/WindowAttributes;

    invoke-virtual {v6}, Lcom/winlator/xserver/WindowAttributes;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 160
    invoke-direct/range {p0 .. p0}, Lcom/winlator/xserver/InputDeviceManager;->createPointerEventMask()Lcom/winlator/core/Bitmask;

    move-result-object v6

    .line 161
    .local v6, "eventMask":Lcom/winlator/core/Bitmask;
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xserver/Pointer$Button;->flag()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/winlator/core/Bitmask;->unset(I)V

    .line 163
    iget-object v7, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/xserver/XServer;->pointer:Lcom/winlator/xserver/Pointer;

    invoke-virtual {v7}, Lcom/winlator/xserver/Pointer;->getX()S

    move-result v7

    .line 164
    .local v7, "x":S
    iget-object v8, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v8, v8, Lcom/winlator/xserver/XServer;->pointer:Lcom/winlator/xserver/Pointer;

    invoke-virtual {v8}, Lcom/winlator/xserver/Pointer;->getY()S

    move-result v8

    .line 166
    .local v8, "y":S
    invoke-virtual {v2}, Lcom/winlator/xserver/Window;->getFullscreenTransformation()Lcom/winlator/renderer/FullscreenTransformation;

    move-result-object v15

    .line 167
    .local v15, "fullscreenTransformation":Lcom/winlator/renderer/FullscreenTransformation;
    if-eqz v15, :cond_4

    .line 168
    invoke-virtual {v15, v7, v8}, Lcom/winlator/renderer/FullscreenTransformation;->transformPointerCoords(SS)[S

    move-result-object v9

    .line 169
    .local v9, "transformedPoint":[S
    aget-short v7, v9, v4

    .line 170
    aget-short v8, v9, v3

    move v14, v7

    move v13, v8

    goto :goto_1

    .line 167
    .end local v9    # "transformedPoint":[S
    :cond_4
    move v14, v7

    move v13, v8

    .line 173
    .end local v7    # "x":S
    .end local v8    # "y":S
    .local v13, "y":S
    .local v14, "x":S
    :goto_1
    invoke-virtual {v2, v14, v13}, Lcom/winlator/xserver/Window;->rootPointToLocal(SS)[S

    move-result-object v17

    .line 174
    .local v17, "localPoint":[S
    iget-object v7, v0, Lcom/winlator/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/xserver/Window;

    invoke-virtual {v2, v7}, Lcom/winlator/xserver/Window;->isAncestorOf(Lcom/winlator/xserver/Window;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/winlator/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/xserver/Window;

    :goto_2
    move-object v11, v7

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .line 175
    .local v11, "child":Lcom/winlator/xserver/Window;
    :goto_3
    new-instance v12, Lcom/winlator/xserver/events/ButtonPress;

    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xserver/Pointer$Button;->code()B

    move-result v8

    iget-object v7, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    iget-object v9, v7, Lcom/winlator/xserver/WindowManager;->rootWindow:Lcom/winlator/xserver/Window;

    aget-short v4, v17, v4

    aget-short v3, v17, v3

    move-object v7, v12

    move-object v10, v2

    move-object v0, v12

    move v12, v14

    move/from16 v18, v13

    .end local v13    # "y":S
    .local v18, "y":S
    move/from16 v19, v14

    .end local v14    # "x":S
    .local v19, "x":S
    move v14, v4

    move-object v4, v15

    .end local v15    # "fullscreenTransformation":Lcom/winlator/renderer/FullscreenTransformation;
    .local v4, "fullscreenTransformation":Lcom/winlator/renderer/FullscreenTransformation;
    move v15, v3

    move-object/from16 v16, v6

    invoke-direct/range {v7 .. v16}, Lcom/winlator/xserver/events/ButtonPress;-><init>(BLcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;SSSSLcom/winlator/core/Bitmask;)V

    invoke-virtual {v2, v5, v0}, Lcom/winlator/xserver/Window;->sendEvent(ILcom/winlator/xserver/events/Event;)V

    .line 178
    .end local v2    # "grabWindow":Lcom/winlator/xserver/Window;
    .end local v4    # "fullscreenTransformation":Lcom/winlator/renderer/FullscreenTransformation;
    .end local v6    # "eventMask":Lcom/winlator/core/Bitmask;
    .end local v11    # "child":Lcom/winlator/xserver/Window;
    .end local v17    # "localPoint":[S
    .end local v18    # "y":S
    .end local v19    # "x":S
    :cond_6
    :goto_4
    return-void
.end method

.method public onPointerButtonRelease(Lcom/winlator/xserver/Pointer$Button;)V
    .locals 21
    .param p1, "button"    # Lcom/winlator/xserver/Pointer$Button;

    .line 182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    invoke-virtual {v1}, Lcom/winlator/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    invoke-virtual {v1}, Lcom/winlator/xserver/XServer;->getWinHandler()Lcom/winlator/winhandler/WinHandler;

    move-result-object v1

    .line 184
    .local v1, "winHandler":Lcom/winlator/winhandler/WinHandler;
    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lcom/winlator/winhandler/MouseEventFlags;->getFlagFor(Lcom/winlator/xserver/Pointer$Button;Z)I

    move-result v4

    invoke-virtual {v1, v4, v2, v2, v2}, Lcom/winlator/winhandler/WinHandler;->mouseEvent(IIII)V

    .line 185
    .end local v1    # "winHandler":Lcom/winlator/winhandler/WinHandler;
    goto/16 :goto_4

    .line 187
    :cond_0
    move-object/from16 v3, p1

    invoke-direct/range {p0 .. p0}, Lcom/winlator/xserver/InputDeviceManager;->createPointerEventMask()Lcom/winlator/core/Bitmask;

    move-result-object v1

    .line 188
    .local v1, "eventMask":Lcom/winlator/core/Bitmask;
    iget-object v4, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/xserver/XServer;->grabManager:Lcom/winlator/xserver/GrabManager;

    invoke-virtual {v4}, Lcom/winlator/xserver/GrabManager;->getWindow()Lcom/winlator/xserver/Window;

    move-result-object v4

    .line 189
    .local v4, "grabWindow":Lcom/winlator/xserver/Window;
    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-object v6, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/xserver/XServer;->grabManager:Lcom/winlator/xserver/GrabManager;

    invoke-virtual {v6}, Lcom/winlator/xserver/GrabManager;->isOwnerEvents()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    move-object v6, v5

    goto :goto_1

    :goto_0
    iget-object v6, v0, Lcom/winlator/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/xserver/Window;

    invoke-virtual {v6, v1}, Lcom/winlator/xserver/Window;->getAncestorWithEventMask(Lcom/winlator/core/Bitmask;)Lcom/winlator/xserver/Window;

    move-result-object v6

    :goto_1
    move-object v15, v6

    .line 191
    .local v15, "window":Lcom/winlator/xserver/Window;
    if-nez v4, :cond_3

    if-eqz v15, :cond_7

    .line 192
    :cond_3
    if-eqz v15, :cond_4

    move-object v6, v15

    goto :goto_2

    :cond_4
    move-object v6, v4

    :goto_2
    move-object v14, v6

    .line 194
    .local v14, "eventWindow":Lcom/winlator/xserver/Window;
    iget-object v6, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/xserver/XServer;->pointer:Lcom/winlator/xserver/Pointer;

    invoke-virtual {v6}, Lcom/winlator/xserver/Pointer;->getX()S

    move-result v6

    .line 195
    .local v6, "x":S
    iget-object v7, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/xserver/XServer;->pointer:Lcom/winlator/xserver/Pointer;

    invoke-virtual {v7}, Lcom/winlator/xserver/Pointer;->getY()S

    move-result v7

    .line 197
    .local v7, "y":S
    invoke-virtual {v14}, Lcom/winlator/xserver/Window;->getFullscreenTransformation()Lcom/winlator/renderer/FullscreenTransformation;

    move-result-object v13

    .line 198
    .local v13, "fullscreenTransformation":Lcom/winlator/renderer/FullscreenTransformation;
    const/4 v8, 0x1

    if-eqz v13, :cond_5

    .line 199
    invoke-virtual {v13, v6, v7}, Lcom/winlator/renderer/FullscreenTransformation;->transformPointerCoords(SS)[S

    move-result-object v9

    .line 200
    .local v9, "transformedPoint":[S
    aget-short v6, v9, v2

    .line 201
    aget-short v7, v9, v8

    move v12, v6

    move v11, v7

    goto :goto_3

    .line 198
    .end local v9    # "transformedPoint":[S
    :cond_5
    move v12, v6

    move v11, v7

    .line 204
    .end local v6    # "x":S
    .end local v7    # "y":S
    .local v11, "y":S
    .local v12, "x":S
    :goto_3
    invoke-virtual {v14, v12, v11}, Lcom/winlator/xserver/Window;->rootPointToLocal(SS)[S

    move-result-object v16

    .line 205
    .local v16, "localPoint":[S
    iget-object v6, v0, Lcom/winlator/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/xserver/Window;

    invoke-virtual {v14, v6}, Lcom/winlator/xserver/Window;->isAncestorOf(Lcom/winlator/xserver/Window;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v5, v0, Lcom/winlator/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/xserver/Window;

    :cond_6
    move-object v9, v5

    .line 206
    .local v9, "child":Lcom/winlator/xserver/Window;
    new-instance v17, Lcom/winlator/xserver/events/ButtonRelease;

    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xserver/Pointer$Button;->code()B

    move-result v6

    iget-object v5, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v5, v5, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    iget-object v7, v5, Lcom/winlator/xserver/WindowManager;->rootWindow:Lcom/winlator/xserver/Window;

    aget-short v2, v16, v2

    aget-short v18, v16, v8

    move-object/from16 v5, v17

    move-object v8, v14

    move v10, v12

    move/from16 v19, v11

    .end local v11    # "y":S
    .local v19, "y":S
    move/from16 v20, v12

    .end local v12    # "x":S
    .local v20, "x":S
    move v12, v2

    move-object v2, v13

    .end local v13    # "fullscreenTransformation":Lcom/winlator/renderer/FullscreenTransformation;
    .local v2, "fullscreenTransformation":Lcom/winlator/renderer/FullscreenTransformation;
    move/from16 v13, v18

    move-object/from16 v18, v14

    .end local v14    # "eventWindow":Lcom/winlator/xserver/Window;
    .local v18, "eventWindow":Lcom/winlator/xserver/Window;
    move-object v14, v1

    invoke-direct/range {v5 .. v14}, Lcom/winlator/xserver/events/ButtonRelease;-><init>(BLcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;SSSSLcom/winlator/core/Bitmask;)V

    .line 207
    .local v5, "buttonRelease":Lcom/winlator/xserver/events/ButtonRelease;
    invoke-direct {v0, v15, v1, v5}, Lcom/winlator/xserver/InputDeviceManager;->sendEvent(Lcom/winlator/xserver/Window;Lcom/winlator/core/Bitmask;Lcom/winlator/xserver/events/Event;)V

    .line 210
    .end local v2    # "fullscreenTransformation":Lcom/winlator/renderer/FullscreenTransformation;
    .end local v5    # "buttonRelease":Lcom/winlator/xserver/events/ButtonRelease;
    .end local v9    # "child":Lcom/winlator/xserver/Window;
    .end local v16    # "localPoint":[S
    .end local v18    # "eventWindow":Lcom/winlator/xserver/Window;
    .end local v19    # "y":S
    .end local v20    # "x":S
    :cond_7
    iget-object v2, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/xserver/XServer;->pointer:Lcom/winlator/xserver/Pointer;

    invoke-virtual {v2}, Lcom/winlator/xserver/Pointer;->getButtonMask()Lcom/winlator/core/Bitmask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/winlator/core/Bitmask;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/xserver/XServer;->grabManager:Lcom/winlator/xserver/GrabManager;

    invoke-virtual {v2}, Lcom/winlator/xserver/GrabManager;->isReleaseWithButtons()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 211
    iget-object v2, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/xserver/XServer;->grabManager:Lcom/winlator/xserver/GrabManager;

    invoke-virtual {v2}, Lcom/winlator/xserver/GrabManager;->deactivatePointerGrab()V

    .line 214
    .end local v1    # "eventMask":Lcom/winlator/core/Bitmask;
    .end local v4    # "grabWindow":Lcom/winlator/xserver/Window;
    .end local v15    # "window":Lcom/winlator/xserver/Window;
    :cond_8
    :goto_4
    return-void
.end method

.method public onPointerMove(SS)V
    .locals 21
    .param p1, "x"    # S
    .param p2, "y"    # S

    .line 218
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/winlator/xserver/InputDeviceManager;->updatePointWindow()V

    .line 219
    invoke-direct/range {p0 .. p0}, Lcom/winlator/xserver/InputDeviceManager;->createPointerEventMask()Lcom/winlator/core/Bitmask;

    move-result-object v1

    .line 220
    .local v1, "eventMask":Lcom/winlator/core/Bitmask;
    iget-object v2, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/xserver/XServer;->grabManager:Lcom/winlator/xserver/GrabManager;

    invoke-virtual {v2}, Lcom/winlator/xserver/GrabManager;->getWindow()Lcom/winlator/xserver/Window;

    move-result-object v2

    .line 221
    .local v2, "grabWindow":Lcom/winlator/xserver/Window;
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v4, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/xserver/XServer;->grabManager:Lcom/winlator/xserver/GrabManager;

    invoke-virtual {v4}, Lcom/winlator/xserver/GrabManager;->isOwnerEvents()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move-object v4, v3

    goto :goto_1

    :goto_0
    iget-object v4, v0, Lcom/winlator/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/xserver/Window;

    invoke-virtual {v4, v1}, Lcom/winlator/xserver/Window;->getAncestorWithEventMask(Lcom/winlator/core/Bitmask;)Lcom/winlator/xserver/Window;

    move-result-object v4

    .line 223
    .local v4, "window":Lcom/winlator/xserver/Window;
    :goto_1
    if-nez v2, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    goto :goto_2

    :cond_3
    move/from16 v17, p1

    move/from16 v20, p2

    goto/16 :goto_5

    .line 224
    :goto_2
    if-eqz v4, :cond_4

    move-object v5, v4

    goto :goto_3

    :cond_4
    move-object v5, v2

    .line 226
    .local v5, "eventWindow":Lcom/winlator/xserver/Window;
    :goto_3
    invoke-virtual {v5}, Lcom/winlator/xserver/Window;->getFullscreenTransformation()Lcom/winlator/renderer/FullscreenTransformation;

    move-result-object v15

    .line 227
    .local v15, "fullscreenTransformation":Lcom/winlator/renderer/FullscreenTransformation;
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v15, :cond_5

    .line 228
    move/from16 v8, p1

    move/from16 v9, p2

    invoke-virtual {v15, v8, v9}, Lcom/winlator/renderer/FullscreenTransformation;->transformPointerCoords(SS)[S

    move-result-object v10

    .line 229
    .local v10, "transformedPoint":[S
    aget-short v8, v10, v7

    .line 230
    .end local p1    # "x":S
    .local v8, "x":S
    aget-short v9, v10, v6

    move v14, v8

    move v13, v9

    .end local p2    # "y":S
    .local v9, "y":S
    goto :goto_4

    .line 227
    .end local v8    # "x":S
    .end local v9    # "y":S
    .end local v10    # "transformedPoint":[S
    .restart local p1    # "x":S
    .restart local p2    # "y":S
    :cond_5
    move/from16 v8, p1

    move/from16 v9, p2

    move v14, v8

    move v13, v9

    .line 233
    .end local p1    # "x":S
    .end local p2    # "y":S
    .local v13, "y":S
    .local v14, "x":S
    :goto_4
    invoke-virtual {v5, v14, v13}, Lcom/winlator/xserver/Window;->rootPointToLocal(SS)[S

    move-result-object v16

    .line 234
    .local v16, "localPoint":[S
    iget-object v8, v0, Lcom/winlator/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/xserver/Window;

    invoke-virtual {v5, v8}, Lcom/winlator/xserver/Window;->isAncestorOf(Lcom/winlator/xserver/Window;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v3, v0, Lcom/winlator/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/xserver/Window;

    :cond_6
    move-object v10, v3

    .line 235
    .local v10, "child":Lcom/winlator/xserver/Window;
    new-instance v3, Lcom/winlator/xserver/events/MotionNotify;

    iget-object v8, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v8, v8, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    iget-object v8, v8, Lcom/winlator/xserver/WindowManager;->rootWindow:Lcom/winlator/xserver/Window;

    aget-short v17, v16, v7

    aget-short v18, v16, v6

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/xserver/InputDeviceManager;->getKeyButMask()Lcom/winlator/core/Bitmask;

    move-result-object v19

    const/4 v7, 0x0

    move-object v6, v3

    move-object v9, v5

    move v11, v14

    move v12, v13

    move/from16 v20, v13

    .end local v13    # "y":S
    .local v20, "y":S
    move/from16 v13, v17

    move/from16 v17, v14

    .end local v14    # "x":S
    .local v17, "x":S
    move/from16 v14, v18

    move-object/from16 v18, v15

    .end local v15    # "fullscreenTransformation":Lcom/winlator/renderer/FullscreenTransformation;
    .local v18, "fullscreenTransformation":Lcom/winlator/renderer/FullscreenTransformation;
    move-object/from16 v15, v19

    invoke-direct/range {v6 .. v15}, Lcom/winlator/xserver/events/MotionNotify;-><init>(ZLcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;SSSSLcom/winlator/core/Bitmask;)V

    invoke-direct {v0, v4, v1, v3}, Lcom/winlator/xserver/InputDeviceManager;->sendEvent(Lcom/winlator/xserver/Window;Lcom/winlator/core/Bitmask;Lcom/winlator/xserver/events/Event;)V

    .line 237
    .end local v5    # "eventWindow":Lcom/winlator/xserver/Window;
    .end local v10    # "child":Lcom/winlator/xserver/Window;
    .end local v16    # "localPoint":[S
    .end local v18    # "fullscreenTransformation":Lcom/winlator/renderer/FullscreenTransformation;
    :goto_5
    return-void
.end method

.method public onUnmapWindow(Lcom/winlator/xserver/Window;)V
    .locals 0
    .param p1, "window"    # Lcom/winlator/xserver/Window;

    .line 39
    invoke-direct {p0}, Lcom/winlator/xserver/InputDeviceManager;->updatePointWindow()V

    .line 40
    return-void
.end method

.method public onUpdateWindowGeometry(Lcom/winlator/xserver/Window;Z)V
    .locals 0
    .param p1, "window"    # Lcom/winlator/xserver/Window;
    .param p2, "resized"    # Z

    .line 49
    invoke-direct {p0}, Lcom/winlator/xserver/InputDeviceManager;->updatePointWindow()V

    .line 50
    return-void
.end method

.method public sendEnterLeaveNotify(Lcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;Lcom/winlator/xserver/events/PointerWindowEvent$Mode;)V
    .locals 30
    .param p1, "windowA"    # Lcom/winlator/xserver/Window;
    .param p2, "windowB"    # Lcom/winlator/xserver/Window;
    .param p3, "mode"    # Lcom/winlator/xserver/events/PointerWindowEvent$Mode;

    .line 104
    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    if-ne v13, v14, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v1, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    invoke-virtual {v1}, Lcom/winlator/xserver/WindowManager;->getFocusedWindow()Lcom/winlator/xserver/Window;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/winlator/xserver/Window;->isAncestorOf(Lcom/winlator/xserver/Window;)Z

    move-result v15

    .line 107
    .local v15, "sameScreenAndFocus":Z
    sget-object v1, Lcom/winlator/xserver/events/PointerWindowEvent$Detail;->NONLINEAR:Lcom/winlator/xserver/events/PointerWindowEvent$Detail;

    .line 108
    .local v1, "detailA":Lcom/winlator/xserver/events/PointerWindowEvent$Detail;
    sget-object v2, Lcom/winlator/xserver/events/PointerWindowEvent$Detail;->NONLINEAR:Lcom/winlator/xserver/events/PointerWindowEvent$Detail;

    .line 110
    .local v2, "detailB":Lcom/winlator/xserver/events/PointerWindowEvent$Detail;
    invoke-virtual/range {p1 .. p2}, Lcom/winlator/xserver/Window;->isAncestorOf(Lcom/winlator/xserver/Window;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    sget-object v1, Lcom/winlator/xserver/events/PointerWindowEvent$Detail;->ANCESTOR:Lcom/winlator/xserver/events/PointerWindowEvent$Detail;

    .line 112
    sget-object v2, Lcom/winlator/xserver/events/PointerWindowEvent$Detail;->INFERIOR:Lcom/winlator/xserver/events/PointerWindowEvent$Detail;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {v14, v13}, Lcom/winlator/xserver/Window;->isAncestorOf(Lcom/winlator/xserver/Window;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    sget-object v2, Lcom/winlator/xserver/events/PointerWindowEvent$Detail;->ANCESTOR:Lcom/winlator/xserver/events/PointerWindowEvent$Detail;

    .line 116
    sget-object v1, Lcom/winlator/xserver/events/PointerWindowEvent$Detail;->INFERIOR:Lcom/winlator/xserver/events/PointerWindowEvent$Detail;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    goto :goto_0

    .line 114
    :cond_2
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 119
    .end local v1    # "detailA":Lcom/winlator/xserver/events/PointerWindowEvent$Detail;
    .end local v2    # "detailB":Lcom/winlator/xserver/events/PointerWindowEvent$Detail;
    .local v16, "detailA":Lcom/winlator/xserver/events/PointerWindowEvent$Detail;
    .local v17, "detailB":Lcom/winlator/xserver/events/PointerWindowEvent$Detail;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/xserver/InputDeviceManager;->getKeyButMask()Lcom/winlator/core/Bitmask;

    move-result-object v18

    .line 121
    .local v18, "keyButMask":Lcom/winlator/core/Bitmask;
    iget-object v1, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->pointer:Lcom/winlator/xserver/Pointer;

    invoke-virtual {v1}, Lcom/winlator/xserver/Pointer;->getX()S

    move-result v1

    .line 122
    .local v1, "xA":S
    iget-object v2, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/xserver/XServer;->pointer:Lcom/winlator/xserver/Pointer;

    invoke-virtual {v2}, Lcom/winlator/xserver/Pointer;->getY()S

    move-result v2

    .line 123
    .local v2, "yA":S
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/xserver/Window;->getFullscreenTransformation()Lcom/winlator/renderer/FullscreenTransformation;

    move-result-object v12

    .line 124
    .local v12, "fullscreenTransformationB":Lcom/winlator/renderer/FullscreenTransformation;
    const/16 v19, 0x1

    const/16 v20, 0x0

    if-eqz v12, :cond_3

    .line 125
    invoke-virtual {v12, v1, v2}, Lcom/winlator/renderer/FullscreenTransformation;->transformPointerCoords(SS)[S

    move-result-object v3

    .line 126
    .local v3, "transformedPoint":[S
    aget-short v1, v3, v20

    .line 127
    aget-short v2, v3, v19

    move v11, v1

    move v10, v2

    goto :goto_1

    .line 124
    .end local v3    # "transformedPoint":[S
    :cond_3
    move v11, v1

    move v10, v2

    .line 129
    .end local v1    # "xA":S
    .end local v2    # "yA":S
    .local v10, "yA":S
    .local v11, "xA":S
    :goto_1
    invoke-virtual {v13, v11, v10}, Lcom/winlator/xserver/Window;->rootPointToLocal(SS)[S

    move-result-object v21

    .line 131
    .local v21, "localPointA":[S
    iget-object v1, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->pointer:Lcom/winlator/xserver/Pointer;

    invoke-virtual {v1}, Lcom/winlator/xserver/Pointer;->getX()S

    move-result v1

    .line 132
    .local v1, "xB":S
    iget-object v2, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/xserver/XServer;->pointer:Lcom/winlator/xserver/Pointer;

    invoke-virtual {v2}, Lcom/winlator/xserver/Pointer;->getY()S

    move-result v2

    .line 133
    .local v2, "yB":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xserver/Window;->getFullscreenTransformation()Lcom/winlator/renderer/FullscreenTransformation;

    move-result-object v9

    .line 134
    .local v9, "fullscreenTransformationA":Lcom/winlator/renderer/FullscreenTransformation;
    if-eqz v9, :cond_4

    .line 135
    invoke-virtual {v9, v1, v2}, Lcom/winlator/renderer/FullscreenTransformation;->transformPointerCoords(SS)[S

    move-result-object v3

    .line 136
    .restart local v3    # "transformedPoint":[S
    aget-short v1, v3, v20

    .line 137
    aget-short v2, v3, v19

    move v8, v1

    move v7, v2

    goto :goto_2

    .line 134
    .end local v3    # "transformedPoint":[S
    :cond_4
    move v8, v1

    move v7, v2

    .line 139
    .end local v1    # "xB":S
    .end local v2    # "yB":S
    .local v7, "yB":S
    .local v8, "xB":S
    :goto_2
    invoke-virtual {v14, v8, v7}, Lcom/winlator/xserver/Window;->rootPointToLocal(SS)[S

    move-result-object v22

    .line 141
    .local v22, "localPointB":[S
    new-instance v6, Lcom/winlator/xserver/events/LeaveNotify;

    iget-object v1, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    iget-object v3, v1, Lcom/winlator/xserver/WindowManager;->rootWindow:Lcom/winlator/xserver/Window;

    aget-short v23, v21, v20

    aget-short v24, v21, v19

    const/4 v5, 0x0

    move-object v1, v6

    move-object/from16 v2, v16

    move-object/from16 v4, p1

    move-object/from16 v25, v6

    move v6, v11

    move/from16 v26, v7

    .end local v7    # "yB":S
    .local v26, "yB":S
    move v7, v10

    move/from16 v27, v8

    .end local v8    # "xB":S
    .local v27, "xB":S
    move/from16 v8, v23

    move-object/from16 v23, v9

    .end local v9    # "fullscreenTransformationA":Lcom/winlator/renderer/FullscreenTransformation;
    .local v23, "fullscreenTransformationA":Lcom/winlator/renderer/FullscreenTransformation;
    move/from16 v9, v24

    move/from16 v24, v10

    .end local v10    # "yA":S
    .local v24, "yA":S
    move-object/from16 v10, v18

    move/from16 v28, v11

    .end local v11    # "xA":S
    .local v28, "xA":S
    move-object/from16 v11, p3

    move-object/from16 v29, v12

    .end local v12    # "fullscreenTransformationB":Lcom/winlator/renderer/FullscreenTransformation;
    .local v29, "fullscreenTransformationB":Lcom/winlator/renderer/FullscreenTransformation;
    move v12, v15

    invoke-direct/range {v1 .. v12}, Lcom/winlator/xserver/events/LeaveNotify;-><init>(Lcom/winlator/xserver/events/PointerWindowEvent$Detail;Lcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;SSSSLcom/winlator/core/Bitmask;Lcom/winlator/xserver/events/PointerWindowEvent$Mode;Z)V

    const/16 v1, 0x20

    move-object/from16 v2, v25

    invoke-direct {v0, v13, v1, v2}, Lcom/winlator/xserver/InputDeviceManager;->sendEvent(Lcom/winlator/xserver/Window;ILcom/winlator/xserver/events/Event;)V

    .line 142
    new-instance v12, Lcom/winlator/xserver/events/EnterNotify;

    iget-object v1, v0, Lcom/winlator/xserver/InputDeviceManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    iget-object v3, v1, Lcom/winlator/xserver/WindowManager;->rootWindow:Lcom/winlator/xserver/Window;

    aget-short v8, v22, v20

    aget-short v9, v22, v19

    move-object v1, v12

    move-object/from16 v2, v17

    move-object/from16 v4, p2

    move/from16 v6, v27

    move/from16 v7, v26

    move-object v13, v12

    move v12, v15

    invoke-direct/range {v1 .. v12}, Lcom/winlator/xserver/events/EnterNotify;-><init>(Lcom/winlator/xserver/events/PointerWindowEvent$Detail;Lcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;SSSSLcom/winlator/core/Bitmask;Lcom/winlator/xserver/events/PointerWindowEvent$Mode;Z)V

    const/16 v1, 0x10

    invoke-direct {v0, v14, v1, v13}, Lcom/winlator/xserver/InputDeviceManager;->sendEvent(Lcom/winlator/xserver/Window;ILcom/winlator/xserver/events/Event;)V

    .line 143
    return-void
.end method
