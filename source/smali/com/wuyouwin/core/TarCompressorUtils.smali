.class public abstract Lcom/wuyouwin/core/TarCompressorUtils;
.super Ljava/lang/Object;
.source "TarCompressorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/core/TarCompressorUtils$Type;,
        Lcom/wuyouwin/core/TarCompressorUtils$OnExtractFileListener;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$PjRG24tzkwNzEtq4sSS9t5GTTyw(Ljava/util/concurrent/atomic/AtomicLong;Ljava/io/File;J)Ljava/io/File;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/wuyouwin/core/TarCompressorUtils;->lambda$getContentLength$0(Ljava/util/concurrent/atomic/AtomicLong;Ljava/io/File;J)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static addDirectory(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p0, "tar"    # Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .param p1, "folder"    # Ljava/io/File;
    .param p2, "basePath"    # Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 59
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 61
    .local v3, "file":Ljava/io/File;
    invoke-static {v3}, Lcom/wuyouwin/core/FileUtils;->isSymlink(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/wuyouwin/core/TarCompressorUtils;->addLinkFile(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, "entryName":Ljava/lang/String;
    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 67
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->closeArchiveEntry()V

    .line 68
    invoke-static {p0, v3, v4}, Lcom/wuyouwin/core/TarCompressorUtils;->addDirectory(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .end local v4    # "entryName":Ljava/lang/String;
    goto :goto_1

    .line 70
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/wuyouwin/core/TarCompressorUtils;->addFile(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .end local v3    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_3
    return-void
.end method

.method private static addFile(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p0, "tar"    # Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "entryName"    # Ljava/lang/String;

    .line 38
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 39
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .local v0, "inStream":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v0, p0}, Lcom/wuyouwin/core/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 42
    .end local v0    # "inStream":Ljava/io/BufferedInputStream;
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->closeArchiveEntry()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 44
    :goto_0
    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    .line 39
    .restart local v0    # "inStream":Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "tar":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "entryName":Ljava/lang/String;
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 45
    .end local v0    # "inStream":Ljava/io/BufferedInputStream;
    .restart local p0    # "tar":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "entryName":Ljava/lang/String;
    :goto_2
    return-void
.end method

.method private static addLinkFile(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p0, "tar"    # Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "entryName"    # Ljava/lang/String;

    .line 49
    :try_start_0
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    const/16 v1, 0x32

    invoke-direct {v0, p2, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/lang/String;B)V

    .line 50
    .local v0, "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    invoke-static {p1}, Lcom/wuyouwin/core/FileUtils;->readSymlink(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setLinkName(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 52
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->closeArchiveEntry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 55
    :goto_1
    return-void
.end method

.method public static compress(Lcom/wuyouwin/core/TarCompressorUtils$Type;Ljava/io/File;Ljava/io/File;I)V
    .locals 1
    .param p0, "type"    # Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "level"    # I

    .line 79
    filled-new-array {p1}, [Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/wuyouwin/core/TarCompressorUtils;->compress(Lcom/wuyouwin/core/TarCompressorUtils$Type;[Ljava/io/File;Ljava/io/File;I)V

    .line 80
    return-void
.end method

.method public static compress(Lcom/wuyouwin/core/TarCompressorUtils$Type;[Ljava/io/File;Ljava/io/File;I)V
    .locals 9
    .param p0, "type"    # Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .param p1, "files"    # [Ljava/io/File;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "level"    # I

    .line 83
    :try_start_0
    invoke-static {p0, p2, p3}, Lcom/wuyouwin/core/TarCompressorUtils;->getCompressorOutputStream(Lcom/wuyouwin/core/TarCompressorUtils$Type;Ljava/io/File;I)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .local v0, "outStream":Ljava/io/OutputStream;
    :try_start_1
    new-instance v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    .local v1, "tar":Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;
    const/4 v2, 0x2

    :try_start_2
    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->setLongFileMode(I)V

    .line 86
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 86
    :cond_0
    move v4, v3

    :goto_0
    move v2, v4

    .line 87
    .local v2, "skipFirstEntry":Z
    array-length v4, p1

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v5, p1, v3

    .line 88
    .local v5, "file":Ljava/io/File;
    invoke-static {v5}, Lcom/wuyouwin/core/FileUtils;->isSymlink(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 89
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/wuyouwin/core/TarCompressorUtils;->addLinkFile(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_2

    .line 91
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 92
    const-string v6, ""

    .line 93
    .local v6, "basePath":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 94
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 95
    invoke-virtual {v1, v5, v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 96
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->closeArchiveEntry()V

    .line 98
    :cond_2
    invoke-static {v1, v5, v6}, Lcom/wuyouwin/core/TarCompressorUtils;->addDirectory(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;Ljava/lang/String;)V

    .line 99
    .end local v6    # "basePath":Ljava/lang/String;
    goto :goto_2

    .line 100
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/wuyouwin/core/TarCompressorUtils;->addFile(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;Ljava/lang/String;)V

    .line 87
    .end local v5    # "file":Ljava/io/File;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 102
    :cond_4
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    .end local v2    # "skipFirstEntry":Z
    :try_start_3
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v1    # "tar":Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;
    if-eqz v0, :cond_5

    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 104
    .end local v0    # "outStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    :cond_5
    :goto_3
    goto :goto_8

    .line 83
    .restart local v0    # "outStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v1

    goto :goto_6

    .restart local v1    # "tar":Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;
    :goto_4
    :try_start_5
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v3

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "outStream":Ljava/io/OutputStream;
    .end local p0    # "type":Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .end local p1    # "files":[Ljava/io/File;
    .end local p2    # "destination":Ljava/io/File;
    .end local p3    # "level":I
    :goto_5
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v1    # "tar":Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;
    .restart local v0    # "outStream":Ljava/io/OutputStream;
    .restart local p0    # "type":Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .restart local p1    # "files":[Ljava/io/File;
    .restart local p2    # "destination":Ljava/io/File;
    .restart local p3    # "level":I
    :goto_6
    if-eqz v0, :cond_6

    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_7
    nop

    .end local p0    # "type":Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .end local p1    # "files":[Ljava/io/File;
    .end local p2    # "destination":Ljava/io/File;
    .end local p3    # "level":I
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 105
    .end local v0    # "outStream":Ljava/io/OutputStream;
    .restart local p0    # "type":Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .restart local p1    # "files":[Ljava/io/File;
    .restart local p2    # "destination":Ljava/io/File;
    .restart local p3    # "level":I
    :goto_8
    return-void
.end method

.method public static extract(Lcom/wuyouwin/core/TarCompressorUtils$Type;Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)Z
    .locals 1
    .param p0, "type"    # Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # Landroid/net/Uri;
    .param p3, "destination"    # Ljava/io/File;

    .line 121
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/wuyouwin/core/TarCompressorUtils;->extract(Lcom/wuyouwin/core/TarCompressorUtils$Type;Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Lcom/wuyouwin/core/TarCompressorUtils$OnExtractFileListener;)Z

    move-result v0

    return v0
.end method

.method public static extract(Lcom/wuyouwin/core/TarCompressorUtils$Type;Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Lcom/wuyouwin/core/TarCompressorUtils$OnExtractFileListener;)Z
    .locals 2
    .param p0, "type"    # Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # Landroid/net/Uri;
    .param p3, "destination"    # Ljava/io/File;
    .param p4, "onExtractFileListener"    # Lcom/wuyouwin/core/TarCompressorUtils$OnExtractFileListener;

    .line 125
    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 127
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {p0, v1, p3, p4}, Lcom/wuyouwin/core/TarCompressorUtils;->extract(Lcom/wuyouwin/core/TarCompressorUtils$Type;Ljava/io/InputStream;Ljava/io/File;Lcom/wuyouwin/core/TarCompressorUtils$OnExtractFileListener;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/io/FileNotFoundException;
    return v0
.end method

.method public static extract(Lcom/wuyouwin/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z
    .locals 1
    .param p0, "type"    # Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "assetFile"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/io/File;

    .line 108
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/wuyouwin/core/TarCompressorUtils;->extract(Lcom/wuyouwin/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/wuyouwin/core/TarCompressorUtils$OnExtractFileListener;)Z

    move-result v0

    return v0
.end method

.method public static extract(Lcom/wuyouwin/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/wuyouwin/core/TarCompressorUtils$OnExtractFileListener;)Z
    .locals 2
    .param p0, "type"    # Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "assetFile"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/io/File;
    .param p4, "onExtractFileListener"    # Lcom/wuyouwin/core/TarCompressorUtils$OnExtractFileListener;

    .line 113
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p0, v0, p3, p4}, Lcom/wuyouwin/core/TarCompressorUtils;->extract(Lcom/wuyouwin/core/TarCompressorUtils$Type;Ljava/io/InputStream;Ljava/io/File;Lcom/wuyouwin/core/TarCompressorUtils$OnExtractFileListener;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public static extract(Lcom/wuyouwin/core/TarCompressorUtils$Type;Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p0, "type"    # Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .param p1, "source"    # Ljava/io/File;
    .param p2, "destination"    # Ljava/io/File;

    .line 135
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/wuyouwin/core/TarCompressorUtils;->extract(Lcom/wuyouwin/core/TarCompressorUtils$Type;Ljava/io/File;Ljava/io/File;Lcom/wuyouwin/core/TarCompressorUtils$OnExtractFileListener;)Z

    move-result v0

    return v0
.end method

.method public static extract(Lcom/wuyouwin/core/TarCompressorUtils$Type;Ljava/io/File;Ljava/io/File;Lcom/wuyouwin/core/TarCompressorUtils$OnExtractFileListener;)Z
    .locals 4
    .param p0, "type"    # Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .param p1, "source"    # Ljava/io/File;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "onExtractFileListener"    # Lcom/wuyouwin/core/TarCompressorUtils$OnExtractFileListener;

    .line 139
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    goto :goto_0

    .line 141
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v3, 0x10000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-static {p0, v1, p2, p3}, Lcom/wuyouwin/core/TarCompressorUtils;->extract(Lcom/wuyouwin/core/TarCompressorUtils$Type;Ljava/io/InputStream;Ljava/io/File;Lcom/wuyouwin/core/TarCompressorUtils$OnExtractFileListener;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/io/FileNotFoundException;
    return v0

    .line 139
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    return v0
.end method

.method private static extract(Lcom/wuyouwin/core/TarCompressorUtils$Type;Ljava/io/InputStream;Ljava/io/File;Lcom/wuyouwin/core/TarCompressorUtils$OnExtractFileListener;)Z
    .locals 8
    .param p0, "type"    # Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .param p1, "source"    # Ljava/io/InputStream;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "onExtractFileListener"    # Lcom/wuyouwin/core/TarCompressorUtils$OnExtractFileListener;

    .line 149
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 150
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/wuyouwin/core/TarCompressorUtils;->getCompressorInputStream(Lcom/wuyouwin/core/TarCompressorUtils$Type;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .local v1, "inStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    invoke-direct {v2, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 153
    .local v2, "tar":Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-object v4, v3

    .local v4, "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    if-eqz v3, :cond_8

    .line 154
    invoke-virtual {v2, v4}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->canReadEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 155
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 157
    .local v3, "file":Ljava/io/File;
    if-eqz p3, :cond_2

    .line 158
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v5

    invoke-interface {p3, v3, v5, v6}, Lcom/wuyouwin/core/TarCompressorUtils$OnExtractFileListener;->onExtractFile(Ljava/io/File;J)Ljava/io/File;

    move-result-object v5

    move-object v3, v5

    .line 159
    if-nez v3, :cond_2

    goto :goto_0

    .line 150
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 162
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    :cond_2
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 163
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    goto :goto_2

    .line 166
    :cond_3
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isSymbolicLink()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 167
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getLinkName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/wuyouwin/core/FileUtils;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 170
    :cond_4
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v7, 0x10000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    .local v5, "outStream":Ljava/io/BufferedOutputStream;
    :try_start_3
    invoke-static {v2, v5}, Lcom/wuyouwin/core/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v6, :cond_6

    .line 172
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_5

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 180
    .end local v1    # "inStream":Ljava/io/InputStream;
    .end local v2    # "tar":Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .end local v5    # "outStream":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v1

    goto :goto_8

    .line 171
    .restart local v1    # "inStream":Ljava/io/InputStream;
    .restart local v2    # "tar":Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .restart local v5    # "outStream":Ljava/io/BufferedOutputStream;
    :cond_5
    :goto_1
    return v0

    .line 150
    .end local v2    # "tar":Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .end local v5    # "outStream":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v2

    goto :goto_6

    .line 172
    .restart local v2    # "tar":Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .restart local v5    # "outStream":Ljava/io/BufferedOutputStream;
    :cond_6
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 176
    .end local v5    # "outStream":Ljava/io/BufferedOutputStream;
    :cond_7
    :goto_2
    const/16 v5, 0x1f9

    invoke-static {v3, v5}, Lcom/wuyouwin/core/FileUtils;->chmod(Ljava/io/File;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 177
    .end local v3    # "file":Ljava/io/File;
    goto :goto_0

    .line 170
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "outStream":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v6

    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v7

    :try_start_9
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "inStream":Ljava/io/InputStream;
    .end local v2    # "tar":Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .end local p0    # "type":Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .end local p1    # "source":Ljava/io/InputStream;
    .end local p2    # "destination":Ljava/io/File;
    .end local p3    # "onExtractFileListener":Lcom/wuyouwin/core/TarCompressorUtils$OnExtractFileListener;
    :goto_3
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 178
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v1    # "inStream":Ljava/io/InputStream;
    .restart local v2    # "tar":Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .restart local p0    # "type":Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .restart local p1    # "source":Ljava/io/InputStream;
    .restart local p2    # "destination":Ljava/io/File;
    .restart local p3    # "onExtractFileListener":Lcom/wuyouwin/core/TarCompressorUtils$OnExtractFileListener;
    :cond_8
    nop

    .line 179
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v1, :cond_9

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 178
    :cond_9
    const/4 v0, 0x1

    return v0

    .line 150
    .end local v4    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    :goto_4
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v4

    :try_start_d
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "inStream":Ljava/io/InputStream;
    .end local p0    # "type":Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .end local p1    # "source":Ljava/io/InputStream;
    .end local p2    # "destination":Ljava/io/File;
    .end local p3    # "onExtractFileListener":Lcom/wuyouwin/core/TarCompressorUtils$OnExtractFileListener;
    :goto_5
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .end local v2    # "tar":Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .restart local v1    # "inStream":Ljava/io/InputStream;
    .restart local p0    # "type":Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .restart local p1    # "source":Ljava/io/InputStream;
    .restart local p2    # "destination":Ljava/io/File;
    .restart local p3    # "onExtractFileListener":Lcom/wuyouwin/core/TarCompressorUtils$OnExtractFileListener;
    :goto_6
    if-eqz v1, :cond_a

    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v3

    :try_start_f
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_7
    nop

    .end local p0    # "type":Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .end local p1    # "source":Ljava/io/InputStream;
    .end local p2    # "destination":Ljava/io/File;
    .end local p3    # "onExtractFileListener":Lcom/wuyouwin/core/TarCompressorUtils$OnExtractFileListener;
    throw v2
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    .line 180
    .end local v1    # "inStream":Ljava/io/InputStream;
    .restart local p0    # "type":Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .restart local p1    # "source":Ljava/io/InputStream;
    .restart local p2    # "destination":Ljava/io/File;
    .restart local p3    # "onExtractFileListener":Lcom/wuyouwin/core/TarCompressorUtils$OnExtractFileListener;
    :goto_8
    nop

    .line 181
    .local v1, "e":Ljava/io/IOException;
    return v0
.end method

.method private static getCompressorInputStream(Lcom/wuyouwin/core/TarCompressorUtils$Type;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .param p0, "type"    # Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .param p1, "source"    # Ljava/io/InputStream;

    .line 231
    sget-object v0, Lcom/wuyouwin/core/TarCompressorUtils$Type;->XZ:Lcom/wuyouwin/core/TarCompressorUtils$Type;

    if-ne p0, v0, :cond_0

    .line 232
    new-instance v0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 234
    :cond_0
    sget-object v0, Lcom/wuyouwin/core/TarCompressorUtils$Type;->ZSTD:Lcom/wuyouwin/core/TarCompressorUtils$Type;

    if-ne p0, v0, :cond_1

    .line 235
    new-instance v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 237
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getCompressorOutputStream(Lcom/wuyouwin/core/TarCompressorUtils$Type;Ljava/io/File;I)Ljava/io/OutputStream;
    .locals 4
    .param p0, "type"    # Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .param p1, "destination"    # Ljava/io/File;
    .param p2, "level"    # I

    .line 241
    sget-object v0, Lcom/wuyouwin/core/TarCompressorUtils$Type;->XZ:Lcom/wuyouwin/core/TarCompressorUtils$Type;

    const/high16 v1, 0x10000

    if-ne p0, v0, :cond_0

    .line 242
    new-instance v0, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v0, v2, p2}, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-object v0

    .line 244
    :cond_0
    sget-object v0, Lcom/wuyouwin/core/TarCompressorUtils$Type;->ZSTD:Lcom/wuyouwin/core/TarCompressorUtils$Type;

    if-ne p0, v0, :cond_1

    .line 245
    new-instance v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v0, v2, p2}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-object v0

    .line 247
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getContentLength(Lcom/wuyouwin/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)J
    .locals 3
    .param p0, "type"    # Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "assetFile"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/io/File;

    .line 186
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 187
    .local v0, "totalSizeRef":Ljava/util/concurrent/atomic/AtomicLong;
    new-instance v1, Lcom/wuyouwin/core/TarCompressorUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/wuyouwin/core/TarCompressorUtils$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicLong;)V

    invoke-static {p0, p1, p2, p3, v1}, Lcom/wuyouwin/core/TarCompressorUtils;->extract(Lcom/wuyouwin/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/wuyouwin/core/TarCompressorUtils$OnExtractFileListener;)Z

    .line 191
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    return-wide v1
.end method

.method private static synthetic lambda$getContentLength$0(Ljava/util/concurrent/atomic/AtomicLong;Ljava/io/File;J)Ljava/io/File;
    .locals 1
    .param p0, "totalSizeRef"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "size"    # J

    .line 188
    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public static read(Lcom/wuyouwin/core/TarCompressorUtils$Type;Ljava/io/File;Ljava/lang/String;)[B
    .locals 12
    .param p0, "type"    # Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .param p1, "source"    # Ljava/io/File;
    .param p2, "localPath"    # Ljava/lang/String;

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "pathIsPrefix":Z
    const/4 v1, 0x0

    .line 198
    .local v1, "pathIsSuffix":Z
    const-string v2, "*"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    const/4 v1, 0x1

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    const/4 v0, 0x1

    .line 205
    :cond_1
    :goto_0
    const-string v3, ""

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 206
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 208
    .local v2, "dataOutputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v6, 0x10000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-static {p0, v4}, Lcom/wuyouwin/core/TarCompressorUtils;->getCompressorInputStream(Lcom/wuyouwin/core/TarCompressorUtils$Type;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .local v4, "inStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    invoke-direct {v5, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 211
    .local v5, "tar":Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-object v8, v7

    .local v8, "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    if-eqz v7, :cond_9

    .line 212
    invoke-virtual {v5, v8}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->canReadEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    .line 213
    :cond_2
    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 214
    .local v7, "entryName":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v7, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    goto :goto_2

    .line 208
    .end local v7    # "entryName":Ljava/lang/String;
    .end local v8    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    :catchall_0
    move-exception v6

    goto :goto_5

    .line 214
    .restart local v7    # "entryName":Ljava/lang/String;
    .restart local v8    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    :cond_3
    nop

    nop

    if-eqz v0, :cond_4

    invoke-virtual {v7, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    goto :goto_2

    :cond_4
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    :goto_2
    nop

    .line 216
    .local v9, "match":Z
    if-eqz v9, :cond_8

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isSymbolicLink()Z

    move-result v10

    if-nez v10, :cond_8

    .line 217
    new-instance v10, Ljava/io/BufferedOutputStream;

    invoke-direct {v10, v2, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v10

    .line 218
    .local v6, "outStream":Ljava/io/BufferedOutputStream;
    :try_start_3
    invoke-static {v5, v6}, Lcom/wuyouwin/core/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v10, :cond_6

    .line 219
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 224
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v4, :cond_5

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    .line 225
    .end local v4    # "inStream":Ljava/io/InputStream;
    .end local v5    # "tar":Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .end local v6    # "outStream":Ljava/io/BufferedOutputStream;
    .end local v7    # "entryName":Ljava/lang/String;
    .end local v8    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .end local v9    # "match":Z
    :catch_0
    move-exception v4

    goto :goto_9

    .line 218
    .restart local v4    # "inStream":Ljava/io/InputStream;
    .restart local v5    # "tar":Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .restart local v6    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v7    # "entryName":Ljava/lang/String;
    .restart local v8    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .restart local v9    # "match":Z
    :cond_5
    :goto_3
    return-object v3

    .line 208
    .end local v5    # "tar":Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .end local v6    # "outStream":Ljava/io/BufferedOutputStream;
    .end local v7    # "entryName":Ljava/lang/String;
    .end local v8    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .end local v9    # "match":Z
    :catchall_1
    move-exception v5

    goto :goto_7

    .line 219
    .restart local v5    # "tar":Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .restart local v6    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v7    # "entryName":Ljava/lang/String;
    .restart local v8    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .restart local v9    # "match":Z
    :cond_6
    :try_start_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 220
    .end local v6    # "outStream":Ljava/io/BufferedOutputStream;
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 224
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v4, :cond_7

    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 220
    :cond_7
    return-object v6

    .line 217
    .restart local v6    # "outStream":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v10

    :try_start_a
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v11

    :try_start_b
    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "pathIsPrefix":Z
    .end local v1    # "pathIsSuffix":Z
    .end local v2    # "dataOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "inStream":Ljava/io/InputStream;
    .end local v5    # "tar":Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .end local p0    # "type":Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .end local p1    # "source":Ljava/io/File;
    .end local p2    # "localPath":Ljava/lang/String;
    :goto_4
    throw v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 222
    .end local v6    # "outStream":Ljava/io/BufferedOutputStream;
    .end local v7    # "entryName":Ljava/lang/String;
    .end local v9    # "match":Z
    .restart local v0    # "pathIsPrefix":Z
    .restart local v1    # "pathIsSuffix":Z
    .restart local v2    # "dataOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "inStream":Ljava/io/InputStream;
    .restart local v5    # "tar":Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .restart local p0    # "type":Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .restart local p1    # "source":Ljava/io/File;
    .restart local p2    # "localPath":Ljava/lang/String;
    :cond_8
    goto :goto_1

    .line 223
    :cond_9
    nop

    .line 224
    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v4, :cond_a

    :try_start_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    .line 223
    :cond_a
    return-object v3

    .line 208
    .end local v8    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    :goto_5
    :try_start_e
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v7

    :try_start_f
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "pathIsPrefix":Z
    .end local v1    # "pathIsSuffix":Z
    .end local v2    # "dataOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "inStream":Ljava/io/InputStream;
    .end local p0    # "type":Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .end local p1    # "source":Ljava/io/File;
    .end local p2    # "localPath":Ljava/lang/String;
    :goto_6
    throw v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .end local v5    # "tar":Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .restart local v0    # "pathIsPrefix":Z
    .restart local v1    # "pathIsSuffix":Z
    .restart local v2    # "dataOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "inStream":Ljava/io/InputStream;
    .restart local p0    # "type":Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .restart local p1    # "source":Ljava/io/File;
    .restart local p2    # "localPath":Ljava/lang/String;
    :goto_7
    if-eqz v4, :cond_b

    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v6

    :try_start_11
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_8
    nop

    .end local v0    # "pathIsPrefix":Z
    .end local v1    # "pathIsSuffix":Z
    .end local v2    # "dataOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "type":Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .end local p1    # "source":Ljava/io/File;
    .end local p2    # "localPath":Ljava/lang/String;
    throw v5
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0

    .line 225
    .end local v4    # "inStream":Ljava/io/InputStream;
    .restart local v0    # "pathIsPrefix":Z
    .restart local v1    # "pathIsSuffix":Z
    .restart local v2    # "dataOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "type":Lcom/wuyouwin/core/TarCompressorUtils$Type;
    .restart local p1    # "source":Ljava/io/File;
    .restart local p2    # "localPath":Ljava/lang/String;
    :goto_9
    nop

    .line 226
    .local v4, "e":Ljava/io/IOException;
    return-object v3
.end method
