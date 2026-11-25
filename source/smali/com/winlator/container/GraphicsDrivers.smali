.class public abstract Lcom/winlator/container/GraphicsDrivers;
.super Ljava/lang/Object;
.source "GraphicsDrivers.java"


# direct methods
.method public static getDefaultDriver(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 82
    invoke-static {p0}, Lcom/winlator/core/GPUHelper;->getAdrenoModelId(Landroid/content/Context;)S

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "turnip,gladio"

    goto :goto_0

    :cond_0
    const-string v0, "vortek,gladio"

    :goto_0
    return-object v0
.end method

.method public static getItems(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "apiName"    # Ljava/lang/String;

    .line 37
    const-string v0, "VULKAN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "turnip"

    invoke-static {v0}, Lcom/winlator/container/GraphicsDrivers;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vortek"

    invoke-static {v1}, Lcom/winlator/container/GraphicsDrivers;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 40
    :cond_0
    const-string v0, "OPENGL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    const-string v0, "zink"

    invoke-static {v0}, Lcom/winlator/container/GraphicsDrivers;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "virgl"

    invoke-static {v1}, Lcom/winlator/container/GraphicsDrivers;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gladio"

    invoke-static {v2}, Lcom/winlator/container/GraphicsDrivers;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 43
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "identifier"    # Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "virgl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "zink"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "vortek"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "turnip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "gladio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 24
    const-string v0, "None"

    return-object v0

    .line 23
    :pswitch_0
    const-string v0, "Gladio"

    return-object v0

    .line 22
    :pswitch_1
    const-string v0, "VirGL"

    return-object v0

    .line 21
    :pswitch_2
    const-string v0, "Zink"

    return-object v0

    .line 20
    :pswitch_3
    const-string v0, "Vortek"

    return-object v0

    .line 19
    :pswitch_4
    const-string v0, "Turnip"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x4a1d5112 -> :sswitch_4
        -0x33679d9c -> :sswitch_3
        -0x3052635f -> :sswitch_2
        0x390d2c -> :sswitch_1
        0x6b04944 -> :sswitch_0
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

.method public static isOpenGLDriver(Ljava/lang/String;)Z
    .locals 1
    .param p0, "identifier"    # Ljava/lang/String;

    .line 33
    if-eqz p0, :cond_1

    const-string v0, "zink"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "virgl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gladio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVulkanDriver(Ljava/lang/String;)Z
    .locals 1
    .param p0, "identifier"    # Ljava/lang/String;

    .line 29
    if-eqz p0, :cond_1

    const-string v0, "turnip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vortek"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static parseConfigs(Ljava/lang/String;Ljava/lang/String;)[Lcom/winlator/core/KeyValueSet;
    .locals 5
    .param p0, "graphicsDriver"    # Ljava/lang/String;
    .param p1, "graphicsDriverConfig"    # Ljava/lang/String;

    .line 63
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    .line 64
    :cond_1
    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 65
    .local v0, "separator":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 66
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "first":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "second":Ljava/lang/String;
    new-instance v3, Lcom/winlator/core/KeyValueSet;

    invoke-direct {v3, v1}, Lcom/winlator/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/winlator/core/KeyValueSet;

    invoke-direct {v4, v2}, Lcom/winlator/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    filled-new-array {v3, v4}, [Lcom/winlator/core/KeyValueSet;

    move-result-object v3

    return-object v3

    .line 71
    .end local v1    # "first":Ljava/lang/String;
    .end local v2    # "second":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/winlator/container/GraphicsDrivers;->isVulkanDriver(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    new-instance v1, Lcom/winlator/core/KeyValueSet;

    invoke-direct {v1, p1}, Lcom/winlator/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/winlator/core/KeyValueSet;

    invoke-direct {v2}, Lcom/winlator/core/KeyValueSet;-><init>()V

    filled-new-array {v1, v2}, [Lcom/winlator/core/KeyValueSet;

    move-result-object v1

    return-object v1

    .line 74
    :cond_3
    invoke-static {p0}, Lcom/winlator/container/GraphicsDrivers;->isOpenGLDriver(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 75
    new-instance v1, Lcom/winlator/core/KeyValueSet;

    invoke-direct {v1}, Lcom/winlator/core/KeyValueSet;-><init>()V

    new-instance v2, Lcom/winlator/core/KeyValueSet;

    invoke-direct {v2, p1}, Lcom/winlator/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    filled-new-array {v1, v2}, [Lcom/winlator/core/KeyValueSet;

    move-result-object v1

    return-object v1

    .line 77
    :cond_4
    new-instance v1, Lcom/winlator/core/KeyValueSet;

    invoke-direct {v1}, Lcom/winlator/core/KeyValueSet;-><init>()V

    new-instance v2, Lcom/winlator/core/KeyValueSet;

    invoke-direct {v2}, Lcom/winlator/core/KeyValueSet;-><init>()V

    filled-new-array {v1, v2}, [Lcom/winlator/core/KeyValueSet;

    move-result-object v1

    return-object v1

    .line 63
    .end local v0    # "separator":I
    :goto_0
    new-instance v0, Lcom/winlator/core/KeyValueSet;

    invoke-direct {v0}, Lcom/winlator/core/KeyValueSet;-><init>()V

    new-instance v1, Lcom/winlator/core/KeyValueSet;

    invoke-direct {v1}, Lcom/winlator/core/KeyValueSet;-><init>()V

    filled-new-array {v0, v1}, [Lcom/winlator/core/KeyValueSet;

    move-result-object v0

    return-object v0
.end method

.method public static parseIdentifiers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "graphicsDriver"    # Ljava/lang/String;

    .line 47
    const-string v0, "vortek"

    const-string v1, "gladio"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    goto :goto_0

    .line 48
    :cond_1
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 49
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :cond_2
    invoke-static {p0}, Lcom/winlator/container/GraphicsDrivers;->isVulkanDriver(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 53
    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :cond_3
    invoke-static {p0}, Lcom/winlator/container/GraphicsDrivers;->isOpenGLDriver(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 56
    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 58
    :cond_4
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    :goto_0
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
