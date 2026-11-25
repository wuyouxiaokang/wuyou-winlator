.class public Lcom/winlator/xserver/Pointer;
.super Ljava/lang/Object;
.source "Pointer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/xserver/Pointer$Button;,
        Lcom/winlator/xserver/Pointer$OnPointerMotionListener;
    }
.end annotation


# instance fields
.field private final buttonMask:Lcom/winlator/core/Bitmask;

.field private final onPointerMotionListeners:Ljava/util/ArrayList;

.field private x:S

.field private final xServer:Lcom/winlator/xserver/XServer;

.field private y:S


# direct methods
.method public constructor <init>(Lcom/winlator/xserver/XServer;)V
    .locals 1
    .param p1, "xServer"    # Lcom/winlator/xserver/XServer;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winlator/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Lcom/winlator/core/Bitmask;

    invoke-direct {v0}, Lcom/winlator/core/Bitmask;-><init>()V

    iput-object v0, p0, Lcom/winlator/xserver/Pointer;->buttonMask:Lcom/winlator/core/Bitmask;

    .line 34
    iput-object p1, p0, Lcom/winlator/xserver/Pointer;->xServer:Lcom/winlator/xserver/XServer;

    .line 35
    return-void
.end method

.method private triggerOnPointerButtonPress(Lcom/winlator/xserver/Pointer$Button;)V
    .locals 2
    .param p1, "button"    # Lcom/winlator/xserver/Pointer$Button;

    .line 105
    iget-object v0, p0, Lcom/winlator/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/winlator/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/xserver/Pointer$OnPointerMotionListener;

    invoke-interface {v1, p1}, Lcom/winlator/xserver/Pointer$OnPointerMotionListener;->onPointerButtonPress(Lcom/winlator/xserver/Pointer$Button;)V

    .line 105
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 108
    .end local v0    # "i":I
    return-void
.end method

.method private triggerOnPointerButtonRelease(Lcom/winlator/xserver/Pointer$Button;)V
    .locals 2
    .param p1, "button"    # Lcom/winlator/xserver/Pointer$Button;

    .line 111
    iget-object v0, p0, Lcom/winlator/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 112
    iget-object v1, p0, Lcom/winlator/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/xserver/Pointer$OnPointerMotionListener;

    invoke-interface {v1, p1}, Lcom/winlator/xserver/Pointer$OnPointerMotionListener;->onPointerButtonRelease(Lcom/winlator/xserver/Pointer$Button;)V

    .line 111
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 114
    .end local v0    # "i":I
    return-void
.end method

.method private triggerOnPointerMove(SS)V
    .locals 2
    .param p1, "x"    # S
    .param p2, "y"    # S

    .line 117
    iget-object v0, p0, Lcom/winlator/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/winlator/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/xserver/Pointer$OnPointerMotionListener;

    invoke-interface {v1, p1, p2}, Lcom/winlator/xserver/Pointer$OnPointerMotionListener;->onPointerMove(SS)V

    .line 117
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 120
    .end local v0    # "i":I
    return-void
.end method


# virtual methods
.method public addOnPointerMotionListener(Lcom/winlator/xserver/Pointer$OnPointerMotionListener;)V
    .locals 1
    .param p1, "onPointerMotionListener"    # Lcom/winlator/xserver/Pointer$OnPointerMotionListener;

    .line 97
    iget-object v0, p0, Lcom/winlator/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public clampPosition()V
    .locals 1

    .line 62
    const v0, 0x3c4ccccd    # 0.0125f

    invoke-virtual {p0, v0}, Lcom/winlator/xserver/Pointer;->clampPosition(F)V

    .line 63
    return-void
.end method

.method public clampPosition(F)V
    .locals 4
    .param p1, "offscreenTolerance"    # F

    .line 66
    iget-object v0, p0, Lcom/winlator/xserver/Pointer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    iget-short v0, v0, Lcom/winlator/xserver/ScreenInfo;->width:S

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    int-to-short v0, v0

    .line 67
    .local v0, "maxDistance":S
    iget-short v1, p0, Lcom/winlator/xserver/Pointer;->x:S

    neg-int v2, v0

    iget-object v3, p0, Lcom/winlator/xserver/Pointer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    iget-short v3, v3, Lcom/winlator/xserver/ScreenInfo;->width:S

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Lcom/winlator/math/Mathf;->clamp(III)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/winlator/xserver/Pointer;->x:S

    .line 68
    iget-short v1, p0, Lcom/winlator/xserver/Pointer;->y:S

    neg-int v2, v0

    iget-object v3, p0, Lcom/winlator/xserver/Pointer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    iget-short v3, v3, Lcom/winlator/xserver/ScreenInfo;->height:S

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Lcom/winlator/math/Mathf;->clamp(III)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/winlator/xserver/Pointer;->y:S

    .line 69
    return-void
.end method

.method public getButtonMask()Lcom/winlator/core/Bitmask;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/winlator/xserver/Pointer;->buttonMask:Lcom/winlator/core/Bitmask;

    return-object v0
.end method

.method public getClampedX()S
    .locals 3

    .line 54
    iget-short v0, p0, Lcom/winlator/xserver/Pointer;->x:S

    iget-object v1, p0, Lcom/winlator/xserver/Pointer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    iget-short v1, v1, Lcom/winlator/xserver/ScreenInfo;->width:S

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/winlator/math/Mathf;->clamp(III)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getClampedY()S
    .locals 3

    .line 58
    iget-short v0, p0, Lcom/winlator/xserver/Pointer;->y:S

    iget-object v1, p0, Lcom/winlator/xserver/Pointer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    iget-short v1, v1, Lcom/winlator/xserver/ScreenInfo;->height:S

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/winlator/math/Mathf;->clamp(III)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getX()S
    .locals 1

    .line 46
    iget-short v0, p0, Lcom/winlator/xserver/Pointer;->x:S

    return v0
.end method

.method public getY()S
    .locals 1

    .line 50
    iget-short v0, p0, Lcom/winlator/xserver/Pointer;->y:S

    return v0
.end method

.method public isButtonPressed(Lcom/winlator/xserver/Pointer$Button;)Z
    .locals 2
    .param p1, "button"    # Lcom/winlator/xserver/Pointer$Button;

    .line 93
    iget-object v0, p0, Lcom/winlator/xserver/Pointer;->buttonMask:Lcom/winlator/core/Bitmask;

    invoke-virtual {p1}, Lcom/winlator/xserver/Pointer$Button;->flag()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public setButton(Lcom/winlator/xserver/Pointer$Button;Z)V
    .locals 3
    .param p1, "button"    # Lcom/winlator/xserver/Pointer$Button;
    .param p2, "pressed"    # Z

    .line 82
    invoke-virtual {p0, p1}, Lcom/winlator/xserver/Pointer;->isButtonPressed(Lcom/winlator/xserver/Pointer$Button;)Z

    move-result v0

    .line 83
    .local v0, "oldPressed":Z
    iget-object v1, p0, Lcom/winlator/xserver/Pointer;->buttonMask:Lcom/winlator/core/Bitmask;

    invoke-virtual {p1}, Lcom/winlator/xserver/Pointer$Button;->flag()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/winlator/core/Bitmask;->set(IZ)V

    .line 84
    if-eq v0, p2, :cond_1

    .line 85
    if-eqz p2, :cond_0

    .line 86
    invoke-direct {p0, p1}, Lcom/winlator/xserver/Pointer;->triggerOnPointerButtonPress(Lcom/winlator/xserver/Pointer$Button;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-direct {p0, p1}, Lcom/winlator/xserver/Pointer;->triggerOnPointerButtonRelease(Lcom/winlator/xserver/Pointer$Button;)V

    .line 90
    :cond_1
    :goto_0
    return-void
.end method

.method public setPosition(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 72
    invoke-virtual {p0, p1}, Lcom/winlator/xserver/Pointer;->setX(I)V

    .line 73
    invoke-virtual {p0, p2}, Lcom/winlator/xserver/Pointer;->setY(I)V

    .line 74
    iget-short v0, p0, Lcom/winlator/xserver/Pointer;->x:S

    iget-short v1, p0, Lcom/winlator/xserver/Pointer;->y:S

    invoke-direct {p0, v0, v1}, Lcom/winlator/xserver/Pointer;->triggerOnPointerMove(SS)V

    .line 75
    return-void
.end method

.method public setX(I)V
    .locals 1
    .param p1, "x"    # I

    .line 38
    int-to-short v0, p1

    iput-short v0, p0, Lcom/winlator/xserver/Pointer;->x:S

    .line 39
    return-void
.end method

.method public setY(I)V
    .locals 1
    .param p1, "y"    # I

    .line 42
    int-to-short v0, p1

    iput-short v0, p0, Lcom/winlator/xserver/Pointer;->y:S

    .line 43
    return-void
.end method
