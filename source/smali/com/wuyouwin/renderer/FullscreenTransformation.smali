.class public Lcom/wuyouwin/renderer/FullscreenTransformation;
.super Ljava/lang/Object;
.source "FullscreenTransformation.java"


# instance fields
.field public height:S

.field public width:S

.field private final window:Lcom/wuyouwin/xserver/Window;

.field public x:S

.field public y:S


# direct methods
.method public constructor <init>(Lcom/wuyouwin/xserver/Window;)V
    .locals 0
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/wuyouwin/renderer/FullscreenTransformation;->window:Lcom/wuyouwin/xserver/Window;

    .line 15
    return-void
.end method


# virtual methods
.method public transformPointerCoords(SS)[S
    .locals 9
    .param p1, "x"    # S
    .param p2, "y"    # S

    .line 27
    iget-object v0, p0, Lcom/wuyouwin/renderer/FullscreenTransformation;->window:Lcom/wuyouwin/xserver/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/wuyouwin/xserver/Window;->rootPointToLocal(SSZ)[S

    move-result-object v0

    .line 28
    .local v0, "localPoint":[S
    iget-object v2, p0, Lcom/wuyouwin/renderer/FullscreenTransformation;->window:Lcom/wuyouwin/xserver/Window;

    invoke-virtual {v2}, Lcom/wuyouwin/xserver/Window;->getWidth()S

    move-result v2

    int-to-float v2, v2

    iget-short v3, p0, Lcom/wuyouwin/renderer/FullscreenTransformation;->width:S

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 29
    .local v2, "scaleX":F
    iget-object v3, p0, Lcom/wuyouwin/renderer/FullscreenTransformation;->window:Lcom/wuyouwin/xserver/Window;

    invoke-virtual {v3}, Lcom/wuyouwin/xserver/Window;->getHeight()S

    move-result v3

    int-to-float v3, v3

    iget-short v4, p0, Lcom/wuyouwin/renderer/FullscreenTransformation;->height:S

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 30
    .local v3, "scaleY":F
    const/4 v4, 0x0

    aget-short v5, v0, v4

    int-to-float v5, v5

    mul-float/2addr v5, v2

    iget-object v6, p0, Lcom/wuyouwin/renderer/FullscreenTransformation;->window:Lcom/wuyouwin/xserver/Window;

    invoke-virtual {v6}, Lcom/wuyouwin/xserver/Window;->getRootX()S

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    int-to-short v5, v5

    .line 31
    .local v5, "transformedX":S
    aget-short v7, v0, v1

    int-to-float v7, v7

    mul-float/2addr v7, v3

    iget-object v8, p0, Lcom/wuyouwin/renderer/FullscreenTransformation;->window:Lcom/wuyouwin/xserver/Window;

    invoke-virtual {v8}, Lcom/wuyouwin/xserver/Window;->getRootY()S

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v6, v6

    int-to-short v6, v6

    .line 32
    .local v6, "transformedY":S
    const/4 v7, 0x2

    new-array v7, v7, [S

    aput-short v5, v7, v4

    aput-short v6, v7, v1

    return-object v7
.end method

.method public update(Lcom/wuyouwin/xserver/ScreenInfo;SS)V
    .locals 4
    .param p1, "screenInfo"    # Lcom/wuyouwin/xserver/ScreenInfo;
    .param p2, "originWidth"    # S
    .param p3, "originHeight"    # S

    .line 18
    iget-short v0, p1, Lcom/wuyouwin/xserver/ScreenInfo;->height:S

    int-to-float v0, v0

    iget-short v1, p1, Lcom/wuyouwin/xserver/ScreenInfo;->width:S

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    int-to-float v2, p3

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    int-to-short v0, v0

    .line 19
    .local v0, "targetHeight":S
    int-to-float v1, v0

    int-to-float v2, p3

    div-float/2addr v1, v2

    int-to-float v2, p2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-short v1, v1

    .line 20
    .local v1, "targetWidth":S
    iget-short v2, p1, Lcom/wuyouwin/xserver/ScreenInfo;->width:S

    sub-int/2addr v2, v1

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/wuyouwin/renderer/FullscreenTransformation;->x:S

    .line 21
    iget-short v2, p1, Lcom/wuyouwin/xserver/ScreenInfo;->height:S

    sub-int/2addr v2, v0

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/wuyouwin/renderer/FullscreenTransformation;->y:S

    .line 22
    iput-short v1, p0, Lcom/wuyouwin/renderer/FullscreenTransformation;->width:S

    .line 23
    iput-short v0, p0, Lcom/wuyouwin/renderer/FullscreenTransformation;->height:S

    .line 24
    return-void
.end method
