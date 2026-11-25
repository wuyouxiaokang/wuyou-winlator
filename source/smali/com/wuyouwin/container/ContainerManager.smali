.class public Lcom/wuyouwin/container/ContainerManager;
.super Ljava/lang/Object;
.source "ContainerManager.java"


# instance fields
.field private final containers:Ljava/util/ArrayList;

.field private final context:Landroid/content/Context;

.field private final homeDir:Ljava/io/File;

.field private maxContainerId:I


# direct methods
.method public static synthetic $r8$lambda$KfSdHGr3LLJL9zes4KvfXWlriHk(Lcom/wuyouwin/core/Callback;Lcom/wuyouwin/container/Container;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/wuyouwin/container/ContainerManager;->lambda$createContainerAsync$0(Lcom/wuyouwin/core/Callback;Lcom/wuyouwin/container/Container;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PhMSxlIKZ2icnyVTGBVGK3fbksU(Lcom/wuyouwin/container/ContainerManager;Lcom/wuyouwin/container/Container;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/container/ContainerManager;->lambda$removeContainerAsync$3(Lcom/wuyouwin/container/Container;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iVaVtWVVoXQqxb9X4ORI2Y4SaBo(Lcom/wuyouwin/container/ContainerManager;Lcom/wuyouwin/container/Container;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/container/ContainerManager;->lambda$duplicateContainerAsync$2(Lcom/wuyouwin/container/Container;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k_hKl_-UMBY2tokeBQn_71eQ2RY(Lcom/wuyouwin/container/ContainerManager;Lorg/json/JSONObject;Landroid/os/Handler;Lcom/wuyouwin/core/Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/container/ContainerManager;->lambda$createContainerAsync$1(Lorg/json/JSONObject;Landroid/os/Handler;Lcom/wuyouwin/core/Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$seXEn_Rpdr_8cTmn4oRra6JMgMs(Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/wuyouwin/container/ContainerManager;->lambda$duplicateContainer$4(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yY81JKzZOsEgEJPoJOLBAFYfbao(Lcom/wuyouwin/container/Shortcut;Lcom/wuyouwin/container/Shortcut;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/wuyouwin/container/ContainerManager;->lambda$loadShortcuts$5(Lcom/wuyouwin/container/Shortcut;Lcom/wuyouwin/container/Shortcut;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/container/ContainerManager;->containers:Ljava/util/ArrayList;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/wuyouwin/container/ContainerManager;->maxContainerId:I

    .line 29
    iput-object p1, p0, Lcom/wuyouwin/container/ContainerManager;->context:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Lcom/wuyouwin/xenvironment/RootFS;->find(Landroid/content/Context;)Lcom/wuyouwin/xenvironment/RootFS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wuyouwin/xenvironment/RootFS;->getRootDir()Ljava/io/File;

    move-result-object v0

    .line 31
    .local v0, "rootDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "home"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/wuyouwin/container/ContainerManager;->homeDir:Ljava/io/File;

    .line 32
    invoke-direct {p0}, Lcom/wuyouwin/container/ContainerManager;->loadContainers()V

    .line 33
    return-void
.end method

.method private copyCommonDlls(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/io/File;)V
    .locals 7
    .param p1, "srcName"    # Ljava/lang/String;
    .param p2, "dstName"    # Ljava/lang/String;
    .param p3, "commonDlls"    # Lorg/json/JSONObject;
    .param p4, "containerDir"    # Ljava/io/File;

    .line 237
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wuyouwin/container/ContainerManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/wuyouwin/xenvironment/RootFS;->find(Landroid/content/Context;)Lcom/wuyouwin/xenvironment/RootFS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wuyouwin/xenvironment/RootFS;->getRootDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/opt/wine/lib/wine/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 238
    .local v0, "srcDir":Ljava/io/File;
    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 240
    .local v1, "dlnames":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 241
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "dlname":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ".wine/drive_c/windows/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 243
    .local v4, "dstFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5, v4}, Lcom/wuyouwin/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 240
    .end local v3    # "dlname":Ljava/lang/String;
    .end local v4    # "dstFile":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 245
    .end local v2    # "i":I
    return-void
.end method

.method private createContainer(Lorg/json/JSONObject;)Lcom/wuyouwin/container/Container;
    .locals 8
    .param p1, "data"    # Lorg/json/JSONObject;

    .line 100
    const-string v0, "wineVersion"

    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Lcom/wuyouwin/container/ContainerManager;->maxContainerId:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 101
    .local v2, "id":I
    const-string v4, "id"

    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/wuyouwin/container/ContainerManager;->homeDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "xuser-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    .local v4, "containerDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    return-object v1

    .line 106
    :cond_0
    new-instance v5, Lcom/wuyouwin/container/Container;

    invoke-direct {v5, v2}, Lcom/wuyouwin/container/Container;-><init>(I)V

    .line 107
    .local v5, "container":Lcom/wuyouwin/container/Container;
    invoke-virtual {v5, v4}, Lcom/wuyouwin/container/Container;->setRootDir(Ljava/io/File;)V

    .line 108
    invoke-virtual {v5, p1}, Lcom/wuyouwin/container/Container;->loadData(Lorg/json/JSONObject;)V

    .line 110
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wuyouwin/core/WineInfo;->isMainWineVersion(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 123
    .end local v2    # "id":I
    .end local v4    # "containerDir":Ljava/io/File;
    .end local v5    # "container":Lcom/wuyouwin/container/Container;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 110
    .restart local v2    # "id":I
    .restart local v4    # "containerDir":Ljava/io/File;
    .restart local v5    # "container":Lcom/wuyouwin/container/Container;
    :goto_0
    move v6, v3

    :goto_1
    nop

    .line 111
    .local v6, "isMainWineVersion":Z
    if-nez v6, :cond_3

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/wuyouwin/container/Container;->setWineVersion(Ljava/lang/String;)V

    .line 113
    :cond_3
    invoke-virtual {v5}, Lcom/wuyouwin/container/Container;->getWineVersion()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/wuyouwin/container/ContainerManager;->extractContainerPatternFile(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 114
    invoke-static {v4}, Lcom/wuyouwin/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 115
    return-object v1

    .line 118
    :cond_4
    invoke-virtual {v5}, Lcom/wuyouwin/container/Container;->saveData()V

    .line 119
    iget v0, p0, Lcom/wuyouwin/container/ContainerManager;->maxContainerId:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/wuyouwin/container/ContainerManager;->maxContainerId:I

    .line 120
    iget-object v0, p0, Lcom/wuyouwin/container/ContainerManager;->containers:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    return-object v5

    .line 123
    .end local v2    # "id":I
    .end local v4    # "containerDir":Ljava/io/File;
    .end local v5    # "container":Lcom/wuyouwin/container/Container;
    .end local v6    # "isMainWineVersion":Z
    :goto_2
    nop

    .line 124
    return-object v1
.end method

.method private duplicateContainer(Lcom/wuyouwin/container/Container;)V
    .locals 6
    .param p1, "srcContainer"    # Lcom/wuyouwin/container/Container;

    .line 128
    iget v0, p0, Lcom/wuyouwin/container/ContainerManager;->maxContainerId:I

    add-int/lit8 v0, v0, 0x1

    .line 130
    .local v0, "id":I
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/wuyouwin/container/ContainerManager;->homeDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xuser-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    .local v1, "dstDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/wuyouwin/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v2, v1, v3}, Lcom/wuyouwin/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;Lcom/wuyouwin/core/Callback;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 134
    invoke-static {v1}, Lcom/wuyouwin/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 135
    return-void

    .line 138
    :cond_1
    new-instance v2, Lcom/wuyouwin/container/Container;

    invoke-direct {v2, v0}, Lcom/wuyouwin/container/Container;-><init>(I)V

    .line 139
    .local v2, "dstContainer":Lcom/wuyouwin/container/Container;
    invoke-virtual {v2, v1}, Lcom/wuyouwin/container/Container;->setRootDir(Ljava/io/File;)V

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/wuyouwin/container/Container;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wuyouwin/container/ContainerManager;->context:Landroid/content/Context;

    const v5, 0x7f10005e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wuyouwin/container/Container;->setName(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Lcom/wuyouwin/container/Container;->getScreenSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wuyouwin/container/Container;->setScreenSize(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Lcom/wuyouwin/container/Container;->getEnvVars()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wuyouwin/container/Container;->setEnvVars(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Lcom/wuyouwin/container/Container;->getCPUList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wuyouwin/container/Container;->setCPUList(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Lcom/wuyouwin/container/Container;->getCPUListWoW64()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wuyouwin/container/Container;->setCPUListWoW64(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Lcom/wuyouwin/container/Container;->getGraphicsDriver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wuyouwin/container/Container;->setGraphicsDriver(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Lcom/wuyouwin/container/Container;->getGraphicsDriverConfig()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wuyouwin/container/Container;->setGraphicsDriverConfig(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Lcom/wuyouwin/container/Container;->getDXWrapper()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wuyouwin/container/Container;->setDXWrapper(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lcom/wuyouwin/container/Container;->getDXWrapperConfig()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wuyouwin/container/Container;->setDXWrapperConfig(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Lcom/wuyouwin/container/Container;->getAudioDriver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wuyouwin/container/Container;->setAudioDriver(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Lcom/wuyouwin/container/Container;->getAudioDriverConfig()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wuyouwin/container/Container;->setAudioDriverConfig(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Lcom/wuyouwin/container/Container;->getWinComponents()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wuyouwin/container/Container;->setWinComponents(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Lcom/wuyouwin/container/Container;->getDrives()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wuyouwin/container/Container;->setDrives(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Lcom/wuyouwin/container/Container;->getHUDMode()B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/wuyouwin/container/Container;->setHUDMode(B)V

    .line 154
    invoke-virtual {p1}, Lcom/wuyouwin/container/Container;->getStartupSelection()B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/wuyouwin/container/Container;->setStartupSelection(B)V

    .line 155
    invoke-virtual {p1}, Lcom/wuyouwin/container/Container;->getBox64Preset()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wuyouwin/container/Container;->setBox64Preset(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Lcom/wuyouwin/container/Container;->getDesktopTheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wuyouwin/container/Container;->setDesktopTheme(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v2}, Lcom/wuyouwin/container/Container;->saveData()V

    .line 159
    iget v3, p0, Lcom/wuyouwin/container/ContainerManager;->maxContainerId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/wuyouwin/container/ContainerManager;->maxContainerId:I

    .line 160
    iget-object v3, p0, Lcom/wuyouwin/container/ContainerManager;->containers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method private extractContainerPatternFile(Ljava/lang/String;Ljava/io/File;)Z
    .locals 5
    .param p1, "wineVersion"    # Ljava/lang/String;
    .param p2, "containerDir"    # Ljava/io/File;

    .line 248
    invoke-static {p1}, Lcom/wuyouwin/core/WineInfo;->isMainWineVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    sget-object v0, Lcom/wuyouwin/core/TarCompressorUtils$Type;->ZSTD:Lcom/wuyouwin/core/TarCompressorUtils$Type;

    iget-object v1, p0, Lcom/wuyouwin/container/ContainerManager;->context:Landroid/content/Context;

    const-string v2, "container_pattern.tzst"

    invoke-static {v0, v1, v2, p2}, Lcom/wuyouwin/core/TarCompressorUtils;->extract(Lcom/wuyouwin/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    .line 251
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 253
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/wuyouwin/container/ContainerManager;->context:Landroid/content/Context;

    const-string v3, "common_dlls.json"

    invoke-static {v2, v3}, Lcom/wuyouwin/core/FileUtils;->readString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 254
    .local v1, "commonDlls":Lorg/json/JSONObject;
    const-string v2, "x86_64-windows"

    const-string v3, "system32"

    invoke-direct {p0, v2, v3, v1, p2}, Lcom/wuyouwin/container/ContainerManager;->copyCommonDlls(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/io/File;)V

    .line 255
    const-string v2, "i386-windows"

    const-string v3, "syswow64"

    invoke-direct {p0, v2, v3, v1, p2}, Lcom/wuyouwin/container/ContainerManager;->copyCommonDlls(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/io/File;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v1    # "commonDlls":Lorg/json/JSONObject;
    goto :goto_0

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Lorg/json/JSONException;
    const/4 v2, 0x0

    return v2

    .line 262
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    return v0

    .line 265
    .end local v0    # "result":Z
    :cond_1
    iget-object v0, p0, Lcom/wuyouwin/container/ContainerManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/wuyouwin/xenvironment/RootFS;->find(Landroid/content/Context;)Lcom/wuyouwin/xenvironment/RootFS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wuyouwin/xenvironment/RootFS;->getInstalledWineDir()Ljava/io/File;

    move-result-object v0

    .line 266
    .local v0, "installedWineDir":Ljava/io/File;
    iget-object v1, p0, Lcom/wuyouwin/container/ContainerManager;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/wuyouwin/core/WineInfo;->fromIdentifier(Landroid/content/Context;Ljava/lang/String;)Lcom/wuyouwin/core/WineInfo;

    move-result-object v1

    .line 267
    .local v1, "wineInfo":Lcom/wuyouwin/core/WineInfo;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container-pattern-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/wuyouwin/core/WineInfo;->fullVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".tzst"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 268
    .local v2, "file":Ljava/io/File;
    sget-object v3, Lcom/wuyouwin/core/TarCompressorUtils$Type;->ZSTD:Lcom/wuyouwin/core/TarCompressorUtils$Type;

    invoke-static {v3, v2, p2}, Lcom/wuyouwin/core/TarCompressorUtils;->extract(Lcom/wuyouwin/core/TarCompressorUtils$Type;Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    return v3
.end method

.method private static synthetic lambda$createContainerAsync$0(Lcom/wuyouwin/core/Callback;Lcom/wuyouwin/container/Container;)V
    .locals 0
    .param p0, "callback"    # Lcom/wuyouwin/core/Callback;
    .param p1, "container"    # Lcom/wuyouwin/container/Container;

    .line 78
    invoke-interface {p0, p1}, Lcom/wuyouwin/core/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$createContainerAsync$1(Lorg/json/JSONObject;Landroid/os/Handler;Lcom/wuyouwin/core/Callback;)V
    .locals 2
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callback"    # Lcom/wuyouwin/core/Callback;

    .line 77
    invoke-direct {p0, p1}, Lcom/wuyouwin/container/ContainerManager;->createContainer(Lorg/json/JSONObject;)Lcom/wuyouwin/container/Container;

    move-result-object v0

    .line 78
    .local v0, "container":Lcom/wuyouwin/container/Container;
    new-instance v1, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p3, v0}, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda2;-><init>(Lcom/wuyouwin/core/Callback;Lcom/wuyouwin/container/Container;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method

.method private static synthetic lambda$duplicateContainer$4(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 133
    const/16 v0, 0x1f9

    invoke-static {p0, v0}, Lcom/wuyouwin/core/FileUtils;->chmod(Ljava/io/File;I)V

    return-void
.end method

.method private synthetic lambda$duplicateContainerAsync$2(Lcom/wuyouwin/container/Container;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "container"    # Lcom/wuyouwin/container/Container;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callback"    # Ljava/lang/Runnable;

    .line 85
    invoke-direct {p0, p1}, Lcom/wuyouwin/container/ContainerManager;->duplicateContainer(Lcom/wuyouwin/container/Container;)V

    .line 86
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method

.method private static synthetic lambda$loadShortcuts$5(Lcom/wuyouwin/container/Shortcut;Lcom/wuyouwin/container/Shortcut;)I
    .locals 3
    .param p0, "a"    # Lcom/wuyouwin/container/Shortcut;
    .param p1, "b"    # Lcom/wuyouwin/container/Shortcut;

    .line 195
    iget-object v0, p1, Lcom/wuyouwin/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    iget-object v1, p0, Lcom/wuyouwin/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    .line 196
    .local v0, "value":I
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/wuyouwin/container/Shortcut;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/wuyouwin/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 197
    :cond_0
    return v0
.end method

.method private synthetic lambda$removeContainerAsync$3(Lcom/wuyouwin/container/Container;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "container"    # Lcom/wuyouwin/container/Container;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callback"    # Ljava/lang/Runnable;

    .line 93
    invoke-direct {p0, p1}, Lcom/wuyouwin/container/ContainerManager;->removeContainer(Lcom/wuyouwin/container/Container;)V

    .line 94
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void
.end method

.method private loadContainers()V
    .locals 10

    .line 44
    const-string v0, "xuser-"

    iget-object v1, p0, Lcom/wuyouwin/container/ContainerManager;->containers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 45
    const/4 v1, 0x0

    iput v1, p0, Lcom/wuyouwin/container/ContainerManager;->maxContainerId:I

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/wuyouwin/container/ContainerManager;->homeDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 49
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 50
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 51
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    new-instance v5, Lcom/wuyouwin/container/Container;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Lcom/wuyouwin/container/Container;-><init>(I)V

    .line 54
    .local v5, "container":Lcom/wuyouwin/container/Container;
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/wuyouwin/container/ContainerManager;->homeDir:Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v5, Lcom/wuyouwin/container/Container;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/wuyouwin/container/Container;->setRootDir(Ljava/io/File;)V

    .line 55
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v5}, Lcom/wuyouwin/container/Container;->getConfigFile()Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Lcom/wuyouwin/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v6, "data":Lorg/json/JSONObject;
    invoke-virtual {v5, v6}, Lcom/wuyouwin/container/Container;->loadData(Lorg/json/JSONObject;)V

    .line 57
    iget-object v7, p0, Lcom/wuyouwin/container/ContainerManager;->containers:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget v7, p0, Lcom/wuyouwin/container/ContainerManager;->maxContainerId:I

    iget v8, v5, Lcom/wuyouwin/container/Container;->id:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/wuyouwin/container/ContainerManager;->maxContainerId:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 64
    .end local v2    # "files":[Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "container":Lcom/wuyouwin/container/Container;
    .end local v6    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 50
    .restart local v2    # "files":[Ljava/io/File;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v2    # "files":[Ljava/io/File;
    :cond_1
    :goto_2
    nop

    .line 65
    return-void
.end method

.method private removeContainer(Lcom/wuyouwin/container/Container;)V
    .locals 1
    .param p1, "container"    # Lcom/wuyouwin/container/Container;

    .line 164
    invoke-virtual {p1}, Lcom/wuyouwin/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/wuyouwin/core/FileUtils;->delete(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/container/ContainerManager;->containers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method public activateContainer(Lcom/wuyouwin/container/Container;)V
    .locals 5
    .param p1, "container"    # Lcom/wuyouwin/container/Container;

    .line 68
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wuyouwin/container/ContainerManager;->homeDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xuser-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/wuyouwin/container/Container;->id:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/wuyouwin/container/Container;->setRootDir(Ljava/io/File;)V

    .line 69
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wuyouwin/container/ContainerManager;->homeDir:Ljava/io/File;

    const-string v2, "xuser"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/wuyouwin/container/Container;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wuyouwin/core/FileUtils;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public createContainerAsync(Lorg/json/JSONObject;Lcom/wuyouwin/core/Callback;)V
    .locals 3
    .param p1, "data"    # Lorg/json/JSONObject;

    .line 75
    .local p2, "callback":Lcom/wuyouwin/core/Callback;, "Lcom/wuyouwin/core/Callback<Lcom/wuyouwin/container/Container;>;"
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 76
    .local v0, "handler":Landroid/os/Handler;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda1;-><init>(Lcom/wuyouwin/container/ContainerManager;Lorg/json/JSONObject;Landroid/os/Handler;Lcom/wuyouwin/core/Callback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method

.method public duplicateContainerAsync(Lcom/wuyouwin/container/Container;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "container"    # Lcom/wuyouwin/container/Container;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 84
    .local v0, "handler":Landroid/os/Handler;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda4;-><init>(Lcom/wuyouwin/container/ContainerManager;Lcom/wuyouwin/container/Container;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method public getContainerById(I)Lcom/wuyouwin/container/Container;
    .locals 3
    .param p1, "id"    # I

    .line 232
    iget-object v0, p0, Lcom/wuyouwin/container/ContainerManager;->containers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/container/Container;

    .local v1, "container":Lcom/wuyouwin/container/Container;
    iget v2, v1, Lcom/wuyouwin/container/Container;->id:I

    if-ne v2, p1, :cond_0

    return-object v1

    .end local v1    # "container":Lcom/wuyouwin/container/Container;
    :cond_0
    goto :goto_0

    .line 233
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContainers()Ljava/util/ArrayList;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/wuyouwin/container/ContainerManager;->containers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/wuyouwin/container/ContainerManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getNextContainerId()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/wuyouwin/container/ContainerManager;->maxContainerId:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public loadFiles(Lcom/wuyouwin/container/Container;Lcom/wuyouwin/container/FileInfo;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "container"    # Lcom/wuyouwin/container/Container;
    .param p2, "parent"    # Lcom/wuyouwin/container/FileInfo;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v0, "fileInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wuyouwin/container/FileInfo;>;"
    if-eqz p2, :cond_0

    .line 206
    invoke-virtual {p2}, Lcom/wuyouwin/container/FileInfo;->list()Ljava/util/ArrayList;

    move-result-object v0

    goto/16 :goto_1

    .line 209
    :cond_0
    invoke-virtual {p1}, Lcom/wuyouwin/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "rootPath":Ljava/lang/String;
    new-instance v2, Lcom/wuyouwin/container/FileInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/.wine/drive_c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/wuyouwin/container/FileInfo$Type;->DRIVE:Lcom/wuyouwin/container/FileInfo$Type;

    const-string v5, "C:"

    invoke-direct {v2, p1, v5, v3, v4}, Lcom/wuyouwin/container/FileInfo;-><init>(Lcom/wuyouwin/container/Container;Ljava/lang/String;Ljava/lang/String;Lcom/wuyouwin/container/FileInfo$Type;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {p1}, Lcom/wuyouwin/container/Container;->drivesIterator()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wuyouwin/container/Drive;

    .line 212
    .local v3, "drive":Lcom/wuyouwin/container/Drive;
    new-instance v4, Lcom/wuyouwin/container/FileInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/wuyouwin/container/Drive;->letter:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/wuyouwin/container/Drive;->path:Ljava/lang/String;

    sget-object v7, Lcom/wuyouwin/container/FileInfo$Type;->DRIVE:Lcom/wuyouwin/container/FileInfo$Type;

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/wuyouwin/container/FileInfo;-><init>(Lcom/wuyouwin/container/Container;Ljava/lang/String;Ljava/lang/String;Lcom/wuyouwin/container/FileInfo$Type;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .end local v3    # "drive":Lcom/wuyouwin/container/Drive;
    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {p1}, Lcom/wuyouwin/container/Container;->getUserDir()Ljava/io/File;

    move-result-object v2

    .line 216
    .local v2, "userDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "Documents"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    .local v3, "documentsDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "Favorites"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 219
    .local v4, "favoritesDir":Ljava/io/File;
    new-instance v5, Lcom/wuyouwin/container/FileInfo;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/wuyouwin/container/FileInfo$Type;->DIRECTORY:Lcom/wuyouwin/container/FileInfo$Type;

    invoke-direct {v5, p1, v6, v7, v8}, Lcom/wuyouwin/container/FileInfo;-><init>(Lcom/wuyouwin/container/Container;Ljava/lang/String;Ljava/lang/String;Lcom/wuyouwin/container/FileInfo$Type;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v5, Lcom/wuyouwin/container/FileInfo;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/wuyouwin/container/FileInfo$Type;->DIRECTORY:Lcom/wuyouwin/container/FileInfo$Type;

    invoke-direct {v5, p1, v6, v7, v8}, Lcom/wuyouwin/container/FileInfo;-><init>(Lcom/wuyouwin/container/Container;Ljava/lang/String;Ljava/lang/String;Lcom/wuyouwin/container/FileInfo$Type;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 224
    .end local v1    # "rootPath":Ljava/lang/String;
    .end local v2    # "userDir":Ljava/io/File;
    .end local v3    # "documentsDir":Ljava/io/File;
    .end local v4    # "favoritesDir":Ljava/io/File;
    :goto_1
    return-object v0
.end method

.method public loadShortcuts(Lcom/wuyouwin/container/Shortcut;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "selectedFolder"    # Lcom/wuyouwin/container/Shortcut;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v0, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wuyouwin/container/Shortcut;>;"
    const-string v1, ".desktop"

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 171
    iget-object v3, p1, Lcom/wuyouwin/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 172
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_2

    .line 173
    array-length v4, v3

    :goto_0
    nop

    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 174
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 175
    :cond_0
    new-instance v6, Lcom/wuyouwin/container/Shortcut;

    iget-object v7, p1, Lcom/wuyouwin/container/Shortcut;->container:Lcom/wuyouwin/container/Container;

    invoke-direct {v6, v7, v5}, Lcom/wuyouwin/container/Shortcut;-><init>(Lcom/wuyouwin/container/Container;Ljava/io/File;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .end local v5    # "file":Ljava/io/File;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    .end local v3    # "files":[Ljava/io/File;
    :cond_2
    goto :goto_3

    .line 181
    :cond_3
    iget-object v3, p0, Lcom/wuyouwin/container/ContainerManager;->containers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wuyouwin/container/Container;

    .line 182
    .local v4, "container":Lcom/wuyouwin/container/Container;
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Lcom/wuyouwin/container/Container;->getUserDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "Desktop"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    .local v5, "desktopDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 184
    .local v6, "files":[Ljava/io/File;
    if-eqz v6, :cond_6

    .line 185
    array-length v7, v6

    move v8, v2

    :goto_2
    nop

    if-ge v8, v7, :cond_6

    aget-object v9, v6, v8

    .line 186
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 187
    :cond_4
    new-instance v10, Lcom/wuyouwin/container/Shortcut;

    invoke-direct {v10, v4, v9}, Lcom/wuyouwin/container/Shortcut;-><init>(Lcom/wuyouwin/container/Container;Ljava/io/File;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v9    # "file":Ljava/io/File;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 191
    .end local v4    # "container":Lcom/wuyouwin/container/Container;
    .end local v5    # "desktopDir":Ljava/io/File;
    .end local v6    # "files":[Ljava/io/File;
    :cond_6
    goto :goto_1

    .line 194
    :cond_7
    :goto_3
    new-instance v1, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 199
    return-object v0
.end method

.method public removeContainerAsync(Lcom/wuyouwin/container/Container;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "container"    # Lcom/wuyouwin/container/Container;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 92
    .local v0, "handler":Landroid/os/Handler;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda3;-><init>(Lcom/wuyouwin/container/ContainerManager;Lcom/wuyouwin/container/Container;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method
