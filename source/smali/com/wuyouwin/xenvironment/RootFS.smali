.class public Lcom/wuyouwin/xenvironment/RootFS;
.super Ljava/lang/Object;
.source "RootFS.java"


# instance fields
.field private final rootDir:Ljava/io/File;

.field private winePath:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "rootDir"    # Ljava/io/File;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "/opt/wine"

    iput-object v0, p0, Lcom/wuyouwin/xenvironment/RootFS;->winePath:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/wuyouwin/xenvironment/RootFS;->rootDir:Ljava/io/File;

    .line 24
    return-void
.end method

.method public static find(Landroid/content/Context;)Lcom/wuyouwin/xenvironment/RootFS;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 27
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "imagefs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .local v0, "legacyDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "rootfs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    .local v1, "rootDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 30
    :cond_0
    new-instance v2, Lcom/wuyouwin/xenvironment/RootFS;

    invoke-direct {v2, v1}, Lcom/wuyouwin/xenvironment/RootFS;-><init>(Ljava/io/File;)V

    return-object v2
.end method

.method public static getDosUserCachePath()Ljava/lang/String;
    .locals 4

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Z:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    const-string v2, "\\"

    const-string v3, "/home/xuser/.cache"

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDosUserConfigPath()Ljava/lang/String;
    .locals 4

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Z:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    const-string v2, "\\"

    const-string v3, "/home/xuser/.config"

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getImageInfoDir()Ljava/io/File;
    .locals 3

    .line 71
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wuyouwin/xenvironment/RootFS;->rootDir:Ljava/io/File;

    const-string v2, ".winlator"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public createRFSVersionFile(I)V
    .locals 2
    .param p1, "version"    # I

    .line 51
    invoke-direct {p0}, Lcom/wuyouwin/xenvironment/RootFS;->getImageInfoDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 52
    invoke-virtual {p0}, Lcom/wuyouwin/xenvironment/RootFS;->getRFSVersionFile()Ljava/io/File;

    move-result-object v0

    .line 54
    .local v0, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 55
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wuyouwin/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public getInstalledWineDir()Ljava/io/File;
    .locals 3

    .line 79
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wuyouwin/xenvironment/RootFS;->rootDir:Ljava/io/File;

    const-string v2, "/opt/installed-wine"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLibDir()Ljava/io/File;
    .locals 3

    .line 87
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wuyouwin/xenvironment/RootFS;->rootDir:Ljava/io/File;

    const-string v2, "/usr/lib"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getRFSVersionFile()Ljava/io/File;
    .locals 3

    .line 75
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/wuyouwin/xenvironment/RootFS;->getImageInfoDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".rfs_version"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getRootDir()Ljava/io/File;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/RootFS;->rootDir:Ljava/io/File;

    return-object v0
.end method

.method public getTmpDir()Ljava/io/File;
    .locals 3

    .line 83
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wuyouwin/xenvironment/RootFS;->rootDir:Ljava/io/File;

    const-string v2, "/tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getVersion()I
    .locals 3

    .line 42
    invoke-virtual {p0}, Lcom/wuyouwin/xenvironment/RootFS;->getRFSVersionFile()Ljava/io/File;

    move-result-object v0

    .line 43
    .local v0, "rfsVersionFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/wuyouwin/core/FileUtils;->readLines(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_0
    return v2
.end method

.method public getWinePath()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/RootFS;->winePath:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/RootFS;->rootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wuyouwin/xenvironment/RootFS;->getRFSVersionFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setWinePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "winePath"    # Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/RootFS;->rootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/wuyouwin/core/FileUtils;->toRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wuyouwin/xenvironment/RootFS;->winePath:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/RootFS;->rootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
