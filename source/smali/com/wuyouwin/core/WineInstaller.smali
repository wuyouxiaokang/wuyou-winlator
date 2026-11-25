.class public abstract Lcom/wuyouwin/core/WineInstaller;
.super Ljava/lang/Object;
.source "WineInstaller.java"


# direct methods
.method public static synthetic $r8$lambda$6c1QqqVFx6kKMWVCKP-7mH96Mic(Ljava/lang/Integer;Landroid/app/Activity;Ljava/io/File;Lcom/wuyouwin/core/PreloaderDialog;Ljava/io/File;Lcom/wuyouwin/core/WineInfo;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/wuyouwin/core/WineInstaller;->lambda$generateWineprefix$0(Ljava/lang/Integer;Landroid/app/Activity;Ljava/io/File;Lcom/wuyouwin/core/PreloaderDialog;Ljava/io/File;Lcom/wuyouwin/core/WineInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mm8Q9yf4OjaINEf5xsAXTsYnUdk(Landroid/app/Activity;Ljava/io/File;Lcom/wuyouwin/core/PreloaderDialog;Ljava/io/File;Lcom/wuyouwin/core/WineInfo;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/wuyouwin/core/WineInstaller;->lambda$generateWineprefix$1(Landroid/app/Activity;Ljava/io/File;Lcom/wuyouwin/core/PreloaderDialog;Ljava/io/File;Lcom/wuyouwin/core/WineInfo;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e2FDqQySjx9aesHkKm59OxGP_WM(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/wuyouwin/core/WineInstaller;->lambda$findWineVersionAsync$3(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tFZUJw-tfVynBxnDL4xqqT1pJBs(Lcom/wuyouwin/core/Callback;Ljava/util/concurrent/atomic/AtomicReference;Lcom/wuyouwin/core/Callback;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/wuyouwin/core/WineInstaller;->lambda$findWineVersionAsync$4(Lcom/wuyouwin/core/Callback;Ljava/util/concurrent/atomic/AtomicReference;Lcom/wuyouwin/core/Callback;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yrcHvAieoJ2soynfhc_owQyzsDI(Landroid/content/Context;Landroid/net/Uri;Lcom/wuyouwin/core/Callback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/wuyouwin/core/WineInstaller;->lambda$extractWineFileForInstallAsync$2(Landroid/content/Context;Landroid/net/Uri;Lcom/wuyouwin/core/Callback;)V

    return-void
.end method

.method public static extractWineFileForInstallAsync(Landroid/content/Context;Landroid/net/Uri;Lcom/wuyouwin/core/Callback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 83
    .local p2, "callback":Lcom/wuyouwin/core/Callback;, "Lcom/wuyouwin/core/Callback<Ljava/io/File;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/wuyouwin/core/Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public static findWineVersionAsync(Landroid/content/Context;Ljava/io/File;Lcom/wuyouwin/core/Callback;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wineDir"    # Ljava/io/File;

    .line 94
    .local p2, "callback":Lcom/wuyouwin/core/Callback;, "Lcom/wuyouwin/core/Callback<Lcom/wuyouwin/core/WineInfo;>;"
    move-object/from16 v0, p2

    const/4 v1, 0x0

    if-eqz p1, :cond_10

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v15, p0

    goto/16 :goto_5

    .line 98
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 99
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_f

    array-length v3, v2

    if-nez v3, :cond_1

    move-object/from16 v15, p0

    goto/16 :goto_4

    .line 104
    :cond_1
    array-length v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_4

    .line 105
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    .line 106
    invoke-interface {v0, v1}, Lcom/wuyouwin/core/Callback;->call(Ljava/lang/Object;)V

    .line 107
    return-void

    .line 109
    :cond_2
    aget-object v3, v2, v5

    .line 110
    .end local p1    # "wineDir":Ljava/io/File;
    .local v3, "wineDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_3

    array-length v6, v2

    if-nez v6, :cond_5

    .line 112
    :cond_3
    invoke-interface {v0, v1}, Lcom/wuyouwin/core/Callback;->call(Ljava/lang/Object;)V

    .line 113
    return-void

    .line 104
    .end local v3    # "wineDir":Ljava/io/File;
    .restart local p1    # "wineDir":Ljava/io/File;
    :cond_4
    move-object/from16 v3, p1

    .line 117
    .end local p1    # "wineDir":Ljava/io/File;
    .restart local v3    # "wineDir":Ljava/io/File;
    :cond_5
    const/4 v6, 0x0

    .line 118
    .local v6, "binDir":Ljava/io/File;
    array-length v7, v2

    move v8, v5

    :goto_0
    nop

    if-ge v8, v7, :cond_7

    aget-object v9, v2, v8

    .line 119
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "bin"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 120
    move-object v6, v9

    .line 121
    goto :goto_1

    .line 118
    .end local v9    # "file":Ljava/io/File;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 125
    :cond_7
    :goto_1
    if-nez v6, :cond_8

    .line 126
    invoke-interface {v0, v1}, Lcom/wuyouwin/core/Callback;->call(Ljava/lang/Object;)V

    .line 127
    return-void

    .line 130
    :cond_8
    new-instance v7, Ljava/io/File;

    const-string v8, "wine"

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    .local v7, "wineBin":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v9, "wine64"

    invoke-direct {v8, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 133
    .local v8, "wineBin64":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v9

    if-nez v9, :cond_9

    .line 134
    invoke-interface {v0, v1}, Lcom/wuyouwin/core/Callback;->call(Ljava/lang/Object;)V

    .line 135
    return-void

    .line 138
    :cond_9
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-static {v8}, Lcom/wuyouwin/core/ElfHelper;->is64Bit(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_c

    :cond_a
    invoke-static {v7}, Lcom/wuyouwin/core/ElfHelper;->is64Bit(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_2

    :cond_b
    move v4, v5

    .line 139
    .local v4, "is64Bit":Z
    :cond_c
    :goto_2
    if-nez v4, :cond_d

    .line 140
    invoke-interface {v0, v1}, Lcom/wuyouwin/core/Callback;->call(Ljava/lang/Object;)V

    .line 141
    return-void

    .line 144
    :cond_d
    invoke-static/range {p0 .. p0}, Lcom/wuyouwin/xenvironment/RootFS;->find(Landroid/content/Context;)Lcom/wuyouwin/xenvironment/RootFS;

    move-result-object v1

    .line 145
    .local v1, "rootFS":Lcom/wuyouwin/xenvironment/RootFS;
    invoke-virtual {v1}, Lcom/wuyouwin/xenvironment/RootFS;->getRootDir()Ljava/io/File;

    move-result-object v5

    .line 146
    .local v5, "rootDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_e
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 147
    .local v9, "wineBinPath":Ljava/lang/String;
    :goto_3
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 149
    .local v10, "winePath":Ljava/lang/String;
    new-instance v11, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v11}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 150
    .local v11, "wineInfoRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/wuyouwin/core/WineInfo;>;"
    new-instance v12, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda3;

    invoke-direct {v12, v11, v10}, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)V

    .line 160
    .local v12, "debugCallback":Lcom/wuyouwin/core/Callback;, "Lcom/wuyouwin/core/Callback<Ljava/lang/String;>;"
    invoke-static {v12}, Lcom/wuyouwin/core/ProcessHelper;->addDebugCallback(Lcom/wuyouwin/core/Callback;)V

    .line 162
    new-instance v13, Ljava/io/File;

    const-string v14, "/home/xuser"

    invoke-direct {v13, v5, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    .local v13, "linkFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 164
    invoke-static {v3, v13}, Lcom/wuyouwin/core/FileUtils;->symlink(Ljava/io/File;Ljava/io/File;)V

    .line 166
    new-instance v14, Lcom/wuyouwin/xenvironment/XEnvironment;

    move-object/from16 v15, p0

    invoke-direct {v14, v15, v1}, Lcom/wuyouwin/xenvironment/XEnvironment;-><init>(Landroid/content/Context;Lcom/wuyouwin/xenvironment/RootFS;)V

    .line 167
    .local v14, "environment":Lcom/wuyouwin/xenvironment/XEnvironment;
    new-instance v16, Lcom/wuyouwin/xenvironment/components/GuestProgramLauncherComponent;

    invoke-direct/range {v16 .. v16}, Lcom/wuyouwin/xenvironment/components/GuestProgramLauncherComponent;-><init>()V

    move-object/from16 p1, v16

    .line 168
    .local p1, "guestProgramLauncherComponent":Lcom/wuyouwin/xenvironment/components/GuestProgramLauncherComponent;
    move-object/from16 v16, v1

    .end local v1    # "rootFS":Lcom/wuyouwin/xenvironment/RootFS;
    .local v16, "rootFS":Lcom/wuyouwin/xenvironment/RootFS;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v2

    .end local v2    # "files":[Ljava/io/File;
    .local v17, "files":[Ljava/io/File;
    const-string v2, " --version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    .end local p1    # "guestProgramLauncherComponent":Lcom/wuyouwin/xenvironment/components/GuestProgramLauncherComponent;
    .local v2, "guestProgramLauncherComponent":Lcom/wuyouwin/xenvironment/components/GuestProgramLauncherComponent;
    invoke-virtual {v2, v1}, Lcom/wuyouwin/xenvironment/components/GuestProgramLauncherComponent;->setGuestExecutable(Ljava/lang/String;)V

    .line 169
    new-instance v1, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, v11, v12}, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda4;-><init>(Lcom/wuyouwin/core/Callback;Ljava/util/concurrent/atomic/AtomicReference;Lcom/wuyouwin/core/Callback;)V

    invoke-virtual {v2, v1}, Lcom/wuyouwin/xenvironment/components/GuestProgramLauncherComponent;->setTerminationCallback(Lcom/wuyouwin/core/Callback;)V

    .line 173
    invoke-virtual {v14, v2}, Lcom/wuyouwin/xenvironment/XEnvironment;->addComponent(Lcom/wuyouwin/xenvironment/EnvironmentComponent;)V

    .line 174
    invoke-virtual {v14}, Lcom/wuyouwin/xenvironment/XEnvironment;->startEnvironmentComponents()V

    .line 175
    return-void

    .line 99
    .end local v3    # "wineDir":Ljava/io/File;
    .end local v4    # "is64Bit":Z
    .end local v5    # "rootDir":Ljava/io/File;
    .end local v6    # "binDir":Ljava/io/File;
    .end local v7    # "wineBin":Ljava/io/File;
    .end local v8    # "wineBin64":Ljava/io/File;
    .end local v9    # "wineBinPath":Ljava/lang/String;
    .end local v10    # "winePath":Ljava/lang/String;
    .end local v11    # "wineInfoRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/wuyouwin/core/WineInfo;>;"
    .end local v12    # "debugCallback":Lcom/wuyouwin/core/Callback;, "Lcom/wuyouwin/core/Callback<Ljava/lang/String;>;"
    .end local v13    # "linkFile":Ljava/io/File;
    .end local v14    # "environment":Lcom/wuyouwin/xenvironment/XEnvironment;
    .end local v16    # "rootFS":Lcom/wuyouwin/xenvironment/RootFS;
    .end local v17    # "files":[Ljava/io/File;
    .local v2, "files":[Ljava/io/File;
    .local p1, "wineDir":Ljava/io/File;
    :cond_f
    move-object/from16 v15, p0

    .line 100
    :goto_4
    invoke-interface {v0, v1}, Lcom/wuyouwin/core/Callback;->call(Ljava/lang/Object;)V

    .line 101
    return-void

    .line 94
    .end local v2    # "files":[Ljava/io/File;
    :cond_10
    move-object/from16 v15, p0

    .line 95
    :goto_5
    invoke-interface {v0, v1}, Lcom/wuyouwin/core/Callback;->call(Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public static generateWineprefix(Lcom/wuyouwin/core/WineInfo;Lcom/wuyouwin/xenvironment/XEnvironment;)V
    .locals 14
    .param p0, "wineInfo"    # Lcom/wuyouwin/core/WineInfo;
    .param p1, "environment"    # Lcom/wuyouwin/xenvironment/XEnvironment;

    .line 24
    invoke-virtual {p1}, Lcom/wuyouwin/xenvironment/XEnvironment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 25
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Lcom/wuyouwin/xenvironment/XEnvironment;->getRootFS()Lcom/wuyouwin/xenvironment/RootFS;

    move-result-object v7

    .line 26
    .local v7, "rootFS":Lcom/wuyouwin/xenvironment/RootFS;
    invoke-virtual {v7}, Lcom/wuyouwin/xenvironment/RootFS;->getRootDir()Ljava/io/File;

    move-result-object v8

    .line 27
    .local v8, "rootDir":Ljava/io/File;
    invoke-virtual {v7}, Lcom/wuyouwin/xenvironment/RootFS;->getInstalledWineDir()Ljava/io/File;

    move-result-object v9

    .line 28
    .local v9, "installedWineDir":Ljava/io/File;
    iget-object v1, p0, Lcom/wuyouwin/core/WineInfo;->path:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/wuyouwin/xenvironment/RootFS;->setWinePath(Ljava/lang/String;)V

    .line 30
    new-instance v1, Ljava/io/File;

    const-string v2, "/preinstall/container-pattern"

    invoke-direct {v1, v9, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v10, v1

    .line 31
    .local v10, "containerPatternDir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v10}, Lcom/wuyouwin/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 32
    :cond_0
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 34
    new-instance v1, Ljava/io/File;

    const-string v2, "/home/xuser"

    invoke-direct {v1, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v11, v1

    .line 35
    .local v11, "linkFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wuyouwin/core/FileUtils;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-class v1, Lcom/wuyouwin/xenvironment/components/GuestProgramLauncherComponent;

    invoke-virtual {p1, v1}, Lcom/wuyouwin/xenvironment/XEnvironment;->getComponent(Ljava/lang/Class;)Lcom/wuyouwin/xenvironment/EnvironmentComponent;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/wuyouwin/xenvironment/components/GuestProgramLauncherComponent;

    .line 38
    .local v12, "guestProgramLauncherComponent":Lcom/wuyouwin/xenvironment/components/GuestProgramLauncherComponent;
    const-string v1, "STABILITY"

    invoke-virtual {v12, v1}, Lcom/wuyouwin/xenvironment/components/GuestProgramLauncherComponent;->setBox64Preset(Ljava/lang/String;)V

    .line 39
    const-string v1, "wine explorer /desktop=shell,1280x720 C:\\windows\\system32\\winecfg.exe"

    invoke-virtual {v12, v1}, Lcom/wuyouwin/xenvironment/components/GuestProgramLauncherComponent;->setGuestExecutable(Ljava/lang/String;)V

    .line 41
    new-instance v4, Lcom/wuyouwin/core/PreloaderDialog;

    invoke-direct {v4, v0}, Lcom/wuyouwin/core/PreloaderDialog;-><init>(Landroid/app/Activity;)V

    .line 42
    .local v4, "preloaderDialog":Lcom/wuyouwin/core/PreloaderDialog;
    new-instance v13, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda0;

    move-object v1, v13

    move-object v2, v0

    move-object v3, v9

    move-object v5, v8

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Ljava/io/File;Lcom/wuyouwin/core/PreloaderDialog;Ljava/io/File;Lcom/wuyouwin/core/WineInfo;)V

    invoke-virtual {v12, v13}, Lcom/wuyouwin/xenvironment/components/GuestProgramLauncherComponent;->setTerminationCallback(Lcom/wuyouwin/core/Callback;)V

    .line 80
    return-void
.end method

.method public static getInstalledWineInfos(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, "wineInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wuyouwin/core/WineInfo;>;"
    sget-object v1, Lcom/wuyouwin/core/WineInfo;->MAIN_WINE_INFO:Lcom/wuyouwin/core/WineInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-static {p0}, Lcom/wuyouwin/xenvironment/RootFS;->find(Landroid/content/Context;)Lcom/wuyouwin/xenvironment/RootFS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wuyouwin/xenvironment/RootFS;->getInstalledWineDir()Ljava/io/File;

    move-result-object v1

    .line 182
    .local v1, "installedWineDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 183
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 184
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    nop

    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 185
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, "name":Ljava/lang/String;
    const-string v7, "wine"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {p0, v6}, Lcom/wuyouwin/core/WineInfo;->fromIdentifier(Landroid/content/Context;Ljava/lang/String;)Lcom/wuyouwin/core/WineInfo;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 190
    :cond_1
    return-object v0
.end method

.method private static synthetic lambda$extractWineFileForInstallAsync$2(Landroid/content/Context;Landroid/net/Uri;Lcom/wuyouwin/core/Callback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callback"    # Lcom/wuyouwin/core/Callback;

    .line 84
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/wuyouwin/xenvironment/RootFS;->find(Landroid/content/Context;)Lcom/wuyouwin/xenvironment/RootFS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wuyouwin/xenvironment/RootFS;->getInstalledWineDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "/preinstall/wine"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    .local v0, "destination":Ljava/io/File;
    invoke-static {v0}, Lcom/wuyouwin/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 87
    sget-object v1, Lcom/wuyouwin/core/TarCompressorUtils$Type;->XZ:Lcom/wuyouwin/core/TarCompressorUtils$Type;

    invoke-static {v1, p0, p1, v0}, Lcom/wuyouwin/core/TarCompressorUtils;->extract(Lcom/wuyouwin/core/TarCompressorUtils$Type;Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)Z

    move-result v1

    .line 88
    .local v1, "success":Z
    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/wuyouwin/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 89
    :cond_0
    if-eqz p2, :cond_2

    if-eqz v1, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2, v2}, Lcom/wuyouwin/core/Callback;->call(Ljava/lang/Object;)V

    .line 90
    :cond_2
    return-void
.end method

.method private static synthetic lambda$findWineVersionAsync$3(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "wineInfoRef"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p1, "winePath"    # Ljava/lang/String;
    .param p2, "line"    # Ljava/lang/String;

    .line 151
    const-string v0, "^wine\\-([0-9\\.]+)\\-?([0-9\\.]+)?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 152
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 153
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "version":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    if-lt v4, v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 156
    .local v1, "subversion":Ljava/lang/String;
    :goto_0
    new-instance v4, Lcom/wuyouwin/core/WineInfo;

    invoke-direct {v4, v3, v1, p1}, Lcom/wuyouwin/core/WineInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 158
    .end local v1    # "subversion":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static synthetic lambda$findWineVersionAsync$4(Lcom/wuyouwin/core/Callback;Ljava/util/concurrent/atomic/AtomicReference;Lcom/wuyouwin/core/Callback;Ljava/lang/Integer;)V
    .locals 1
    .param p0, "callback"    # Lcom/wuyouwin/core/Callback;
    .param p1, "wineInfoRef"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p2, "debugCallback"    # Lcom/wuyouwin/core/Callback;
    .param p3, "status"    # Ljava/lang/Integer;

    .line 170
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/core/WineInfo;

    invoke-interface {p0, v0}, Lcom/wuyouwin/core/Callback;->call(Ljava/lang/Object;)V

    .line 171
    invoke-static {p2}, Lcom/wuyouwin/core/ProcessHelper;->removeDebugCallback(Lcom/wuyouwin/core/Callback;)V

    .line 172
    return-void
.end method

.method private static synthetic lambda$generateWineprefix$0(Ljava/lang/Integer;Landroid/app/Activity;Ljava/io/File;Lcom/wuyouwin/core/PreloaderDialog;Ljava/io/File;Lcom/wuyouwin/core/WineInfo;)V
    .locals 8
    .param p0, "status"    # Ljava/lang/Integer;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "installedWineDir"    # Ljava/io/File;
    .param p3, "preloaderDialog"    # Lcom/wuyouwin/core/PreloaderDialog;
    .param p4, "rootDir"    # Ljava/io/File;
    .param p5, "wineInfo"    # Lcom/wuyouwin/core/WineInfo;

    .line 43
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "/preinstall"

    if-lez v0, :cond_0

    .line 44
    const v0, 0x7f100197

    invoke-static {p1, v0}, Lcom/wuyouwin/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 45
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wuyouwin/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 46
    invoke-static {p1}, Lcom/wuyouwin/core/AppUtils;->restartApplication(Landroid/content/Context;)V

    .line 47
    return-void

    .line 50
    :cond_0
    const v0, 0x7f1000ba

    invoke-virtual {p3, v0}, Lcom/wuyouwin/core/PreloaderDialog;->showOnUiThread(I)V

    .line 51
    new-instance v0, Ljava/io/File;

    const-string v2, "/home/xuser/.wine/.update-timestamp"

    invoke-direct {v0, p4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "disable\n"

    invoke-static {v0, v2}, Lcom/wuyouwin/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z

    .line 53
    new-instance v0, Ljava/io/File;

    const-string v2, "/home/xuser/.wine/drive_c/users/xuser"

    invoke-direct {v0, p4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .local v0, "userDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 55
    .local v2, "userFiles":[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 56
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    nop

    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 57
    .local v5, "userFile":Ljava/io/File;
    invoke-static {v5}, Lcom/wuyouwin/core/FileUtils;->isSymlink(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 58
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, "path":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 60
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 56
    .end local v5    # "userFile":Ljava/io/File;
    .end local v6    # "path":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 65
    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/preinstall/container-pattern-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/wuyouwin/core/WineInfo;->fullVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".tzst"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    .local v3, "containerPatternFile":Ljava/io/File;
    sget-object v4, Lcom/wuyouwin/core/TarCompressorUtils$Type;->ZSTD:Lcom/wuyouwin/core/TarCompressorUtils$Type;

    new-instance v5, Ljava/io/File;

    const-string v6, "/home/xuser/.wine"

    invoke-direct {v5, p4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v6, 0x9

    invoke-static {v4, v5, v3, v6}, Lcom/wuyouwin/core/TarCompressorUtils;->compress(Lcom/wuyouwin/core/TarCompressorUtils$Type;Ljava/io/File;Ljava/io/File;I)V

    .line 68
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    nop

    if-eqz v4, :cond_3

    new-instance v4, Ljava/io/File;

    iget-object v5, p5, Lcom/wuyouwin/core/WineInfo;->path:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    .line 69
    invoke-virtual {p5}, Lcom/wuyouwin/core/WineInfo;->identifier()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 70
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 73
    :cond_4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/wuyouwin/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 75
    invoke-virtual {p3}, Lcom/wuyouwin/core/PreloaderDialog;->closeOnUiThread()V

    .line 76
    new-instance v1, Lcom/wuyouwin/core/AppUtils$RestartApplicationOptions;

    invoke-direct {v1}, Lcom/wuyouwin/core/AppUtils$RestartApplicationOptions;-><init>()V

    .line 77
    .local v1, "options":Lcom/wuyouwin/core/AppUtils$RestartApplicationOptions;
    const v4, 0x7f0901f4

    iput v4, v1, Lcom/wuyouwin/core/AppUtils$RestartApplicationOptions;->selectedMenuItemId:I

    .line 78
    invoke-static {p1, v1}, Lcom/wuyouwin/core/AppUtils;->restartApplication(Landroid/content/Context;Lcom/wuyouwin/core/AppUtils$RestartApplicationOptions;)V

    .line 79
    return-void
.end method

.method private static synthetic lambda$generateWineprefix$1(Landroid/app/Activity;Ljava/io/File;Lcom/wuyouwin/core/PreloaderDialog;Ljava/io/File;Lcom/wuyouwin/core/WineInfo;Ljava/lang/Integer;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "installedWineDir"    # Ljava/io/File;
    .param p2, "preloaderDialog"    # Lcom/wuyouwin/core/PreloaderDialog;
    .param p3, "rootDir"    # Ljava/io/File;
    .param p4, "wineInfo"    # Lcom/wuyouwin/core/WineInfo;
    .param p5, "status"    # Ljava/lang/Integer;

    .line 42
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v8, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda1;

    move-object v1, v8

    move-object v2, p5

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Integer;Landroid/app/Activity;Ljava/io/File;Lcom/wuyouwin/core/PreloaderDialog;Ljava/io/File;Lcom/wuyouwin/core/WineInfo;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
