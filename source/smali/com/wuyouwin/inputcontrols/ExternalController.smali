.class public Lcom/wuyouwin/inputcontrols/ExternalController;
.super Ljava/lang/Object;
.source "ExternalController.java"

# interfaces
.implements Lcom/wuyouwin/inputcontrols/GamepadSlot;


# instance fields
.field private final controllerBindings:Ljava/util/ArrayList;

.field private deviceId:I

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private processTriggerButtonOnMotionEvent:Z

.field private productId:S

.field private final state:Lcom/wuyouwin/inputcontrols/GamepadState;

.field private vendorId:S

.field private vibration:Lcom/wuyouwin/inputcontrols/GamepadVibration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->deviceId:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Lcom/wuyouwin/inputcontrols/GamepadState;

    invoke-direct {v0}, Lcom/wuyouwin/inputcontrols/GamepadState;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->state:Lcom/wuyouwin/inputcontrols/GamepadState;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->processTriggerButtonOnMotionEvent:Z

    return-void
.end method

.method public static getButtonIdxByKeyCode(I)I
    .locals 1
    .param p0, "keyCode"    # I

    .line 307
    packed-switch p0, :pswitch_data_0

    .line 333
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 321
    :pswitch_1
    const/4 v0, 0x6

    return v0

    .line 323
    :pswitch_2
    const/4 v0, 0x7

    return v0

    .line 327
    :pswitch_3
    const/16 v0, 0x9

    return v0

    .line 325
    :pswitch_4
    const/16 v0, 0x8

    return v0

    .line 331
    :pswitch_5
    const/16 v0, 0xb

    return v0

    .line 329
    :pswitch_6
    const/16 v0, 0xa

    return v0

    .line 319
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 317
    :pswitch_8
    const/4 v0, 0x4

    return v0

    .line 315
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 313
    :pswitch_a
    const/4 v0, 0x2

    return v0

    .line 311
    :pswitch_b
    const/4 v0, 0x1

    return v0

    .line 309
    :pswitch_c
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getCenteredAxis(Landroid/view/MotionEvent;II)F
    .locals 5
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "axis"    # I
    .param p2, "historyPos"    # I

    .line 286
    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    :cond_0
    goto :goto_1

    .line 291
    :cond_1
    invoke-virtual {p0}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 292
    .local v0, "device":Landroid/view/InputDevice;
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    .line 293
    .local v1, "range":Landroid/view/InputDevice$MotionRange;
    if-eqz v1, :cond_4

    .line 294
    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    move-result v2

    .line 295
    .local v2, "flat":F
    if-gez p2, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    move-result v3

    .line 296
    .local v3, "value":F
    :goto_0
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v2

    if-lez v4, :cond_4

    return v3

    .line 287
    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v1    # "range":Landroid/view/InputDevice$MotionRange;
    .end local v2    # "flat":F
    .end local v3    # "value":F
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 288
    .local v0, "value":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    return v0

    .line 289
    .end local v0    # "value":F
    :cond_3
    nop

    .line 299
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public static getController(Ljava/lang/String;)Lcom/wuyouwin/inputcontrols/ExternalController;
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .line 236
    invoke-static {}, Lcom/wuyouwin/inputcontrols/ExternalController;->getControllers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/inputcontrols/ExternalController;

    .local v1, "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    invoke-virtual {v1}, Lcom/wuyouwin/inputcontrols/ExternalController;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .end local v1    # "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    :cond_0
    goto :goto_0

    .line 237
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getControllers()Ljava/util/ArrayList;
    .locals 6

    .line 219
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .line 220
    .local v0, "deviceIds":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v1, "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wuyouwin/inputcontrols/ExternalController;>;"
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 222
    aget v3, v0, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    .line 223
    .local v3, "device":Landroid/view/InputDevice;
    invoke-static {v3}, Lcom/wuyouwin/inputcontrols/ExternalController;->isGameController(Landroid/view/InputDevice;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 224
    new-instance v4, Lcom/wuyouwin/inputcontrols/ExternalController;

    invoke-direct {v4}, Lcom/wuyouwin/inputcontrols/ExternalController;-><init>()V

    .line 225
    .local v4, "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    invoke-virtual {v3}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wuyouwin/inputcontrols/ExternalController;->setId(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v3}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wuyouwin/inputcontrols/ExternalController;->setName(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v3}, Landroid/view/InputDevice;->getVendorId()I

    move-result v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Lcom/wuyouwin/inputcontrols/ExternalController;->setVendorId(S)V

    .line 228
    invoke-virtual {v3}, Landroid/view/InputDevice;->getProductId()I

    move-result v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Lcom/wuyouwin/inputcontrols/ExternalController;->setProductId(S)V

    .line 229
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .end local v3    # "device":Landroid/view/InputDevice;
    .end local v4    # "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 232
    .end local v2    # "i":I
    return-object v1
.end method

.method public static isGameController(Landroid/view/InputDevice;)Z
    .locals 5
    .param p0, "device"    # Landroid/view/InputDevice;

    .line 272
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 273
    :cond_0
    invoke-virtual {p0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 275
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "lowerName":Ljava/lang/String;
    const-string v3, "uinput-fpc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "goodix_fp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "uinput-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 277
    :cond_1
    return v0

    .line 280
    .end local v2    # "lowerName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v2

    .line 281
    .local v2, "sources":I
    invoke-virtual {p0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v3

    if-nez v3, :cond_4

    and-int/lit16 v3, v2, 0x401

    const/16 v4, 0x401

    if-eq v3, v4, :cond_3

    const v3, 0x1000010

    and-int v4, v2, v3

    if-ne v4, v3, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public static isJoystickDevice(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;

    .line 303
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const v1, 0x1000010

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processJoystickInput(Landroid/view/MotionEvent;I)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "historyPos"    # I

    .line 159
    iget-object v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->state:Lcom/wuyouwin/inputcontrols/GamepadState;

    const/4 v1, 0x0

    invoke-static {p1, v1, p2}, Lcom/wuyouwin/inputcontrols/ExternalController;->getCenteredAxis(Landroid/view/MotionEvent;II)F

    move-result v2

    iput v2, v0, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbLX:F

    .line 160
    iget-object v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->state:Lcom/wuyouwin/inputcontrols/GamepadState;

    const/4 v2, 0x1

    invoke-static {p1, v2, p2}, Lcom/wuyouwin/inputcontrols/ExternalController;->getCenteredAxis(Landroid/view/MotionEvent;II)F

    move-result v3

    iput v3, v0, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbLY:F

    .line 161
    iget-object v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->state:Lcom/wuyouwin/inputcontrols/GamepadState;

    const/16 v3, 0xb

    invoke-static {p1, v3, p2}, Lcom/wuyouwin/inputcontrols/ExternalController;->getCenteredAxis(Landroid/view/MotionEvent;II)F

    move-result v3

    iput v3, v0, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbRX:F

    .line 162
    iget-object v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->state:Lcom/wuyouwin/inputcontrols/GamepadState;

    const/16 v3, 0xe

    invoke-static {p1, v3, p2}, Lcom/wuyouwin/inputcontrols/ExternalController;->getCenteredAxis(Landroid/view/MotionEvent;II)F

    move-result v3

    iput v3, v0, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbRY:F

    .line 164
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 165
    const/16 v0, 0xf

    invoke-static {p1, v0, p2}, Lcom/wuyouwin/inputcontrols/ExternalController;->getCenteredAxis(Landroid/view/MotionEvent;II)F

    move-result v0

    .line 166
    .local v0, "axisX":F
    const/16 v3, 0x10

    invoke-static {p1, v3, p2}, Lcom/wuyouwin/inputcontrols/ExternalController;->getCenteredAxis(Landroid/view/MotionEvent;II)F

    move-result v3

    .line 168
    .local v3, "axisY":F
    iget-object v4, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->state:Lcom/wuyouwin/inputcontrols/GamepadState;

    iget-object v4, v4, Lcom/wuyouwin/inputcontrols/GamepadState;->dpad:[Z

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v6, v3, v5

    const v7, 0x3e19999a    # 0.15f

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->state:Lcom/wuyouwin/inputcontrols/GamepadState;

    iget v6, v6, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbLY:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    aput-boolean v6, v4, v1

    .line 169
    iget-object v4, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->state:Lcom/wuyouwin/inputcontrols/GamepadState;

    iget-object v4, v4, Lcom/wuyouwin/inputcontrols/GamepadState;->dpad:[Z

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v8, v0, v6

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->state:Lcom/wuyouwin/inputcontrols/GamepadState;

    iget v8, v8, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbLX:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v8, v7

    if-gez v8, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    move v8, v1

    :goto_1
    aput-boolean v8, v4, v2

    .line 170
    iget-object v4, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->state:Lcom/wuyouwin/inputcontrols/GamepadState;

    iget-object v4, v4, Lcom/wuyouwin/inputcontrols/GamepadState;->dpad:[Z

    cmpl-float v6, v3, v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->state:Lcom/wuyouwin/inputcontrols/GamepadState;

    iget v6, v6, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbLY:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    const/4 v8, 0x2

    aput-boolean v6, v4, v8

    .line 171
    iget-object v4, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->state:Lcom/wuyouwin/inputcontrols/GamepadState;

    iget-object v4, v4, Lcom/wuyouwin/inputcontrols/GamepadState;->dpad:[Z

    cmpl-float v5, v0, v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->state:Lcom/wuyouwin/inputcontrols/GamepadState;

    iget v5, v5, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbLX:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v7

    if-gez v5, :cond_3

    move v1, v2

    :cond_3
    const/4 v2, 0x3

    aput-boolean v1, v4, v2

    .line 173
    .end local v0    # "axisX":F
    .end local v3    # "axisY":F
    :cond_4
    return-void
.end method

.method private processTriggerButton(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 176
    iget-object v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->state:Lcom/wuyouwin/inputcontrols/GamepadState;

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    const/16 v2, 0x17

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const v2, 0x3727c5ac    # 1.0E-5f

    sub-float/2addr v1, v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v4}, Lcom/wuyouwin/math/Mathf;->clamp(FFF)F

    move-result v1

    iput v1, v0, Lcom/wuyouwin/inputcontrols/GamepadState;->triggerL:F

    .line 177
    iget-object v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->state:Lcom/wuyouwin/inputcontrols/GamepadState;

    const/16 v1, 0x12

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    const/16 v5, 0x16

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float/2addr v1, v2

    invoke-static {v1, v3, v4}, Lcom/wuyouwin/math/Mathf;->clamp(FFF)F

    move-result v1

    iput v1, v0, Lcom/wuyouwin/inputcontrols/GamepadState;->triggerR:F

    .line 178
    return-void
.end method

.method public static updateConnectedControllers(Ljava/util/ArrayList;)V
    .locals 8

    .line 241
    .local p0, "connectedControllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wuyouwin/inputcontrols/ExternalController;>;"
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .line 242
    .local v0, "deviceIds":[I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 243
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wuyouwin/inputcontrols/ExternalController;

    .line 244
    .local v2, "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    invoke-virtual {v2}, Lcom/wuyouwin/inputcontrols/ExternalController;->getDeviceId()I

    move-result v3

    invoke-static {v0, v3}, Lcom/wuyouwin/core/ArrayUtils;->contains([II)Z

    move-result v3

    .line 245
    .local v3, "connected":Z
    if-nez v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 242
    .end local v2    # "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    .end local v3    # "connected":Z
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 248
    .end local v1    # "i":I
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_6

    aget v3, v0, v2

    .line 249
    .local v3, "deviceId":I
    const/4 v4, 0x0

    .line 250
    .local v4, "skip":Z
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wuyouwin/inputcontrols/ExternalController;

    .line 251
    .local v6, "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    iget v7, v6, Lcom/wuyouwin/inputcontrols/ExternalController;->deviceId:I

    if-ne v7, v3, :cond_2

    .line 252
    const/4 v4, 0x1

    .line 253
    goto :goto_3

    .line 251
    :cond_2
    nop

    .line 255
    .end local v6    # "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    goto :goto_2

    .line 256
    :cond_3
    :goto_3
    if-eqz v4, :cond_4

    goto :goto_4

    .line 258
    :cond_4
    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 259
    .local v5, "device":Landroid/view/InputDevice;
    invoke-static {v5}, Lcom/wuyouwin/inputcontrols/ExternalController;->isGameController(Landroid/view/InputDevice;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 260
    new-instance v6, Lcom/wuyouwin/inputcontrols/ExternalController;

    invoke-direct {v6}, Lcom/wuyouwin/inputcontrols/ExternalController;-><init>()V

    .line 261
    .restart local v6    # "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    iput v3, v6, Lcom/wuyouwin/inputcontrols/ExternalController;->deviceId:I

    .line 262
    invoke-virtual {v5}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/wuyouwin/inputcontrols/ExternalController;->setId(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v5}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/wuyouwin/inputcontrols/ExternalController;->setName(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v5}, Landroid/view/InputDevice;->getVendorId()I

    move-result v7

    int-to-short v7, v7

    invoke-virtual {v6, v7}, Lcom/wuyouwin/inputcontrols/ExternalController;->setVendorId(S)V

    .line 265
    invoke-virtual {v5}, Landroid/view/InputDevice;->getProductId()I

    move-result v7

    int-to-short v7, v7

    invoke-virtual {v6, v7}, Lcom/wuyouwin/inputcontrols/ExternalController;->setProductId(S)V

    .line 266
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v3    # "deviceId":I
    .end local v4    # "skip":Z
    .end local v5    # "device":Landroid/view/InputDevice;
    .end local v6    # "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 269
    :cond_6
    return-void
.end method


# virtual methods
.method public addControllerBinding(Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;)V
    .locals 1
    .param p1, "controllerBinding"    # Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;

    .line 109
    invoke-virtual {p1}, Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;->getKeyCodeForAxis()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wuyouwin/inputcontrols/ExternalController;->getControllerBinding(I)Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 144
    instance-of v0, p1, Lcom/wuyouwin/inputcontrols/ExternalController;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/wuyouwin/inputcontrols/ExternalController;

    iget-object v0, v0, Lcom/wuyouwin/inputcontrols/ExternalController;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public getControllerBinding(I)Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;
    .locals 3
    .param p1, "keyCode"    # I

    .line 98
    iget-object v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;

    .line 99
    .local v1, "controllerBinding":Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;
    invoke-virtual {v1}, Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;->getKeyCodeForAxis()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    .line 100
    .end local v1    # "controllerBinding":Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;
    :cond_0
    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getControllerBindingAt(I)Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;
    .locals 1
    .param p1, "index"    # I

    .line 105
    iget-object v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;

    return-object v0
.end method

.method public getControllerBindingCount()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDeviceId()I
    .locals 7

    .line 77
    iget v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->deviceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 78
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    nop

    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 79
    .local v3, "deviceId":I
    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    .line 80
    .local v4, "device":Landroid/view/InputDevice;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    iput v3, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->deviceId:I

    .line 82
    goto :goto_1

    .line 78
    .end local v3    # "deviceId":I
    .end local v4    # "device":Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_1
    :goto_1
    iget v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->deviceId:I

    return v0
.end method

.method public getGamepadState()Lcom/wuyouwin/inputcontrols/GamepadState;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->state:Lcom/wuyouwin/inputcontrols/GamepadState;

    return-object v0
.end method

.method public getGamepadVibration()Lcom/wuyouwin/inputcontrols/GamepadVibration;
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->vibration:Lcom/wuyouwin/inputcontrols/GamepadVibration;

    if-nez v0, :cond_0

    new-instance v0, Lcom/wuyouwin/inputcontrols/GamepadVibration;

    iget-object v1, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->id:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/wuyouwin/inputcontrols/GamepadVibration;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->vibration:Lcom/wuyouwin/inputcontrols/GamepadVibration;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->vibration:Lcom/wuyouwin/inputcontrols/GamepadVibration;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition(Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;)I
    .locals 1
    .param p1, "controllerBinding"    # Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;

    .line 113
    iget-object v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getProductId()S
    .locals 1

    .line 61
    iget-short v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->productId:S

    return v0
.end method

.method public getVendorId()S
    .locals 1

    .line 52
    iget-short v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->vendorId:S

    return v0
.end method

.method public isConnected()Z
    .locals 8

    .line 90
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 91
    .local v4, "deviceId":I
    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 92
    .local v5, "device":Landroid/view/InputDevice;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    return v0

    .line 90
    .end local v4    # "deviceId":I
    .end local v5    # "device":Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    :cond_1
    return v2
.end method

.method public removeControllerBinding(Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;)V
    .locals 1
    .param p1, "controllerBinding"    # Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;

    .line 117
    iget-object v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->id:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->name:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setProductId(S)V
    .locals 0
    .param p1, "productId"    # S

    .line 65
    iput-short p1, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->productId:S

    .line 66
    return-void
.end method

.method public setVendorId(S)V
    .locals 0
    .param p1, "vendorId"    # S

    .line 56
    iput-short p1, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->vendorId:S

    .line 57
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 6

    .line 126
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 127
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 128
    .local v1, "controllerJSONObject":Lorg/json/JSONObject;
    const-string v2, "id"

    iget-object v3, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v2, "name"

    iget-object v3, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 132
    .local v2, "controllerBindingsJSONArray":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;

    .local v4, "controllerBinding":Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;
    invoke-virtual {v4}, Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 137
    .end local v1    # "controllerJSONObject":Lorg/json/JSONObject;
    .end local v2    # "controllerBindingsJSONArray":Lorg/json/JSONArray;
    .end local v4    # "controllerBinding":Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 133
    .restart local v1    # "controllerJSONObject":Lorg/json/JSONObject;
    .restart local v2    # "controllerBindingsJSONArray":Lorg/json/JSONArray;
    :cond_1
    const-string v3, "controllerBindings"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    return-object v1

    .line 137
    .end local v1    # "controllerJSONObject":Lorg/json/JSONObject;
    .end local v2    # "controllerBindingsJSONArray":Lorg/json/JSONArray;
    :goto_1
    nop

    .line 138
    .local v1, "e":Lorg/json/JSONException;
    return-object v0
.end method

.method public updateStateFromKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 192
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 193
    .local v0, "pressed":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 194
    .local v3, "keyCode":I
    invoke-static {v3}, Lcom/wuyouwin/inputcontrols/ExternalController;->getButtonIdxByKeyCode(I)I

    move-result v4

    .line 195
    .local v4, "buttonIdx":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 196
    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    const/16 v5, 0xb

    if-ne v4, v5, :cond_2

    :cond_1
    iput-boolean v1, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->processTriggerButtonOnMotionEvent:Z

    .line 197
    :cond_2
    iget-object v1, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->state:Lcom/wuyouwin/inputcontrols/GamepadState;

    invoke-virtual {v1, v4, v0}, Lcom/wuyouwin/inputcontrols/GamepadState;->setPressed(IZ)V

    .line 198
    return v2

    .line 201
    :cond_3
    const v5, 0x3e19999a    # 0.15f

    packed-switch v3, :pswitch_data_0

    .line 215
    return v1

    .line 206
    :pswitch_0
    iget-object v6, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->state:Lcom/wuyouwin/inputcontrols/GamepadState;

    iget-object v6, v6, Lcom/wuyouwin/inputcontrols/GamepadState;->dpad:[Z

    if-eqz v0, :cond_4

    iget-object v7, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->state:Lcom/wuyouwin/inputcontrols/GamepadState;

    iget v7, v7, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbLX:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v5, v7, v5

    if-gez v5, :cond_4

    move v1, v2

    :cond_4
    aput-boolean v1, v6, v2

    .line 207
    return v2

    .line 212
    :pswitch_1
    iget-object v6, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->state:Lcom/wuyouwin/inputcontrols/GamepadState;

    iget-object v6, v6, Lcom/wuyouwin/inputcontrols/GamepadState;->dpad:[Z

    if-eqz v0, :cond_5

    iget-object v7, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->state:Lcom/wuyouwin/inputcontrols/GamepadState;

    iget v7, v7, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbLX:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v5, v7, v5

    if-gez v5, :cond_5

    move v1, v2

    :cond_5
    const/4 v5, 0x3

    aput-boolean v1, v6, v5

    .line 213
    return v2

    .line 209
    :pswitch_2
    iget-object v6, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->state:Lcom/wuyouwin/inputcontrols/GamepadState;

    iget-object v6, v6, Lcom/wuyouwin/inputcontrols/GamepadState;->dpad:[Z

    if-eqz v0, :cond_6

    iget-object v7, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->state:Lcom/wuyouwin/inputcontrols/GamepadState;

    iget v7, v7, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbLY:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v5, v7, v5

    if-gez v5, :cond_6

    move v1, v2

    :cond_6
    const/4 v5, 0x2

    aput-boolean v1, v6, v5

    .line 210
    return v2

    .line 203
    :pswitch_3
    iget-object v6, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->state:Lcom/wuyouwin/inputcontrols/GamepadState;

    iget-object v6, v6, Lcom/wuyouwin/inputcontrols/GamepadState;->dpad:[Z

    if-eqz v0, :cond_7

    iget-object v7, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->state:Lcom/wuyouwin/inputcontrols/GamepadState;

    iget v7, v7, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbLY:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v5, v7, v5

    if-gez v5, :cond_7

    move v5, v2

    goto :goto_1

    :cond_7
    move v5, v1

    :goto_1
    aput-boolean v5, v6, v1

    .line 204
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateStateFromMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 181
    invoke-static {p1}, Lcom/wuyouwin/inputcontrols/ExternalController;->isJoystickDevice(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    iget-boolean v0, p0, Lcom/wuyouwin/inputcontrols/ExternalController;->processTriggerButtonOnMotionEvent:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/wuyouwin/inputcontrols/ExternalController;->processTriggerButton(Landroid/view/MotionEvent;)V

    .line 183
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 184
    .local v0, "historySize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/wuyouwin/inputcontrols/ExternalController;->processJoystickInput(Landroid/view/MotionEvent;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    invoke-direct {p0, p1, v1}, Lcom/wuyouwin/inputcontrols/ExternalController;->processJoystickInput(Landroid/view/MotionEvent;I)V

    .line 186
    const/4 v1, 0x1

    return v1

    .line 188
    .end local v0    # "historySize":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
