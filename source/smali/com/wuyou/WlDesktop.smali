.class public final Lcom/wuyou/WlDesktop;
.super Ljava/lang/Object;
.source "WlDesktop.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/wuyouwin/container/Container;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/wuyouwin/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, ".wine/drive_c/users/xuser/Desktop"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/wuyou/WlDesktop;->fill(Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    const-string v2, ".wine/drive_c/users/Public/Desktop"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/wuyou/WlDesktop;->fill(Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    const-string v2, ".wine/drive_c/ProgramData/Microsoft/Windows/Start Menu/Programs"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/wuyou/WlDesktop;->fill(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static fill(Ljava/io/File;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    const-string v0, "\u6d4f\u89c8\u5668"

    const-string v1, "Z:/opt/apps/Supermium/chrome.exe"

    const-string v2, "https://www.baidu.com --no-sandbox --disable-gpu-sandbox"

    invoke-static {p0, v0, v1, v2}, Lcom/wuyou/WlDesktop;->link(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u5e94\u7528\u5546\u5e97"

    const-string v2, "https://sj.qq.com --no-sandbox --disable-gpu-sandbox"

    invoke-static {p0, v0, v1, v2}, Lcom/wuyou/WlDesktop;->link(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u8bb0\u4e8b\u672c"

    const-string v1, "C:/windows/notepad.exe"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/wuyou/WlDesktop;->link(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u547d\u4ee4\u63d0\u793a\u7b26"

    const-string v1, "C:/windows/system32/cmd.exe"

    invoke-static {p0, v0, v1, v2}, Lcom/wuyou/WlDesktop;->link(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u4efb\u52a1\u7ba1\u7406\u5668"

    const-string v1, "C:/windows/system32/taskmgr.exe"

    invoke-static {p0, v0, v1, v2}, Lcom/wuyou/WlDesktop;->link(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u6ce8\u518c\u8868\u7f16\u8f91\u5668"

    const-string v1, "C:/windows/regedit.exe"

    invoke-static {p0, v0, v1, v2}, Lcom/wuyou/WlDesktop;->link(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Wine \u914d\u7f6e"

    const-string v1, "C:/windows/system32/winecfg.exe"

    invoke-static {p0, v0, v1, v2}, Lcom/wuyou/WlDesktop;->link(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static link(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".lnk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/wuyouwin/win32/MSLink$LinkInfo;

    invoke-direct {v0}, Lcom/wuyouwin/win32/MSLink$LinkInfo;-><init>()V

    iput-object p2, v0, Lcom/wuyouwin/win32/MSLink$LinkInfo;->targetPath:Ljava/lang/String;

    iput-object p3, v0, Lcom/wuyouwin/win32/MSLink$LinkInfo;->arguments:Ljava/lang/String;

    iput-object p2, v0, Lcom/wuyouwin/win32/MSLink$LinkInfo;->iconLocation:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/wuyouwin/win32/MSLink;->createFile(Lcom/wuyouwin/win32/MSLink$LinkInfo;Ljava/io/File;)Z

    return-void
.end method
