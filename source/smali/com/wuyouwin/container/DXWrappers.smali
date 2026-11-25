.class public abstract Lcom/wuyouwin/container/DXWrappers;
.super Ljava/lang/Object;
.source "DXWrappers.java"


# direct methods
.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "identifier"    # Ljava/lang/String;

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "wined3d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "vkd3d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "dxvk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "d7vk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "cnc-ddraw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 19
    const-string v0, "None"

    return-object v0

    .line 18
    :pswitch_0
    const-string v0, "D7VK"

    return-object v0

    .line 17
    :pswitch_1
    const-string v0, "CNC DDraw"

    return-object v0

    .line 16
    :pswitch_2
    const-string v0, "VKD3D"

    return-object v0

    .line 15
    :pswitch_3
    const-string v0, "DXVK"

    return-object v0

    .line 14
    :pswitch_4
    const-string v0, "WineD3D"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x3f44710d -> :sswitch_4
        0x2e5248 -> :sswitch_3
        0x2f4649 -> :sswitch_2
        0x6b0f720 -> :sswitch_1
        0x506fe54c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseConfigs(Ljava/lang/String;Ljava/lang/String;)[Lcom/wuyouwin/core/KeyValueSet;
    .locals 5
    .param p0, "dxwrapper"    # Ljava/lang/String;
    .param p1, "dxwrapperConfig"    # Ljava/lang/String;

    .line 29
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_1

    .line 30
    :cond_1
    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 31
    .local v0, "separator":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 32
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "first":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "second":Ljava/lang/String;
    new-instance v3, Lcom/wuyouwin/core/KeyValueSet;

    invoke-direct {v3, v1}, Lcom/wuyouwin/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/wuyouwin/core/KeyValueSet;

    invoke-direct {v4, v2}, Lcom/wuyouwin/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    filled-new-array {v3, v4}, [Lcom/wuyouwin/core/KeyValueSet;

    move-result-object v3

    return-object v3

    .line 36
    .end local v1    # "first":Ljava/lang/String;
    .end local v2    # "second":Ljava/lang/String;
    :cond_2
    if-eqz p0, :cond_5

    .line 37
    const-string v1, "wined3d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "dxvk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    goto :goto_0

    .line 40
    :cond_4
    const-string v1, "vkd3d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 41
    new-instance v1, Lcom/wuyouwin/core/KeyValueSet;

    invoke-direct {v1}, Lcom/wuyouwin/core/KeyValueSet;-><init>()V

    new-instance v2, Lcom/wuyouwin/core/KeyValueSet;

    invoke-direct {v2, p1}, Lcom/wuyouwin/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    filled-new-array {v1, v2}, [Lcom/wuyouwin/core/KeyValueSet;

    move-result-object v1

    return-object v1

    .line 38
    :goto_0
    new-instance v1, Lcom/wuyouwin/core/KeyValueSet;

    invoke-direct {v1, p1}, Lcom/wuyouwin/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/wuyouwin/core/KeyValueSet;

    invoke-direct {v2}, Lcom/wuyouwin/core/KeyValueSet;-><init>()V

    filled-new-array {v1, v2}, [Lcom/wuyouwin/core/KeyValueSet;

    move-result-object v1

    return-object v1

    .line 44
    :cond_5
    new-instance v1, Lcom/wuyouwin/core/KeyValueSet;

    invoke-direct {v1}, Lcom/wuyouwin/core/KeyValueSet;-><init>()V

    new-instance v2, Lcom/wuyouwin/core/KeyValueSet;

    invoke-direct {v2}, Lcom/wuyouwin/core/KeyValueSet;-><init>()V

    filled-new-array {v1, v2}, [Lcom/wuyouwin/core/KeyValueSet;

    move-result-object v1

    return-object v1

    .line 29
    .end local v0    # "separator":I
    :goto_1
    new-instance v0, Lcom/wuyouwin/core/KeyValueSet;

    invoke-direct {v0}, Lcom/wuyouwin/core/KeyValueSet;-><init>()V

    new-instance v1, Lcom/wuyouwin/core/KeyValueSet;

    invoke-direct {v1}, Lcom/wuyouwin/core/KeyValueSet;-><init>()V

    filled-new-array {v0, v1}, [Lcom/wuyouwin/core/KeyValueSet;

    move-result-object v0

    return-object v0
.end method

.method public static parseIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "dxwrapper"    # Ljava/lang/String;

    .line 24
    const-string v0, "dxvk"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    .line 25
    :cond_1
    const-string v1, "wined3d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move-object v0, p0

    :cond_3
    return-object v0

    .line 24
    :goto_0
    return-object v0
.end method
