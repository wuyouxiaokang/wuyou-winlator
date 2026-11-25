.class public abstract Lcom/winlator/core/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public static synthetic $r8$lambda$SjulmbBZrxYbhXFjuQfz3YRNzIY(Ljava/io/File;Lcom/winlator/core/Callback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/winlator/core/FileUtils;->lambda$getSizeAsync$0(Ljava/io/File;Lcom/winlator/core/Callback;)V

    return-void
.end method

.method public static chmod(Ljava/io/File;I)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # I

    .line 263
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 266
    :goto_1
    return-void
.end method

.method public static clear(Ljava/io/File;)Z
    .locals 6
    .param p0, "targetFile"    # Ljava/io/File;

    .line 123
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 124
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 126
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 127
    array-length v2, v1

    move v3, v0

    :goto_0
    nop

    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 128
    .local v4, "file":Ljava/io/File;
    invoke-static {v4}, Lcom/winlator/core/FileUtils;->delete(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1

    return v0

    .line 127
    .end local v4    # "file":Ljava/io/File;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "files":[Ljava/io/File;
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static copy(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetFile"    # Ljava/lang/String;
    .param p2, "dstFile"    # Ljava/io/File;

    .line 194
    invoke-static {p0, p1}, Lcom/winlator/core/FileUtils;->isDirectory(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 197
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "filenames":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 199
    .local v3, "filename":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/winlator/core/StringUtils;->addEndSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "relativePath":Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/winlator/core/FileUtils;->isDirectory(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 201
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v4, v5}, Lcom/winlator/core/FileUtils;->copy(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_1

    .line 206
    .end local v0    # "filenames":[Ljava/lang/String;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "relativePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 203
    .restart local v0    # "filenames":[Ljava/lang/String;
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v4    # "relativePath":Ljava/lang/String;
    :cond_1
    invoke-static {p0, v4, p2}, Lcom/winlator/core/FileUtils;->copy(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "relativePath":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 206
    .end local v0    # "filenames":[Ljava/lang/String;
    :goto_2
    goto :goto_7

    .line 209
    :cond_3
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/winlator/core/FileUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p2, v0

    .line 210
    :cond_4
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 211
    .local v0, "parent":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 212
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 213
    .local v1, "inStream":Ljava/io/InputStream;
    :try_start_2
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v4, 0x10000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    .local v2, "outStream":Ljava/io/BufferedOutputStream;
    :try_start_3
    invoke-static {v1, v2}, Lcom/winlator/core/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 215
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "outStream":Ljava/io/BufferedOutputStream;
    if-eqz v1, :cond_6

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 216
    .end local v1    # "inStream":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    :cond_6
    :goto_3
    goto :goto_7

    .line 212
    .restart local v1    # "inStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    goto :goto_5

    .restart local v2    # "outStream":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v4

    :try_start_7
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "parent":Ljava/io/File;
    .end local v1    # "inStream":Ljava/io/InputStream;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "assetFile":Ljava/lang/String;
    .end local p2    # "dstFile":Ljava/io/File;
    :goto_4
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v2    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v0    # "parent":Ljava/io/File;
    .restart local v1    # "inStream":Ljava/io/InputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "assetFile":Ljava/lang/String;
    .restart local p2    # "dstFile":Ljava/io/File;
    :goto_5
    if-eqz v1, :cond_7

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v3

    :try_start_9
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_6
    nop

    .end local v0    # "parent":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "assetFile":Ljava/lang/String;
    .end local p2    # "dstFile":Ljava/io/File;
    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 218
    .end local v1    # "inStream":Ljava/io/InputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "assetFile":Ljava/lang/String;
    .restart local p2    # "dstFile":Ljava/io/File;
    :goto_7
    return-void
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "dstFile"    # Ljava/io/File;

    .line 154
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/winlator/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;Lcom/winlator/core/Callback;)Z

    move-result v0

    return v0
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;Lcom/winlator/core/Callback;)Z
    .locals 9
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "dstFile"    # Ljava/io/File;

    .line 158
    .local p2, "callback":Lcom/winlator/core/Callback;, "Lcom/winlator/core/Callback<Ljava/io/File;>;"
    invoke-static {p0}, Lcom/winlator/core/FileUtils;->isSymlink(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 159
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 160
    invoke-static {p0, p1}, Lcom/winlator/core/FileUtils;->isAscendantOf(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    goto :goto_1

    .line 161
    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Lcom/winlator/core/Callback;->call(Ljava/lang/Object;)V

    .line 163
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "filenames":[Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 165
    array-length v3, v0

    move v4, v2

    :goto_0
    nop

    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    .line 166
    .local v5, "filename":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6, v7, p2}, Lcom/winlator/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;Lcom/winlator/core/Callback;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 167
    return v2

    .line 166
    :cond_4
    nop

    .line 165
    .end local v5    # "filename":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "filenames":[Ljava/lang/String;
    :cond_5
    nop

    .line 190
    return v1

    .line 160
    :goto_1
    return v2

    .line 173
    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 174
    .local v0, "parent":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    goto :goto_4

    .line 177
    :cond_8
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 178
    .local v3, "inChannel":Ljava/nio/channels/FileChannel;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 179
    .local v8, "outChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 180
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 181
    invoke-virtual {v8}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 183
    if-eqz p2, :cond_9

    invoke-interface {p2, p1}, Lcom/winlator/core/Callback;->call(Ljava/lang/Object;)V

    goto :goto_2

    .line 186
    .end local v3    # "inChannel":Ljava/nio/channels/FileChannel;
    .end local v8    # "outChannel":Ljava/nio/channels/FileChannel;
    :catch_0
    move-exception v1

    goto :goto_3

    .line 184
    .restart local v3    # "inChannel":Ljava/nio/channels/FileChannel;
    .restart local v8    # "outChannel":Ljava/nio/channels/FileChannel;
    :cond_9
    :goto_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 186
    .end local v3    # "inChannel":Ljava/nio/channels/FileChannel;
    .end local v8    # "outChannel":Ljava/nio/channels/FileChannel;
    :goto_3
    nop

    .line 187
    .local v1, "e":Ljava/io/IOException;
    return v2

    .line 174
    .end local v1    # "e":Ljava/io/IOException;
    :goto_4
    return v2
.end method

.method public static createTempFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "tempFile":Ljava/io/File;
    const/4 v1, 0x1

    .line 271
    .local v1, "exists":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 272
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v2

    .line 273
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_0

    .line 275
    :cond_0
    return-object v0
.end method

.method public static delete(Ljava/io/File;)Z
    .locals 2
    .param p0, "targetFile"    # Ljava/io/File;

    .line 115
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 116
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-static {p0}, Lcom/winlator/core/FileUtils;->isSymlink(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/winlator/core/FileUtils;->clear(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 119
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public static getBasename(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 251
    invoke-static {p0}, Lcom/winlator/core/FileUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\.[^\\.]+$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDirname(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 255
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 256
    :cond_0
    invoke-static {p0}, Lcom/winlator/core/StringUtils;->removeEndSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 257
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x5c

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 258
    .local v0, "index":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .line 404
    const-string v0, ""

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    .line 405
    :cond_1
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 406
    .local v1, "dotIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    .line 404
    .end local v1    # "dotIndex":I
    :goto_0
    return-object v0
.end method

.method public static getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.externalstorage.documents"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "primary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    .end local v1    # "parts":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getInternalStorageSize()J
    .locals 8

    .line 361
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 362
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 363
    .local v1, "stat":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 364
    .local v2, "blockSize":J
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v4

    .line 365
    .local v4, "totalBlocks":J
    mul-long v6, v4, v2

    return-wide v6
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 244
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 245
    :cond_0
    invoke-static {p0}, Lcom/winlator/core/StringUtils;->removeEndSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 246
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x5c

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 247
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getSize(Ljava/io/File;Lcom/winlator/core/Callback;)V
    .locals 10
    .param p0, "file"    # Ljava/io/File;

    .line 326
    .local p1, "callback":Lcom/winlator/core/Callback;, "Lcom/winlator/core/Callback<Ljava/lang/Long;>;"
    if-nez p0, :cond_0

    return-void

    .line 327
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/winlator/core/Callback;->call(Ljava/lang/Object;)V

    .line 329
    return-void

    .line 332
    :cond_1
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 333
    .local v0, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/io/File;>;"
    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :goto_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 336
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 337
    .local v1, "current":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 338
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_2

    goto :goto_0

    .line 339
    :cond_2
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    nop

    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 340
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 341
    invoke-virtual {v0, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 344
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 345
    .local v6, "length":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {p1, v8}, Lcom/winlator/core/Callback;->call(Ljava/lang/Object;)V

    .line 339
    .end local v5    # "f":Ljava/io/File;
    .end local v6    # "length":J
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 348
    .end local v1    # "current":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    :cond_5
    goto :goto_0

    .line 349
    :cond_6
    return-void
.end method

.method public static getSizeAsync(Ljava/io/File;Lcom/winlator/core/Callback;)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 322
    .local p1, "callback":Lcom/winlator/core/Callback;, "Lcom/winlator/core/Callback<Ljava/lang/Long;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/winlator/core/FileUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/winlator/core/FileUtils$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;Lcom/winlator/core/Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 323
    return-void
.end method

.method public static isAscendantOf(Ljava/io/File;Ljava/io/File;)Z
    .locals 2
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "dstFile"    # Ljava/io/File;

    .line 145
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 146
    .local v0, "parent":Ljava/io/File;
    :goto_0
    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 148
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static isDirectory(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetFile"    # Ljava/lang/String;

    .line 370
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "files":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 373
    .end local v1    # "files":[Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 371
    .restart local v1    # "files":[Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 373
    .end local v1    # "files":[Ljava/lang/String;
    :goto_1
    nop

    .line 374
    .local v1, "e":Ljava/io/IOException;
    return v0
.end method

.method public static isEmpty(Ljava/io/File;)Z
    .locals 7
    .param p0, "targetFile"    # Ljava/io/File;

    .line 136
    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 137
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 138
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "files":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v3, v1

    if-nez v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    .line 141
    .end local v1    # "files":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    return v0
.end method

.method public static isSymlink(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 111
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$getSizeAsync$0(Ljava/io/File;Lcom/winlator/core/Callback;)V
    .locals 0
    .param p0, "file"    # Ljava/io/File;
    .param p1, "callback"    # Lcom/winlator/core/Callback;

    .line 322
    invoke-static {p0, p1}, Lcom/winlator/core/FileUtils;->getSize(Ljava/io/File;Lcom/winlator/core/Callback;)V

    return-void
.end method

.method public static openIntent(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "path"    # Ljava/lang/String;

    .line 411
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "android.intent.action.VIEW"

    if-eqz v1, :cond_0

    .line 412
    new-instance v1, Ljava/io/File;

    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 413
    .local v0, "file":Ljava/io/File;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.winlator.FileProvider"

    invoke-static {p0, v3, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 414
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 415
    .end local v0    # "file":Ljava/io/File;
    goto :goto_0

    .line 416
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v1, v0

    .line 417
    .restart local v1    # "intent":Landroid/content/Intent;
    :goto_0
    const v0, 0x10001000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 418
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 419
    return-void
.end method

.method public static read(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetFile"    # Ljava/lang/String;

    .line 37
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .local v0, "inStream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v0}, Lcom/winlator/core/StreamUtils;->copyToByteArray(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 40
    .end local v0    # "inStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 38
    .restart local v0    # "inStream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v1

    .line 37
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    nop

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "assetFile":Ljava/lang/String;
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 40
    .end local v0    # "inStream":Ljava/io/InputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "assetFile":Ljava/lang/String;
    :goto_2
    nop

    .line 41
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static read(Ljava/io/File;)[B
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .line 46
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .local v0, "inStream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v0}, Lcom/winlator/core/StreamUtils;->copyToByteArray(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 47
    return-object v1

    .line 49
    .end local v0    # "inStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 46
    .restart local v0    # "inStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "file":Ljava/io/File;
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 49
    .end local v0    # "inStream":Ljava/io/InputStream;
    .restart local p0    # "file":Ljava/io/File;
    :goto_1
    nop

    .line 50
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static readInt(Ljava/lang/String;)I
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 383
    const/4 v0, 0x0

    .line 385
    .local v0, "result":I
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    .local v1, "reader":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 385
    .end local v2    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 387
    .restart local v2    # "line":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .line 388
    .end local v2    # "line":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 390
    .end local v1    # "reader":Ljava/io/RandomAccessFile;
    :goto_1
    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_1

    .line 385
    .restart local v1    # "reader":Ljava/io/RandomAccessFile;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "result":I
    .end local p0    # "path":Ljava/lang/String;
    :goto_3
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 391
    .end local v1    # "reader":Ljava/io/RandomAccessFile;
    .restart local v0    # "result":I
    .restart local p0    # "path":Ljava/lang/String;
    :goto_4
    return v0
.end method

.method public static readLines(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 221
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/winlator/core/FileUtils;->readLines(Ljava/io/File;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static readLines(Ljava/io/File;Z)Ljava/util/ArrayList;
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "skipEmptyLines"    # Z

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v0, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 229
    .local v2, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 230
    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 232
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 226
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 234
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 229
    :cond_1
    nop

    .line 236
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 239
    .end local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 237
    :catch_0
    move-exception v1

    goto :goto_3

    .line 226
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "skipEmptyLines":Z
    :goto_2
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 237
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "skipEmptyLines":Z
    :goto_3
    nop

    .line 238
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 240
    .end local v1    # "e":Ljava/io/IOException;
    :goto_4
    return-object v0
.end method

.method public static readString(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v0, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    .local v2, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 64
    .end local v4    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 68
    .restart local v4    # "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 70
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_6

    .line 68
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v3

    .line 64
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v2

    goto :goto_4

    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "uri":Landroid/net/Uri;
    :goto_3
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "uri":Landroid/net/Uri;
    :goto_4
    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v3

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_5
    nop

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 70
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "uri":Landroid/net/Uri;
    :goto_6
    nop

    .line 71
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    return-object v2
.end method

.method public static readString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetFile"    # Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/winlator/core/FileUtils;->read(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static readString(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .line 59
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/winlator/core/FileUtils;->read(Ljava/io/File;)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static readSymlink(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 396
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/io/IOException;
    const-string v1, ""

    return-object v1
.end method

.method public static symlink(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p0, "linkTarget"    # Ljava/io/File;
    .param p1, "linkFile"    # Ljava/io/File;

    .line 99
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/winlator/core/FileUtils;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static symlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "linkTarget"    # Ljava/lang/String;
    .param p1, "linkFile"    # Ljava/lang/String;

    .line 104
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 105
    invoke-static {p0, p1}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 108
    :goto_1
    return-void
.end method

.method public static toRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "basePath"    # Ljava/lang/String;
    .param p1, "fullPath"    # Ljava/lang/String;

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/URI;->relativize(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/core/StringUtils;->removeEndSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static writeString(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # Ljava/lang/String;

    .line 87
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    nop

    .line 91
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 90
    const/4 v1, 0x1

    return v1

    .line 92
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 87
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "data":Ljava/lang/String;
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 92
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "data":Ljava/lang/String;
    :goto_1
    nop

    .line 93
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    .end local v0    # "e":Ljava/io/IOException;
    const/4 v0, 0x0

    return v0
.end method
