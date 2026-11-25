.class public Lcom/wuyouwin/inputcontrols/GamepadState;
.super Ljava/lang/Object;
.source "GamepadState.java"


# instance fields
.field public buttons:S

.field public final dpad:[Z

.field public thumbLX:F

.field public thumbLY:F

.field public thumbRX:F

.field public thumbRY:F

.field public triggerL:F

.field public triggerR:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbLX:F

    .line 5
    iput v0, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbLY:F

    .line 6
    iput v0, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbRX:F

    .line 7
    iput v0, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbRY:F

    .line 8
    iput v0, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->triggerL:F

    .line 9
    iput v0, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->triggerR:F

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->dpad:[Z

    .line 11
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->buttons:S

    return-void
.end method


# virtual methods
.method public getDPadX()B
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->dpad:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->dpad:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    int-to-byte v0, v1

    return v0
.end method

.method public getDPadY()B
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->dpad:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->dpad:[Z

    const/4 v2, 0x2

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    int-to-byte v0, v1

    return v0
.end method

.method public getPovHat()B
    .locals 6

    .line 14
    const/4 v0, -0x1

    .line 15
    .local v0, "povHat":B
    iget-object v1, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->dpad:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->dpad:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->dpad:[Z

    aget-boolean v1, v1, v3

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->dpad:[Z

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->dpad:[Z

    aget-boolean v1, v1, v4

    const/4 v5, 0x3

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->dpad:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    .line 18
    :cond_2
    iget-object v1, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->dpad:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->dpad:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_3

    const/4 v0, 0x7

    goto :goto_0

    .line 19
    :cond_3
    iget-object v1, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->dpad:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    .line 20
    :cond_4
    iget-object v1, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->dpad:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    .line 21
    :cond_5
    iget-object v1, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->dpad:[Z

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_6

    const/4 v0, 0x4

    goto :goto_0

    .line 22
    :cond_6
    iget-object v1, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->dpad:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_7

    const/4 v0, 0x6

    .line 23
    :cond_7
    :goto_0
    return v0
.end method

.method public isPressed(I)Z
    .locals 3
    .param p1, "buttonIdx"    # I

    .line 41
    iget-short v0, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->buttons:S

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setPressed(IZ)V
    .locals 3
    .param p1, "buttonIdx"    # I
    .param p2, "pressed"    # Z

    .line 27
    const/16 v0, 0xa

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne p1, v0, :cond_1

    .line 28
    if-eqz p2, :cond_0

    move v1, v2

    :cond_0
    iput v1, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->triggerL:F

    goto :goto_0

    .line 30
    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    .line 31
    if-eqz p2, :cond_2

    move v1, v2

    :cond_2
    iput v1, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->triggerR:F

    .line 33
    :cond_3
    :goto_0
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 34
    .local v0, "flag":I
    if-eqz p2, :cond_4

    .line 35
    iget-short v1, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->buttons:S

    or-int/2addr v1, v0

    int-to-short v1, v1

    iput-short v1, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->buttons:S

    goto :goto_1

    .line 37
    :cond_4
    iget-short v1, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->buttons:S

    not-int v2, v0

    and-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, p0, Lcom/wuyouwin/inputcontrols/GamepadState;->buttons:S

    .line 38
    :goto_1
    return-void
.end method
