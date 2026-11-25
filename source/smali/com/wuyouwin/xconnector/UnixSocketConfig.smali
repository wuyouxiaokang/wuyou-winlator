.class public Lcom/wuyouwin/xconnector/UnixSocketConfig;
.super Ljava/lang/Object;
.source "UnixSocketConfig.java"


# instance fields
.field public final path:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/wuyouwin/xconnector/UnixSocketConfig;->path:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/wuyouwin/xconnector/UnixSocketConfig;
    .locals 4
    .param p0, "rootPath"    # Ljava/lang/String;
    .param p1, "relativePath"    # Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .local v0, "socketFile":Ljava/io/File;
    invoke-static {p1}, Lcom/wuyouwin/core/FileUtils;->getDirname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "dirname":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 25
    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Lcom/wuyouwin/core/FileUtils;->getDirname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .local v2, "socketDir":Ljava/io/File;
    invoke-static {v2}, Lcom/wuyouwin/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 27
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 28
    .end local v2    # "socketDir":Ljava/io/File;
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 31
    :goto_0
    new-instance v2, Lcom/wuyouwin/xconnector/UnixSocketConfig;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/wuyouwin/xconnector/UnixSocketConfig;-><init>(Ljava/lang/String;)V

    return-object v2
.end method
