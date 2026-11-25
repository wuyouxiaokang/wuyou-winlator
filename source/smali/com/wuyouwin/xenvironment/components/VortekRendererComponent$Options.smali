.class public Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;
.super Ljava/lang/Object;
.source "VortekRendererComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public exposedDeviceExtensions:[Ljava/lang/String;

.field public imageCacheSize:S

.field public libvulkanPath:Ljava/lang/String;

.field public maxDeviceMemory:S

.field public resourceMemoryType:B

.field public vkMaxVersion:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget v0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;->VK_MAX_VERSION:I

    iput v0, p0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;->vkMaxVersion:I

    .line 41
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;->maxDeviceMemory:S

    .line 42
    const/16 v1, 0x100

    iput-short v1, p0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;->imageCacheSize:S

    .line 43
    iput-byte v0, p0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;->resourceMemoryType:B

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;->exposedDeviceExtensions:[Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;->libvulkanPath:Ljava/lang/String;

    return-void
.end method

.method public static fromKeyValueSet(Landroid/content/Context;Lcom/wuyouwin/core/KeyValueSet;)Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/wuyouwin/core/KeyValueSet;

    .line 48
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/wuyouwin/core/KeyValueSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    .line 50
    :cond_1
    new-instance v0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;

    invoke-direct {v0}, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;-><init>()V

    .line 51
    .local v0, "options":Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;
    const-string v1, "exposedDeviceExtensions"

    const-string v2, "all"

    invoke-virtual {p1, v1, v2}, Lcom/wuyouwin/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "exposedDeviceExtensions":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 53
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;->exposedDeviceExtensions:[Ljava/lang/String;

    .line 56
    :cond_2
    const-string v2, "vkMaxVersion"

    sget-object v3, Lcom/wuyouwin/contentdialog/VortekConfigDialog;->DEFAULT_VK_MAX_VERSION:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/wuyouwin/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "vkMaxVersion":Ljava/lang/String;
    sget-object v3, Lcom/wuyouwin/contentdialog/VortekConfigDialog;->DEFAULT_VK_MAX_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 58
    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "parts":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x80

    invoke-static {v4, v5, v6}, Lcom/wuyouwin/core/GPUHelper;->vkMakeVersion(III)I

    move-result v4

    iput v4, v0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;->vkMaxVersion:I

    .line 62
    .end local v3    # "parts":[Ljava/lang/String;
    :cond_3
    const-string v3, "maxDeviceMemory"

    invoke-virtual {p1, v3}, Lcom/wuyouwin/core/KeyValueSet;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-short v3, v3

    iput-short v3, v0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;->maxDeviceMemory:S

    .line 63
    const-string v3, "imageCacheSize"

    const/16 v4, 0x100

    invoke-virtual {p1, v3, v4}, Lcom/wuyouwin/core/KeyValueSet;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-short v3, v3

    iput-short v3, v0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;->imageCacheSize:S

    .line 64
    const-string v3, "resourceMemoryType"

    invoke-virtual {p1, v3}, Lcom/wuyouwin/core/KeyValueSet;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, v0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;->resourceMemoryType:B

    .line 66
    const-string v3, "adrenotoolsDriver"

    invoke-virtual {p1, v3}, Lcom/wuyouwin/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "adrenotoolsDriver":Ljava/lang/String;
    sget-object v4, Lcom/wuyouwin/core/GeneralComponents$Type;->ADRENOTOOLS_DRIVER:Lcom/wuyouwin/core/GeneralComponents$Type;

    invoke-static {v4, p0, v3}, Lcom/wuyouwin/core/GeneralComponents;->getDefinitivePath(Lcom/wuyouwin/core/GeneralComponents$Type;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;->libvulkanPath:Ljava/lang/String;

    .line 68
    return-object v0

    .line 48
    .end local v0    # "options":Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;
    .end local v1    # "exposedDeviceExtensions":Ljava/lang/String;
    .end local v2    # "vkMaxVersion":Ljava/lang/String;
    .end local v3    # "adrenotoolsDriver":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;

    invoke-direct {v0}, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;-><init>()V

    return-object v0
.end method
