.class public abstract Lcom/wuyouwin/core/BatteryUtils;
.super Ljava/lang/Object;
.source "BatteryUtils.java"


# direct methods
.method public static computePower(IF)F
    .locals 2
    .param p0, "currentMicroamperes"    # I
    .param p1, "voltage"    # F

    .line 36
    int-to-float v0, p0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method public static getCapacity(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 9
    const-string v0, "com.android.internal.os.PowerProfile"

    const-string v1, "com.android.internal.os.PowerProfile"

    .line 12
    .local v1, "POWER_PROFILE_CLASS":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/content/Context;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    .line 13
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v4

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 16
    .local v3, "powerProfile":Ljava/lang/Object;
    nop

    .line 17
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "getBatteryCapacity"

    new-array v5, v2, [Ljava/lang/Class;

    .line 18
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    .line 19
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 20
    .local v0, "capacity":Ljava/lang/Double;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 22
    .end local v0    # "capacity":Ljava/lang/Double;
    .end local v3    # "powerProfile":Ljava/lang/Object;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 20
    .restart local v0    # "capacity":Ljava/lang/Double;
    .restart local v3    # "powerProfile":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 22
    .end local v0    # "capacity":Ljava/lang/Double;
    .end local v3    # "powerProfile":Ljava/lang/Object;
    :goto_1
    nop

    .line 23
    .local v0, "e":Ljava/lang/Exception;
    return v2
.end method

.method public static getCurrentMicroamperes(Landroid/app/Activity;)I
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 28
    const-string v0, "batterymanager"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    .line 29
    .local v0, "batteryManager":Landroid/os/BatteryManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    .line 30
    .local v1, "currentMicroamperes":I
    if-eqz v1, :cond_0

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 31
    const/16 v2, 0x3e8

    if-gt v1, v2, :cond_1

    mul-int/lit16 v1, v1, 0x3e8

    .line 32
    :cond_1
    return v1
.end method
