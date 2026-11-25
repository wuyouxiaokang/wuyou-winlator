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
.class public Lcom/wuyouwin/widget/TouchpadView;
.super Landroid/view/View;
.source "TouchpadView.java"

# interfaces
.implements Landroid/view/View$OnCapturedPointerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/widget/TouchpadView$Finger;
    }
.end annotation


# static fields
.field public static wlTouchDirect:Z

.field public static wlTouchpad:Lcom/wuyouwin/widget/TouchpadView;


# instance fields
.field private fingerPointerButtonLeft:Lcom/wuyouwin/widget/TouchpadView$Finger;

.field private fingerPointerButtonRight:Lcom/wuyouwin/widget/TouchpadView$Finger;

.field private final fingers:[Lcom/wuyouwin/widget/TouchpadView$Finger;

.field private fourFingersTapCallback:Ljava/lang/Runnable;

.field private mouseMoveFinger:Lcom/wuyouwin/widget/TouchpadView$Finger;

.field private moveCursorToTouchpoint:Z

.field private numFingers:B

.field private pointerButtonLeftEnabled:Z

.field private pointerButtonRightEnabled:Z

.field private scrollAccumY:F

.field private scrolling:Z

.field private sensitivity:F

.field private twoFingersTapCallback:Ljava/lang/Runnable;

.field private threeFingersTapCallback:Ljava/lang/Runnable;

.field private final xServer:Lcom/wuyouwin/xserver/XServer;

.field private final xform:[F


# direct methods
.method public static synthetic $r8$lambda$9ccwxMmUQJ0jV0j62l-6RyF3BCo(Lcom/wuyouwin/widget/TouchpadView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/wuyouwin/widget/TouchpadView;->lambda$releasePointerButtonRight$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$SvCOs_k45KP_T_FmCap1hhgRurw(Lcom/wuyouwin/widget/TouchpadView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/wuyouwin/widget/TouchpadView;->lambda$releasePointerButtonLeft$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$tSn8p2VSC3dS0jrEHMlxvJKlmeM(Lcom/wuyouwin/widget/TouchpadView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/wuyouwin/widget/TouchpadView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/wuyouwin/xserver/XServer;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xServer"    # Lcom/wuyouwin/xserver/XServer;
    .param p3, "capturePointerOnExternalMouse"    # Z

    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wuyouwin/widget/TouchpadView$Finger;

    iput-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->fingers:[Lcom/wuyouwin/widget/TouchpadView$Finger;

    .line 30
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/wuyouwin/widget/TouchpadView;->numFingers:B

    .line 31
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/wuyouwin/widget/TouchpadView;->sensitivity:F

    .line 32
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/wuyouwin/widget/TouchpadView;->mouseMoveFinger:Lcom/wuyouwin/widget/TouchpadView$Finger;

    .line 33
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/wuyouwin/widget/TouchpadView;->pointerButtonLeftEnabled:Z

    .line 34
    iput-boolean v1, p0, Lcom/wuyouwin/widget/TouchpadView;->pointerButtonRightEnabled:Z

    .line 35
    iput-boolean v0, p0, Lcom/wuyouwin/widget/TouchpadView;->moveCursorToTouchpoint:Z

    .line 38
    const/4 v2, 0x0

    iput v2, p0, Lcom/wuyouwin/widget/TouchpadView;->scrollAccumY:F

    .line 39
    iput-boolean v0, p0, Lcom/wuyouwin/widget/TouchpadView;->scrolling:Z

    .line 42
    invoke-static {}, Lcom/wuyouwin/math/XForm;->getInstance()[F

    move-result-object v2

    iput-object v2, p0, Lcom/wuyouwin/widget/TouchpadView;->xform:[F

    .line 46
    iput-object p2, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    sput-object p0, Lcom/wuyouwin/widget/TouchpadView;->wlTouchpad:Lcom/wuyouwin/widget/TouchpadView;

    .line 47
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-static {}, Lcom/wuyouwin/widget/TouchpadView;->createTransparentBackground()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 50
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 51
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 52
    invoke-static {}, Lcom/wuyouwin/core/AppUtils;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/wuyouwin/core/AppUtils;->getScreenHeight()I

    move-result v1

    iget-object v2, p2, Lcom/wuyouwin/xserver/XServer;->screenInfo:Lcom/wuyouwin/xserver/ScreenInfo;

    iget-short v2, v2, Lcom/wuyouwin/xserver/ScreenInfo;->width:S

    iget-object v3, p2, Lcom/wuyouwin/xserver/XServer;->screenInfo:Lcom/wuyouwin/xserver/ScreenInfo;

    iget-short v3, v3, Lcom/wuyouwin/xserver/ScreenInfo;->height:S

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/wuyouwin/widget/TouchpadView;->updateXform(IIII)V

    .line 54
    if-eqz p3, :cond_0

    .line 55
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnCapturedPointerListener(Landroid/view/View$OnCapturedPointerListener;)V

    .line 56
    new-instance v0, Lcom/wuyouwin/widget/TouchpadView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/wuyouwin/widget/TouchpadView$$ExternalSyntheticLambda0;-><init>(Lcom/wuyouwin/widget/TouchpadView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/wuyouwin/widget/TouchpadView;)[F
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/widget/TouchpadView;

    .line 22
    iget-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->xform:[F

    return-object v0
.end method

.method static synthetic access$100(Lcom/wuyouwin/widget/TouchpadView;)F
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/widget/TouchpadView;

    .line 22
    iget v0, p0, Lcom/wuyouwin/widget/TouchpadView;->sensitivity:F

    return v0
.end method

.method private static createTransparentBackground()Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .line 61
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 62
    .local v0, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 63
    .local v1, "focusedDrawable":Landroid/graphics/drawable/ColorDrawable;
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 65
    .local v3, "defaultDrawable":Landroid/graphics/drawable/ColorDrawable;
    const v4, 0x101009c

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 66
    new-array v2, v2, [I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 67
    return-object v0
.end method

.method private findSecondFinger(Lcom/wuyouwin/widget/TouchpadView$Finger;)Lcom/wuyouwin/widget/TouchpadView$Finger;
    .locals 2
    .param p1, "finger"    # Lcom/wuyouwin/widget/TouchpadView$Finger;

    .line 286
    const/4 v0, 0x0

    .local v0, "i":B
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 287
    iget-object v1, p0, Lcom/wuyouwin/widget/TouchpadView;->fingers:[Lcom/wuyouwin/widget/TouchpadView$Finger;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wuyouwin/widget/TouchpadView;->fingers:[Lcom/wuyouwin/widget/TouchpadView$Finger;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/wuyouwin/widget/TouchpadView;->fingers:[Lcom/wuyouwin/widget/TouchpadView$Finger;

    aget-object v1, v1, v0

    return-object v1

    .line 286
    :cond_0
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_0

    :cond_1
    nop

    .line 289
    .end local v0    # "i":B
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleFingerMove(Lcom/wuyouwin/widget/TouchpadView$Finger;)V
    .locals 11
    .param p1, "finger1"    # Lcom/wuyouwin/widget/TouchpadView$Finger;

    .line 220
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 221
    :cond_0
    const/4 v0, 0x0

    .line 223
    .local v0, "skipPointerMove":Z
    iget-byte v1, p0, Lcom/wuyouwin/widget/TouchpadView;->numFingers:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/wuyouwin/widget/TouchpadView;->findSecondFinger(Lcom/wuyouwin/widget/TouchpadView$Finger;)Lcom/wuyouwin/widget/TouchpadView$Finger;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 224
    .local v1, "finger2":Lcom/wuyouwin/widget/TouchpadView$Finger;
    :goto_0
    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 225
    iget-object v4, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v4, v4, Lcom/wuyouwin/xserver/XServer;->screenInfo:Lcom/wuyouwin/xserver/ScreenInfo;

    iget-short v4, v4, Lcom/wuyouwin/xserver/ScreenInfo;->width:S

    iget-object v5, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v5, v5, Lcom/wuyouwin/xserver/XServer;->screenInfo:Lcom/wuyouwin/xserver/ScreenInfo;

    iget-short v5, v5, Lcom/wuyouwin/xserver/ScreenInfo;->height:S

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v5, v4

    .line 226
    .local v5, "resolutionScale":F
    invoke-static {p1}, Lcom/wuyouwin/widget/TouchpadView$Finger;->access$300(Lcom/wuyouwin/widget/TouchpadView$Finger;)I

    move-result v4

    invoke-static {v1}, Lcom/wuyouwin/widget/TouchpadView$Finger;->access$300(Lcom/wuyouwin/widget/TouchpadView$Finger;)I

    move-result v6

    sub-int/2addr v4, v6

    int-to-double v6, v4

    invoke-static {p1}, Lcom/wuyouwin/widget/TouchpadView$Finger;->access$400(Lcom/wuyouwin/widget/TouchpadView$Finger;)I

    move-result v4

    invoke-static {v1}, Lcom/wuyouwin/widget/TouchpadView$Finger;->access$400(Lcom/wuyouwin/widget/TouchpadView$Finger;)I

    move-result v8

    sub-int/2addr v4, v8

    int-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v4, v6

    mul-float/2addr v4, v5

    .line 228
    .local v4, "currDistance":F
    const/high16 v6, 0x43af0000    # 350.0f

    cmpg-float v7, v4, v6

    if-gez v7, :cond_4

    .line 229
    iget v6, p0, Lcom/wuyouwin/widget/TouchpadView;->scrollAccumY:F

    invoke-static {p1}, Lcom/wuyouwin/widget/TouchpadView$Finger;->access$400(Lcom/wuyouwin/widget/TouchpadView$Finger;)I

    move-result v7

    invoke-static {v1}, Lcom/wuyouwin/widget/TouchpadView$Finger;->access$400(Lcom/wuyouwin/widget/TouchpadView$Finger;)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    invoke-static {p1}, Lcom/wuyouwin/widget/TouchpadView$Finger;->access$500(Lcom/wuyouwin/widget/TouchpadView$Finger;)I

    move-result v9

    invoke-static {v1}, Lcom/wuyouwin/widget/TouchpadView$Finger;->access$500(Lcom/wuyouwin/widget/TouchpadView$Finger;)I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v8

    sub-float/2addr v7, v9

    add-float/2addr v6, v7

    iput v6, p0, Lcom/wuyouwin/widget/TouchpadView;->scrollAccumY:F

    .line 231
    iget v6, p0, Lcom/wuyouwin/widget/TouchpadView;->scrollAccumY:F

    const/high16 v7, -0x3d380000    # -100.0f

    cmpg-float v6, v6, v7

    const/4 v7, 0x0

    if-gez v6, :cond_2

    .line 232
    iget-object v6, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    sget-object v8, Lcom/wuyouwin/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/wuyouwin/xserver/Pointer$Button;

    invoke-virtual {v6, v8}, Lcom/wuyouwin/xserver/XServer;->injectPointerButtonPress(Lcom/wuyouwin/xserver/Pointer$Button;)V

    .line 233
    iget-object v6, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    sget-object v8, Lcom/wuyouwin/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/wuyouwin/xserver/Pointer$Button;

    invoke-virtual {v6, v8}, Lcom/wuyouwin/xserver/XServer;->injectPointerButtonRelease(Lcom/wuyouwin/xserver/Pointer$Button;)V

    .line 234
    iput v7, p0, Lcom/wuyouwin/widget/TouchpadView;->scrollAccumY:F

    goto :goto_1

    .line 236
    :cond_2
    iget v6, p0, Lcom/wuyouwin/widget/TouchpadView;->scrollAccumY:F

    const/high16 v8, 0x42c80000    # 100.0f

    cmpl-float v6, v6, v8

    if-lez v6, :cond_3

    .line 237
    iget-object v6, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    sget-object v8, Lcom/wuyouwin/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/wuyouwin/xserver/Pointer$Button;

    invoke-virtual {v6, v8}, Lcom/wuyouwin/xserver/XServer;->injectPointerButtonPress(Lcom/wuyouwin/xserver/Pointer$Button;)V

    .line 238
    iget-object v6, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    sget-object v8, Lcom/wuyouwin/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/wuyouwin/xserver/Pointer$Button;

    invoke-virtual {v6, v8}, Lcom/wuyouwin/xserver/XServer;->injectPointerButtonRelease(Lcom/wuyouwin/xserver/Pointer$Button;)V

    .line 239
    iput v7, p0, Lcom/wuyouwin/widget/TouchpadView;->scrollAccumY:F

    .line 241
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/wuyouwin/widget/TouchpadView;->scrolling:Z

    goto :goto_2

    .line 243
    :cond_4
    cmpl-float v6, v4, v6

    if-ltz v6, :cond_5

    iget-object v6, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v6, v6, Lcom/wuyouwin/xserver/XServer;->pointer:Lcom/wuyouwin/xserver/Pointer;

    sget-object v7, Lcom/wuyouwin/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/wuyouwin/xserver/Pointer$Button;

    invoke-virtual {v6, v7}, Lcom/wuyouwin/xserver/Pointer;->isButtonPressed(Lcom/wuyouwin/xserver/Pointer$Button;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 244
    invoke-static {v1}, Lcom/wuyouwin/widget/TouchpadView$Finger;->access$600(Lcom/wuyouwin/widget/TouchpadView$Finger;)F

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    .line 245
    invoke-direct {p0, p1}, Lcom/wuyouwin/widget/TouchpadView;->pressPointerButtonLeft(Lcom/wuyouwin/widget/TouchpadView$Finger;)V

    .line 246
    const/4 v0, 0x1

    .line 250
    .end local v4    # "currDistance":F
    .end local v5    # "resolutionScale":F
    :cond_5
    :goto_2
    iget-boolean v4, p0, Lcom/wuyouwin/widget/TouchpadView;->scrolling:Z

    if-nez v4, :cond_8

    iget-byte v4, p0, Lcom/wuyouwin/widget/TouchpadView;->numFingers:B

    if-gt v4, v2, :cond_8

    if-nez v0, :cond_8

    .line 251
    iget-boolean v2, p0, Lcom/wuyouwin/widget/TouchpadView;->moveCursorToTouchpoint:Z

    if-eqz v2, :cond_6

    iget-byte v2, p0, Lcom/wuyouwin/widget/TouchpadView;->numFingers:B

    if-ne v2, v3, :cond_6

    .line 252
    iget-object v2, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-static {p1}, Lcom/wuyouwin/widget/TouchpadView$Finger;->access$300(Lcom/wuyouwin/widget/TouchpadView$Finger;)I

    move-result v3

    invoke-static {p1}, Lcom/wuyouwin/widget/TouchpadView$Finger;->access$400(Lcom/wuyouwin/widget/TouchpadView$Finger;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/wuyouwin/xserver/XServer;->injectPointerMove(II)V

    goto :goto_3

    .line 255
    :cond_6
    invoke-static {p1}, Lcom/wuyouwin/widget/TouchpadView$Finger;->access$700(Lcom/wuyouwin/widget/TouchpadView$Finger;)I

    move-result v2

    .line 256
    .local v2, "dx":I
    invoke-static {p1}, Lcom/wuyouwin/widget/TouchpadView$Finger;->access$800(Lcom/wuyouwin/widget/TouchpadView$Finger;)I

    move-result v4

    .line 258
    .local v4, "dy":I
    iget-object v5, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-virtual {v5}, Lcom/wuyouwin/xserver/XServer;->getWinHandler()Lcom/wuyouwin/winhandler/WinHandler;

    move-result-object v5

    .line 259
    .local v5, "winHandler":Lcom/wuyouwin/winhandler/WinHandler;
    iget-object v6, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-virtual {v6}, Lcom/wuyouwin/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 260
    const/4 v6, 0x0

    invoke-virtual {v5, v3, v2, v4, v6}, Lcom/wuyouwin/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_3

    .line 262
    :cond_7
    iget-object v3, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-virtual {v3, v2, v4}, Lcom/wuyouwin/xserver/XServer;->injectPointerMoveDelta(II)V

    .line 265
    .end local v2    # "dx":I
    .end local v4    # "dy":I
    .end local v5    # "winHandler":Lcom/wuyouwin/winhandler/WinHandler;
    :cond_8
    :goto_3
    return-void
.end method

.method private handleFingerUp(Lcom/wuyouwin/widget/TouchpadView$Finger;)V
    .registers 5
    .param p1, "finger1"    # Lcom/wuyouwin/widget/TouchpadView$Finger;

    .line 194
    iget-byte v0, p0, Lcom/wuyouwin/widget/TouchpadView;->numFingers:B

    packed-switch v0, :pswitch_data_5e

    :pswitch_5
    goto :goto_57

    .line 206
    :pswitch_6
    iget-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->fourFingersTapCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_57

    .line 207
    const/4 v0, 0x0

    .local v0, "i":B
    :goto_b
    const/4 v1, 0x4

    if-ge v0, v1, :cond_23

    .line 208
    iget-object v1, p0, Lcom/wuyouwin/widget/TouchpadView;->fingers:[Lcom/wuyouwin/widget/TouchpadView$Finger;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/wuyouwin/widget/TouchpadView;->fingers:[Lcom/wuyouwin/widget/TouchpadView$Finger;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/wuyouwin/widget/TouchpadView$Finger;->access$200(Lcom/wuyouwin/widget/TouchpadView$Finger;)Z

    move-result v1

    if-nez v1, :cond_1f

    return-void

    .line 207
    :cond_1f
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_b

    :cond_23
    nop

    .line 210
    .end local v0    # "i":B
    iget-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->fourFingersTapCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_57

    .line 202
    :pswitch_2a
    invoke-direct {p0, p1}, Lcom/wuyouwin/widget/TouchpadView;->findSecondFinger(Lcom/wuyouwin/widget/TouchpadView$Finger;)Lcom/wuyouwin/widget/TouchpadView$Finger;

    move-result-object v0

    .line 203
    .local v0, "finger2":Lcom/wuyouwin/widget/TouchpadView$Finger;
    if-eqz v0, :cond_57

    invoke-static {p1}, Lcom/wuyouwin/widget/TouchpadView$Finger;->access$200(Lcom/wuyouwin/widget/TouchpadView$Finger;)Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-direct {p0, p1}, Lcom/wuyouwin/widget/TouchpadView;->pressPointerButtonRight(Lcom/wuyouwin/widget/TouchpadView$Finger;)V

    goto :goto_57

    .line 200
    :pswitch_three
    invoke-direct {p0}, Lcom/wuyouwin/widget/TouchpadView;->wlThreeFingerTap()V

    goto :goto_57

    .line 196
    .end local v0    # "finger2":Lcom/wuyouwin/widget/TouchpadView$Finger;
    :pswitch_3d
    invoke-static {p1}, Lcom/wuyouwin/widget/TouchpadView$Finger;->access$200(Lcom/wuyouwin/widget/TouchpadView$Finger;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 197
    iget-boolean v0, p0, Lcom/wuyouwin/widget/TouchpadView;->moveCursorToTouchpoint:Z

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-static {p1}, Lcom/wuyouwin/widget/TouchpadView$Finger;->access$300(Lcom/wuyouwin/widget/TouchpadView$Finger;)I

    move-result v1

    invoke-static {p1}, Lcom/wuyouwin/widget/TouchpadView$Finger;->access$400(Lcom/wuyouwin/widget/TouchpadView$Finger;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/wuyouwin/xserver/XServer;->injectPointerMove(II)V

    .line 198
    :cond_54
    invoke-direct {p0, p1}, Lcom/wuyouwin/widget/TouchpadView;->pressPointerButtonLeft(Lcom/wuyouwin/widget/TouchpadView$Finger;)V

    .line 215
    :cond_57
    :goto_57
    invoke-direct {p0, p1}, Lcom/wuyouwin/widget/TouchpadView;->releasePointerButtonLeft(Lcom/wuyouwin/widget/TouchpadView$Finger;)V

    .line 216
    invoke-direct {p0, p1}, Lcom/wuyouwin/widget/TouchpadView;->releasePointerButtonRight(Lcom/wuyouwin/widget/TouchpadView$Finger;)V

    .line 217
    return-void

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_2a
        :pswitch_three
        :pswitch_6
    .end packed-switch
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->requestPointerCapture()V

    return-void
.end method

.method private synthetic lambda$releasePointerButtonLeft$1()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    sget-object v1, Lcom/wuyouwin/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/wuyouwin/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xserver/XServer;->injectPointerButtonRelease(Lcom/wuyouwin/xserver/Pointer$Button;)V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->fingerPointerButtonLeft:Lcom/wuyouwin/widget/TouchpadView$Finger;

    .line 311
    return-void
.end method

.method private synthetic lambda$releasePointerButtonRight$2()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    sget-object v1, Lcom/wuyouwin/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/wuyouwin/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xserver/XServer;->injectPointerButtonRelease(Lcom/wuyouwin/xserver/Pointer$Button;)V

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->fingerPointerButtonRight:Lcom/wuyouwin/widget/TouchpadView$Finger;

    .line 320
    return-void
.end method

.method private pressPointerButtonLeft(Lcom/wuyouwin/widget/TouchpadView$Finger;)V
    .locals 2
    .param p1, "finger"    # Lcom/wuyouwin/widget/TouchpadView$Finger;

    .line 293
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wuyouwin/widget/TouchpadView;->pointerButtonLeftEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v0, v0, Lcom/wuyouwin/xserver/XServer;->pointer:Lcom/wuyouwin/xserver/Pointer;

    sget-object v1, Lcom/wuyouwin/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/wuyouwin/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xserver/Pointer;->isButtonPressed(Lcom/wuyouwin/xserver/Pointer$Button;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    sget-object v1, Lcom/wuyouwin/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/wuyouwin/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xserver/XServer;->injectPointerButtonPress(Lcom/wuyouwin/xserver/Pointer$Button;)V

    .line 295
    iput-object p1, p0, Lcom/wuyouwin/widget/TouchpadView;->fingerPointerButtonLeft:Lcom/wuyouwin/widget/TouchpadView$Finger;

    .line 297
    :cond_0
    return-void
.end method

.method private pressPointerButtonRight(Lcom/wuyouwin/widget/TouchpadView$Finger;)V
    .locals 2
    .param p1, "finger"    # Lcom/wuyouwin/widget/TouchpadView$Finger;

    .line 300
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wuyouwin/widget/TouchpadView;->pointerButtonRightEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v0, v0, Lcom/wuyouwin/xserver/XServer;->pointer:Lcom/wuyouwin/xserver/Pointer;

    sget-object v1, Lcom/wuyouwin/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/wuyouwin/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xserver/Pointer;->isButtonPressed(Lcom/wuyouwin/xserver/Pointer$Button;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    sget-object v1, Lcom/wuyouwin/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/wuyouwin/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xserver/XServer;->injectPointerButtonPress(Lcom/wuyouwin/xserver/Pointer$Button;)V

    .line 302
    iput-object p1, p0, Lcom/wuyouwin/widget/TouchpadView;->fingerPointerButtonRight:Lcom/wuyouwin/widget/TouchpadView$Finger;

    .line 304
    :cond_0
    return-void
.end method

.method private releasePointerButtonLeft(Lcom/wuyouwin/widget/TouchpadView$Finger;)V
    .locals 3
    .param p1, "finger"    # Lcom/wuyouwin/widget/TouchpadView$Finger;

    .line 307
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wuyouwin/widget/TouchpadView;->pointerButtonLeftEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->fingerPointerButtonLeft:Lcom/wuyouwin/widget/TouchpadView$Finger;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v0, v0, Lcom/wuyouwin/xserver/XServer;->pointer:Lcom/wuyouwin/xserver/Pointer;

    sget-object v1, Lcom/wuyouwin/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/wuyouwin/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xserver/Pointer;->isButtonPressed(Lcom/wuyouwin/xserver/Pointer$Button;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    new-instance v0, Lcom/wuyouwin/widget/TouchpadView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/wuyouwin/widget/TouchpadView$$ExternalSyntheticLambda2;-><init>(Lcom/wuyouwin/widget/TouchpadView;)V

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 313
    :cond_0
    return-void
.end method

.method private releasePointerButtonRight(Lcom/wuyouwin/widget/TouchpadView$Finger;)V
    .locals 3
    .param p1, "finger"    # Lcom/wuyouwin/widget/TouchpadView$Finger;

    .line 316
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wuyouwin/widget/TouchpadView;->pointerButtonRightEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->fingerPointerButtonRight:Lcom/wuyouwin/widget/TouchpadView$Finger;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v0, v0, Lcom/wuyouwin/xserver/XServer;->pointer:Lcom/wuyouwin/xserver/Pointer;

    sget-object v1, Lcom/wuyouwin/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/wuyouwin/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xserver/Pointer;->isButtonPressed(Lcom/wuyouwin/xserver/Pointer$Button;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    new-instance v0, Lcom/wuyouwin/widget/TouchpadView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/wuyouwin/widget/TouchpadView$$ExternalSyntheticLambda1;-><init>(Lcom/wuyouwin/widget/TouchpadView;)V

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 322
    :cond_0
    return-void
.end method

.method private updateXform(IIII)V
    .locals 5
    .param p1, "outerWidth"    # I
    .param p2, "outerHeight"    # I
    .param p3, "innerWidth"    # I
    .param p4, "innerHeight"    # I

    .line 77
    new-instance v0, Lcom/wuyouwin/renderer/ViewTransformation;

    invoke-direct {v0}, Lcom/wuyouwin/renderer/ViewTransformation;-><init>()V

    .line 78
    .local v0, "viewTransformation":Lcom/wuyouwin/renderer/ViewTransformation;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/wuyouwin/renderer/ViewTransformation;->update(IIII)V

    .line 80
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, v0, Lcom/wuyouwin/renderer/ViewTransformation;->aspect:F

    div-float/2addr v1, v2

    .line 81
    .local v1, "invAspect":F
    iget-object v2, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-virtual {v2}, Lcom/wuyouwin/xserver/XServer;->getRenderer()Lcom/wuyouwin/renderer/GLRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wuyouwin/renderer/GLRenderer;->isFullscreen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/wuyouwin/widget/TouchpadView;->xform:[F

    iget v3, v0, Lcom/wuyouwin/renderer/ViewTransformation;->viewOffsetX:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, v0, Lcom/wuyouwin/renderer/ViewTransformation;->viewOffsetY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-static {v2, v3, v4}, Lcom/wuyouwin/math/XForm;->makeTranslation([FFF)[F

    .line 83
    iget-object v2, p0, Lcom/wuyouwin/widget/TouchpadView;->xform:[F

    invoke-static {v2, v1, v1}, Lcom/wuyouwin/math/XForm;->scale([FFF)[F

    goto :goto_0

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/wuyouwin/widget/TouchpadView;->xform:[F

    invoke-static {v2, v1, v1}, Lcom/wuyouwin/math/XForm;->makeScale([FFF)[F

    .line 86
    :goto_0
    return-void
.end method

.method private wlDirectTap(Lcom/wuyouwin/widget/TouchpadView$Finger;)V
    .locals 4

    sget-boolean v0, Lcom/wuyouwin/widget/TouchpadView;->wlTouchDirect:Z

    if-nez v0, :cond_0

    iget-byte v0, p0, Lcom/wuyouwin/widget/TouchpadView;->numFingers:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/wuyouwin/widget/TouchpadView$Finger;->access$300(Lcom/wuyouwin/widget/TouchpadView$Finger;)I

    move-result v2

    invoke-static {p1}, Lcom/wuyouwin/widget/TouchpadView$Finger;->access$400(Lcom/wuyouwin/widget/TouchpadView$Finger;)I

    move-result v3

    iget-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-virtual {v0, v2, v3}, Lcom/wuyouwin/xserver/XServer;->injectPointerMove(II)V

    invoke-direct {p0, p1}, Lcom/wuyouwin/widget/TouchpadView;->pressPointerButtonLeft(Lcom/wuyouwin/widget/TouchpadView$Finger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method private wlDirectTapEvent(Landroid/view/MotionEvent;)V
    .locals 6

    sget-boolean v0, Lcom/wuyouwin/widget/TouchpadView;->wlTouchDirect:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/wuyouwin/widget/TouchpadView;->xform:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/wuyouwin/math/XForm;->transformPoint([FFF)[F

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v2, v3

    float-to-int v3, v3

    const/4 v4, 0x1

    aget v4, v2, v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-virtual {v5, v3, v4}, Lcom/wuyouwin/xserver/XServer;->injectPointerMove(II)V

    sget-object v0, Lcom/wuyouwin/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/wuyouwin/xserver/Pointer$Button;

    invoke-virtual {v5, v0}, Lcom/wuyouwin/xserver/XServer;->injectPointerButtonPress(Lcom/wuyouwin/xserver/Pointer$Button;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method private wlTwoFingerTap(Lcom/wuyouwin/widget/TouchpadView$Finger;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->twoFingersTapCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    iget-byte v1, p0, Lcom/wuyouwin/widget/TouchpadView;->numFingers:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-static {p1}, Lcom/wuyouwin/widget/TouchpadView$Finger;->access$200(Lcom/wuyouwin/widget/TouchpadView$Finger;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/wuyouwin/widget/TouchpadView;->findSecondFinger(Lcom/wuyouwin/widget/TouchpadView$Finger;)Lcom/wuyouwin/widget/TouchpadView$Finger;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lcom/wuyouwin/widget/TouchpadView$Finger;->access$200(Lcom/wuyouwin/widget/TouchpadView$Finger;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->twoFingersTapCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public computeDeltaPoint(FFFF)[F
    .locals 4
    .param p1, "lastX"    # F
    .param p2, "lastY"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 402
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 404
    .local v0, "result":[F
    iget-object v1, p0, Lcom/wuyouwin/widget/TouchpadView;->xform:[F

    invoke-static {v1, p1, p2, v0}, Lcom/wuyouwin/math/XForm;->transformPoint([FFF[F)[F

    .line 405
    const/4 v1, 0x0

    aget p1, v0, v1

    .line 406
    const/4 v2, 0x1

    aget p2, v0, v2

    .line 408
    iget-object v3, p0, Lcom/wuyouwin/widget/TouchpadView;->xform:[F

    invoke-static {v3, p3, p4, v0}, Lcom/wuyouwin/math/XForm;->transformPoint([FFF[F)[F

    .line 409
    aget p3, v0, v1

    .line 410
    aget p4, v0, v2

    .line 412
    sub-float v3, p3, p1

    aput v3, v0, v1

    .line 413
    sub-float v1, p4, p2

    aput v1, v0, v2

    .line 414
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public mouseMove(FFI)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "action"    # I

    .line 268
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 273
    :pswitch_0
    iget-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->mouseMoveFinger:Lcom/wuyouwin/widget/TouchpadView$Finger;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->mouseMoveFinger:Lcom/wuyouwin/widget/TouchpadView$Finger;

    invoke-virtual {v0, p1, p2}, Lcom/wuyouwin/widget/TouchpadView$Finger;->update(FF)V

    .line 275
    iget-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->mouseMoveFinger:Lcom/wuyouwin/widget/TouchpadView$Finger;

    invoke-direct {p0, v0}, Lcom/wuyouwin/widget/TouchpadView;->handleFingerMove(Lcom/wuyouwin/widget/TouchpadView$Finger;)V

    goto :goto_0

    .line 280
    :pswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->mouseMoveFinger:Lcom/wuyouwin/widget/TouchpadView$Finger;

    goto :goto_0

    .line 270
    :pswitch_2
    new-instance v0, Lcom/wuyouwin/widget/TouchpadView$Finger;

    invoke-direct {v0, p0, p1, p2}, Lcom/wuyouwin/widget/TouchpadView$Finger;-><init>(Lcom/wuyouwin/widget/TouchpadView;FF)V

    iput-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->mouseMoveFinger:Lcom/wuyouwin/widget/TouchpadView$Finger;

    .line 271
    nop

    .line 283
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCapturedPointer(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 419
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 420
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/wuyouwin/widget/TouchpadView;->sensitivity:F

    mul-float/2addr v0, v1

    .line 421
    .local v0, "dx":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    cmpl-float v1, v1, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    if-lez v1, :cond_0

    mul-float/2addr v0, v3

    .line 423
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v4, p0, Lcom/wuyouwin/widget/TouchpadView;->sensitivity:F

    mul-float/2addr v1, v4

    .line 424
    .local v1, "dy":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v2, v4, v2

    if-lez v2, :cond_1

    mul-float/2addr v1, v3

    .line 426
    :cond_1
    iget-object v2, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-static {v0}, Lcom/wuyouwin/math/Mathf;->roundPoint(F)I

    move-result v3

    invoke-static {v1}, Lcom/wuyouwin/math/Mathf;->roundPoint(F)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/wuyouwin/xserver/XServer;->injectPointerMoveDelta(II)V

    .line 427
    const/4 v2, 0x1

    return v2

    .line 430
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    or-int/lit16 v0, v0, 0x2002

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 431
    invoke-virtual {p0, p2}, Lcom/wuyouwin/widget/TouchpadView;->onExternalMouseEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onExternalMouseEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x2002

    invoke-virtual {p1, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 359
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v1

    .line 360
    .local v1, "actionButton":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 371
    :pswitch_1
    if-ne v1, v4, :cond_0

    .line 372
    iget-object v2, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    sget-object v3, Lcom/wuyouwin/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/wuyouwin/xserver/Pointer$Button;

    invoke-virtual {v2, v3}, Lcom/wuyouwin/xserver/XServer;->injectPointerButtonRelease(Lcom/wuyouwin/xserver/Pointer$Button;)V

    goto :goto_0

    .line 374
    :cond_0
    if-ne v1, v3, :cond_1

    .line 375
    iget-object v2, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    sget-object v3, Lcom/wuyouwin/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/wuyouwin/xserver/Pointer$Button;

    invoke-virtual {v2, v3}, Lcom/wuyouwin/xserver/XServer;->injectPointerButtonRelease(Lcom/wuyouwin/xserver/Pointer$Button;)V

    .line 377
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 378
    goto :goto_3

    .line 362
    :pswitch_2
    if-ne v1, v4, :cond_2

    .line 363
    iget-object v2, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    sget-object v3, Lcom/wuyouwin/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/wuyouwin/xserver/Pointer$Button;

    invoke-virtual {v2, v3}, Lcom/wuyouwin/xserver/XServer;->injectPointerButtonPress(Lcom/wuyouwin/xserver/Pointer$Button;)V

    goto :goto_1

    .line 365
    :cond_2
    if-ne v1, v3, :cond_3

    .line 366
    iget-object v2, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    sget-object v3, Lcom/wuyouwin/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/wuyouwin/xserver/Pointer$Button;

    invoke-virtual {v2, v3}, Lcom/wuyouwin/xserver/XServer;->injectPointerButtonPress(Lcom/wuyouwin/xserver/Pointer$Button;)V

    .line 368
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 369
    goto :goto_3

    .line 385
    :pswitch_3
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 386
    .local v2, "scrollY":F
    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_4

    .line 387
    iget-object v3, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    sget-object v4, Lcom/wuyouwin/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/wuyouwin/xserver/Pointer$Button;

    invoke-virtual {v3, v4}, Lcom/wuyouwin/xserver/XServer;->injectPointerButtonPress(Lcom/wuyouwin/xserver/Pointer$Button;)V

    .line 388
    iget-object v3, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    sget-object v4, Lcom/wuyouwin/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/wuyouwin/xserver/Pointer$Button;

    invoke-virtual {v3, v4}, Lcom/wuyouwin/xserver/XServer;->injectPointerButtonRelease(Lcom/wuyouwin/xserver/Pointer$Button;)V

    goto :goto_2

    .line 390
    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_5

    .line 391
    iget-object v3, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    sget-object v4, Lcom/wuyouwin/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/wuyouwin/xserver/Pointer$Button;

    invoke-virtual {v3, v4}, Lcom/wuyouwin/xserver/XServer;->injectPointerButtonPress(Lcom/wuyouwin/xserver/Pointer$Button;)V

    .line 392
    iget-object v3, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    sget-object v4, Lcom/wuyouwin/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/wuyouwin/xserver/Pointer$Button;

    invoke-virtual {v3, v4}, Lcom/wuyouwin/xserver/XServer;->injectPointerButtonRelease(Lcom/wuyouwin/xserver/Pointer$Button;)V

    .line 394
    :cond_5
    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    .line 380
    .end local v2    # "scrollY":F
    :pswitch_4
    iget-object v2, p0, Lcom/wuyouwin/widget/TouchpadView;->xform:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v2, v3, v5}, Lcom/wuyouwin/math/XForm;->transformPoint([FFF)[F

    move-result-object v2

    .line 381
    .local v2, "transformedPoint":[F
    iget-object v3, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    const/4 v5, 0x0

    aget v5, v2, v5

    float-to-int v5, v5

    aget v4, v2, v4

    float-to-int v4, v4

    invoke-virtual {v3, v5, v4}, Lcom/wuyouwin/xserver/XServer;->injectPointerMove(II)V

    .line 382
    const/4 v0, 0x1

    .line 383
    nop

    .line 398
    .end local v1    # "actionButton":I
    .end local v2    # "transformedPoint":[F
    :cond_6
    :goto_3
    return v0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 73
    iget-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v0, v0, Lcom/wuyouwin/xserver/XServer;->screenInfo:Lcom/wuyouwin/xserver/ScreenInfo;

    iget-short v0, v0, Lcom/wuyouwin/xserver/ScreenInfo;->width:S

    iget-object v1, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v1, v1, Lcom/wuyouwin/xserver/XServer;->screenInfo:Lcom/wuyouwin/xserver/ScreenInfo;

    iget-short v1, v1, Lcom/wuyouwin/xserver/ScreenInfo;->height:S

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/wuyouwin/widget/TouchpadView;->updateXform(IIII)V

    .line 74
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/wuyouwin/widget/TouchpadView;->wlCheckTextInput()V

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 140
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 141
    .local v1, "pointerId":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 142
    .local v2, "actionMasked":I
    const/4 v3, 0x1

    const/4 v4, 0x4

    if-lt v1, v4, :cond_0

    return v3

    .line 144
    :cond_0
    const/16 v5, 0x2002

    const/4 v6, 0x0

    const/4 v7, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 185
    :pswitch_1
    const/4 v5, 0x0

    .local v5, "i":B
    :goto_0
    if-ge v5, v4, :cond_1

    iget-object v8, p0, Lcom/wuyouwin/widget/TouchpadView;->fingers:[Lcom/wuyouwin/widget/TouchpadView$Finger;

    aput-object v7, v8, v5

    add-int/lit8 v8, v5, 0x1

    int-to-byte v5, v8

    goto :goto_0

    .line 186
    .end local v5    # "i":B
    :cond_1
    iput-byte v6, p0, Lcom/wuyouwin/widget/TouchpadView;->numFingers:B

    goto/16 :goto_3

    .line 154
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/wuyouwin/widget/TouchpadView;->wlDirectTapEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v5}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 155
    iget-object v4, p0, Lcom/wuyouwin/widget/TouchpadView;->xform:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-static {v4, v5, v7}, Lcom/wuyouwin/math/XForm;->transformPoint([FFF)[F

    move-result-object v4

    .line 156
    .local v4, "transformedPoint":[F
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    aget v6, v4, v6

    float-to-int v6, v6

    aget v7, v4, v3

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/wuyouwin/xserver/XServer;->injectPointerMove(II)V

    .line 157
    .end local v4    # "transformedPoint":[F
    :cond_2
    goto/16 :goto_3

    .line 159
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "i":B
    :goto_1
    if-ge v5, v4, :cond_6

    .line 160
    iget-object v6, p0, Lcom/wuyouwin/widget/TouchpadView;->fingers:[Lcom/wuyouwin/widget/TouchpadView$Finger;

    aget-object v6, v6, v5

    if-eqz v6, :cond_5

    .line 161
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 162
    .local v6, "pointerIndex":I
    if-ltz v6, :cond_4

    .line 163
    iget-object v8, p0, Lcom/wuyouwin/widget/TouchpadView;->fingers:[Lcom/wuyouwin/widget/TouchpadView$Finger;

    aget-object v8, v8, v5

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/wuyouwin/widget/TouchpadView$Finger;->update(FF)V

    .line 164
    iget-object v8, p0, Lcom/wuyouwin/widget/TouchpadView;->fingers:[Lcom/wuyouwin/widget/TouchpadView$Finger;

    aget-object v8, v8, v5

    invoke-direct {p0, v8}, Lcom/wuyouwin/widget/TouchpadView;->handleFingerMove(Lcom/wuyouwin/widget/TouchpadView$Finger;)V

    goto :goto_2

    .line 167
    :cond_4
    iget-object v8, p0, Lcom/wuyouwin/widget/TouchpadView;->fingers:[Lcom/wuyouwin/widget/TouchpadView$Finger;

    aget-object v8, v8, v5

    invoke-direct {p0, v8}, Lcom/wuyouwin/widget/TouchpadView;->handleFingerUp(Lcom/wuyouwin/widget/TouchpadView$Finger;)V

    .line 168
    iget-object v8, p0, Lcom/wuyouwin/widget/TouchpadView;->fingers:[Lcom/wuyouwin/widget/TouchpadView$Finger;

    aput-object v7, v8, v5

    .line 169
    iget-byte v8, p0, Lcom/wuyouwin/widget/TouchpadView;->numFingers:B

    sub-int/2addr v8, v3

    int-to-byte v8, v8

    iput-byte v8, p0, Lcom/wuyouwin/widget/TouchpadView;->numFingers:B

    .line 159
    .end local v6    # "pointerIndex":I
    :cond_5
    :goto_2
    add-int/lit8 v6, v5, 0x1

    int-to-byte v5, v6

    goto :goto_1

    :cond_6
    nop

    .line 174
    .end local v5    # "i":B
    goto :goto_3

    .line 177
    :pswitch_3
    iget-object v4, p0, Lcom/wuyouwin/widget/TouchpadView;->fingers:[Lcom/wuyouwin/widget/TouchpadView$Finger;

    aget-object v4, v4, v1

    if-eqz v4, :cond_8

    .line 178
    iget-object v4, p0, Lcom/wuyouwin/widget/TouchpadView;->fingers:[Lcom/wuyouwin/widget/TouchpadView$Finger;

    aget-object v4, v4, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/wuyouwin/widget/TouchpadView$Finger;->update(FF)V

    .line 179
    iget-object v4, p0, Lcom/wuyouwin/widget/TouchpadView;->fingers:[Lcom/wuyouwin/widget/TouchpadView$Finger;

    aget-object v4, v4, v1

    invoke-direct {p0, v4}, Lcom/wuyouwin/widget/TouchpadView;->handleFingerUp(Lcom/wuyouwin/widget/TouchpadView$Finger;)V

    .line 180
    iget-object v4, p0, Lcom/wuyouwin/widget/TouchpadView;->fingers:[Lcom/wuyouwin/widget/TouchpadView$Finger;

    aput-object v7, v4, v1

    .line 181
    iget-byte v4, p0, Lcom/wuyouwin/widget/TouchpadView;->numFingers:B

    sub-int/2addr v4, v3

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/wuyouwin/widget/TouchpadView;->numFingers:B

    goto :goto_3

    .line 147
    :pswitch_4
    invoke-virtual {p1, v5}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v4

    if-eqz v4, :cond_7

    return v3

    .line 148
    :cond_7
    const/4 v4, 0x0

    iput v4, p0, Lcom/wuyouwin/widget/TouchpadView;->scrollAccumY:F

    .line 149
    iput-boolean v6, p0, Lcom/wuyouwin/widget/TouchpadView;->scrolling:Z

    .line 150
    iget-object v4, p0, Lcom/wuyouwin/widget/TouchpadView;->fingers:[Lcom/wuyouwin/widget/TouchpadView$Finger;

    new-instance v5, Lcom/wuyouwin/widget/TouchpadView$Finger;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-direct {v5, p0, v6, v7}, Lcom/wuyouwin/widget/TouchpadView$Finger;-><init>(Lcom/wuyouwin/widget/TouchpadView;FF)V

    aput-object v5, v4, v1

    .line 151
    iget-byte v4, p0, Lcom/wuyouwin/widget/TouchpadView;->numFingers:B

    add-int/2addr v4, v3

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/wuyouwin/widget/TouchpadView;->numFingers:B

    .line 152
    nop

    .line 190
    :cond_8
    :goto_3
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public setFourFingersTapCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "fourFingersTapCallback"    # Ljava/lang/Runnable;

    .line 345
    iput-object p1, p0, Lcom/wuyouwin/widget/TouchpadView;->fourFingersTapCallback:Ljava/lang/Runnable;

    .line 346
    return-void
.end method

.method public setMoveCursorToTouchpoint(Z)V
    .locals 0
    .param p1, "moveCursorToTouchpoint"    # Z

    .line 353
    iput-boolean p1, p0, Lcom/wuyouwin/widget/TouchpadView;->moveCursorToTouchpoint:Z

    .line 354
    return-void
.end method

.method public setPointerButtonLeftEnabled(Z)V
    .locals 0
    .param p1, "pointerButtonLeftEnabled"    # Z

    .line 333
    iput-boolean p1, p0, Lcom/wuyouwin/widget/TouchpadView;->pointerButtonLeftEnabled:Z

    .line 334
    return-void
.end method

.method public setPointerButtonRightEnabled(Z)V
    .locals 0
    .param p1, "pointerButtonRightEnabled"    # Z

    .line 341
    iput-boolean p1, p0, Lcom/wuyouwin/widget/TouchpadView;->pointerButtonRightEnabled:Z

    .line 342
    return-void
.end method

.method public setSensitivity(F)V
    .locals 0
    .param p1, "sensitivity"    # F

    .line 325
    iput p1, p0, Lcom/wuyouwin/widget/TouchpadView;->sensitivity:F

    .line 326
    return-void
.end method

.method private wlThreeFingerTap()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/wuyouwin/widget/TouchpadView;->threeFingersTapCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public static wlCheckTextInput()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/wuyouwin/widget/TouchpadView;->wlTouchpad:Lcom/wuyouwin/widget/TouchpadView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/wuyouwin/widget/TouchpadView;->xServer:Lcom/wuyouwin/xserver/XServer;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v1, Lcom/wuyouwin/xserver/XServer;->inputDeviceManager:Lcom/wuyouwin/xserver/InputDeviceManager;

    invoke-virtual {v1}, Lcom/wuyouwin/xserver/InputDeviceManager;->getPointWindow()Lcom/wuyouwin/xserver/Window;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wuyouwin/renderer/GLRenderer;->wlOnCursorChanged(Z)V

    return-void

    :cond_2
    iget-object v2, v1, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v2}, Lcom/wuyouwin/xserver/WindowAttributes;->getCursor()Lcom/wuyouwin/xserver/Cursor;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/wuyouwin/xserver/Cursor;->cursorImage:Lcom/wuyouwin/xserver/Drawable;

    if-nez v3, :cond_4

    :cond_3
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/wuyouwin/renderer/GLRenderer;->wlOnCursorChanged(Z)V

    return-void

    :cond_4
    iget-short v2, v3, Lcom/wuyouwin/xserver/Drawable;->width:S

    iget-short v3, v3, Lcom/wuyouwin/xserver/Drawable;->height:S

    const/16 v0, 0xc

    if-lt v3, v0, :cond_5

    if-lez v2, :cond_5

    mul-int/lit8 v0, v2, 0x5

    mul-int/lit8 v1, v3, 0x2

    if-ge v0, v1, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/wuyouwin/renderer/GLRenderer;->wlOnCursorChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_1
    return-void
.end method

.method public setThreeFingersTapCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "threeFingersTapCallback"    # Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/wuyouwin/widget/TouchpadView;->threeFingersTapCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setTwoFingersTapCallback(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/wuyouwin/widget/TouchpadView;->twoFingersTapCallback:Ljava/lang/Runnable;

    return-void
.end method
