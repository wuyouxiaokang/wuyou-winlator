.class public abstract Lcom/wuyouwin/box64/Box64Utils;
.super Ljava/lang/Object;
.source "Box64Utils.java"


# direct methods
.method public static extractBinVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .line 16
    const/4 v0, 0x0

    const/16 v1, 0x20

    const-string v2, ""

    new-instance v3, Ljava/io/File;

    invoke-static {p0}, Lcom/wuyouwin/xenvironment/RootFS;->find(Landroid/content/Context;)Lcom/wuyouwin/xenvironment/RootFS;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wuyouwin/xenvironment/RootFS;->getRootDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "/usr/local/bin/box64"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .local v3, "binFile":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v6, 0x10000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .local v4, "inStream":Ljava/io/BufferedInputStream;
    const/16 v5, 0x1000

    :try_start_1
    new-array v5, v5, [B

    .line 20
    .local v5, "buffer":[B
    const/16 v6, 0xd

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    .line 21
    .local v6, "str":[B
    :goto_0
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "bytesRead":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_2

    .line 22
    invoke-static {v5, v0, v8, v6}, Lcom/wuyouwin/core/ArrayUtils;->indexOf([BII[B)I

    move-result v7

    .line 23
    .local v7, "index":I
    if-eq v7, v9, :cond_1

    .line 24
    array-length v10, v6

    add-int/2addr v10, v7

    .line 25
    .local v10, "start":I
    const/4 v11, 0x1

    new-array v11, v11, [B

    aput-byte v1, v11, v0

    invoke-static {v5, v10, v8, v11}, Lcom/wuyouwin/core/ArrayUtils;->indexOf([BII[B)I

    move-result v0

    .line 26
    .local v0, "end":I
    if-eq v0, v9, :cond_0

    new-instance v1, Ljava/lang/String;

    sub-int v9, v0, v10

    invoke-direct {v1, v5, v10, v9}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 17
    .end local v0    # "end":I
    .end local v5    # "buffer":[B
    .end local v6    # "str":[B
    .end local v7    # "index":I
    .end local v8    # "bytesRead":I
    .end local v10    # "start":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 26
    .restart local v0    # "end":I
    .restart local v5    # "buffer":[B
    .restart local v6    # "str":[B
    .restart local v7    # "index":I
    .restart local v8    # "bytesRead":I
    .restart local v10    # "start":I
    :cond_0
    move-object v1, v2

    .line 29
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 26
    return-object v1

    .line 30
    .end local v0    # "end":I
    .end local v4    # "inStream":Ljava/io/BufferedInputStream;
    .end local v5    # "buffer":[B
    .end local v6    # "str":[B
    .end local v7    # "index":I
    .end local v8    # "bytesRead":I
    .end local v10    # "start":I
    :catch_0
    move-exception v0

    goto :goto_2

    .line 23
    .restart local v4    # "inStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "buffer":[B
    .restart local v6    # "str":[B
    .restart local v7    # "index":I
    .restart local v8    # "bytesRead":I
    :cond_1
    nop

    .line 28
    .end local v7    # "index":I
    goto :goto_0

    .line 21
    :cond_2
    nop

    .line 29
    .end local v5    # "buffer":[B
    .end local v6    # "str":[B
    .end local v8    # "bytesRead":I
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 30
    .end local v4    # "inStream":Ljava/io/BufferedInputStream;
    :goto_2
    goto :goto_5

    .line 17
    .restart local v4    # "inStream":Ljava/io/BufferedInputStream;
    :goto_3
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "binFile":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    :goto_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 31
    .end local v4    # "inStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "binFile":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    :goto_5
    return-object v2

    :array_0
    .array-data 1
        0x42t
        0x6ft
        0x78t
        0x36t
        0x34t
        0x20t
        0x61t
        0x72t
        0x6dt
        0x36t
        0x34t
        0x20t
        0x76t
    .end array-data
.end method
