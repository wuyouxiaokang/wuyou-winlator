.class public Lcom/winlator/inputcontrols/RangeScroller;
.super Ljava/lang/Object;
.source "RangeScroller.java"


# instance fields
.field private binding:Lcom/winlator/inputcontrols/Binding;

.field private currentOffset:F

.field private final element:Lcom/winlator/inputcontrols/ControlElement;

.field private final inputControlsView:Lcom/winlator/widget/InputControlsView;

.field private isActionDown:Z

.field private lastPosition:F

.field private scrollOffset:F

.field private scrolling:Z

.field private timer:Ljava/util/Timer;

.field private touchTime:J


# direct methods
.method public static synthetic $r8$lambda$WjozeK6p8AiXNqcU5J3Qxw7BrDg(Lcom/winlator/inputcontrols/RangeScroller;Lcom/winlator/inputcontrols/Binding;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/inputcontrols/RangeScroller;->lambda$handleTouchUp$0(Lcom/winlator/inputcontrols/Binding;)V

    return-void
.end method

.method public constructor <init>(Lcom/winlator/widget/InputControlsView;Lcom/winlator/inputcontrols/ControlElement;)V
    .locals 1
    .param p1, "inputControlsView"    # Lcom/winlator/widget/InputControlsView;
    .param p2, "element"    # Lcom/winlator/inputcontrols/ControlElement;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/winlator/inputcontrols/Binding;->NONE:Lcom/winlator/inputcontrols/Binding;

    iput-object v0, p0, Lcom/winlator/inputcontrols/RangeScroller;->binding:Lcom/winlator/inputcontrols/Binding;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/inputcontrols/RangeScroller;->isActionDown:Z

    .line 20
    iput-boolean v0, p0, Lcom/winlator/inputcontrols/RangeScroller;->scrolling:Z

    .line 24
    iput-object p1, p0, Lcom/winlator/inputcontrols/RangeScroller;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    .line 25
    iput-object p2, p0, Lcom/winlator/inputcontrols/RangeScroller;->element:Lcom/winlator/inputcontrols/ControlElement;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/winlator/inputcontrols/RangeScroller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/winlator/inputcontrols/RangeScroller;

    .line 11
    iget-boolean v0, p0, Lcom/winlator/inputcontrols/RangeScroller;->scrolling:Z

    return v0
.end method

.method static synthetic access$100(Lcom/winlator/inputcontrols/RangeScroller;)Lcom/winlator/widget/InputControlsView;
    .locals 1
    .param p0, "x0"    # Lcom/winlator/inputcontrols/RangeScroller;

    .line 11
    iget-object v0, p0, Lcom/winlator/inputcontrols/RangeScroller;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/winlator/inputcontrols/RangeScroller;)Lcom/winlator/inputcontrols/Binding;
    .locals 1
    .param p0, "x0"    # Lcom/winlator/inputcontrols/RangeScroller;

    .line 11
    iget-object v0, p0, Lcom/winlator/inputcontrols/RangeScroller;->binding:Lcom/winlator/inputcontrols/Binding;

    return-object v0
.end method

.method private destroyTimer()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/winlator/inputcontrols/RangeScroller;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/winlator/inputcontrols/RangeScroller;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/inputcontrols/RangeScroller;->timer:Ljava/util/Timer;

    .line 87
    :cond_0
    return-void
.end method

.method private getBindingByPosition(FF)Lcom/winlator/inputcontrols/Binding;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 58
    iget-object v0, p0, Lcom/winlator/inputcontrols/RangeScroller;->element:Lcom/winlator/inputcontrols/ControlElement;

    invoke-virtual {v0}, Lcom/winlator/inputcontrols/ControlElement;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v0

    .line 59
    .local v0, "boundingBox":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/winlator/inputcontrols/RangeScroller;->element:Lcom/winlator/inputcontrols/ControlElement;

    invoke-virtual {v1}, Lcom/winlator/inputcontrols/ControlElement;->getRange()Lcom/winlator/inputcontrols/ControlElement$Range;

    move-result-object v1

    .line 60
    .local v1, "range":Lcom/winlator/inputcontrols/ControlElement$Range;
    iget-object v2, p0, Lcom/winlator/inputcontrols/RangeScroller;->element:Lcom/winlator/inputcontrols/ControlElement;

    invoke-virtual {v2}, Lcom/winlator/inputcontrols/ControlElement;->getOrientation()B

    move-result v2

    if-nez v2, :cond_0

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    :goto_0
    iget v3, p0, Lcom/winlator/inputcontrols/RangeScroller;->currentOffset:F

    sub-float/2addr v2, v3

    goto :goto_1

    :cond_0
    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    goto :goto_0

    .line 61
    .local v2, "offset":F
    :goto_1
    invoke-virtual {p0}, Lcom/winlator/inputcontrols/RangeScroller;->getElementSize()F

    move-result v3

    div-float v3, v2, v3

    iget-byte v4, v1, Lcom/winlator/inputcontrols/ControlElement$Range;->max:B

    int-to-float v4, v4

    rem-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 62
    .local v3, "index":I
    if-gez v3, :cond_1

    iget-byte v4, v1, Lcom/winlator/inputcontrols/ControlElement$Range;->max:B

    add-int/2addr v3, v4

    .line 64
    :cond_1
    sget-object v4, Lcom/winlator/inputcontrols/RangeScroller$2;->$SwitchMap$com$winlator$inputcontrols$ControlElement$Range:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const-string v5, "KEY_"

    packed-switch v4, :pswitch_data_0

    .line 74
    sget-object v4, Lcom/winlator/inputcontrols/Binding;->NONE:Lcom/winlator/inputcontrols/Binding;

    return-object v4

    .line 72
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KEY_KP_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x1

    rem-int/lit8 v5, v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/winlator/inputcontrols/Binding;->valueOf(Ljava/lang/String;)Lcom/winlator/inputcontrols/Binding;

    move-result-object v4

    return-object v4

    .line 70
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KEY_F"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/winlator/inputcontrols/Binding;->valueOf(Ljava/lang/String;)Lcom/winlator/inputcontrols/Binding;

    move-result-object v4

    return-object v4

    .line 68
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x1

    rem-int/lit8 v5, v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/winlator/inputcontrols/Binding;->valueOf(Ljava/lang/String;)Lcom/winlator/inputcontrols/Binding;

    move-result-object v4

    return-object v4

    .line 66
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x41

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/winlator/inputcontrols/Binding;->valueOf(Ljava/lang/String;)Lcom/winlator/inputcontrols/Binding;

    move-result-object v4

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isTap()Z
    .locals 4

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/winlator/inputcontrols/RangeScroller;->touchTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$handleTouchUp$0(Lcom/winlator/inputcontrols/Binding;)V
    .locals 2
    .param p1, "finalBinding"    # Lcom/winlator/inputcontrols/Binding;

    .line 136
    iget-object v0, p0, Lcom/winlator/inputcontrols/RangeScroller;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/winlator/widget/InputControlsView;->handleInputEvent(Lcom/winlator/inputcontrols/Binding;Z)V

    return-void
.end method


# virtual methods
.method public getBinding()Lcom/winlator/inputcontrols/Binding;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/winlator/inputcontrols/RangeScroller;->binding:Lcom/winlator/inputcontrols/Binding;

    return-object v0
.end method

.method public getElementSize()F
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/winlator/inputcontrols/RangeScroller;->element:Lcom/winlator/inputcontrols/ControlElement;

    invoke-virtual {v0}, Lcom/winlator/inputcontrols/ControlElement;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v0

    .line 30
    .local v0, "boundingBox":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/winlator/inputcontrols/RangeScroller;->element:Lcom/winlator/inputcontrols/ControlElement;

    invoke-virtual {v2}, Lcom/winlator/inputcontrols/ControlElement;->getBindingCount()B

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    return v1
.end method

.method public getRangeIndex()[B
    .locals 6

    .line 50
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/winlator/inputcontrols/RangeScroller;->element:Lcom/winlator/inputcontrols/ControlElement;

    invoke-virtual {v1}, Lcom/winlator/inputcontrols/ControlElement;->getRange()Lcom/winlator/inputcontrols/ControlElement$Range;

    move-result-object v1

    .line 51
    .local v1, "range":Lcom/winlator/inputcontrols/ControlElement$Range;
    iget v2, p0, Lcom/winlator/inputcontrols/RangeScroller;->scrollOffset:F

    invoke-virtual {p0}, Lcom/winlator/inputcontrols/RangeScroller;->getElementSize()F

    move-result v3

    div-float/2addr v2, v3

    iget-byte v3, v1, Lcom/winlator/inputcontrols/ControlElement$Range;->max:B

    int-to-float v3, v3

    rem-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-byte v2, v2

    .line 52
    .local v2, "from":B
    if-gez v2, :cond_0

    iget-byte v3, v1, Lcom/winlator/inputcontrols/ControlElement$Range;->max:B

    add-int/2addr v3, v2

    int-to-byte v2, v3

    .line 53
    :cond_0
    iget-object v3, p0, Lcom/winlator/inputcontrols/RangeScroller;->element:Lcom/winlator/inputcontrols/ControlElement;

    invoke-virtual {v3}, Lcom/winlator/inputcontrols/ControlElement;->getBindingCount()B

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v0

    int-to-byte v3, v3

    .line 54
    .local v3, "to":B
    const/4 v4, 0x2

    new-array v4, v4, [B

    const/4 v5, 0x0

    aput-byte v2, v4, v5

    aput-byte v3, v4, v0

    return-object v4
.end method

.method public getScrollOffset()F
    .locals 1

    .line 38
    iget v0, p0, Lcom/winlator/inputcontrols/RangeScroller;->scrollOffset:F

    return v0
.end method

.method public getScrollSize()F
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/winlator/inputcontrols/RangeScroller;->getElementSize()F

    move-result v0

    iget-object v1, p0, Lcom/winlator/inputcontrols/RangeScroller;->element:Lcom/winlator/inputcontrols/ControlElement;

    invoke-virtual {v1}, Lcom/winlator/inputcontrols/ControlElement;->getRange()Lcom/winlator/inputcontrols/ControlElement$Range;

    move-result-object v1

    iget-byte v1, v1, Lcom/winlator/inputcontrols/ControlElement$Range;->max:B

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public handleTouchDown(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 90
    invoke-direct {p0}, Lcom/winlator/inputcontrols/RangeScroller;->destroyTimer()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/inputcontrols/RangeScroller;->scrolling:Z

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/inputcontrols/RangeScroller;->isActionDown:Z

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/winlator/inputcontrols/RangeScroller;->getBindingByPosition(FF)Lcom/winlator/inputcontrols/Binding;

    move-result-object v1

    iput-object v1, p0, Lcom/winlator/inputcontrols/RangeScroller;->binding:Lcom/winlator/inputcontrols/Binding;

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/winlator/inputcontrols/RangeScroller;->touchTime:J

    .line 96
    iget-object v1, p0, Lcom/winlator/inputcontrols/RangeScroller;->element:Lcom/winlator/inputcontrols/ControlElement;

    invoke-virtual {v1}, Lcom/winlator/inputcontrols/ControlElement;->getOrientation()B

    move-result v1

    if-nez v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    iput v1, p0, Lcom/winlator/inputcontrols/RangeScroller;->lastPosition:F

    .line 97
    iget-object v1, p0, Lcom/winlator/inputcontrols/RangeScroller;->element:Lcom/winlator/inputcontrols/ControlElement;

    sget-object v2, Lcom/winlator/inputcontrols/Binding;->NONE:Lcom/winlator/inputcontrols/Binding;

    invoke-virtual {v1, v2}, Lcom/winlator/inputcontrols/ControlElement;->setBinding(Lcom/winlator/inputcontrols/Binding;)V

    .line 99
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1, v0}, Ljava/util/Timer;-><init>(Z)V

    iput-object v1, p0, Lcom/winlator/inputcontrols/RangeScroller;->timer:Ljava/util/Timer;

    .line 100
    iget-object v0, p0, Lcom/winlator/inputcontrols/RangeScroller;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/winlator/inputcontrols/RangeScroller$1;

    invoke-direct {v1, p0}, Lcom/winlator/inputcontrols/RangeScroller$1;-><init>(Lcom/winlator/inputcontrols/RangeScroller;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 106
    return-void
.end method

.method public handleTouchMove(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 109
    iget-boolean v0, p0, Lcom/winlator/inputcontrols/RangeScroller;->isActionDown:Z

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/winlator/inputcontrols/RangeScroller;->element:Lcom/winlator/inputcontrols/ControlElement;

    invoke-virtual {v0}, Lcom/winlator/inputcontrols/ControlElement;->getOrientation()B

    move-result v0

    if-nez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    .line 111
    .local v0, "position":F
    :goto_0
    iget v1, p0, Lcom/winlator/inputcontrols/RangeScroller;->lastPosition:F

    sub-float v1, v0, v1

    .line 113
    .local v1, "deltaPosition":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 114
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/winlator/inputcontrols/RangeScroller;->scrolling:Z

    .line 115
    invoke-direct {p0}, Lcom/winlator/inputcontrols/RangeScroller;->destroyTimer()V

    .line 118
    :cond_1
    iget-boolean v2, p0, Lcom/winlator/inputcontrols/RangeScroller;->scrolling:Z

    if-eqz v2, :cond_3

    .line 119
    iget v2, p0, Lcom/winlator/inputcontrols/RangeScroller;->currentOffset:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/winlator/inputcontrols/RangeScroller;->currentOffset:F

    .line 121
    invoke-virtual {p0}, Lcom/winlator/inputcontrols/RangeScroller;->getScrollSize()F

    move-result v2

    .line 122
    .local v2, "scrollSize":F
    iget v3, p0, Lcom/winlator/inputcontrols/RangeScroller;->currentOffset:F

    neg-float v3, v3

    rem-float/2addr v3, v2

    iput v3, p0, Lcom/winlator/inputcontrols/RangeScroller;->scrollOffset:F

    .line 123
    iget v3, p0, Lcom/winlator/inputcontrols/RangeScroller;->scrollOffset:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    iget v3, p0, Lcom/winlator/inputcontrols/RangeScroller;->scrollOffset:F

    add-float/2addr v3, v2

    iput v3, p0, Lcom/winlator/inputcontrols/RangeScroller;->scrollOffset:F

    .line 125
    :cond_2
    iput v0, p0, Lcom/winlator/inputcontrols/RangeScroller;->lastPosition:F

    .line 128
    .end local v0    # "position":F
    .end local v1    # "deltaPosition":F
    .end local v2    # "scrollSize":F
    :cond_3
    return-void
.end method

.method public handleTouchUp()V
    .locals 6

    .line 131
    iget-boolean v0, p0, Lcom/winlator/inputcontrols/RangeScroller;->isActionDown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 132
    invoke-direct {p0}, Lcom/winlator/inputcontrols/RangeScroller;->destroyTimer()V

    .line 133
    invoke-direct {p0}, Lcom/winlator/inputcontrols/RangeScroller;->isTap()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/winlator/inputcontrols/RangeScroller;->scrolling:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/winlator/inputcontrols/RangeScroller;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    iget-object v2, p0, Lcom/winlator/inputcontrols/RangeScroller;->binding:Lcom/winlator/inputcontrols/Binding;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/winlator/widget/InputControlsView;->handleInputEvent(Lcom/winlator/inputcontrols/Binding;Z)V

    .line 135
    iget-object v0, p0, Lcom/winlator/inputcontrols/RangeScroller;->binding:Lcom/winlator/inputcontrols/Binding;

    .line 136
    .local v0, "finalBinding":Lcom/winlator/inputcontrols/Binding;
    iget-object v2, p0, Lcom/winlator/inputcontrols/RangeScroller;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    new-instance v3, Lcom/winlator/inputcontrols/RangeScroller$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/winlator/inputcontrols/RangeScroller$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/inputcontrols/RangeScroller;Lcom/winlator/inputcontrols/Binding;)V

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    .end local v0    # "finalBinding":Lcom/winlator/inputcontrols/Binding;
    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/winlator/inputcontrols/RangeScroller;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    iget-object v2, p0, Lcom/winlator/inputcontrols/RangeScroller;->binding:Lcom/winlator/inputcontrols/Binding;

    invoke-virtual {v0, v2, v1}, Lcom/winlator/widget/InputControlsView;->handleInputEvent(Lcom/winlator/inputcontrols/Binding;Z)V

    .line 140
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/winlator/inputcontrols/RangeScroller;->isActionDown:Z

    .line 141
    return-void
.end method

.method public isScrolling()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/winlator/inputcontrols/RangeScroller;->scrolling:Z

    return v0
.end method
