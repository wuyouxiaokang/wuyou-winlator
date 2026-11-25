.class public abstract Lcom/wuyouwin/core/CPUStatus;
.super Ljava/lang/Object;
.source "CPUStatus.java"


# direct methods
.method public static formatClockSpeed(I)Ljava/lang/String;
    .locals 4
    .param p0, "clockSpeed"    # I

    .line 74
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    int-to-float v2, p0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.2f"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " GHz"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " MHz"

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method public static getCurrentClockSpeeds()[S
    .locals 5

    .line 10
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 11
    .local v0, "numProcessors":I
    new-array v1, v0, [S

    .line 12
    .local v1, "clockSpeeds":[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/cpufreq/scaling_cur_freq"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wuyouwin/core/FileUtils;->readInt(Ljava/lang/String;)I

    move-result v3

    .line 14
    .local v3, "currFreq":I
    div-int/lit16 v4, v3, 0x3e8

    int-to-short v4, v4

    aput-short v4, v1, v2

    .line 12
    .end local v3    # "currFreq":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 16
    .end local v2    # "i":I
    return-object v1
.end method

.method public static getMaxClockSpeed(I)S
    .locals 2
    .param p0, "cpuIndex"    # I

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wuyouwin/core/FileUtils;->readInt(Ljava/lang/String;)I

    move-result v0

    .line 21
    .local v0, "maxFreq":I
    div-int/lit16 v1, v0, 0x3e8

    int-to-short v1, v1

    return v1
.end method

.method public static getTemperature()I
    .locals 23

    .line 25
    const-string v21, "/sys/devices/platform/tegra-tsensor/tsensor_temperature"

    const-string v22, "/sys/devices/virtual/sec/sec-lp-thermistor/temperature"

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/cpu_temp"

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/FakeShmoo_cpu_temp"

    const-string v3, "/sys/devices/platform/tegra-i2c.3/i2c-4/4-004c/temperature"

    const-string v4, "/sys/devices/platform/omap/omap_temp_sensor.0/temperature"

    const-string v5, "/sys/devices/platform/tegra_tmon/temp1_input"

    const-string v6, "/sys/devices/platform/s5p-tmu/temperature"

    const-string v7, "/sys/devices/platform/s5p-tmu/curr_temp"

    const-string v8, "/sys/devices/virtual/thermal/thermal_zone10/temp"

    const-string v9, "/sys/devices/virtual/thermal/thermal_zone1/temp"

    const-string v10, "/sys/devices/virtual/thermal/thermal_zone0/temp"

    const-string v11, "/sys/class/thermal/thermal_zone0/temp"

    const-string v12, "/sys/class/thermal/thermal_zone1/temp"

    const-string v13, "/sys/class/thermal/thermal_zone3/temp"

    const-string v14, "/sys/class/thermal/thermal_zone4/temp"

    const-string v15, "/sys/class/hwmon/hwmon0/device/temp1_input"

    const-string v16, "/sys/class/hwmon/hwmonX/temp1_input"

    const-string v17, "/sys/class/i2c-adapter/i2c-4/4-004c/temperature"

    const-string v18, "/sys/kernel/debug/tegra_thermal/temp_tj"

    const-string v19, "/sys/htc/cpu_temp"

    const-string v20, "/sys/devices/platform/tegra-i2c.3/i2c-4/4-004c/ext_temperature"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 50
    .local v1, "sensorFiles":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v1, v4

    .line 51
    .local v5, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 52
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 53
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v0, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    .line 54
    .local v7, "reader":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 53
    .end local v0    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v8, v0

    goto :goto_3

    .line 55
    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    move v8, v3

    .line 56
    .local v8, "temperature":I
    :goto_1
    const/16 v9, 0x64

    const/16 v10, 0x3e8

    if-le v8, v9, :cond_1

    if-gt v8, v10, :cond_1

    .line 57
    int-to-float v9, v8

    const/high16 v10, 0x41200000    # 10.0f

    div-float/2addr v9, v10

    float-to-int v9, v9

    .line 65
    :try_start_2
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 57
    return v9

    .line 66
    .end local v0    # "value":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/RandomAccessFile;
    .end local v8    # "temperature":I
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    .line 59
    .restart local v0    # "value":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "temperature":I
    :cond_1
    const/16 v9, 0x2710

    if-le v8, v10, :cond_2

    if-gt v8, v9, :cond_2

    .line 60
    int-to-float v9, v8

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    float-to-int v9, v9

    .line 65
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 60
    return v9

    .line 62
    :cond_2
    if-le v8, v9, :cond_3

    .line 63
    int-to-float v9, v8

    const/high16 v10, 0x447a0000    # 1000.0f

    div-float/2addr v9, v10

    float-to-int v9, v9

    .line 65
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 63
    return v9

    .line 62
    :cond_3
    nop

    .line 65
    .end local v0    # "value":Ljava/lang/String;
    .end local v8    # "temperature":I
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 66
    .end local v7    # "reader":Ljava/io/RandomAccessFile;
    :goto_2
    goto :goto_5

    .line 53
    .restart local v7    # "reader":Ljava/io/RandomAccessFile;
    :goto_3
    :try_start_3
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v9, v0

    :try_start_4
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "sensorFiles":[Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    :goto_4
    throw v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 50
    .end local v7    # "reader":Ljava/io/RandomAccessFile;
    .restart local v1    # "sensorFiles":[Ljava/lang/String;
    :cond_4
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 70
    :cond_5
    return v3
.end method
