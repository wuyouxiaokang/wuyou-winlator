.class Lcom/winlator/widget/TouchpadView$Finger;
.super Ljava/lang/Object;
.source "TouchpadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/widget/TouchpadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Finger"
.end annotation


# instance fields
.field private lastX:I

.field private lastY:I

.field private final startX:I

.field private final startY:I

.field final synthetic this$0:Lcom/winlator/widget/TouchpadView;

.field private final touchTime:J

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lcom/winlator/widget/TouchpadView;FF)V
    .locals 2
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 97
    iput-object p1, p0, Lcom/winlator/widget/TouchpadView$Finger;->this$0:Lcom/winlator/widget/TouchpadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {p1}, Lcom/winlator/widget/TouchpadView;->access$000(Lcom/winlator/widget/TouchpadView;)[F

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/winlator/math/XForm;->transformPoint([FFF)[F

    move-result-object p1

    .line 99
    .local p1, "transformedPoint":[F
    const/4 v0, 0x0

    aget v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/winlator/widget/TouchpadView$Finger;->lastX:I

    iput v0, p0, Lcom/winlator/widget/TouchpadView$Finger;->startX:I

    iput v0, p0, Lcom/winlator/widget/TouchpadView$Finger;->x:I

    .line 100
    const/4 v0, 0x1

    aget v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/winlator/widget/TouchpadView$Finger;->lastY:I

    iput v0, p0, Lcom/winlator/widget/TouchpadView$Finger;->startY:I

    iput v0, p0, Lcom/winlator/widget/TouchpadView$Finger;->y:I

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/winlator/widget/TouchpadView$Finger;->touchTime:J

    .line 102
    return-void
.end method

.method static synthetic access$200(Lcom/winlator/widget/TouchpadView$Finger;)Z
    .locals 1
    .param p0, "x0"    # Lcom/winlator/widget/TouchpadView$Finger;

    .line 88
    invoke-direct {p0}, Lcom/winlator/widget/TouchpadView$Finger;->isTap()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/winlator/widget/TouchpadView$Finger;)I
    .locals 1
    .param p0, "x0"    # Lcom/winlator/widget/TouchpadView$Finger;

    .line 88
    iget v0, p0, Lcom/winlator/widget/TouchpadView$Finger;->x:I

    return v0
.end method

.method static synthetic access$400(Lcom/winlator/widget/TouchpadView$Finger;)I
    .locals 1
    .param p0, "x0"    # Lcom/winlator/widget/TouchpadView$Finger;

    .line 88
    iget v0, p0, Lcom/winlator/widget/TouchpadView$Finger;->y:I

    return v0
.end method

.method static synthetic access$500(Lcom/winlator/widget/TouchpadView$Finger;)I
    .locals 1
    .param p0, "x0"    # Lcom/winlator/widget/TouchpadView$Finger;

    .line 88
    iget v0, p0, Lcom/winlator/widget/TouchpadView$Finger;->lastY:I

    return v0
.end method

.method static synthetic access$600(Lcom/winlator/widget/TouchpadView$Finger;)F
    .locals 1
    .param p0, "x0"    # Lcom/winlator/widget/TouchpadView$Finger;

    .line 88
    invoke-direct {p0}, Lcom/winlator/widget/TouchpadView$Finger;->travelDistance()F

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/winlator/widget/TouchpadView$Finger;)I
    .locals 1
    .param p0, "x0"    # Lcom/winlator/widget/TouchpadView$Finger;

    .line 88
    invoke-direct {p0}, Lcom/winlator/widget/TouchpadView$Finger;->deltaX()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/winlator/widget/TouchpadView$Finger;)I
    .locals 1
    .param p0, "x0"    # Lcom/winlator/widget/TouchpadView$Finger;

    .line 88
    invoke-direct {p0}, Lcom/winlator/widget/TouchpadView$Finger;->deltaY()I

    move-result v0

    return v0
.end method

.method private deltaX()I
    .locals 3

    .line 113
    iget v0, p0, Lcom/winlator/widget/TouchpadView$Finger;->x:I

    iget v1, p0, Lcom/winlator/widget/TouchpadView$Finger;->lastX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/winlator/widget/TouchpadView$Finger;->this$0:Lcom/winlator/widget/TouchpadView;

    invoke-static {v1}, Lcom/winlator/widget/TouchpadView;->access$100(Lcom/winlator/widget/TouchpadView;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 114
    .local v0, "dx":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 115
    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    .line 117
    :cond_0
    invoke-static {v0}, Lcom/winlator/math/Mathf;->roundPoint(F)I

    move-result v1

    return v1
.end method

.method private deltaY()I
    .locals 3

    .line 121
    iget v0, p0, Lcom/winlator/widget/TouchpadView$Finger;->y:I

    iget v1, p0, Lcom/winlator/widget/TouchpadView$Finger;->lastY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/winlator/widget/TouchpadView$Finger;->this$0:Lcom/winlator/widget/TouchpadView;

    invoke-static {v1}, Lcom/winlator/widget/TouchpadView;->access$100(Lcom/winlator/widget/TouchpadView;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 122
    .local v0, "dy":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 123
    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    .line 125
    :cond_0
    invoke-static {v0}, Lcom/winlator/math/Mathf;->roundPoint(F)I

    move-result v1

    return v1
.end method

.method private isTap()Z
    .locals 4

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/winlator/widget/TouchpadView$Finger;->touchTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/winlator/widget/TouchpadView$Finger;->travelDistance()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private travelDistance()F
    .locals 4

    .line 133
    iget v0, p0, Lcom/winlator/widget/TouchpadView$Finger;->x:I

    iget v1, p0, Lcom/winlator/widget/TouchpadView$Finger;->startX:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iget v2, p0, Lcom/winlator/widget/TouchpadView$Finger;->y:I

    iget v3, p0, Lcom/winlator/widget/TouchpadView$Finger;->startY:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public update(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 105
    iget v0, p0, Lcom/winlator/widget/TouchpadView$Finger;->x:I

    iput v0, p0, Lcom/winlator/widget/TouchpadView$Finger;->lastX:I

    .line 106
    iget v0, p0, Lcom/winlator/widget/TouchpadView$Finger;->y:I

    iput v0, p0, Lcom/winlator/widget/TouchpadView$Finger;->lastY:I

    .line 107
    iget-object v0, p0, Lcom/winlator/widget/TouchpadView$Finger;->this$0:Lcom/winlator/widget/TouchpadView;

    invoke-static {v0}, Lcom/winlator/widget/TouchpadView;->access$000(Lcom/winlator/widget/TouchpadView;)[F

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/winlator/math/XForm;->transformPoint([FFF)[F

    move-result-object v0

    .line 108
    .local v0, "transformedPoint":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    float-to-int v1, v1

    iput v1, p0, Lcom/winlator/widget/TouchpadView$Finger;->x:I

    .line 109
    const/4 v1, 0x1

    aget v1, v0, v1

    float-to-int v1, v1

    iput v1, p0, Lcom/winlator/widget/TouchpadView$Finger;->y:I

    .line 110
    return-void
.end method
