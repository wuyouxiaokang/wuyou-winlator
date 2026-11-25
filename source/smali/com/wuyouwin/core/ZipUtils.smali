.class public abstract Lcom/wuyouwin/core/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# direct methods
.method public static extract(Ljava/io/File;Ljava/io/File;)Z
    .locals 9
    .param p0, "source"    # Ljava/io/File;
    .param p1, "destination"    # Ljava/io/File;

    .line 74
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-direct {v1, p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 75
    .local v1, "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v2

    .line 76
    .local v2, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 77
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 78
    .local v3, "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 101
    .end local v1    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    .end local v3    # "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .end local v4    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    goto :goto_5

    .line 84
    .restart local v1    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .restart local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    .restart local v3    # "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .restart local v4    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isUnixSymlink()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 85
    invoke-virtual {v1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getUnixSymlink(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/wuyouwin/core/FileUtils;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {v1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .local v5, "inStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v8, 0x10000

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .local v6, "outStream":Ljava/io/BufferedOutputStream;
    :try_start_2
    invoke-static {v5, v6}, Lcom/wuyouwin/core/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v7, :cond_3

    .line 91
    :try_start_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_2

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 90
    :cond_2
    return v0

    .line 88
    .end local v6    # "outStream":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v6

    goto :goto_3

    .line 91
    .restart local v6    # "outStream":Ljava/io/BufferedOutputStream;
    :cond_3
    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v6    # "outStream":Ljava/io/BufferedOutputStream;
    if-eqz v5, :cond_4

    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 95
    .end local v5    # "inStream":Ljava/io/InputStream;
    :cond_4
    :goto_1
    const/16 v5, 0x1f9

    invoke-static {v4, v5}, Lcom/wuyouwin/core/FileUtils;->chmod(Ljava/io/File;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 96
    .end local v3    # "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .end local v4    # "file":Ljava/io/File;
    goto :goto_0

    .line 88
    .restart local v3    # "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "inStream":Ljava/io/InputStream;
    .restart local v6    # "outStream":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v7

    :try_start_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v8

    :try_start_8
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    .end local v3    # "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "inStream":Ljava/io/InputStream;
    .end local p0    # "source":Ljava/io/File;
    .end local p1    # "destination":Ljava/io/File;
    :goto_2
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v6    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v1    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .restart local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    .restart local v3    # "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "inStream":Ljava/io/InputStream;
    .restart local p0    # "source":Ljava/io/File;
    .restart local p1    # "destination":Ljava/io/File;
    :goto_3
    if-eqz v5, :cond_5

    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v7

    :try_start_a
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    nop

    .end local p0    # "source":Ljava/io/File;
    .end local p1    # "destination":Ljava/io/File;
    throw v6

    .line 98
    .end local v3    # "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "inStream":Ljava/io/InputStream;
    .restart local p0    # "source":Ljava/io/File;
    .restart local p1    # "destination":Ljava/io/File;
    :cond_6
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 99
    const/4 v0, 0x1

    return v0

    .line 101
    .end local v1    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    :goto_5
    nop

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public static read(Ljava/io/File;Ljava/lang/String;)[B
    .locals 13
    .param p0, "source"    # Ljava/io/File;
    .param p1, "localPath"    # Ljava/lang/String;

    .line 132
    const-string v0, "*"

    const/4 v1, 0x0

    .line 133
    .local v1, "pathIsPrefix":Z
    const/4 v2, 0x0

    .line 135
    .local v2, "pathIsSuffix":Z
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    const/4 v2, 0x1

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    const/4 v1, 0x1

    .line 142
    :cond_1
    :goto_0
    const-string v4, ""

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 143
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 145
    .local v0, "dataOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-direct {v4, p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 146
    .local v4, "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v5

    .line 147
    .local v5, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 148
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 149
    .local v6, "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 150
    .local v7, "entryName":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v7, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    goto :goto_2

    .line 165
    .end local v0    # "dataOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "pathIsPrefix":Z
    .end local v2    # "pathIsSuffix":Z
    .end local v4    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    .end local v6    # "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .end local v7    # "entryName":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_6

    .line 150
    .restart local v0    # "dataOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "pathIsPrefix":Z
    .restart local v2    # "pathIsSuffix":Z
    .restart local v4    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .restart local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    .restart local v6    # "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .restart local v7    # "entryName":Ljava/lang/String;
    :cond_2
    nop

    nop

    if-eqz v1, :cond_3

    invoke-virtual {v7, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    goto :goto_2

    :cond_3
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    :goto_2
    nop

    .line 152
    .local v8, "match":Z
    if-eqz v8, :cond_8

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isUnixSymlink()Z

    move-result v9

    if-nez v9, :cond_8

    .line 153
    invoke-virtual {v4, v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .local v9, "inStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v10, Ljava/io/BufferedOutputStream;

    const/high16 v11, 0x10000

    invoke-direct {v10, v0, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .local v10, "outStream":Ljava/io/BufferedOutputStream;
    :try_start_2
    invoke-static {v9, v10}, Lcom/wuyouwin/core/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v11, :cond_5

    .line 156
    :try_start_3
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v9, :cond_4

    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 155
    :cond_4
    return-object v3

    .line 153
    .end local v10    # "outStream":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v10

    goto :goto_4

    .line 156
    .restart local v10    # "outStream":Ljava/io/BufferedOutputStream;
    :cond_5
    :try_start_5
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v10    # "outStream":Ljava/io/BufferedOutputStream;
    if-eqz v9, :cond_6

    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 158
    .end local v9    # "inStream":Ljava/io/InputStream;
    :cond_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-object v3

    .line 153
    .restart local v9    # "inStream":Ljava/io/InputStream;
    .restart local v10    # "outStream":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v11

    :try_start_7
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v12

    :try_start_8
    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "dataOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "pathIsPrefix":Z
    .end local v2    # "pathIsSuffix":Z
    .end local v4    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    .end local v6    # "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .end local v7    # "entryName":Ljava/lang/String;
    .end local v8    # "match":Z
    .end local v9    # "inStream":Ljava/io/InputStream;
    .end local p0    # "source":Ljava/io/File;
    .end local p1    # "localPath":Ljava/lang/String;
    :goto_3
    throw v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v10    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v0    # "dataOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "pathIsPrefix":Z
    .restart local v2    # "pathIsSuffix":Z
    .restart local v4    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .restart local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    .restart local v6    # "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .restart local v7    # "entryName":Ljava/lang/String;
    .restart local v8    # "match":Z
    .restart local v9    # "inStream":Ljava/io/InputStream;
    .restart local p0    # "source":Ljava/io/File;
    .restart local p1    # "localPath":Ljava/lang/String;
    :goto_4
    if-eqz v9, :cond_7

    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v11

    :try_start_a
    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_5
    nop

    .end local p0    # "source":Ljava/io/File;
    .end local p1    # "localPath":Ljava/lang/String;
    throw v10

    .line 160
    .end local v6    # "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .end local v7    # "entryName":Ljava/lang/String;
    .end local v8    # "match":Z
    .end local v9    # "inStream":Ljava/io/InputStream;
    .restart local p0    # "source":Ljava/io/File;
    .restart local p1    # "localPath":Ljava/lang/String;
    :cond_8
    goto :goto_1

    .line 162
    :cond_9
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 163
    return-object v3

    .line 165
    .end local v0    # "dataOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "pathIsPrefix":Z
    .end local v2    # "pathIsSuffix":Z
    .end local v4    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    :goto_6
    nop

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    return-object v3
.end method
