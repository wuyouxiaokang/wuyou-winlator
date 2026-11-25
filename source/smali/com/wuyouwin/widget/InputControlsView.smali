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
.class public Lcom/wuyouwin/widget/InputControlsView;
.super Landroid/view/View;
.source "InputControlsView.java"


# static fields
.field public static wlSnapEnabled:Z


# instance fields
.field private final cursor:Landroid/graphics/Point;

.field private darkColorFilter:Landroid/graphics/ColorFilter;

.field private editMode:Z

.field private final icons:[Landroid/graphics/Bitmap;

.field private lightColorFilter:Landroid/graphics/ColorFilter;

.field private final mouseMoveOffset:Landroid/graphics/PointF;

.field private mouseMoveTimer:Ljava/util/Timer;

.field private moveCursor:Z

.field private moveElement:Z

.field private offsetX:F

.field private offsetY:F

.field private overlayOpacity:F

.field private final paint:Landroid/graphics/Paint;

.field private profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

.field private readyToDraw:Z

.field private selectedElement:Lcom/wuyouwin/inputcontrols/ControlElement;

.field private showTouchscreenControls:Z

.field private snappingSize:I

.field private startX:F

.field private startY:F

.field private touchpadView:Lcom/wuyouwin/widget/TouchpadView;

.field private xServer:Lcom/wuyouwin/xserver/XServer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wuyouwin/widget/InputControlsView;->editMode:Z

    .line 42
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/wuyouwin/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    .line 45
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/wuyouwin/widget/InputControlsView;->cursor:Landroid/graphics/Point;

    .line 46
    iput-boolean v0, p0, Lcom/wuyouwin/widget/InputControlsView;->readyToDraw:Z

    .line 47
    iput-boolean v0, p0, Lcom/wuyouwin/widget/InputControlsView;->moveCursor:Z

    .line 48
    iput-boolean v0, p0, Lcom/wuyouwin/widget/InputControlsView;->moveElement:Z

    .line 56
    const v1, 0x3ecccccd    # 0.4f

    iput v1, p0, Lcom/wuyouwin/widget/InputControlsView;->overlayOpacity:F

    .line 59
    const/16 v1, 0x12

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/wuyouwin/widget/InputControlsView;->icons:[Landroid/graphics/Bitmap;

    .line 61
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/wuyouwin/widget/InputControlsView;->mouseMoveOffset:Landroid/graphics/PointF;

    .line 62
    iput-boolean v2, p0, Lcom/wuyouwin/widget/InputControlsView;->showTouchscreenControls:Z

    .line 66
    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 67
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 68
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 69
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 70
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/wuyouwin/widget/InputControlsView;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/widget/InputControlsView;

    .line 39
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->mouseMoveOffset:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wuyouwin/widget/InputControlsView;)Lcom/wuyouwin/xserver/XServer;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/widget/InputControlsView;

    .line 39
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->xServer:Lcom/wuyouwin/xserver/XServer;

    return-object v0
.end method

.method private createMouseMoveTimer()V
    .locals 8

    .line 275
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->mouseMoveTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->getCursorSpeed()F

    move-result v0

    .line 277
    .local v0, "cursorSpeed":F
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/wuyouwin/widget/InputControlsView;->mouseMoveTimer:Ljava/util/Timer;

    .line 278
    iget-object v2, p0, Lcom/wuyouwin/widget/InputControlsView;->mouseMoveTimer:Ljava/util/Timer;

    new-instance v3, Lcom/wuyouwin/widget/InputControlsView$1;

    invoke-direct {v3, p0, v0}, Lcom/wuyouwin/widget/InputControlsView$1;-><init>(Lcom/wuyouwin/widget/InputControlsView;F)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x10

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 285
    .end local v0    # "cursorSpeed":F
    :cond_0
    return-void
.end method

.method private declared-synchronized deselectAllElements()V
    .locals 3

    monitor-enter p0

    .line 191
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->selectedElement:Lcom/wuyouwin/inputcontrols/ControlElement;

    .line 192
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/inputcontrols/ControlElement;

    .local v1, "element":Lcom/wuyouwin/inputcontrols/ControlElement;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/wuyouwin/inputcontrols/ControlElement;->setSelected(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "element":Lcom/wuyouwin/inputcontrols/ControlElement;
    goto :goto_0

    .line 190
    .end local p0    # "this":Lcom/wuyouwin/widget/InputControlsView;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 195
    :cond_0
    monitor-exit p0

    return-void

    .line 190
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private drawCursor(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 151
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wuyouwin/widget/InputControlsView;->snappingSize:I

    int-to-float v1, v1

    const/high16 v2, 0x3d800000    # 0.0625f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 153
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const v1, -0x39d7d8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 156
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->cursor:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/wuyouwin/widget/InputControlsView;->getMaxWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->cursor:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/wuyouwin/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 157
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->cursor:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->cursor:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/wuyouwin/widget/InputControlsView;->getMaxHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/wuyouwin/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 159
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 160
    return-void
.end method

.method private drawGrid(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 122
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wuyouwin/widget/InputControlsView;->snappingSize:I

    int-to-float v1, v1

    const/high16 v2, 0x3d800000    # 0.0625f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 127
    iget-object v1, p0, Lcom/wuyouwin/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    iget-object v1, p0, Lcom/wuyouwin/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const v2, -0xcfcfd0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    invoke-virtual {p0}, Lcom/wuyouwin/widget/InputControlsView;->getMaxWidth()I

    move-result v1

    .line 131
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/wuyouwin/widget/InputControlsView;->getMaxHeight()I

    move-result v8

    .line 133
    .local v8, "height":I
    const/4 v2, 0x0

    move v9, v2

    .local v9, "i":I
    :goto_0
    if-ge v9, v1, :cond_0

    .line 134
    int-to-float v3, v9

    int-to-float v5, v9

    int-to-float v6, v8

    iget-object v7, p0, Lcom/wuyouwin/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 135
    int-to-float v4, v9

    int-to-float v5, v1

    int-to-float v6, v9

    iget-object v7, p0, Lcom/wuyouwin/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 133
    iget v2, p0, Lcom/wuyouwin/widget/InputControlsView;->snappingSize:I

    add-int/2addr v9, v2

    goto :goto_0

    :cond_0
    nop

    .line 138
    .end local v9    # "i":I
    int-to-float v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    iget v4, p0, Lcom/wuyouwin/widget/InputControlsView;->snappingSize:I

    int-to-float v4, v4

    invoke-static {v2, v4}, Lcom/wuyouwin/math/Mathf;->roundTo(FF)F

    move-result v9

    .line 139
    .local v9, "cx":F
    int-to-float v2, v8

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/wuyouwin/widget/InputControlsView;->snappingSize:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/wuyouwin/math/Mathf;->roundTo(FF)F

    move-result v10

    .line 140
    .local v10, "cy":F
    iget-object v2, p0, Lcom/wuyouwin/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const v3, -0xbdbdbe

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    const/4 v2, 0x0

    move v11, v2

    .local v11, "i":I
    :goto_1
    if-ge v11, v1, :cond_1

    .line 143
    int-to-float v4, v11

    iget v2, p0, Lcom/wuyouwin/widget/InputControlsView;->snappingSize:I

    add-int/2addr v2, v11

    int-to-float v6, v2

    iget-object v7, p0, Lcom/wuyouwin/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v9

    move v5, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 144
    int-to-float v3, v11

    iget v2, p0, Lcom/wuyouwin/widget/InputControlsView;->snappingSize:I

    add-int/2addr v2, v11

    int-to-float v5, v2

    iget-object v7, p0, Lcom/wuyouwin/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v10

    move v6, v10

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 142
    iget v2, p0, Lcom/wuyouwin/widget/InputControlsView;->snappingSize:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v11, v2

    goto :goto_1

    :cond_1
    nop

    .line 147
    .end local v11    # "i":I
    iget-object v2, p0, Lcom/wuyouwin/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 148
    return-void
.end method

.method private handleCommandKeyEvent(Lcom/wuyouwin/inputcontrols/Binding;)V
    .locals 4
    .param p1, "binding"    # Lcom/wuyouwin/inputcontrols/Binding;

    .line 522
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 523
    .local v0, "context":Landroid/content/Context;
    sget-object v1, Lcom/wuyouwin/inputcontrols/Binding;->KEY_VOL_UP:Lcom/wuyouwin/inputcontrols/Binding;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/wuyouwin/inputcontrols/Binding;->KEY_VOL_DOWN:Lcom/wuyouwin/inputcontrols/Binding;

    if-ne p1, v1, :cond_2

    .line 524
    :cond_0
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 525
    .local v1, "audioManager":Landroid/media/AudioManager;
    sget-object v2, Lcom/wuyouwin/inputcontrols/Binding;->KEY_VOL_UP:Lcom/wuyouwin/inputcontrols/Binding;

    const/4 v3, 0x4

    if-ne p1, v2, :cond_1

    .line 526
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->adjustVolume(II)V

    goto :goto_0

    .line 528
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->adjustVolume(II)V

    .line 530
    .end local v1    # "audioManager":Landroid/media/AudioManager;
    :cond_2
    :goto_0
    return-void
.end method

.method private declared-synchronized intersectElement(FF)Lcom/wuyouwin/inputcontrols/ControlElement;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    monitor-enter p0

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/inputcontrols/ControlElement;

    .line 229
    .local v1, "element":Lcom/wuyouwin/inputcontrols/ControlElement;
    invoke-virtual {v1, p1, p2}, Lcom/wuyouwin/inputcontrols/ControlElement;->containsPoint(FF)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-object v1

    .line 230
    .end local v1    # "element":Lcom/wuyouwin/inputcontrols/ControlElement;
    :cond_0
    goto :goto_0

    .line 226
    .end local p0    # "this":Lcom/wuyouwin/widget/InputControlsView;
    .end local p1    # "x":F
    .end local p2    # "y":F
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 232
    .restart local p1    # "x":F
    .restart local p2    # "y":F
    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 226
    .end local p1    # "x":F
    .end local p2    # "y":F
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private processJoystickInput(Lcom/wuyouwin/inputcontrols/ExternalController;)V
    .locals 11
    .param p1, "controller"    # Lcom/wuyouwin/inputcontrols/ExternalController;

    .line 289
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x6

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    .line 290
    .local v3, "axes":[I
    invoke-virtual {p1}, Lcom/wuyouwin/inputcontrols/ExternalController;->getGamepadState()Lcom/wuyouwin/inputcontrols/GamepadState;

    move-result-object v4

    .line 291
    .local v4, "state":Lcom/wuyouwin/inputcontrols/GamepadState;
    iget v5, v4, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbLX:F

    iget v6, v4, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbLY:F

    iget v7, v4, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbRX:F

    iget v8, v4, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbRY:F

    invoke-virtual {v4}, Lcom/wuyouwin/inputcontrols/GamepadState;->getDPadX()B

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v4}, Lcom/wuyouwin/inputcontrols/GamepadState;->getDPadY()B

    move-result v10

    int-to-float v10, v10

    new-array v2, v2, [F

    aput v5, v2, v0

    aput v6, v2, v1

    const/4 v5, 0x2

    aput v7, v2, v5

    const/4 v5, 0x3

    aput v8, v2, v5

    const/4 v5, 0x4

    aput v9, v2, v5

    const/4 v5, 0x5

    aput v10, v2, v5

    .line 293
    .local v2, "values":[F
    const/4 v5, 0x0

    .local v5, "i":B
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_3

    .line 294
    aget v6, v2, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3e19999a    # 0.15f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 295
    aget v6, v3, v5

    aget v7, v2, v5

    invoke-static {v7}, Lcom/wuyouwin/math/Mathf;->sign(F)B

    move-result v7

    invoke-static {v6, v7}, Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;->getKeyCodeForAxis(IB)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/wuyouwin/inputcontrols/ExternalController;->getControllerBinding(I)Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;

    move-result-object v6

    .line 296
    .local v6, "controllerBinding":Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/wuyouwin/inputcontrols/Binding;

    move-result-object v7

    aget v8, v2, v5

    invoke-virtual {p0, v7, v1, v8}, Lcom/wuyouwin/widget/InputControlsView;->handleInputEvent(Lcom/wuyouwin/inputcontrols/Binding;ZF)V

    goto :goto_1

    .line 299
    .end local v6    # "controllerBinding":Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;
    :cond_0
    aget v6, v3, v5

    invoke-static {v6, v1}, Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;->getKeyCodeForAxis(IB)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/wuyouwin/inputcontrols/ExternalController;->getControllerBinding(I)Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;

    move-result-object v6

    .line 300
    .restart local v6    # "controllerBinding":Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/wuyouwin/inputcontrols/Binding;

    move-result-object v7

    aget v8, v2, v5

    invoke-virtual {p0, v7, v0, v8}, Lcom/wuyouwin/widget/InputControlsView;->handleInputEvent(Lcom/wuyouwin/inputcontrols/Binding;ZF)V

    .line 301
    :cond_1
    aget v7, v3, v5

    const/4 v8, -0x1

    invoke-static {v7, v8}, Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;->getKeyCodeForAxis(IB)I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/wuyouwin/inputcontrols/ExternalController;->getControllerBinding(I)Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;

    move-result-object v6

    .line 302
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/wuyouwin/inputcontrols/Binding;

    move-result-object v7

    aget v8, v2, v5

    invoke-virtual {p0, v7, v0, v8}, Lcom/wuyouwin/widget/InputControlsView;->handleInputEvent(Lcom/wuyouwin/inputcontrols/Binding;ZF)V

    .line 293
    :cond_2
    :goto_1
    add-int/lit8 v7, v5, 0x1

    int-to-byte v5, v7

    goto :goto_0

    .end local v6    # "controllerBinding":Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;
    :cond_3
    nop

    .line 305
    .end local v5    # "i":B
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0xb
        0xe
        0xf
        0x10
    .end array-data
.end method

.method private selectElement(Lcom/wuyouwin/inputcontrols/ControlElement;)V
    .locals 2
    .param p1, "element"    # Lcom/wuyouwin/inputcontrols/ControlElement;

    .line 198
    invoke-direct {p0}, Lcom/wuyouwin/widget/InputControlsView;->deselectAllElements()V

    .line 199
    if-eqz p1, :cond_0

    .line 200
    iput-object p1, p0, Lcom/wuyouwin/widget/InputControlsView;->selectedElement:Lcom/wuyouwin/inputcontrols/ControlElement;

    .line 201
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->selectedElement:Lcom/wuyouwin/inputcontrols/ControlElement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wuyouwin/inputcontrols/ControlElement;->setSelected(Z)V

    .line 203
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 204
    return-void
.end method

.method private declared-synchronized wlNearestElement(FF)Lcom/wuyouwin/inputcontrols/ControlElement;
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x4e6e6b28    # 1.0E9f

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wuyouwin/inputcontrols/ControlElement;

    invoke-virtual {v3}, Lcom/wuyouwin/inputcontrols/ControlElement;->getX()S

    move-result v4

    int-to-float v4, v4

    sub-float v4, p1, v4

    invoke-virtual {v3}, Lcom/wuyouwin/inputcontrols/ControlElement;->getY()S

    move-result v5

    int-to-float v5, v5

    sub-float v5, p2, v5

    mul-float v6, v4, v4

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    cmpg-float v7, v6, v2

    if-gez v7, :cond_1

    move v2, v6

    move-object v1, v3

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit p0

    return-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addElement()Z
    .locals 2

    monitor-enter p0

    .line 163
    :try_start_0
    iget-boolean v0, p0, Lcom/wuyouwin/widget/InputControlsView;->editMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Lcom/wuyouwin/inputcontrols/ControlElement;

    invoke-direct {v0, p0}, Lcom/wuyouwin/inputcontrols/ControlElement;-><init>(Lcom/wuyouwin/widget/InputControlsView;)V

    .line 165
    .local v0, "element":Lcom/wuyouwin/inputcontrols/ControlElement;
    iget-object v1, p0, Lcom/wuyouwin/widget/InputControlsView;->cursor:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Lcom/wuyouwin/inputcontrols/ControlElement;->setX(I)V

    .line 166
    iget-object v1, p0, Lcom/wuyouwin/widget/InputControlsView;->cursor:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Lcom/wuyouwin/inputcontrols/ControlElement;->setY(I)V

    .line 167
    iget-object v1, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v1, v0}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->addElement(Lcom/wuyouwin/inputcontrols/ControlElement;)V

    .line 168
    iget-object v1, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v1}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->save()V

    .line 169
    invoke-direct {p0, v0}, Lcom/wuyouwin/widget/InputControlsView;->selectElement(Lcom/wuyouwin/inputcontrols/ControlElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 162
    .end local v0    # "element":Lcom/wuyouwin/inputcontrols/ControlElement;
    .end local p0    # "this":Lcom/wuyouwin/widget/InputControlsView;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 172
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 162
    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public getDarkColorFilter()Landroid/graphics/ColorFilter;
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->darkColorFilter:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v1, -0x1000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->darkColorFilter:Landroid/graphics/ColorFilter;

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->darkColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getIcon(B)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "id"    # B

    .line 511
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->icons:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 512
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 513
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inputcontrols/icons/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    iget-object v2, p0, Lcom/wuyouwin/widget/InputControlsView;->icons:[Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 516
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    goto :goto_2

    .line 513
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    nop

    .end local v0    # "context":Landroid/content/Context;
    .end local p1    # "id":B
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 518
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local p1    # "id":B
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->icons:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLightColorFilter()Landroid/graphics/ColorFilter;
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->lightColorFilter:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->lightColorFilter:Landroid/graphics/ColorFilter;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->lightColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 2

    .line 271
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/wuyouwin/widget/InputControlsView;->snappingSize:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/wuyouwin/math/Mathf;->roundTo(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 2

    .line 267
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/wuyouwin/widget/InputControlsView;->snappingSize:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/wuyouwin/math/Mathf;->roundTo(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getOverlayOpacity()F
    .locals 1

    .line 86
    iget v0, p0, Lcom/wuyouwin/widget/InputControlsView;->overlayOpacity:F

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public declared-synchronized getProfile()Lcom/wuyouwin/inputcontrols/ControlsProfile;
    .locals 1

    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/wuyouwin/widget/InputControlsView;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSelectedElement()Lcom/wuyouwin/inputcontrols/ControlElement;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->selectedElement:Lcom/wuyouwin/inputcontrols/ControlElement;

    return-object v0
.end method

.method public getSnappingSize()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/wuyouwin/widget/InputControlsView;->snappingSize:I

    return v0
.end method

.method public getTouchpadView()Lcom/wuyouwin/widget/TouchpadView;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->touchpadView:Lcom/wuyouwin/widget/TouchpadView;

    return-object v0
.end method

.method public getXServer()Lcom/wuyouwin/xserver/XServer;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->xServer:Lcom/wuyouwin/xserver/XServer;

    return-object v0
.end method

.method public handleInputEvent(Lcom/wuyouwin/inputcontrols/Binding;Z)V
    .locals 1
    .param p1, "binding"    # Lcom/wuyouwin/inputcontrols/Binding;
    .param p2, "isActionDown"    # Z

    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/wuyouwin/widget/InputControlsView;->handleInputEvent(Lcom/wuyouwin/inputcontrols/Binding;ZF)V

    .line 450
    return-void
.end method

.method public handleInputEvent(Lcom/wuyouwin/inputcontrols/Binding;ZF)V
    .locals 6
    .param p1, "binding"    # Lcom/wuyouwin/inputcontrols/Binding;
    .param p2, "isActionDown"    # Z
    .param p3, "offset"    # F

    .line 453
    invoke-virtual {p1}, Lcom/wuyouwin/inputcontrols/Binding;->isGamepad()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 454
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->xServer:Lcom/wuyouwin/xserver/XServer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/XServer;->getWinHandler()Lcom/wuyouwin/winhandler/WinHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 455
    .local v0, "winHandler":Lcom/wuyouwin/winhandler/WinHandler;
    :goto_0
    iget-object v2, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v2}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->getGamepadState()Lcom/wuyouwin/inputcontrols/GamepadState;

    move-result-object v2

    .line 457
    .local v2, "state":Lcom/wuyouwin/inputcontrols/GamepadState;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    sget-object v4, Lcom/wuyouwin/inputcontrols/Binding;->GAMEPAD_BUTTON_A:Lcom/wuyouwin/inputcontrols/Binding;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    sub-int/2addr v3, v4

    .line 458
    .local v3, "buttonIdx":I
    const/16 v4, 0xb

    if-gt v3, v4, :cond_1

    .line 459
    invoke-virtual {v2, v3, p2}, Lcom/wuyouwin/inputcontrols/GamepadState;->setPressed(IZ)V

    goto/16 :goto_5

    .line 461
    :cond_1
    sget-object v4, Lcom/wuyouwin/inputcontrols/Binding;->GAMEPAD_LEFT_THUMB_UP:Lcom/wuyouwin/inputcontrols/Binding;

    if-eq p1, v4, :cond_2

    sget-object v4, Lcom/wuyouwin/inputcontrols/Binding;->GAMEPAD_LEFT_THUMB_DOWN:Lcom/wuyouwin/inputcontrols/Binding;

    if-ne p1, v4, :cond_3

    :cond_2
    goto :goto_4

    .line 464
    :cond_3
    sget-object v4, Lcom/wuyouwin/inputcontrols/Binding;->GAMEPAD_LEFT_THUMB_LEFT:Lcom/wuyouwin/inputcontrols/Binding;

    if-eq p1, v4, :cond_4

    sget-object v4, Lcom/wuyouwin/inputcontrols/Binding;->GAMEPAD_LEFT_THUMB_RIGHT:Lcom/wuyouwin/inputcontrols/Binding;

    if-ne p1, v4, :cond_5

    :cond_4
    goto :goto_3

    .line 467
    :cond_5
    sget-object v4, Lcom/wuyouwin/inputcontrols/Binding;->GAMEPAD_RIGHT_THUMB_UP:Lcom/wuyouwin/inputcontrols/Binding;

    if-eq p1, v4, :cond_6

    sget-object v4, Lcom/wuyouwin/inputcontrols/Binding;->GAMEPAD_RIGHT_THUMB_DOWN:Lcom/wuyouwin/inputcontrols/Binding;

    if-ne p1, v4, :cond_7

    :cond_6
    goto :goto_2

    .line 470
    :cond_7
    sget-object v4, Lcom/wuyouwin/inputcontrols/Binding;->GAMEPAD_RIGHT_THUMB_LEFT:Lcom/wuyouwin/inputcontrols/Binding;

    if-eq p1, v4, :cond_8

    sget-object v4, Lcom/wuyouwin/inputcontrols/Binding;->GAMEPAD_RIGHT_THUMB_RIGHT:Lcom/wuyouwin/inputcontrols/Binding;

    if-ne p1, v4, :cond_9

    :cond_8
    goto :goto_1

    .line 473
    :cond_9
    sget-object v1, Lcom/wuyouwin/inputcontrols/Binding;->GAMEPAD_DPAD_UP:Lcom/wuyouwin/inputcontrols/Binding;

    if-eq p1, v1, :cond_a

    sget-object v1, Lcom/wuyouwin/inputcontrols/Binding;->GAMEPAD_DPAD_RIGHT:Lcom/wuyouwin/inputcontrols/Binding;

    if-eq p1, v1, :cond_a

    sget-object v1, Lcom/wuyouwin/inputcontrols/Binding;->GAMEPAD_DPAD_DOWN:Lcom/wuyouwin/inputcontrols/Binding;

    if-eq p1, v1, :cond_a

    sget-object v1, Lcom/wuyouwin/inputcontrols/Binding;->GAMEPAD_DPAD_LEFT:Lcom/wuyouwin/inputcontrols/Binding;

    if-ne p1, v1, :cond_f

    .line 475
    :cond_a
    iget-object v1, v2, Lcom/wuyouwin/inputcontrols/GamepadState;->dpad:[Z

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    sget-object v5, Lcom/wuyouwin/inputcontrols/Binding;->GAMEPAD_DPAD_UP:Lcom/wuyouwin/inputcontrols/Binding;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    sub-int/2addr v4, v5

    aput-boolean p2, v1, v4

    goto :goto_5

    .line 471
    :goto_1
    if-eqz p2, :cond_b

    move v1, p3

    :cond_b
    iput v1, v2, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbRX:F

    goto :goto_5

    .line 468
    :goto_2
    if-eqz p2, :cond_c

    move v1, p3

    :cond_c
    iput v1, v2, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbRY:F

    goto :goto_5

    .line 465
    :goto_3
    if-eqz p2, :cond_d

    move v1, p3

    :cond_d
    iput v1, v2, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbLX:F

    goto :goto_5

    .line 462
    :goto_4
    if-eqz p2, :cond_e

    move v1, p3

    :cond_e
    iput v1, v2, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbLY:F

    .line 478
    :cond_f
    :goto_5
    if-eqz v0, :cond_10

    iget-object v1, v0, Lcom/wuyouwin/winhandler/WinHandler;->gamepadHandler:Lcom/wuyouwin/winhandler/GamepadHandler;

    iget-object v4, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v1, v4}, Lcom/wuyouwin/winhandler/GamepadHandler;->sendGamepadState(Lcom/wuyouwin/inputcontrols/GamepadSlot;)V

    .line 479
    .end local v0    # "winHandler":Lcom/wuyouwin/winhandler/WinHandler;
    .end local v2    # "state":Lcom/wuyouwin/inputcontrols/GamepadState;
    .end local v3    # "buttonIdx":I
    :cond_10
    goto/16 :goto_a

    .line 481
    :cond_11
    sget-object v0, Lcom/wuyouwin/inputcontrols/Binding;->MOUSE_MOVE_LEFT:Lcom/wuyouwin/inputcontrols/Binding;

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq p1, v0, :cond_12

    sget-object v0, Lcom/wuyouwin/inputcontrols/Binding;->MOUSE_MOVE_RIGHT:Lcom/wuyouwin/inputcontrols/Binding;

    if-ne p1, v0, :cond_13

    :cond_12
    goto :goto_8

    .line 485
    :cond_13
    sget-object v0, Lcom/wuyouwin/inputcontrols/Binding;->MOUSE_MOVE_DOWN:Lcom/wuyouwin/inputcontrols/Binding;

    if-eq p1, v0, :cond_14

    sget-object v0, Lcom/wuyouwin/inputcontrols/Binding;->MOUSE_MOVE_UP:Lcom/wuyouwin/inputcontrols/Binding;

    if-ne p1, v0, :cond_15

    :cond_14
    goto :goto_6

    .line 489
    :cond_15
    iget-object v0, p1, Lcom/wuyouwin/inputcontrols/Binding;->keycode:Lcom/wuyouwin/xserver/XKeycode;

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/XKeycode;->isCustomKey()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 490
    if-nez p2, :cond_20

    invoke-direct {p0, p1}, Lcom/wuyouwin/widget/InputControlsView;->handleCommandKeyEvent(Lcom/wuyouwin/inputcontrols/Binding;)V

    goto :goto_a

    .line 493
    :cond_16
    invoke-virtual {p1}, Lcom/wuyouwin/inputcontrols/Binding;->getPointerButton()Lcom/wuyouwin/xserver/Pointer$Button;

    move-result-object v0

    .line 494
    .local v0, "pointerButton":Lcom/wuyouwin/xserver/Pointer$Button;
    if-eqz p2, :cond_18

    .line 495
    if-eqz v0, :cond_17

    .line 496
    iget-object v1, p0, Lcom/wuyouwin/widget/InputControlsView;->xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-virtual {v1, v0}, Lcom/wuyouwin/xserver/XServer;->injectPointerButtonPress(Lcom/wuyouwin/xserver/Pointer$Button;)V

    goto :goto_a

    .line 498
    :cond_17
    iget-object v1, p0, Lcom/wuyouwin/widget/InputControlsView;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v2, p1, Lcom/wuyouwin/inputcontrols/Binding;->keycode:Lcom/wuyouwin/xserver/XKeycode;

    invoke-virtual {v1, v2}, Lcom/wuyouwin/xserver/XServer;->injectKeyPress(Lcom/wuyouwin/xserver/XKeycode;)V

    goto :goto_a

    .line 501
    :cond_18
    if-eqz v0, :cond_19

    .line 502
    iget-object v1, p0, Lcom/wuyouwin/widget/InputControlsView;->xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-virtual {v1, v0}, Lcom/wuyouwin/xserver/XServer;->injectPointerButtonRelease(Lcom/wuyouwin/xserver/Pointer$Button;)V

    goto :goto_a

    .line 504
    :cond_19
    iget-object v1, p0, Lcom/wuyouwin/widget/InputControlsView;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v2, p1, Lcom/wuyouwin/inputcontrols/Binding;->keycode:Lcom/wuyouwin/xserver/XKeycode;

    invoke-virtual {v1, v2}, Lcom/wuyouwin/xserver/XServer;->injectKeyRelease(Lcom/wuyouwin/xserver/XKeycode;)V

    goto :goto_a

    .line 486
    .end local v0    # "pointerButton":Lcom/wuyouwin/xserver/Pointer$Button;
    :goto_6
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->mouseMoveOffset:Landroid/graphics/PointF;

    if-eqz p2, :cond_1c

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_1a

    move v1, p3

    goto :goto_7

    :cond_1a
    sget-object v1, Lcom/wuyouwin/inputcontrols/Binding;->MOUSE_MOVE_UP:Lcom/wuyouwin/inputcontrols/Binding;

    if-ne p1, v1, :cond_1b

    move v2, v3

    :cond_1b
    int-to-float v1, v2

    :cond_1c
    :goto_7
    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 487
    if-eqz p2, :cond_20

    invoke-direct {p0}, Lcom/wuyouwin/widget/InputControlsView;->createMouseMoveTimer()V

    goto :goto_a

    .line 482
    :goto_8
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->mouseMoveOffset:Landroid/graphics/PointF;

    if-eqz p2, :cond_1f

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_1d

    move v1, p3

    goto :goto_9

    :cond_1d
    sget-object v1, Lcom/wuyouwin/inputcontrols/Binding;->MOUSE_MOVE_LEFT:Lcom/wuyouwin/inputcontrols/Binding;

    if-ne p1, v1, :cond_1e

    move v2, v3

    :cond_1e
    int-to-float v1, v2

    :cond_1f
    :goto_9
    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 483
    if-eqz p2, :cond_20

    invoke-direct {p0}, Lcom/wuyouwin/widget/InputControlsView;->createMouseMoveTimer()V

    .line 508
    :cond_20
    :goto_a
    return-void
.end method

.method public handleInputEvent([Lcom/wuyouwin/inputcontrols/Binding;Z)V
    .locals 4
    .param p1, "bindings"    # [Lcom/wuyouwin/inputcontrols/Binding;
    .param p2, "isActionDown"    # Z

    .line 443
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 444
    .local v2, "binding":Lcom/wuyouwin/inputcontrols/Binding;
    sget-object v3, Lcom/wuyouwin/inputcontrols/Binding;->NONE:Lcom/wuyouwin/inputcontrols/Binding;

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p2, v3}, Lcom/wuyouwin/widget/InputControlsView;->handleInputEvent(Lcom/wuyouwin/inputcontrols/Binding;ZF)V

    .line 443
    .end local v2    # "binding":Lcom/wuyouwin/inputcontrols/Binding;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    :cond_1
    return-void
.end method

.method public isEditMode()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/wuyouwin/widget/InputControlsView;->editMode:Z

    return v0
.end method

.method public isShowTouchscreenControls()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/wuyouwin/widget/InputControlsView;->showTouchscreenControls:Z

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    monitor-enter p0

    .line 95
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 96
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 98
    .local v1, "height":I
    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    goto :goto_2

    .line 103
    :cond_0
    div-int/lit8 v2, v0, 0x64

    iput v2, p0, Lcom/wuyouwin/widget/InputControlsView;->snappingSize:I

    .line 104
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/wuyouwin/widget/InputControlsView;->readyToDraw:Z

    .line 106
    iget-boolean v3, p0, Lcom/wuyouwin/widget/InputControlsView;->editMode:Z

    if-eqz v3, :cond_1

    .line 107
    invoke-direct {p0, p1}, Lcom/wuyouwin/widget/InputControlsView;->drawGrid(Landroid/graphics/Canvas;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/wuyouwin/widget/InputControlsView;->drawCursor(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 94
    .end local v0    # "width":I
    .end local v1    # "height":I
    .end local p0    # "this":Lcom/wuyouwin/widget/InputControlsView;
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 111
    .restart local v0    # "width":I
    .restart local v1    # "height":I
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    if-eqz v3, :cond_4

    .line 112
    iget-object v3, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v3}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->isElementsLoaded()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v3, p0}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->loadElements(Lcom/wuyouwin/widget/InputControlsView;)V

    .line 113
    :cond_2
    iget-object v3, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v3}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->getElements()Ljava/util/List;

    move-result-object v3

    .line 114
    .local v3, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/wuyouwin/inputcontrols/ControlElement;>;"
    iget-object v4, p0, Lcom/wuyouwin/widget/InputControlsView;->touchpadView:Lcom/wuyouwin/widget/TouchpadView;

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/wuyouwin/widget/InputControlsView;->touchpadView:Lcom/wuyouwin/widget/TouchpadView;

    invoke-virtual {v4, v2}, Lcom/wuyouwin/widget/TouchpadView;->setPointerButtonRightEnabled(Z)V

    .line 115
    :cond_3
    iget-boolean v2, p0, Lcom/wuyouwin/widget/InputControlsView;->showTouchscreenControls:Z

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wuyouwin/inputcontrols/ControlElement;

    .local v4, "element":Lcom/wuyouwin/inputcontrols/ControlElement;
    invoke-virtual {v4, p1}, Lcom/wuyouwin/inputcontrols/ControlElement;->draw(Landroid/graphics/Canvas;)V

    .end local v4    # "element":Lcom/wuyouwin/inputcontrols/ControlElement;
    goto :goto_1

    .line 118
    .end local v3    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/wuyouwin/inputcontrols/ControlElement;>;"
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 99
    :cond_5
    :goto_2
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/wuyouwin/widget/InputControlsView;->readyToDraw:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 94
    .end local v0    # "width":I
    .end local v1    # "height":I
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 309
    iget-boolean v0, p0, Lcom/wuyouwin/widget/InputControlsView;->editMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->getController(I)Lcom/wuyouwin/inputcontrols/ExternalController;

    move-result-object v0

    .line 311
    .local v0, "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/wuyouwin/inputcontrols/ExternalController;->updateStateFromMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    invoke-virtual {v0}, Lcom/wuyouwin/inputcontrols/ExternalController;->getGamepadState()Lcom/wuyouwin/inputcontrols/GamepadState;

    move-result-object v1

    .line 314
    .local v1, "state":Lcom/wuyouwin/inputcontrols/GamepadState;
    const/16 v2, 0x68

    invoke-virtual {v0, v2}, Lcom/wuyouwin/inputcontrols/ExternalController;->getControllerBinding(I)Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;

    move-result-object v2

    .line 315
    .local v2, "controllerBinding":Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/wuyouwin/inputcontrols/Binding;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Lcom/wuyouwin/inputcontrols/GamepadState;->isPressed(I)Z

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/wuyouwin/widget/InputControlsView;->handleInputEvent(Lcom/wuyouwin/inputcontrols/Binding;Z)V

    .line 317
    :cond_0
    const/16 v3, 0x69

    invoke-virtual {v0, v3}, Lcom/wuyouwin/inputcontrols/ExternalController;->getControllerBinding(I)Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;

    move-result-object v2

    .line 318
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/wuyouwin/inputcontrols/Binding;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Lcom/wuyouwin/inputcontrols/GamepadState;->isPressed(I)Z

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/wuyouwin/widget/InputControlsView;->handleInputEvent(Lcom/wuyouwin/inputcontrols/Binding;Z)V

    .line 320
    :cond_1
    invoke-direct {p0, v0}, Lcom/wuyouwin/widget/InputControlsView;->processJoystickInput(Lcom/wuyouwin/inputcontrols/ExternalController;)V

    .line 321
    const/4 v3, 0x1

    return v3

    .line 324
    .end local v0    # "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    .end local v1    # "state":Lcom/wuyouwin/inputcontrols/GamepadState;
    .end local v2    # "controllerBinding":Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 422
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->getController(I)Lcom/wuyouwin/inputcontrols/ExternalController;

    move-result-object v0

    .line 424
    .local v0, "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    if-eqz v0, :cond_2

    .line 425
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/wuyouwin/inputcontrols/ExternalController;->getControllerBinding(I)Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;

    move-result-object v2

    .line 426
    .local v2, "controllerBinding":Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;
    if-eqz v2, :cond_2

    .line 427
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    .line 429
    .local v3, "action":I
    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 430
    invoke-virtual {v2}, Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/wuyouwin/inputcontrols/Binding;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/wuyouwin/widget/InputControlsView;->handleInputEvent(Lcom/wuyouwin/inputcontrols/Binding;Z)V

    goto :goto_0

    .line 432
    :cond_0
    if-ne v3, v4, :cond_1

    .line 433
    invoke-virtual {v2}, Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/wuyouwin/inputcontrols/Binding;

    move-result-object v5

    invoke-virtual {p0, v5, v1}, Lcom/wuyouwin/widget/InputControlsView;->handleInputEvent(Lcom/wuyouwin/inputcontrols/Binding;Z)V

    .line 435
    :cond_1
    :goto_0
    return v4

    .line 439
    .end local v0    # "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    .end local v2    # "controllerBinding":Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;
    .end local v3    # "action":I
    :cond_2
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 329
    iget-boolean v0, p0, Lcom/wuyouwin/widget/InputControlsView;->editMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/wuyouwin/widget/InputControlsView;->readyToDraw:Z

    if-eqz v0, :cond_7

    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 348
    :pswitch_0
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->selectedElement:Lcom/wuyouwin/inputcontrols/ControlElement;

    if-eqz v0, :cond_7

    .line 349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/wuyouwin/widget/InputControlsView;->startX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 350
    .local v0, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/wuyouwin/widget/InputControlsView;->startY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 352
    .local v3, "dy":F
    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v5, v0, v4

    if-gez v5, :cond_0

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_1

    :cond_0
    iput-boolean v2, p0, Lcom/wuyouwin/widget/InputControlsView;->moveElement:Z

    .line 354
    :cond_1
    iget-boolean v4, p0, Lcom/wuyouwin/widget/InputControlsView;->moveElement:Z

    if-eqz v4, :cond_2

    .line 355
    iget-object v4, p0, Lcom/wuyouwin/widget/InputControlsView;->selectedElement:Lcom/wuyouwin/inputcontrols/ControlElement;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/wuyouwin/widget/InputControlsView;->offsetX:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/wuyouwin/widget/InputControlsView;->snappingSize:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/wuyouwin/math/Mathf;->roundTo(FF)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/wuyouwin/inputcontrols/ControlElement;->setX(I)V

    .line 356
    iget-object v4, p0, Lcom/wuyouwin/widget/InputControlsView;->selectedElement:Lcom/wuyouwin/inputcontrols/ControlElement;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/wuyouwin/widget/InputControlsView;->offsetY:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/wuyouwin/widget/InputControlsView;->snappingSize:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/wuyouwin/math/Mathf;->roundTo(FF)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/wuyouwin/inputcontrols/ControlElement;->setY(I)V

    .line 357
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 359
    .end local v0    # "dx":F
    .end local v3    # "dy":F
    :cond_2
    goto :goto_0

    .line 363
    :pswitch_1
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->selectedElement:Lcom/wuyouwin/inputcontrols/ControlElement;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/wuyouwin/widget/InputControlsView;->moveElement:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->save()V

    .line 364
    :cond_3
    iget-boolean v0, p0, Lcom/wuyouwin/widget/InputControlsView;->moveCursor:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->cursor:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/wuyouwin/widget/InputControlsView;->snappingSize:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/wuyouwin/math/Mathf;->roundTo(FF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/wuyouwin/widget/InputControlsView;->snappingSize:I

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/wuyouwin/math/Mathf;->roundTo(FF)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 365
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 332
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/wuyouwin/widget/InputControlsView;->startX:F

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/wuyouwin/widget/InputControlsView;->startY:F

    .line 335
    iget v0, p0, Lcom/wuyouwin/widget/InputControlsView;->startX:F

    iget v3, p0, Lcom/wuyouwin/widget/InputControlsView;->startY:F

    invoke-direct {p0, v0, v3}, Lcom/wuyouwin/widget/InputControlsView;->intersectElement(FF)Lcom/wuyouwin/inputcontrols/ControlElement;

    move-result-object v0

    if-nez v0, :cond_5

    sget-boolean v4, Lcom/wuyouwin/widget/InputControlsView;->wlSnapEnabled:Z

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/wuyouwin/widget/InputControlsView;->startX:F

    iget v5, p0, Lcom/wuyouwin/widget/InputControlsView;->startY:F

    invoke-direct {p0, v4, v5}, Lcom/wuyouwin/widget/InputControlsView;->wlNearestElement(FF)Lcom/wuyouwin/inputcontrols/ControlElement;

    move-result-object v0

    .line 336
    .local v0, "element":Lcom/wuyouwin/inputcontrols/ControlElement;
    :cond_5
    iput-boolean v2, p0, Lcom/wuyouwin/widget/InputControlsView;->moveCursor:Z

    .line 337
    iput-boolean v1, p0, Lcom/wuyouwin/widget/InputControlsView;->moveElement:Z

    .line 338
    if-eqz v0, :cond_6

    .line 339
    iget v3, p0, Lcom/wuyouwin/widget/InputControlsView;->startX:F

    invoke-virtual {v0}, Lcom/wuyouwin/inputcontrols/ControlElement;->getX()S

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/wuyouwin/widget/InputControlsView;->offsetX:F

    .line 340
    iget v3, p0, Lcom/wuyouwin/widget/InputControlsView;->startY:F

    invoke-virtual {v0}, Lcom/wuyouwin/inputcontrols/ControlElement;->getY()S

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/wuyouwin/widget/InputControlsView;->offsetY:F

    .line 341
    iput-boolean v1, p0, Lcom/wuyouwin/widget/InputControlsView;->moveCursor:Z

    .line 344
    :cond_6
    invoke-direct {p0, v0}, Lcom/wuyouwin/widget/InputControlsView;->selectElement(Lcom/wuyouwin/inputcontrols/ControlElement;)V

    .line 345
    nop

    .line 371
    .end local v0    # "element":Lcom/wuyouwin/inputcontrols/ControlElement;
    :cond_7
    :goto_0
    iget-boolean v0, p0, Lcom/wuyouwin/widget/InputControlsView;->editMode:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_11

    .line 372
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 373
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 374
    .local v3, "pointerId":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 375
    .local v4, "actionMasked":I
    const/4 v5, 0x0

    .line 377
    .local v5, "handled":Z
    packed-switch v4, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_5

    .line 394
    :pswitch_4
    const/4 v1, 0x0

    .local v1, "i":B
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    int-to-byte v6, v6

    .local v6, "count":B
    :goto_1
    if-ge v1, v6, :cond_b

    .line 395
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 396
    .local v7, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 397
    .local v8, "y":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 399
    .local v9, "movePointerId":I
    const/4 v5, 0x0

    .line 400
    iget-object v10, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v10}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->getElements()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wuyouwin/inputcontrols/ControlElement;

    .line 401
    .local v11, "element":Lcom/wuyouwin/inputcontrols/ControlElement;
    invoke-virtual {v11, v9, v7, v8}, Lcom/wuyouwin/inputcontrols/ControlElement;->handleTouchMove(IFF)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v5, 0x1

    .line 402
    .end local v11    # "element":Lcom/wuyouwin/inputcontrols/ControlElement;
    :cond_8
    goto :goto_2

    .line 403
    :cond_9
    if-nez v5, :cond_a

    iget-object v10, p0, Lcom/wuyouwin/widget/InputControlsView;->touchpadView:Lcom/wuyouwin/widget/TouchpadView;

    invoke-virtual {v10, p1}, Lcom/wuyouwin/widget/TouchpadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 394
    .end local v7    # "x":F
    .end local v8    # "y":F
    .end local v9    # "movePointerId":I
    :cond_a
    add-int/lit8 v7, v1, 0x1

    int-to-byte v1, v7

    goto :goto_1

    :cond_b
    nop

    .line 405
    .end local v1    # "i":B
    .end local v6    # "count":B
    goto/16 :goto_5

    .line 410
    :pswitch_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 411
    .local v1, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 412
    .local v6, "y":F
    iget-object v7, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v7}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->getElements()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wuyouwin/inputcontrols/ControlElement;

    .local v8, "element":Lcom/wuyouwin/inputcontrols/ControlElement;
    invoke-virtual {v8, v3, v1, v6}, Lcom/wuyouwin/inputcontrols/ControlElement;->handleTouchUp(IFF)Z

    move-result v9

    if-eqz v9, :cond_c

    const/4 v5, 0x1

    goto :goto_3

    .line 413
    .end local v8    # "element":Lcom/wuyouwin/inputcontrols/ControlElement;
    :cond_d
    if-nez v5, :cond_11

    iget-object v7, p0, Lcom/wuyouwin/widget/InputControlsView;->touchpadView:Lcom/wuyouwin/widget/TouchpadView;

    invoke-virtual {v7, p1}, Lcom/wuyouwin/widget/TouchpadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_5

    .line 380
    .end local v1    # "x":F
    .end local v6    # "y":F
    :pswitch_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 381
    .local v6, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 383
    .local v7, "y":F
    iget-object v8, p0, Lcom/wuyouwin/widget/InputControlsView;->touchpadView:Lcom/wuyouwin/widget/TouchpadView;

    invoke-virtual {v8, v2}, Lcom/wuyouwin/widget/TouchpadView;->setPointerButtonLeftEnabled(Z)V

    .line 384
    iget-object v8, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v8}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->getElements()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wuyouwin/inputcontrols/ControlElement;

    .line 385
    .local v9, "element":Lcom/wuyouwin/inputcontrols/ControlElement;
    invoke-virtual {v9, v3, v6, v7}, Lcom/wuyouwin/inputcontrols/ControlElement;->handleTouchDown(IFF)Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v5, 0x1

    .line 386
    :cond_e
    invoke-virtual {v9, v1}, Lcom/wuyouwin/inputcontrols/ControlElement;->getBindingAt(I)Lcom/wuyouwin/inputcontrols/Binding;

    move-result-object v10

    sget-object v11, Lcom/wuyouwin/inputcontrols/Binding;->MOUSE_LEFT_BUTTON:Lcom/wuyouwin/inputcontrols/Binding;

    if-ne v10, v11, :cond_f

    invoke-virtual {v9}, Lcom/wuyouwin/inputcontrols/ControlElement;->getLastBindingIndex()B

    move-result v10

    if-nez v10, :cond_f

    .line 387
    iget-object v10, p0, Lcom/wuyouwin/widget/InputControlsView;->touchpadView:Lcom/wuyouwin/widget/TouchpadView;

    invoke-virtual {v10, v1}, Lcom/wuyouwin/widget/TouchpadView;->setPointerButtonLeftEnabled(Z)V

    .line 389
    .end local v9    # "element":Lcom/wuyouwin/inputcontrols/ControlElement;
    :cond_f
    goto :goto_4

    .line 390
    :cond_10
    if-nez v5, :cond_11

    iget-object v1, p0, Lcom/wuyouwin/widget/InputControlsView;->touchpadView:Lcom/wuyouwin/widget/TouchpadView;

    invoke-virtual {v1, p1}, Lcom/wuyouwin/widget/TouchpadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 418
    .end local v0    # "actionIndex":I
    .end local v3    # "pointerId":I
    .end local v4    # "actionMasked":I
    .end local v5    # "handled":Z
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_11
    :goto_5
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public declared-synchronized removeElement()Z
    .locals 2

    monitor-enter p0

    .line 176
    :try_start_0
    iget-boolean v0, p0, Lcom/wuyouwin/widget/InputControlsView;->editMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->selectedElement:Lcom/wuyouwin/inputcontrols/ControlElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    iget-object v1, p0, Lcom/wuyouwin/widget/InputControlsView;->selectedElement:Lcom/wuyouwin/inputcontrols/ControlElement;

    invoke-virtual {v0, v1}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->removeElement(Lcom/wuyouwin/inputcontrols/ControlElement;)V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->selectedElement:Lcom/wuyouwin/inputcontrols/ControlElement;

    .line 179
    iget-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->save()V

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 175
    .end local p0    # "this":Lcom/wuyouwin/widget/InputControlsView;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 183
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 175
    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public setEditMode(Z)V
    .locals 0
    .param p1, "editMode"    # Z

    .line 74
    iput-boolean p1, p0, Lcom/wuyouwin/widget/InputControlsView;->editMode:Z

    .line 75
    return-void
.end method

.method public setOverlayOpacity(F)V
    .locals 0
    .param p1, "overlayOpacity"    # F

    .line 82
    iput p1, p0, Lcom/wuyouwin/widget/InputControlsView;->overlayOpacity:F

    .line 83
    return-void
.end method

.method public declared-synchronized setProfile(Lcom/wuyouwin/inputcontrols/ControlsProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/wuyouwin/inputcontrols/ControlsProfile;

    monitor-enter p0

    .line 211
    if-eqz p1, :cond_0

    .line 212
    :try_start_0
    iput-object p1, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;

    .line 213
    invoke-direct {p0}, Lcom/wuyouwin/widget/InputControlsView;->deselectAllElements()V

    goto :goto_0

    .line 210
    .end local p0    # "this":Lcom/wuyouwin/widget/InputControlsView;
    .end local p1    # "profile":Lcom/wuyouwin/inputcontrols/ControlsProfile;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 215
    .restart local p1    # "profile":Lcom/wuyouwin/inputcontrols/ControlsProfile;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wuyouwin/widget/InputControlsView;->profile:Lcom/wuyouwin/inputcontrols/ControlsProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :goto_0
    monitor-exit p0

    return-void

    .line 210
    .end local p1    # "profile":Lcom/wuyouwin/inputcontrols/ControlsProfile;
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public setShowTouchscreenControls(Z)V
    .locals 0
    .param p1, "showTouchscreenControls"    # Z

    .line 223
    iput-boolean p1, p0, Lcom/wuyouwin/widget/InputControlsView;->showTouchscreenControls:Z

    .line 224
    return-void
.end method

.method public setTouchpadView(Lcom/wuyouwin/widget/TouchpadView;)V
    .locals 0
    .param p1, "touchpadView"    # Lcom/wuyouwin/widget/TouchpadView;

    .line 254
    iput-object p1, p0, Lcom/wuyouwin/widget/InputControlsView;->touchpadView:Lcom/wuyouwin/widget/TouchpadView;

    .line 255
    return-void
.end method

.method public setXServer(Lcom/wuyouwin/xserver/XServer;)V
    .locals 0
    .param p1, "xServer"    # Lcom/wuyouwin/xserver/XServer;

    .line 262
    iput-object p1, p0, Lcom/wuyouwin/widget/InputControlsView;->xServer:Lcom/wuyouwin/xserver/XServer;

    .line 263
    invoke-direct {p0}, Lcom/wuyouwin/widget/InputControlsView;->createMouseMoveTimer()V

    .line 264
    return-void
.end method
