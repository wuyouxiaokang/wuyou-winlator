.class public abstract Lcom/winlator/xenvironment/RootFSInstaller;
.super Ljava/lang/Object;
.source "RootFSInstaller.java"


# direct methods
.method public static synthetic $r8$lambda$-yi_ofvItr4dEUusdbI0en_c--8(Ljava/io/File;Lcom/winlator/MainActivity;Lcom/winlator/core/DownloadProgressDialog;Lcom/winlator/xenvironment/RootFS;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/winlator/xenvironment/RootFSInstaller;->lambda$install$2(Ljava/io/File;Lcom/winlator/MainActivity;Lcom/winlator/core/DownloadProgressDialog;Lcom/winlator/xenvironment/RootFS;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dzd9CgAVDz2ByBfp9d5pVKeppls(Ljava/util/concurrent/atomic/AtomicLong;JLcom/winlator/MainActivity;Lcom/winlator/core/DownloadProgressDialog;Ljava/io/File;J)Ljava/io/File;
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lcom/winlator/xenvironment/RootFSInstaller;->lambda$install$1(Ljava/util/concurrent/atomic/AtomicLong;JLcom/winlator/MainActivity;Lcom/winlator/core/DownloadProgressDialog;Ljava/io/File;J)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EMpuVNxdUto2RkVYNVIp7YmlFlI(Lcom/winlator/core/DownloadProgressDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/winlator/xenvironment/RootFSInstaller;->lambda$install$0(Lcom/winlator/core/DownloadProgressDialog;I)V

    return-void
.end method

.method private static clearOptDir(Ljava/io/File;)V
    .locals 6
    .param p0, "optDir"    # Ljava/io/File;

    .line 86
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 87
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 88
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    nop

    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 89
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "installed-wine"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    invoke-static {v3}, Lcom/winlator/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 88
    .end local v3    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_1
    return-void
.end method

.method private static clearRootDir(Ljava/io/File;)V
    .locals 7
    .param p0, "rootDir"    # Ljava/io/File;

    .line 96
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 98
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_3

    .line 99
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    nop

    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 100
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "name":Ljava/lang/String;
    const-string v5, "home"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "opt"

    if-nez v5, :cond_0

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 103
    :cond_0
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Lcom/winlator/xenvironment/RootFSInstaller;->clearOptDir(Ljava/io/File;)V

    goto :goto_1

    .line 107
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    invoke-static {v3}, Lcom/winlator/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 99
    .end local v3    # "file":Ljava/io/File;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "files":[Ljava/io/File;
    :cond_3
    goto :goto_2

    .line 111
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 112
    :goto_2
    return-void
.end method

.method public static install(Lcom/winlator/MainActivity;)V
    .locals 5
    .param p0, "activity"    # Lcom/winlator/MainActivity;

    .line 48
    invoke-static {p0}, Lcom/winlator/core/AppUtils;->keepScreenOn(Landroid/app/Activity;)V

    .line 49
    invoke-static {p0}, Lcom/winlator/xenvironment/RootFS;->find(Landroid/content/Context;)Lcom/winlator/xenvironment/RootFS;

    move-result-object v0

    .line 50
    .local v0, "rootFS":Lcom/winlator/xenvironment/RootFS;
    invoke-virtual {v0}, Lcom/winlator/xenvironment/RootFS;->getRootDir()Ljava/io/File;

    move-result-object v1

    .line 52
    .local v1, "rootDir":Ljava/io/File;
    invoke-static {p0}, Lcom/winlator/SettingsFragment;->resetPreferenceVersions(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 54
    new-instance v2, Lcom/winlator/core/DownloadProgressDialog;

    invoke-direct {v2, p0}, Lcom/winlator/core/DownloadProgressDialog;-><init>(Landroid/app/Activity;)V

    .line 55
    .local v2, "dialog":Lcom/winlator/core/DownloadProgressDialog;
    const v3, 0x7f1000d6

    invoke-virtual {v2, v3}, Lcom/winlator/core/DownloadProgressDialog;->show(I)V

    .line 56
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, p0, v2, v0}, Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;Lcom/winlator/MainActivity;Lcom/winlator/core/DownloadProgressDialog;Lcom/winlator/xenvironment/RootFS;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method

.method public static installIfNeeded(Lcom/winlator/MainActivity;)V
    .locals 3
    .param p0, "activity"    # Lcom/winlator/MainActivity;

    .line 81
    invoke-static {p0}, Lcom/winlator/xenvironment/RootFS;->find(Landroid/content/Context;)Lcom/winlator/xenvironment/RootFS;

    move-result-object v0

    .line 82
    .local v0, "rootFS":Lcom/winlator/xenvironment/RootFS;
    invoke-virtual {v0}, Lcom/winlator/xenvironment/RootFS;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/winlator/xenvironment/RootFS;->getVersion()I

    move-result v1

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/winlator/xenvironment/RootFSInstaller;->install(Lcom/winlator/MainActivity;)V

    .line 83
    :cond_1
    return-void
.end method

.method private static synthetic lambda$install$0(Lcom/winlator/core/DownloadProgressDialog;I)V
    .locals 0
    .param p0, "dialog"    # Lcom/winlator/core/DownloadProgressDialog;
    .param p1, "progress"    # I

    .line 65
    invoke-virtual {p0, p1}, Lcom/winlator/core/DownloadProgressDialog;->setProgress(I)V

    return-void
.end method

.method private static synthetic lambda$install$1(Ljava/util/concurrent/atomic/AtomicLong;JLcom/winlator/MainActivity;Lcom/winlator/core/DownloadProgressDialog;Ljava/io/File;J)Ljava/io/File;
    .locals 4
    .param p0, "totalSizeRef"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "contentLength"    # J
    .param p3, "activity"    # Lcom/winlator/MainActivity;
    .param p4, "dialog"    # Lcom/winlator/core/DownloadProgressDialog;
    .param p5, "file"    # Ljava/io/File;
    .param p6, "size"    # J

    .line 62
    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-lez v0, :cond_0

    .line 63
    invoke-virtual {p0, p6, p7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v0

    .line 64
    .local v0, "totalSize":J
    long-to-float v2, v0

    long-to-float v3, p1

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 65
    .local v2, "progress":I
    new-instance v3, Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda2;

    invoke-direct {v3, p4, v2}, Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/core/DownloadProgressDialog;I)V

    invoke-virtual {p3, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 67
    .end local v0    # "totalSize":J
    .end local v2    # "progress":I
    :cond_0
    return-object p5
.end method

.method private static synthetic lambda$install$2(Ljava/io/File;Lcom/winlator/MainActivity;Lcom/winlator/core/DownloadProgressDialog;Lcom/winlator/xenvironment/RootFS;)V
    .locals 11
    .param p0, "rootDir"    # Ljava/io/File;
    .param p1, "activity"    # Lcom/winlator/MainActivity;
    .param p2, "dialog"    # Lcom/winlator/core/DownloadProgressDialog;
    .param p3, "rootFS"    # Lcom/winlator/xenvironment/RootFS;

    .line 57
    invoke-static {p0}, Lcom/winlator/xenvironment/RootFSInstaller;->clearRootDir(Ljava/io/File;)V

    .line 58
    sget-object v0, Lcom/winlator/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/core/TarCompressorUtils$Type;

    const-string v1, "rootfs.tzst"

    invoke-static {v0, p1, v1, p0}, Lcom/winlator/core/TarCompressorUtils;->getContentLength(Lcom/winlator/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)J

    move-result-wide v8

    .line 59
    .local v8, "contentLength":J
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 61
    .local v3, "totalSizeRef":Ljava/util/concurrent/atomic/AtomicLong;
    sget-object v0, Lcom/winlator/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/core/TarCompressorUtils$Type;

    new-instance v10, Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda1;

    move-object v2, v10

    move-wide v4, v8

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicLong;JLcom/winlator/MainActivity;Lcom/winlator/core/DownloadProgressDialog;)V

    invoke-static {v0, p1, v1, p0, v10}, Lcom/winlator/core/TarCompressorUtils;->extract(Lcom/winlator/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/winlator/core/TarCompressorUtils$OnExtractFileListener;)Z

    move-result v0

    .line 70
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 71
    const/16 v1, 0x17

    invoke-virtual {p3, v1}, Lcom/winlator/xenvironment/RootFS;->createRFSVersionFile(I)V

    .line 72
    invoke-static {p1}, Lcom/winlator/xenvironment/RootFSInstaller;->resetContainerRFSVersions(Landroid/content/Context;)V

    goto :goto_0

    .line 74
    :cond_0
    const v1, 0x7f100196

    invoke-static {p1, v1}, Lcom/winlator/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 76
    :goto_0
    invoke-virtual {p2}, Lcom/winlator/core/DownloadProgressDialog;->closeOnUiThread()V

    .line 77
    return-void
.end method

.method private static resetContainerRFSVersions(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 34
    new-instance v0, Lcom/winlator/container/ContainerManager;

    invoke-direct {v0, p0}, Lcom/winlator/container/ContainerManager;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, "manager":Lcom/winlator/container/ContainerManager;
    invoke-virtual {v0}, Lcom/winlator/container/ContainerManager;->getContainers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/container/Container;

    .line 36
    .local v2, "container":Lcom/winlator/container/Container;
    const-string v3, "rfsVersion"

    invoke-virtual {v2, v3}, Lcom/winlator/container/Container;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, "rfsVersion":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/winlator/container/Container;->getWineVersion()Ljava/lang/String;

    move-result-object v5

    .line 38
    .local v5, "wineVersion":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Lcom/winlator/core/WineInfo;->isMainWineVersion(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v6

    const/16 v7, 0x10

    if-gt v6, v7, :cond_0

    .line 39
    const-string v6, "wineprefixNeedsUpdate"

    const-string v7, "t"

    invoke-virtual {v2, v6, v7}, Lcom/winlator/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/winlator/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    invoke-virtual {v2}, Lcom/winlator/container/Container;->saveData()V

    .line 44
    .end local v2    # "container":Lcom/winlator/container/Container;
    .end local v4    # "rfsVersion":Ljava/lang/String;
    .end local v5    # "wineVersion":Ljava/lang/String;
    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method
