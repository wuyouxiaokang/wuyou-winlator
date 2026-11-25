.class public abstract Lcom/wuyouwin/core/ElfHelper;
.super Ljava/lang/Object;
.source "ElfHelper.java"


# direct methods
.method private static getEIClass(Ljava/io/File;)I
    .locals 5
    .param p0, "binFile"    # Ljava/io/File;

    .line 13
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .local v1, "inStream":Ljava/io/InputStream;
    const/16 v2, 0x34

    :try_start_1
    new-array v2, v2, [B

    .line 15
    .local v2, "header":[B
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    .line 16
    aget-byte v3, v2, v0

    const/16 v4, 0x7f

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    aget-byte v3, v2, v3

    const/16 v4, 0x45

    if-ne v3, v4, :cond_0

    const/4 v3, 0x2

    aget-byte v3, v2, v3

    const/16 v4, 0x4c

    if-ne v3, v4, :cond_0

    const/4 v3, 0x3

    aget-byte v3, v2, v3

    const/16 v4, 0x46

    if-ne v3, v4, :cond_0

    .line 17
    const/4 v3, 0x4

    aget-byte v3, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 17
    return v3

    .line 20
    .end local v1    # "inStream":Ljava/io/InputStream;
    .end local v2    # "header":[B
    :catch_0
    move-exception v1

    goto :goto_0

    .line 13
    .restart local v1    # "inStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 20
    .end local v1    # "inStream":Ljava/io/InputStream;
    :goto_0
    goto :goto_3

    .line 13
    .restart local v1    # "inStream":Ljava/io/InputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "binFile":Ljava/io/File;
    :goto_2
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 21
    .end local v1    # "inStream":Ljava/io/InputStream;
    .restart local p0    # "binFile":Ljava/io/File;
    :goto_3
    return v0
.end method

.method public static is64Bit(Ljava/io/File;)Z
    .locals 2
    .param p0, "binFile"    # Ljava/io/File;

    .line 29
    invoke-static {p0}, Lcom/wuyouwin/core/ElfHelper;->getEIClass(Ljava/io/File;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
