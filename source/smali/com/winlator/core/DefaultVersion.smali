.class public abstract Lcom/winlator/core/DefaultVersion;
.super Ljava/lang/Object;
.source "DefaultVersion.java"


# direct methods
.method public static DXVK(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "vulkanDriver"    # Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, "vkApiVersion":I
    if-eqz p0, :cond_0

    const-string v1, "vortek"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/winlator/core/GPUHelper;->vkGetApiVersion()I

    move-result v0

    .line 30
    :cond_0
    if-eqz p0, :cond_1

    const-string v1, "turnip"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/winlator/core/GPUHelper;->vkMakeVersion(III)I

    move-result v1

    if-lt v0, v1, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v1, "1.10.3"

    goto :goto_1

    :goto_0
    const-string v1, "2.4.1"

    :goto_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "GLADIO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "WINED3D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "SOUNDFONT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_3
    const-string v1, "VKD3D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_4
    const-string v1, "VIRGL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "BOX64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_6
    const-string v1, "ZINK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_7
    const-string v1, "D8VK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v1, "D7VK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_9
    const-string v1, "CNC_DDRAW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_a
    const-string v1, "VORTEK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_b
    const-string v1, "TURNIP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 47
    const-string v0, "0.0"

    return-object v0

    .line 46
    :pswitch_0
    const-string v0, "SONiVOX-EAS-GM-Wavetable"

    return-object v0

    .line 45
    :pswitch_1
    const-string v0, "6.6"

    return-object v0

    .line 44
    :pswitch_2
    const-string v0, "10.10"

    return-object v0

    .line 43
    :pswitch_3
    const-string v0, "2.14.1"

    return-object v0

    .line 42
    :pswitch_4
    const-string v0, "1.0"

    return-object v0

    .line 41
    :pswitch_5
    const-string v0, "1.11"

    return-object v0

    .line 40
    :pswitch_6
    const-string v0, "1.1"

    return-object v0

    .line 39
    :pswitch_7
    const-string v0, "23.1.9"

    return-object v0

    .line 38
    :pswitch_8
    const-string v0, "22.2.5"

    return-object v0

    .line 37
    :pswitch_9
    const-string v0, "2.1"

    return-object v0

    .line 36
    :pswitch_a
    const-string v0, "26.2.0"

    return-object v0

    .line 35
    :pswitch_b
    const-string v0, "0.4.4"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6bd4a99c -> :sswitch_b
        -0x68bf6f5f -> :sswitch_a
        -0xd3efe3f -> :sswitch_9
        0x1fc268 -> :sswitch_8
        0x1fc629 -> :sswitch_7
        0x2a052c -> :sswitch_6
        0x3c749a9 -> :sswitch_5
        0x4de5124 -> :sswitch_4
        0x4df02e0 -> :sswitch_3
        0x3a17c5be -> :sswitch_2
        0x7b3b750c -> :sswitch_1
        0x7d75a2ee -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
