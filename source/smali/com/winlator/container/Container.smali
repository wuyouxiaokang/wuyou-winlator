.class public Lcom/winlator/container/Container;
.super Ljava/lang/Object;
.source "Container.java"


# static fields
.field public static final DEFAULT_DRIVES:Ljava/lang/String;


# instance fields
.field private audioDriver:Ljava/lang/String;

.field private audioDriverConfig:Ljava/lang/String;

.field private box64Preset:Ljava/lang/String;

.field private cpuList:Ljava/lang/String;

.field private cpuListWoW64:Ljava/lang/String;

.field private desktopTheme:Ljava/lang/String;

.field private drives:Ljava/lang/String;

.field private dxwrapper:Ljava/lang/String;

.field private dxwrapperConfig:Ljava/lang/String;

.field private envVars:Ljava/lang/String;

.field private extraData:Lorg/json/JSONObject;

.field private graphicsDriver:Ljava/lang/String;

.field private graphicsDriverConfig:Ljava/lang/String;

.field private hudMode:B

.field public final id:I

.field private name:Ljava/lang/String;

.field private rootDir:Ljava/io/File;

.field private screenSize:Ljava/lang/String;

.field private startupSelection:B

.field private wincomponents:Ljava/lang/String;

.field private wineVersion:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$da_2FUWR3be11v4DHLPZMHuzzY0([ILjava/lang/String;)Ljava/util/Iterator;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/winlator/container/Container;->lambda$drivesIterator$0([ILjava/lang/String;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "D:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/winlator/core/AppUtils;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "E:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/data/data/com.winlator/storage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/winlator/container/Container;->DEFAULT_DRIVES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "id"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "1280x720"

    iput-object v0, p0, Lcom/winlator/container/Container;->screenSize:Ljava/lang/String;

    .line 34
    const-string v0, "ZINK_DESCRIPTORS=lazy ZINK_DEBUG=compact MESA_SHADER_CACHE_DISABLE=false MESA_SHADER_CACHE_MAX_SIZE=512MB mesa_glthread=true WINEESYNC=1 TU_DEBUG=noconform"

    iput-object v0, p0, Lcom/winlator/container/Container;->envVars:Ljava/lang/String;

    .line 35
    const-string v0, "vortek,gladio"

    iput-object v0, p0, Lcom/winlator/container/Container;->graphicsDriver:Ljava/lang/String;

    .line 36
    const-string v0, "dxvk"

    iput-object v0, p0, Lcom/winlator/container/Container;->dxwrapper:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/winlator/container/Container;->dxwrapperConfig:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/winlator/container/Container;->graphicsDriverConfig:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/winlator/container/Container;->audioDriverConfig:Ljava/lang/String;

    .line 40
    const-string v0, "direct3d=1,directsound=1,directmusic=1,directshow=0,directplay=0,xaudio=1,vcrun2005=0,vcrun2010=1,wmdecoder=1"

    iput-object v0, p0, Lcom/winlator/container/Container;->wincomponents:Ljava/lang/String;

    .line 41
    const-string v0, "alsa"

    iput-object v0, p0, Lcom/winlator/container/Container;->audioDriver:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/winlator/container/Container;->DEFAULT_DRIVES:Ljava/lang/String;

    iput-object v0, p0, Lcom/winlator/container/Container;->drives:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/winlator/core/WineInfo;->MAIN_WINE_INFO:Lcom/winlator/core/WineInfo;

    invoke-virtual {v0}, Lcom/winlator/core/WineInfo;->identifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/container/Container;->wineVersion:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/winlator/widget/FrameRating$Mode;->DISABLED:Lcom/winlator/widget/FrameRating$Mode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/winlator/container/Container;->hudMode:B

    .line 45
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/winlator/container/Container;->startupSelection:B

    .line 48
    sget-object v0, Lcom/winlator/core/WineThemeManager;->DEFAULT_DESKTOP_THEME:Ljava/lang/String;

    iput-object v0, p0, Lcom/winlator/container/Container;->desktopTheme:Ljava/lang/String;

    .line 49
    const-string v0, "PERFORMANCE"

    iput-object v0, p0, Lcom/winlator/container/Container;->box64Preset:Ljava/lang/String;

    .line 54
    iput p1, p0, Lcom/winlator/container/Container;->id:I

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Container-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/container/Container;->name:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static checkObsoleteOrMissingProperties(Lorg/json/JSONObject;)V
    .locals 14
    .param p0, "data"    # Lorg/json/JSONObject;

    .line 394
    const-string v0, ""

    const-string v1, "wincomponents"

    const-string v2, "extraData"

    const-string v3, "envVars"

    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 395
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 396
    .local v2, "extraData":Lorg/json/JSONObject;
    const-string v4, "appVersion"

    const-string v5, "0"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 398
    .local v4, "appVersion":I
    const/16 v5, 0x10

    if-ge v4, v5, :cond_2

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 399
    new-instance v5, Lcom/winlator/core/EnvVars;

    const-string v6, "ZINK_DESCRIPTORS=lazy ZINK_DEBUG=compact MESA_SHADER_CACHE_DISABLE=false MESA_SHADER_CACHE_MAX_SIZE=512MB mesa_glthread=true WINEESYNC=1 TU_DEBUG=noconform"

    invoke-direct {v5, v6}, Lcom/winlator/core/EnvVars;-><init>(Ljava/lang/String;)V

    .line 400
    .local v5, "defaultEnvVars":Lcom/winlator/core/EnvVars;
    new-instance v6, Lcom/winlator/core/EnvVars;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/winlator/core/EnvVars;-><init>(Ljava/lang/String;)V

    .line 401
    .local v6, "envVars":Lcom/winlator/core/EnvVars;
    invoke-virtual {v5}, Lcom/winlator/core/EnvVars;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v6, v8}, Lcom/winlator/core/EnvVars;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v5, v8}, Lcom/winlator/core/EnvVars;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    goto :goto_0

    .line 425
    .end local v2    # "extraData":Lorg/json/JSONObject;
    .end local v4    # "appVersion":I
    .end local v5    # "defaultEnvVars":Lcom/winlator/core/EnvVars;
    .end local v6    # "envVars":Lcom/winlator/core/EnvVars;
    .end local v8    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto/16 :goto_5

    .line 402
    .restart local v2    # "extraData":Lorg/json/JSONObject;
    .restart local v4    # "appVersion":I
    .restart local v5    # "defaultEnvVars":Lcom/winlator/core/EnvVars;
    .restart local v6    # "envVars":Lcom/winlator/core/EnvVars;
    :cond_1
    invoke-virtual {v6}, Lcom/winlator/core/EnvVars;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    .end local v2    # "extraData":Lorg/json/JSONObject;
    .end local v4    # "appVersion":I
    .end local v5    # "defaultEnvVars":Lcom/winlator/core/EnvVars;
    .end local v6    # "envVars":Lcom/winlator/core/EnvVars;
    :cond_2
    new-instance v2, Lcom/winlator/core/KeyValueSet;

    const-string v3, "direct3d=1,directsound=1,directmusic=1,directshow=0,directplay=0,xaudio=1,vcrun2005=0,vcrun2010=1,wmdecoder=1"

    invoke-direct {v2, v3}, Lcom/winlator/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    .line 407
    .local v2, "wincomponents1":Lcom/winlator/core/KeyValueSet;
    new-instance v3, Lcom/winlator/core/KeyValueSet;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/winlator/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    .line 408
    .local v3, "wincomponents2":Lcom/winlator/core/KeyValueSet;
    move-object v4, v0

    .line 410
    .local v4, "result":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/winlator/core/KeyValueSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 411
    .local v6, "wincomponent1":[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v8, v6, v7

    .line 413
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/winlator/core/KeyValueSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 414
    .local v10, "wincomponent2":[Ljava/lang/String;
    aget-object v12, v6, v11

    aget-object v13, v10, v11

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 415
    aget-object v7, v10, v7

    move-object v8, v7

    .line 416
    goto :goto_3

    .line 414
    :cond_3
    nop

    .line 418
    .end local v10    # "wincomponent2":[Ljava/lang/String;
    goto :goto_2

    .line 420
    :cond_4
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, ","

    goto :goto_4

    :cond_5
    move-object v9, v0

    :goto_4
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v6, v11

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 421
    .end local v6    # "wincomponent1":[Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    goto :goto_1

    .line 423
    :cond_6
    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    nop

    .line 426
    .end local v2    # "wincomponents1":Lcom/winlator/core/KeyValueSet;
    .end local v3    # "wincomponents2":Lcom/winlator/core/KeyValueSet;
    .end local v4    # "result":Ljava/lang/String;
    :goto_5
    return-void
.end method

.method public static drivesIterator(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 2
    .param p0, "drives"    # Ljava/lang/String;

    .line 267
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    .line 268
    .local v0, "index":[I
    new-instance v1, Lcom/winlator/container/Container$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Lcom/winlator/container/Container$$ExternalSyntheticLambda0;-><init>([ILjava/lang/String;)V

    return-object v1
.end method

.method public static getFallbackCPUList()Ljava/lang/String;
    .locals 5

    .line 429
    const-string v0, ""

    .line 430
    .local v0, "cpuList":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    .line 431
    .local v1, "numProcessors":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ","

    goto :goto_1

    :cond_0
    const-string v4, ""

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 432
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method private static synthetic lambda$drivesIterator$0([ILjava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .param p0, "index"    # [I
    .param p1, "drives"    # Ljava/lang/String;

    .line 268
    new-instance v0, Lcom/winlator/container/Container$1;

    invoke-direct {v0, p0, p1}, Lcom/winlator/container/Container$1;-><init>([ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public drivesIterator()Ljava/lang/Iterable;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/winlator/container/Container;->drives:Ljava/lang/String;

    invoke-static {v0}, Lcom/winlator/container/Container;->drivesIterator(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getAudioDriver()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/winlator/container/Container;->audioDriver:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioDriverConfig()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/winlator/container/Container;->audioDriverConfig:Ljava/lang/String;

    return-object v0
.end method

.method public getBox64Preset()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/winlator/container/Container;->box64Preset:Ljava/lang/String;

    return-object v0
.end method

.method public getCPUList()Ljava/lang/String;
    .locals 1

    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/winlator/container/Container;->getCPUList(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCPUList(Z)Ljava/lang/String;
    .locals 1
    .param p1, "allowFallback"    # Z

    .line 167
    iget-object v0, p0, Lcom/winlator/container/Container;->cpuList:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/container/Container;->cpuList:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/winlator/container/Container;->getFallbackCPUList()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCPUListWoW64()Ljava/lang/String;
    .locals 1

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/winlator/container/Container;->getCPUListWoW64(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCPUListWoW64(Z)Ljava/lang/String;
    .locals 1
    .param p1, "allowFallback"    # Z

    .line 179
    iget-object v0, p0, Lcom/winlator/container/Container;->cpuListWoW64:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/container/Container;->cpuListWoW64:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/winlator/container/Container;->getFallbackCPUList()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getConfigFile()Ljava/io/File;
    .locals 3

    .line 239
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/container/Container;->rootDir:Ljava/io/File;

    const-string v2, ".container"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDXWrapper()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/winlator/container/Container;->dxwrapper:Ljava/lang/String;

    return-object v0
.end method

.method public getDXWrapperConfig()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/winlator/container/Container;->dxwrapperConfig:Ljava/lang/String;

    return-object v0
.end method

.method public getDesktopTheme()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/winlator/container/Container;->desktopTheme:Ljava/lang/String;

    return-object v0
.end method

.method public getDrives()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/winlator/container/Container;->drives:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvVars()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/winlator/container/Container;->envVars:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 207
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/winlator/container/Container;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallback"    # Ljava/lang/String;

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/winlator/container/Container;->extraData:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/container/Container;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/container/Container;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    goto :goto_1

    .line 212
    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0

    .line 214
    :goto_1
    nop

    .line 215
    .local v0, "e":Lorg/json/JSONException;
    return-object p2
.end method

.method public getGraphicsDriver()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/winlator/container/Container;->graphicsDriver:Ljava/lang/String;

    return-object v0
.end method

.method public getGraphicsDriverConfig()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/winlator/container/Container;->graphicsDriverConfig:Ljava/lang/String;

    return-object v0
.end method

.method public getHUDMode()B
    .locals 1

    .line 147
    iget-byte v0, p0, Lcom/winlator/container/Container;->hudMode:B

    return v0
.end method

.method public getIconsDir(I)Ljava/io/File;
    .locals 4
    .param p1, "size"    # I

    .line 251
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/container/Container;->rootDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".local/share/icons/hicolor/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/apps/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/winlator/container/Container;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRootDir()Ljava/io/File;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/winlator/container/Container;->rootDir:Ljava/io/File;

    return-object v0
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/winlator/container/Container;->screenSize:Ljava/lang/String;

    return-object v0
.end method

.method public getStartMenuDir()Ljava/io/File;
    .locals 3

    .line 247
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/container/Container;->rootDir:Ljava/io/File;

    const-string v2, ".wine/drive_c/ProgramData/Microsoft/Windows/Start Menu/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getStartupSelection()B
    .locals 1

    .line 155
    iget-byte v0, p0, Lcom/winlator/container/Container;->startupSelection:B

    return v0
.end method

.method public getUserDir()Ljava/io/File;
    .locals 3

    .line 243
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/container/Container;->rootDir:Ljava/io/File;

    const-string v2, ".wine/drive_c/users/xuser/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getWinComponents()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/winlator/container/Container;->wincomponents:Ljava/lang/String;

    return-object v0
.end method

.method public getWineVersion()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/winlator/container/Container;->wineVersion:Ljava/lang/String;

    return-object v0
.end method

.method public loadData(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "data"    # Lorg/json/JSONObject;

    .line 315
    sget-object v0, Lcom/winlator/core/WineInfo;->MAIN_WINE_INFO:Lcom/winlator/core/WineInfo;

    invoke-virtual {v0}, Lcom/winlator/core/WineInfo;->identifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/container/Container;->wineVersion:Ljava/lang/String;

    .line 316
    const-string v0, ""

    iput-object v0, p0, Lcom/winlator/container/Container;->dxwrapperConfig:Ljava/lang/String;

    .line 317
    iput-object v0, p0, Lcom/winlator/container/Container;->graphicsDriverConfig:Ljava/lang/String;

    .line 318
    iput-object v0, p0, Lcom/winlator/container/Container;->audioDriverConfig:Ljava/lang/String;

    .line 320
    invoke-static {p1}, Lcom/winlator/container/Container;->checkObsoleteOrMissingProperties(Lorg/json/JSONObject;)V

    .line 322
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 323
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 324
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v2, "showFPS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "dxwrapperConfig"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_2

    :sswitch_2
    const-string v2, "graphicsDriverConfig"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto/16 :goto_2

    :sswitch_3
    const-string v2, "startupSelection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_2

    :sswitch_4
    const-string v2, "hudMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_2

    :sswitch_5
    const-string v2, "desktopTheme"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x13

    goto/16 :goto_2

    :sswitch_6
    const-string v2, "cpuList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto/16 :goto_2

    :sswitch_7
    const-string v2, "audioDriver"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x12

    goto/16 :goto_2

    :sswitch_8
    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_2

    :sswitch_9
    const-string v2, "dxwrapper"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto/16 :goto_2

    :sswitch_a
    const-string v2, "cpuListWoW64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_2

    :sswitch_b
    const-string v2, "extraData"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xf

    goto :goto_2

    :sswitch_c
    const-string v2, "screenSize"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_d
    const-string v2, "wincomponents"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_2

    :sswitch_e
    const-string v2, "audioDriverConfig"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto :goto_2

    :sswitch_f
    const-string v2, "drives"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto :goto_2

    :sswitch_10
    const-string v2, "box64Preset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x11

    goto :goto_2

    :sswitch_11
    const-string v2, "envVars"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_12
    const-string v2, "graphicsDriver"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_2

    :sswitch_13
    const-string v2, "wineVersion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x10

    goto :goto_2

    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    .line 386
    :pswitch_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/container/Container;->setDesktopTheme(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 383
    :pswitch_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/container/Container;->setAudioDriver(Ljava/lang/String;)V

    .line 384
    goto/16 :goto_5

    .line 380
    :pswitch_2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/container/Container;->setBox64Preset(Ljava/lang/String;)V

    .line 381
    goto/16 :goto_5

    .line 377
    :pswitch_3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/container/Container;->setWineVersion(Ljava/lang/String;)V

    .line 378
    goto/16 :goto_5

    .line 371
    :pswitch_4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 372
    .local v2, "extraData":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/winlator/container/Container;->checkObsoleteOrMissingProperties(Lorg/json/JSONObject;)V

    .line 373
    invoke-virtual {p0, v2}, Lcom/winlator/container/Container;->setExtraData(Lorg/json/JSONObject;)V

    .line 374
    goto/16 :goto_5

    .line 368
    .end local v2    # "extraData":Lorg/json/JSONObject;
    :pswitch_5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Lcom/winlator/container/Container;->setStartupSelection(B)V

    .line 369
    goto/16 :goto_5

    .line 365
    :pswitch_6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Lcom/winlator/container/Container;->setHUDMode(B)V

    .line 366
    goto/16 :goto_5

    .line 362
    :pswitch_7
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/winlator/widget/FrameRating$Mode;->SIMPLE:Lcom/winlator/widget/FrameRating$Mode;

    :goto_3
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    goto :goto_4

    :cond_1
    sget-object v2, Lcom/winlator/widget/FrameRating$Mode;->DISABLED:Lcom/winlator/widget/FrameRating$Mode;

    goto :goto_3

    :goto_4
    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Lcom/winlator/container/Container;->setHUDMode(B)V

    .line 363
    goto :goto_5

    .line 359
    :pswitch_8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/container/Container;->setDrives(Ljava/lang/String;)V

    .line 360
    goto :goto_5

    .line 356
    :pswitch_9
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/container/Container;->setAudioDriverConfig(Ljava/lang/String;)V

    .line 357
    goto :goto_5

    .line 353
    :pswitch_a
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/container/Container;->setGraphicsDriverConfig(Ljava/lang/String;)V

    .line 354
    goto :goto_5

    .line 350
    :pswitch_b
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/container/Container;->setDXWrapperConfig(Ljava/lang/String;)V

    .line 351
    goto :goto_5

    .line 347
    :pswitch_c
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/container/Container;->setDXWrapper(Ljava/lang/String;)V

    .line 348
    goto :goto_5

    .line 344
    :pswitch_d
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/container/Container;->setWinComponents(Ljava/lang/String;)V

    .line 345
    goto :goto_5

    .line 341
    :pswitch_e
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/container/Container;->setGraphicsDriver(Ljava/lang/String;)V

    .line 342
    goto :goto_5

    .line 338
    :pswitch_f
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/container/Container;->setCPUListWoW64(Ljava/lang/String;)V

    .line 339
    goto :goto_5

    .line 335
    :pswitch_10
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/container/Container;->setCPUList(Ljava/lang/String;)V

    .line 336
    goto :goto_5

    .line 332
    :pswitch_11
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/container/Container;->setEnvVars(Ljava/lang/String;)V

    .line 333
    goto :goto_5

    .line 329
    :pswitch_12
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/container/Container;->setScreenSize(Ljava/lang/String;)V

    .line 330
    goto :goto_5

    .line 326
    :pswitch_13
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/container/Container;->setName(Ljava/lang/String;)V

    .line 327
    nop

    .line 389
    .end local v1    # "key":Ljava/lang/String;
    :goto_5
    goto/16 :goto_0

    .line 322
    :cond_2
    nop

    .line 390
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e256771 -> :sswitch_13
        -0x6323256d -> :sswitch_12
        -0x5ece2347 -> :sswitch_11
        -0x5d4a2df8 -> :sswitch_10
        -0x4ee367d7 -> :sswitch_f
        -0x49c7d780 -> :sswitch_e
        -0x19a1d40e -> :sswitch_d
        -0x18e10173 -> :sswitch_c
        -0xf209026 -> :sswitch_b
        -0xea54349 -> :sswitch_a
        -0x49e1681 -> :sswitch_9
        0x337a8b -> :sswitch_8
        0xa4679e -> :sswitch_7
        0x3abc9266 -> :sswitch_6
        0x3b02a70d -> :sswitch_5
        0x4ad4ef3a -> :sswitch_4
        0x51a5cb8f -> :sswitch_3
        0x6f29cfb5 -> :sswitch_2
        0x716afda1 -> :sswitch_1
        0x7b37f8ac -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method public putExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/winlator/container/Container;->extraData:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/winlator/container/Container;->extraData:Lorg/json/JSONObject;

    .line 222
    :cond_0
    if-eqz p2, :cond_1

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/winlator/container/Container;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/winlator/container/Container;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    nop

    .line 228
    return-void
.end method

.method public saveData()V
    .locals 3

    .line 287
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 288
    .local v0, "data":Lorg/json/JSONObject;
    const-string v1, "id"

    iget v2, p0, Lcom/winlator/container/Container;->id:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 289
    const-string v1, "name"

    iget-object v2, p0, Lcom/winlator/container/Container;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    const-string v1, "screenSize"

    iget-object v2, p0, Lcom/winlator/container/Container;->screenSize:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    const-string v1, "envVars"

    iget-object v2, p0, Lcom/winlator/container/Container;->envVars:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    const-string v1, "cpuList"

    iget-object v2, p0, Lcom/winlator/container/Container;->cpuList:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    const-string v1, "cpuListWoW64"

    iget-object v2, p0, Lcom/winlator/container/Container;->cpuListWoW64:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    const-string v1, "graphicsDriver"

    iget-object v2, p0, Lcom/winlator/container/Container;->graphicsDriver:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    const-string v1, "dxwrapper"

    iget-object v2, p0, Lcom/winlator/container/Container;->dxwrapper:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    iget-object v1, p0, Lcom/winlator/container/Container;->dxwrapperConfig:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dxwrapperConfig"

    iget-object v2, p0, Lcom/winlator/container/Container;->dxwrapperConfig:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 311
    .end local v0    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 297
    .restart local v0    # "data":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/winlator/container/Container;->graphicsDriverConfig:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "graphicsDriverConfig"

    iget-object v2, p0, Lcom/winlator/container/Container;->graphicsDriverConfig:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/winlator/container/Container;->audioDriverConfig:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "audioDriverConfig"

    iget-object v2, p0, Lcom/winlator/container/Container;->audioDriverConfig:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    :cond_2
    const-string v1, "audioDriver"

    iget-object v2, p0, Lcom/winlator/container/Container;->audioDriver:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    const-string v1, "wincomponents"

    iget-object v2, p0, Lcom/winlator/container/Container;->wincomponents:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    const-string v1, "drives"

    iget-object v2, p0, Lcom/winlator/container/Container;->drives:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    const-string v1, "hudMode"

    iget-byte v2, p0, Lcom/winlator/container/Container;->hudMode:B

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 303
    const-string v1, "startupSelection"

    iget-byte v2, p0, Lcom/winlator/container/Container;->startupSelection:B

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 304
    const-string v1, "box64Preset"

    iget-object v2, p0, Lcom/winlator/container/Container;->box64Preset:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    const-string v1, "desktopTheme"

    iget-object v2, p0, Lcom/winlator/container/Container;->desktopTheme:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    const-string v1, "extraData"

    iget-object v2, p0, Lcom/winlator/container/Container;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    iget-object v1, p0, Lcom/winlator/container/Container;->wineVersion:Ljava/lang/String;

    invoke-static {v1}, Lcom/winlator/core/WineInfo;->isMainWineVersion(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "wineVersion"

    iget-object v2, p0, Lcom/winlator/container/Container;->wineVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    :cond_3
    invoke-virtual {p0}, Lcom/winlator/container/Container;->getConfigFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/winlator/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    nop

    .line 312
    .end local v0    # "data":Lorg/json/JSONObject;
    :goto_1
    return-void
.end method

.method public setAudioDriver(Ljava/lang/String;)V
    .locals 0
    .param p1, "audioDriver"    # Ljava/lang/String;

    .line 127
    iput-object p1, p0, Lcom/winlator/container/Container;->audioDriver:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setAudioDriverConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "audioDriverConfig"    # Ljava/lang/String;

    .line 119
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/winlator/container/Container;->audioDriverConfig:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setBox64Preset(Ljava/lang/String;)V
    .locals 0
    .param p1, "box64Preset"    # Ljava/lang/String;

    .line 191
    iput-object p1, p0, Lcom/winlator/container/Container;->box64Preset:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setCPUList(Ljava/lang/String;)V
    .locals 1
    .param p1, "cpuList"    # Ljava/lang/String;

    .line 171
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/winlator/container/Container;->cpuList:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setCPUListWoW64(Ljava/lang/String;)V
    .locals 1
    .param p1, "cpuListWoW64"    # Ljava/lang/String;

    .line 183
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/winlator/container/Container;->cpuListWoW64:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setDXWrapper(Ljava/lang/String;)V
    .locals 0
    .param p1, "dxwrapper"    # Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lcom/winlator/container/Container;->dxwrapper:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setDXWrapperConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "dxwrapperConfig"    # Ljava/lang/String;

    .line 111
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/winlator/container/Container;->dxwrapperConfig:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setDesktopTheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "desktopTheme"    # Ljava/lang/String;

    .line 259
    iput-object p1, p0, Lcom/winlator/container/Container;->desktopTheme:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setDrives(Ljava/lang/String;)V
    .locals 0
    .param p1, "drives"    # Ljava/lang/String;

    .line 143
    iput-object p1, p0, Lcom/winlator/container/Container;->drives:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setEnvVars(Ljava/lang/String;)V
    .locals 1
    .param p1, "envVars"    # Ljava/lang/String;

    .line 79
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/winlator/container/Container;->envVars:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setExtraData(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "extraData"    # Lorg/json/JSONObject;

    .line 203
    iput-object p1, p0, Lcom/winlator/container/Container;->extraData:Lorg/json/JSONObject;

    .line 204
    return-void
.end method

.method public setGraphicsDriver(Ljava/lang/String;)V
    .locals 0
    .param p1, "graphicsDriver"    # Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/winlator/container/Container;->graphicsDriver:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setGraphicsDriverConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "graphicsDriverConfig"    # Ljava/lang/String;

    .line 103
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/winlator/container/Container;->graphicsDriverConfig:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setHUDMode(B)V
    .locals 0
    .param p1, "hudMode"    # B

    .line 151
    iput-byte p1, p0, Lcom/winlator/container/Container;->hudMode:B

    .line 152
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/winlator/container/Container;->name:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setRootDir(Ljava/io/File;)V
    .locals 0
    .param p1, "rootDir"    # Ljava/io/File;

    .line 199
    iput-object p1, p0, Lcom/winlator/container/Container;->rootDir:Ljava/io/File;

    .line 200
    return-void
.end method

.method public setScreenSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "screenSize"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/winlator/container/Container;->screenSize:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setStartupSelection(B)V
    .locals 0
    .param p1, "startupSelection"    # B

    .line 159
    iput-byte p1, p0, Lcom/winlator/container/Container;->startupSelection:B

    .line 160
    return-void
.end method

.method public setWinComponents(Ljava/lang/String;)V
    .locals 0
    .param p1, "wincomponents"    # Ljava/lang/String;

    .line 135
    iput-object p1, p0, Lcom/winlator/container/Container;->wincomponents:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setWineVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "wineVersion"    # Ljava/lang/String;

    .line 235
    iput-object p1, p0, Lcom/winlator/container/Container;->wineVersion:Ljava/lang/String;

    .line 236
    return-void
.end method
