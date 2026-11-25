.class public Lcom/winlator/inputcontrols/GamepadVibration;
.super Ljava/lang/Object;
.source "GamepadVibration.java"


# instance fields
.field private final currentSpeed:[S

.field private final vibrating:[Z

.field private final vibrators:[Landroid/os/Vibrator;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/winlator/inputcontrols/GamepadVibration;->vibrators:[Landroid/os/Vibrator;

    .line 14
    new-array v1, v0, [S

    iput-object v1, p0, Lcom/winlator/inputcontrols/GamepadVibration;->currentSpeed:[S

    .line 15
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/winlator/inputcontrols/GamepadVibration;->vibrating:[Z

    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "manager":Landroid/os/VibratorManager;
    const/4 v1, 0x0

    .line 21
    .local v1, "vibrator":Landroid/os/Vibrator;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_0

    .line 22
    const-string v2, "vibrator_manager"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/winlator/inputcontrols/GamepadVibration$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/os/VibratorManager;

    move-result-object v0

    goto :goto_0

    .line 24
    :cond_0
    const-string v2, "vibrator"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/os/Vibrator;

    .line 26
    :goto_0
    iget-object v2, p0, Lcom/winlator/inputcontrols/GamepadVibration;->vibrators:[Landroid/os/Vibrator;

    const/4 v3, 0x0

    invoke-static {v3, v0, v1}, Lcom/winlator/inputcontrols/GamepadVibration;->getVibratorAt(ILandroid/os/VibratorManager;Landroid/os/Vibrator;)Landroid/os/Vibrator;

    move-result-object v4

    aput-object v4, v2, v3

    .line 27
    iget-object v2, p0, Lcom/winlator/inputcontrols/GamepadVibration;->vibrators:[Landroid/os/Vibrator;

    const/4 v3, 0x1

    invoke-static {v3, v0, v1}, Lcom/winlator/inputcontrols/GamepadVibration;->getVibratorAt(ILandroid/os/VibratorManager;Landroid/os/Vibrator;)Landroid/os/Vibrator;

    move-result-object v4

    aput-object v4, v2, v3

    .line 28
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "id"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/winlator/inputcontrols/GamepadVibration;->vibrators:[Landroid/os/Vibrator;

    .line 14
    new-array v1, v0, [S

    iput-object v1, p0, Lcom/winlator/inputcontrols/GamepadVibration;->currentSpeed:[S

    .line 15
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/winlator/inputcontrols/GamepadVibration;->vibrating:[Z

    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "manager":Landroid/os/VibratorManager;
    const/4 v1, 0x0

    .line 34
    .local v1, "vibrator":Landroid/os/Vibrator;
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    nop

    if-ge v5, v3, :cond_2

    aget v6, v2, v5

    .line 35
    .local v6, "deviceId":I
    invoke-static {v6}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v7

    .line 36
    .local v7, "device":Landroid/view/InputDevice;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 37
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_0

    .line 38
    invoke-static {v7}, Lcom/winlator/inputcontrols/GamepadVibration$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/InputDevice;)Landroid/os/VibratorManager;

    move-result-object v0

    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {v7}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v1

    .line 41
    goto :goto_1

    .line 34
    .end local v6    # "deviceId":I
    .end local v7    # "device":Landroid/view/InputDevice;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 45
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/winlator/inputcontrols/GamepadVibration;->vibrators:[Landroid/os/Vibrator;

    invoke-static {v4, v0, v1}, Lcom/winlator/inputcontrols/GamepadVibration;->getVibratorAt(ILandroid/os/VibratorManager;Landroid/os/Vibrator;)Landroid/os/Vibrator;

    move-result-object v3

    aput-object v3, v2, v4

    .line 46
    iget-object v2, p0, Lcom/winlator/inputcontrols/GamepadVibration;->vibrators:[Landroid/os/Vibrator;

    const/4 v3, 0x1

    invoke-static {v3, v0, v1}, Lcom/winlator/inputcontrols/GamepadVibration;->getVibratorAt(ILandroid/os/VibratorManager;Landroid/os/Vibrator;)Landroid/os/Vibrator;

    move-result-object v4

    aput-object v4, v2, v3

    .line 47
    return-void
.end method

.method private static getVibratorAt(ILandroid/os/VibratorManager;Landroid/os/Vibrator;)Landroid/os/Vibrator;
    .locals 3
    .param p0, "index"    # I
    .param p1, "manager"    # Landroid/os/VibratorManager;
    .param p2, "defaultVibrator"    # Landroid/os/Vibrator;

    .line 51
    if-eqz p1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    .line 52
    invoke-static {p1}, Lcom/winlator/inputcontrols/GamepadVibration$$ExternalSyntheticApiModelOutline2;->m(Landroid/os/VibratorManager;)[I

    move-result-object v0

    .line 53
    .local v0, "ids":[I
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    array-length v1, v0

    if-ge p0, v1, :cond_0

    invoke-static {p1, p0}, Lcom/winlator/inputcontrols/GamepadVibration$$ExternalSyntheticApiModelOutline3;->m(Landroid/os/VibratorManager;I)Landroid/os/Vibrator;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/winlator/inputcontrols/GamepadVibration$$ExternalSyntheticApiModelOutline4;->m(Landroid/os/VibratorManager;)Landroid/os/Vibrator;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 54
    .local v0, "result":Landroid/os/Vibrator;
    goto :goto_1

    .line 55
    .end local v0    # "result":Landroid/os/Vibrator;
    :cond_1
    move-object v0, p2

    .line 56
    .restart local v0    # "result":Landroid/os/Vibrator;
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return-object v1
.end method

.method private parseAmplitude(I)S
    .locals 2
    .param p1, "motorSpeed"    # I

    .line 73
    int-to-float v0, p1

    const v1, 0x477fff00    # 65535.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v0, v1}, Lcom/winlator/math/Mathf;->roundTo(FF)F

    move-result v0

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method private vibrateAt(ISI)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "newSpeed"    # S
    .param p3, "durationMs"    # I

    .line 60
    if-nez p2, :cond_1

    .line 61
    iget-object v0, p0, Lcom/winlator/inputcontrols/GamepadVibration;->vibrating:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/inputcontrols/GamepadVibration;->vibrators:[Landroid/os/Vibrator;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/winlator/inputcontrols/GamepadVibration;->vibrating:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/winlator/inputcontrols/GamepadVibration;->currentSpeed:[S

    aget-short v0, v0, p1

    if-eq p2, v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/winlator/inputcontrols/GamepadVibration;->vibrators:[Landroid/os/Vibrator;

    aget-object v0, v0, p1

    int-to-long v1, p3

    invoke-static {v1, v2, p2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 66
    iget-object v0, p0, Lcom/winlator/inputcontrols/GamepadVibration;->vibrating:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 69
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/winlator/inputcontrols/GamepadVibration;->currentSpeed:[S

    aput-short p2, v0, p1

    .line 70
    return-void
.end method


# virtual methods
.method public vibrate(III)V
    .locals 6
    .param p1, "leftMotorSpeed"    # I
    .param p2, "rightMotorSpeed"    # I
    .param p3, "durationMs"    # I

    .line 87
    iget-object v0, p0, Lcom/winlator/inputcontrols/GamepadVibration;->vibrators:[Landroid/os/Vibrator;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/winlator/inputcontrols/GamepadVibration;->vibrators:[Landroid/os/Vibrator;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    .line 88
    invoke-direct {p0, p1}, Lcom/winlator/inputcontrols/GamepadVibration;->parseAmplitude(I)S

    move-result v0

    .line 89
    .local v0, "speedX":S
    invoke-direct {p0, p2}, Lcom/winlator/inputcontrols/GamepadVibration;->parseAmplitude(I)S

    move-result v3

    .line 91
    .local v3, "speedY":S
    iget-object v4, p0, Lcom/winlator/inputcontrols/GamepadVibration;->vibrators:[Landroid/os/Vibrator;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/winlator/inputcontrols/GamepadVibration;->vibrators:[Landroid/os/Vibrator;

    aget-object v5, v5, v2

    if-ne v4, v5, :cond_0

    .line 92
    add-int v2, v0, v3

    int-to-float v2, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    .line 93
    .local v2, "avgSpeed":S
    invoke-direct {p0, v1, v2, p3}, Lcom/winlator/inputcontrols/GamepadVibration;->vibrateAt(ISI)V

    .line 94
    .end local v2    # "avgSpeed":S
    goto :goto_0

    .line 96
    :cond_0
    invoke-direct {p0, v1, v0, p3}, Lcom/winlator/inputcontrols/GamepadVibration;->vibrateAt(ISI)V

    .line 97
    invoke-direct {p0, v2, v3, p3}, Lcom/winlator/inputcontrols/GamepadVibration;->vibrateAt(ISI)V

    .line 100
    .end local v0    # "speedX":S
    .end local v3    # "speedY":S
    :cond_1
    :goto_0
    return-void
.end method
