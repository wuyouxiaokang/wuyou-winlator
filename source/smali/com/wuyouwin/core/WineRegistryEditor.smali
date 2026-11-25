.class public Lcom/wuyouwin/core/WineRegistryEditor;
.super Ljava/lang/Object;
.source "WineRegistryEditor.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/core/WineRegistryEditor$Location;
    }
.end annotation


# instance fields
.field private final cloneFile:Ljava/io/File;

.field private createKeyIfNotExist:Z

.field private final file:Ljava/io/File;

.field private modified:Z


# direct methods
.method public static synthetic $r8$lambda$75GPSCPw4frtVKrARD7ly9CMZwQ(Lcom/wuyouwin/core/WineRegistryEditor$Location;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/wuyouwin/core/WineRegistryEditor;->lambda$setRawValues$0(Lcom/wuyouwin/core/WineRegistryEditor$Location;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-string v0, "winlator"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wuyouwin/core/WineRegistryEditor;->modified:Z

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wuyouwin/core/WineRegistryEditor;->createKeyIfNotExist:Z

    .line 69
    iput-object p1, p0, Lcom/wuyouwin/core/WineRegistryEditor;->file:Ljava/io/File;

    .line 70
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wuyouwin/core/FileUtils;->getBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wuyouwin/core/FileUtils;->createTempFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/wuyouwin/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    .line 71
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/wuyouwin/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/wuyouwin/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 78
    :goto_1
    return-void
.end method

.method private createKey(Ljava/lang/String;)Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .locals 21
    .param p1, "key"    # Ljava/lang/String;

    .line 101
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p1}, Lcom/wuyouwin/core/WineRegistryEditor;->getParentKeyLocation(Ljava/lang/String;)Lcom/wuyouwin/core/WineRegistryEditor$Location;

    move-result-object v2

    .line 102
    .local v2, "location":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    const/4 v3, 0x0

    .line 104
    .local v3, "success":Z
    const/high16 v0, 0x10000

    new-array v4, v0, [C

    .line 105
    .local v4, "buffer":[C
    iget-object v5, v1, Lcom/wuyouwin/core/WineRegistryEditor;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    iget-object v6, v1, Lcom/wuyouwin/core/WineRegistryEditor;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wuyouwin/core/FileUtils;->getBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/wuyouwin/core/FileUtils;->createTempFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 107
    .local v5, "tempFile":Ljava/io/File;
    const/4 v6, 0x1

    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    iget-object v9, v1, Lcom/wuyouwin/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/FileWriter;

    invoke-direct {v9, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    .local v8, "writer":Ljava/io/BufferedWriter;
    const/4 v0, -0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_1

    .line 112
    const/4 v10, 0x0

    .local v10, "i":I
    :try_start_2
    iget v11, v2, Lcom/wuyouwin/core/WineRegistryEditor$Location;->end:I

    add-int/2addr v11, v6

    .local v11, "end":I
    :goto_0
    if-ge v10, v11, :cond_0

    .line 113
    array-length v12, v4

    sub-int v13, v11, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 114
    .local v12, "length":I
    invoke-virtual {v7, v4, v9, v12}, Ljava/io/BufferedReader;->read([CII)I

    .line 115
    invoke-virtual {v8, v4, v9, v12}, Ljava/io/BufferedWriter;->write([CII)V

    .line 112
    add-int/2addr v10, v12

    goto :goto_0

    .line 107
    .end local v10    # "i":I
    .end local v11    # "end":I
    .end local v12    # "length":I
    :catchall_0
    move-exception v0

    move-object v9, v0

    goto/16 :goto_5

    .line 112
    .restart local v10    # "i":I
    .restart local v11    # "end":I
    :cond_0
    nop

    .end local v10    # "i":I
    .end local v11    # "end":I
    goto :goto_2

    .line 118
    :cond_1
    :goto_1
    invoke-virtual {v7, v4}, Ljava/io/Reader;->read([C)I

    move-result v10

    move v11, v10

    .local v11, "length":I
    if-eq v10, v0, :cond_2

    invoke-virtual {v8, v4, v9, v11}, Ljava/io/BufferedWriter;->write([CII)V

    goto :goto_1

    .line 120
    .end local v11    # "length":I
    :cond_2
    :goto_2
    const-wide v10, 0x19db1ded53e8000L

    .line 121
    .local v10, "ticks1601To1970":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    add-long/2addr v12, v10

    .line 122
    .local v12, "currentTime":J
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\n["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/wuyouwin/core/WineRegistryEditor;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "] "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v15, v12, v10

    const-wide/16 v17, 0x3e8

    move-wide/from16 v19, v10

    .end local v10    # "ticks1601To1970":J
    .local v19, "ticks1601To1970":J
    div-long v9, v15, v17

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v10, "\n#time=%x%08x"

    const/16 v11, 0x20

    shr-long v15, v12, v11

    .line 123
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    long-to-int v15, v12

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v11, v15}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 124
    .local v9, "content":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 126
    :goto_3
    invoke-virtual {v7, v4}, Ljava/io/Reader;->read([C)I

    move-result v10

    move v11, v10

    .restart local v11    # "length":I
    if-eq v10, v0, :cond_3

    const/4 v10, 0x0

    invoke-virtual {v8, v4, v10, v11}, Ljava/io/BufferedWriter;->write([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 127
    :cond_3
    const/4 v3, 0x1

    .line 128
    .end local v9    # "content":Ljava/lang/String;
    .end local v11    # "length":I
    .end local v12    # "currentTime":J
    .end local v19    # "ticks1601To1970":J
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v8    # "writer":Ljava/io/BufferedWriter;
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 129
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :goto_4
    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_4

    .line 107
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v0

    move-object v8, v0

    goto :goto_7

    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    :goto_5
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v10, v0

    :try_start_6
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "location":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .end local v3    # "success":Z
    .end local v4    # "buffer":[C
    .end local v5    # "tempFile":Ljava/io/File;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local p1    # "key":Ljava/lang/String;
    :goto_6
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "location":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .restart local v3    # "success":Z
    .restart local v4    # "buffer":[C
    .restart local v5    # "tempFile":Ljava/io/File;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local p1    # "key":Ljava/lang/String;
    :goto_7
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v9, v0

    :try_start_8
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "location":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .end local v3    # "success":Z
    .end local v4    # "buffer":[C
    .end local v5    # "tempFile":Ljava/io/File;
    .end local p1    # "key":Ljava/lang/String;
    :goto_8
    throw v8
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 131
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "location":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .restart local v3    # "success":Z
    .restart local v4    # "buffer":[C
    .restart local v5    # "tempFile":Ljava/io/File;
    .restart local p1    # "key":Ljava/lang/String;
    :goto_9
    if-eqz v3, :cond_4

    .line 132
    iput-boolean v6, v1, Lcom/wuyouwin/core/WineRegistryEditor;->modified:Z

    .line 133
    iget-object v0, v1, Lcom/wuyouwin/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-virtual {v5, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 134
    invoke-direct/range {p0 .. p1}, Lcom/wuyouwin/core/WineRegistryEditor;->getKeyLocation(Ljava/lang/String;)Lcom/wuyouwin/core/WineRegistryEditor$Location;

    move-result-object v0

    return-object v0

    .line 137
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method private static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 81
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getKeyLocation(Ljava/lang/String;)Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 425
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wuyouwin/core/WineRegistryEditor;->getKeyLocation(Ljava/lang/String;Z)Lcom/wuyouwin/core/WineRegistryEditor$Location;

    move-result-object v0

    return-object v0
.end method

.method private getKeyLocation(Ljava/lang/String;Z)Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "keyAsPrefix"    # Z

    .line 429
    iget-object v0, p0, Lcom/wuyouwin/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 430
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/wuyouwin/core/WineRegistryEditor;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    const-string v2, "]"

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 431
    iget-object v0, p0, Lcom/wuyouwin/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/wuyouwin/core/WineRegistryEditor;->getKeyLocation(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    .line 432
    .local v0, "result":[I
    new-instance v2, Lcom/wuyouwin/core/WineRegistryEditor$Location;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x2

    aget v5, v0, v5

    invoke-direct {v2, v3, v4, v5}, Lcom/wuyouwin/core/WineRegistryEditor$Location;-><init>(III)V

    .line 433
    .local v2, "location":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    const/4 v3, 0x3

    aget v3, v0, v3

    iput v3, v2, Lcom/wuyouwin/core/WineRegistryEditor$Location;->mbCount:I

    .line 434
    iget v3, v2, Lcom/wuyouwin/core/WineRegistryEditor$Location;->start:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    move-object v1, v2

    :cond_2
    return-object v1
.end method

.method private native getKeyLocation(Ljava/lang/String;Ljava/lang/String;)[I
.end method

.method private getParentKeyLocation(Ljava/lang/String;)Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 411
    const-string v0, "\\\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "parts":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 414
    .local v1, "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 415
    const-string v2, "\\"

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, "currentKey":Ljava/lang/String;
    invoke-direct {p0, v2, v4}, Lcom/wuyouwin/core/WineRegistryEditor;->getKeyLocation(Ljava/lang/String;Z)Lcom/wuyouwin/core/WineRegistryEditor$Location;

    move-result-object v3

    .line 417
    .local v3, "location":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    if-eqz v3, :cond_0

    return-object v3

    .line 418
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 419
    .end local v2    # "currentKey":Ljava/lang/String;
    .end local v3    # "location":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    goto :goto_0

    .line 421
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getRawValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 222
    invoke-direct {p0, p1}, Lcom/wuyouwin/core/WineRegistryEditor;->getKeyLocation(Ljava/lang/String;)Lcom/wuyouwin/core/WineRegistryEditor$Location;

    move-result-object v0

    .line 223
    .local v0, "keyLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 225
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/wuyouwin/core/WineRegistryEditor;->getValueLocation(Lcom/wuyouwin/core/WineRegistryEditor$Location;Ljava/lang/String;)Lcom/wuyouwin/core/WineRegistryEditor$Location;

    move-result-object v2

    .line 226
    .local v2, "valueLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    if-nez v2, :cond_1

    return-object v1

    .line 227
    :cond_1
    const/4 v3, 0x0

    .line 228
    .local v3, "success":Z
    invoke-virtual {v2}, Lcom/wuyouwin/core/WineRegistryEditor$Location;->length()I

    move-result v4

    new-array v4, v4, [C

    .line 230
    .local v4, "buffer":[C
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    iget-object v7, p0, Lcom/wuyouwin/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/high16 v7, 0x10000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    iget v6, v2, Lcom/wuyouwin/core/WineRegistryEditor$Location;->start:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/io/BufferedReader;->skip(J)J

    .line 232
    invoke-virtual {v5, v4}, Ljava/io/Reader;->read([C)I

    move-result v6

    array-length v7, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    move v3, v6

    .line 233
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 234
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :goto_1
    goto :goto_3

    :catch_0
    move-exception v5

    goto :goto_1

    .line 230
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v7

    :try_start_4
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "keyLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .end local v2    # "valueLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .end local v3    # "success":Z
    .end local v4    # "buffer":[C
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    :goto_2
    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 235
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "keyLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .restart local v2    # "valueLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .restart local v3    # "success":Z
    .restart local v4    # "buffer":[C
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "name":Ljava/lang/String;
    :goto_3
    if-eqz v3, :cond_3

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1}, Lcom/wuyouwin/core/WineRegistryEditor;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private getValueLocation(Lcom/wuyouwin/core/WineRegistryEditor$Location;Ljava/lang/String;)Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .locals 6
    .param p1, "keyLocation"    # Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .param p2, "name"    # Ljava/lang/String;

    .line 438
    iget-object v0, p0, Lcom/wuyouwin/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/wuyouwin/core/WineRegistryEditor$Location;->start:I

    iget v2, p1, Lcom/wuyouwin/core/WineRegistryEditor$Location;->end:I

    if-ne v0, v2, :cond_1

    :cond_0
    goto :goto_1

    .line 439
    :cond_1
    if-eqz p2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/wuyouwin/core/WineRegistryEditor;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "@="

    :goto_0
    move-object p2, v0

    .line 440
    iget-object v0, p0, Lcom/wuyouwin/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wuyouwin/core/WineRegistryEditor$Location;->toIntArray()[I

    move-result-object v2

    invoke-direct {p0, v0, v2, p2}, Lcom/wuyouwin/core/WineRegistryEditor;->getValueLocation(Ljava/lang/String;[ILjava/lang/String;)[I

    move-result-object v0

    .line 441
    .local v0, "result":[I
    new-instance v2, Lcom/wuyouwin/core/WineRegistryEditor$Location;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x2

    aget v5, v0, v5

    invoke-direct {v2, v3, v4, v5}, Lcom/wuyouwin/core/WineRegistryEditor$Location;-><init>(III)V

    .line 442
    .local v2, "location":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    iget v3, v2, Lcom/wuyouwin/core/WineRegistryEditor$Location;->start:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    move-object v1, v2

    :cond_3
    return-object v1

    .line 438
    .end local v0    # "result":[I
    .end local v2    # "location":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    :goto_1
    return-object v1
.end method

.method private native getValueLocation(Ljava/lang/String;[ILjava/lang/String;)[I
.end method

.method private static synthetic lambda$setRawValues$0(Lcom/wuyouwin/core/WineRegistryEditor$Location;)I
    .locals 1
    .param p0, "o"    # Lcom/wuyouwin/core/WineRegistryEditor$Location;

    .line 300
    iget v0, p0, Lcom/wuyouwin/core/WineRegistryEditor$Location;->start:I

    return v0
.end method

.method private removeRegion(Lcom/wuyouwin/core/WineRegistryEditor$Location;)Z
    .locals 12
    .param p1, "location"    # Lcom/wuyouwin/core/WineRegistryEditor$Location;

    .line 380
    const/high16 v0, 0x10000

    new-array v1, v0, [C

    .line 381
    .local v1, "buffer":[C
    const/4 v2, 0x0

    .line 383
    .local v2, "success":Z
    iget-object v3, p0, Lcom/wuyouwin/core/WineRegistryEditor;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/wuyouwin/core/WineRegistryEditor;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wuyouwin/core/FileUtils;->getBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/wuyouwin/core/FileUtils;->createTempFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 385
    .local v3, "tempFile":Ljava/io/File;
    const/4 v4, 0x1

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    iget-object v7, p0, Lcom/wuyouwin/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v6

    .line 388
    .local v0, "writer":Ljava/io/BufferedWriter;
    const/4 v6, 0x0

    .line 389
    .local v6, "length":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    :try_start_2
    iget v8, p1, Lcom/wuyouwin/core/WineRegistryEditor$Location;->offset:I

    const/4 v9, 0x0

    if-ge v7, v8, :cond_0

    .line 390
    array-length v8, v1

    iget v10, p1, Lcom/wuyouwin/core/WineRegistryEditor$Location;->offset:I

    sub-int/2addr v10, v7

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v6, v8

    .line 391
    invoke-virtual {v5, v1, v9, v6}, Ljava/io/BufferedReader;->read([CII)I

    .line 392
    invoke-virtual {v0, v1, v9, v6}, Ljava/io/BufferedWriter;->write([CII)V

    .line 389
    add-int/2addr v7, v6

    goto :goto_0

    .line 385
    .end local v6    # "length":I
    .end local v7    # "i":I
    :catchall_0
    move-exception v6

    goto :goto_5

    .line 389
    .restart local v6    # "length":I
    .restart local v7    # "i":I
    :cond_0
    nop

    .line 395
    .end local v7    # "i":I
    if-le v6, v4, :cond_1

    add-int/lit8 v7, v6, -0x1

    aget-char v7, v1, v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    move v7, v9

    :goto_1
    nop

    .line 396
    .local v7, "skipLine":Z
    iget v8, p1, Lcom/wuyouwin/core/WineRegistryEditor$Location;->end:I

    iget v10, p1, Lcom/wuyouwin/core/WineRegistryEditor$Location;->offset:I

    sub-int/2addr v8, v10

    if-eqz v7, :cond_2

    move v10, v4

    goto :goto_2

    :cond_2
    move v10, v9

    :goto_2
    add-int/2addr v8, v10

    int-to-long v10, v8

    invoke-virtual {v5, v10, v11}, Ljava/io/BufferedReader;->skip(J)J

    .line 397
    :goto_3
    invoke-virtual {v5, v1}, Ljava/io/Reader;->read([C)I

    move-result v8

    move v6, v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_3

    invoke-virtual {v0, v1, v9, v6}, Ljava/io/BufferedWriter;->write([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 398
    :cond_3
    const/4 v2, 0x1

    .line 399
    .end local v6    # "length":I
    .end local v7    # "skipLine":Z
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "writer":Ljava/io/BufferedWriter;
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 400
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :goto_4
    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_4

    .line 385
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v0

    goto :goto_7

    .restart local v0    # "writer":Ljava/io/BufferedWriter;
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v7

    :try_start_6
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "buffer":[C
    .end local v2    # "success":Z
    .end local v3    # "tempFile":Ljava/io/File;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local p1    # "location":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    :goto_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v0    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "buffer":[C
    .restart local v2    # "success":Z
    .restart local v3    # "tempFile":Ljava/io/File;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local p1    # "location":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    :goto_7
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v6

    :try_start_8
    invoke-virtual {v0, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "buffer":[C
    .end local v2    # "success":Z
    .end local v3    # "tempFile":Ljava/io/File;
    .end local p1    # "location":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    :goto_8
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 402
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "buffer":[C
    .restart local v2    # "success":Z
    .restart local v3    # "tempFile":Ljava/io/File;
    .restart local p1    # "location":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    :goto_9
    if-eqz v2, :cond_4

    .line 403
    iput-boolean v4, p0, Lcom/wuyouwin/core/WineRegistryEditor;->modified:Z

    .line 404
    iget-object v0, p0, Lcom/wuyouwin/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_a

    .line 406
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 407
    :goto_a
    return v2
.end method

.method private setRawValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 239
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v0, "\""

    invoke-direct/range {p0 .. p1}, Lcom/wuyouwin/core/WineRegistryEditor;->getKeyLocation(Ljava/lang/String;)Lcom/wuyouwin/core/WineRegistryEditor$Location;

    move-result-object v4

    .line 240
    .local v4, "keyLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    if-nez v4, :cond_1

    .line 241
    iget-boolean v5, v1, Lcom/wuyouwin/core/WineRegistryEditor;->createKeyIfNotExist:Z

    if-eqz v5, :cond_0

    .line 242
    invoke-direct/range {p0 .. p1}, Lcom/wuyouwin/core/WineRegistryEditor;->createKey(Ljava/lang/String;)Lcom/wuyouwin/core/WineRegistryEditor$Location;

    move-result-object v4

    goto :goto_0

    .line 244
    :cond_0
    return-void

    .line 247
    :cond_1
    :goto_0
    invoke-direct {v1, v4, v2}, Lcom/wuyouwin/core/WineRegistryEditor;->getValueLocation(Lcom/wuyouwin/core/WineRegistryEditor$Location;Ljava/lang/String;)Lcom/wuyouwin/core/WineRegistryEditor$Location;

    move-result-object v5

    .line 248
    .local v5, "valueLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    const/high16 v6, 0x10000

    new-array v7, v6, [C

    .line 249
    .local v7, "buffer":[C
    const/4 v8, 0x0

    .line 251
    .local v8, "success":Z
    iget-object v9, v1, Lcom/wuyouwin/core/WineRegistryEditor;->file:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    iget-object v10, v1, Lcom/wuyouwin/core/WineRegistryEditor;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/wuyouwin/core/FileUtils;->getBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/wuyouwin/core/FileUtils;->createTempFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 253
    .local v9, "tempFile":Ljava/io/File;
    :try_start_0
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    iget-object v12, v1, Lcom/wuyouwin/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .local v10, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v11, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/FileWriter;

    invoke-direct {v12, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v12, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v11

    .line 257
    .local v6, "writer":Ljava/io/BufferedWriter;
    const/4 v11, 0x0

    .local v11, "i":I
    nop

    if-eqz v5, :cond_2

    :try_start_2
    iget v12, v5, Lcom/wuyouwin/core/WineRegistryEditor$Location;->start:I

    goto :goto_1

    .line 253
    .end local v11    # "i":I
    :catchall_0
    move-exception v0

    move-object v11, v0

    goto/16 :goto_6

    .line 257
    .restart local v11    # "i":I
    :cond_2
    iget v12, v4, Lcom/wuyouwin/core/WineRegistryEditor$Location;->end:I

    :goto_1
    nop

    .local v12, "end":I
    :goto_2
    const/4 v13, 0x0

    if-ge v11, v12, :cond_3

    .line 258
    array-length v14, v7

    sub-int v15, v12, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 259
    .local v14, "length":I
    invoke-virtual {v10, v7, v13, v14}, Ljava/io/BufferedReader;->read([CII)I

    .line 260
    invoke-virtual {v6, v7, v13, v14}, Ljava/io/BufferedWriter;->write([CII)V

    .line 257
    add-int/2addr v11, v14

    goto :goto_2

    .end local v14    # "length":I
    :cond_3
    nop

    .line 263
    .end local v11    # "i":I
    .end local v12    # "end":I
    if-nez v5, :cond_5

    .line 264
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    if-eqz v2, :cond_4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/wuyouwin/core/WineRegistryEditor;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    const-string v0, "@"

    :goto_3
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_4

    .line 267
    :cond_5
    invoke-virtual {v6, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v5}, Lcom/wuyouwin/core/WineRegistryEditor$Location;->length()I

    move-result v0

    int-to-long v11, v0

    invoke-virtual {v10, v11, v12}, Ljava/io/BufferedReader;->skip(J)J

    .line 271
    :goto_4
    invoke-virtual {v10, v7}, Ljava/io/Reader;->read([C)I

    move-result v0

    move v11, v0

    .local v11, "length":I
    const/4 v12, -0x1

    if-eq v0, v12, :cond_6

    invoke-virtual {v6, v7, v13, v11}, Ljava/io/BufferedWriter;->write([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 272
    :cond_6
    const/4 v8, 0x1

    .line 273
    .end local v11    # "length":I
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v6    # "writer":Ljava/io/BufferedWriter;
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 274
    .end local v10    # "reader":Ljava/io/BufferedReader;
    :goto_5
    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_5

    .line 253
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v0

    move-object v6, v0

    goto :goto_8

    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    :goto_6
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v12, v0

    :try_start_6
    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "keyLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .end local v5    # "valueLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .end local v7    # "buffer":[C
    .end local v8    # "success":Z
    .end local v9    # "tempFile":Ljava/io/File;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "value":Ljava/lang/String;
    :goto_7
    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "keyLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .restart local v5    # "valueLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .restart local v7    # "buffer":[C
    .restart local v8    # "success":Z
    .restart local v9    # "tempFile":Ljava/io/File;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "value":Ljava/lang/String;
    :goto_8
    :try_start_7
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v11, v0

    :try_start_8
    invoke-virtual {v6, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "keyLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .end local v5    # "valueLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .end local v7    # "buffer":[C
    .end local v8    # "success":Z
    .end local v9    # "tempFile":Ljava/io/File;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "value":Ljava/lang/String;
    :goto_9
    throw v6
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 276
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "keyLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .restart local v5    # "valueLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .restart local v7    # "buffer":[C
    .restart local v8    # "success":Z
    .restart local v9    # "tempFile":Ljava/io/File;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "value":Ljava/lang/String;
    :goto_a
    if-eqz v8, :cond_7

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/wuyouwin/core/WineRegistryEditor;->modified:Z

    .line 278
    iget-object v0, v1, Lcom/wuyouwin/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-virtual {v9, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_b

    .line 280
    :cond_7
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 281
    :goto_b
    return-void
.end method

.method private varargs setRawValues(Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 18
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "items"    # [[Ljava/lang/String;

    .line 284
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "\""

    invoke-direct/range {p0 .. p1}, Lcom/wuyouwin/core/WineRegistryEditor;->getKeyLocation(Ljava/lang/String;)Lcom/wuyouwin/core/WineRegistryEditor$Location;

    move-result-object v3

    .line 285
    .local v3, "keyLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    if-nez v3, :cond_1

    .line 286
    iget-boolean v4, v1, Lcom/wuyouwin/core/WineRegistryEditor;->createKeyIfNotExist:Z

    if-eqz v4, :cond_0

    .line 287
    invoke-direct/range {p0 .. p1}, Lcom/wuyouwin/core/WineRegistryEditor;->createKey(Ljava/lang/String;)Lcom/wuyouwin/core/WineRegistryEditor$Location;

    move-result-object v3

    goto :goto_0

    .line 289
    :cond_0
    return-void

    .line 292
    :cond_1
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v4, "valueLocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wuyouwin/core/WineRegistryEditor$Location;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v2

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-ge v5, v6, :cond_3

    .line 294
    aget-object v6, v2, v5

    aget-object v6, v6, v8

    invoke-direct {v1, v3, v6}, Lcom/wuyouwin/core/WineRegistryEditor;->getValueLocation(Lcom/wuyouwin/core/WineRegistryEditor$Location;Ljava/lang/String;)Lcom/wuyouwin/core/WineRegistryEditor$Location;

    move-result-object v6

    .line 295
    .local v6, "valueLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    if-nez v6, :cond_2

    new-instance v9, Lcom/wuyouwin/core/WineRegistryEditor$Location;

    const v10, 0x7fffffff

    array-length v11, v2

    sub-int/2addr v10, v11

    add-int/2addr v10, v5

    invoke-direct {v9, v8, v10, v7}, Lcom/wuyouwin/core/WineRegistryEditor$Location;-><init>(III)V

    move-object v6, v9

    .line 296
    :cond_2
    aget-object v7, v2, v5

    invoke-static {v6, v7}, Lcom/wuyouwin/core/WineRegistryEditor$Location;->access$002(Lcom/wuyouwin/core/WineRegistryEditor$Location;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .end local v6    # "valueLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    nop

    .line 300
    .end local v5    # "i":I
    new-instance v5, Lcom/wuyouwin/core/WineRegistryEditor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/wuyouwin/core/WineRegistryEditor$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v5}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 302
    const/high16 v5, 0x10000

    new-array v6, v5, [C

    .line 303
    .local v6, "buffer":[C
    const/4 v9, 0x0

    .line 305
    .local v9, "success":Z
    iget-object v10, v1, Lcom/wuyouwin/core/WineRegistryEditor;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    iget-object v11, v1, Lcom/wuyouwin/core/WineRegistryEditor;->file:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/wuyouwin/core/FileUtils;->getBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/wuyouwin/core/FileUtils;->createTempFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 307
    .local v10, "tempFile":Ljava/io/File;
    :try_start_0
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/FileReader;

    iget-object v14, v1, Lcom/wuyouwin/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-direct {v13, v14}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v12, v13, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .local v12, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v13, Ljava/io/BufferedWriter;

    new-instance v14, Ljava/io/FileWriter;

    invoke-direct {v14, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v13, v14, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, v13

    .line 311
    .local v5, "writer":Ljava/io/BufferedWriter;
    const/4 v13, 0x0

    .line 312
    .local v13, "position":I
    :try_start_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/wuyouwin/core/WineRegistryEditor$Location;

    .line 313
    .local v15, "valueLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    iget v11, v15, Lcom/wuyouwin/core/WineRegistryEditor$Location;->end:I

    if-ne v11, v7, :cond_4

    goto :goto_2

    .line 314
    :cond_4
    move v11, v13

    .local v11, "i":I
    :goto_3
    iget v7, v15, Lcom/wuyouwin/core/WineRegistryEditor$Location;->start:I

    if-ge v11, v7, :cond_5

    .line 315
    array-length v7, v6

    iget v8, v15, Lcom/wuyouwin/core/WineRegistryEditor$Location;->start:I

    sub-int/2addr v8, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 316
    .local v7, "length":I
    const/4 v8, 0x0

    invoke-virtual {v12, v6, v8, v7}, Ljava/io/BufferedReader;->read([CII)I

    .line 317
    invoke-virtual {v5, v6, v8, v7}, Ljava/io/BufferedWriter;->write([CII)V

    .line 318
    add-int/2addr v13, v7

    .line 314
    add-int/2addr v11, v7

    const/4 v7, -0x1

    const/4 v8, 0x0

    goto :goto_3

    .line 307
    .end local v7    # "length":I
    .end local v11    # "i":I
    .end local v13    # "position":I
    .end local v15    # "valueLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_9

    .line 314
    .restart local v11    # "i":I
    .restart local v13    # "position":I
    .restart local v15    # "valueLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    :cond_5
    nop

    .line 321
    .end local v11    # "i":I
    invoke-static {v15}, Lcom/wuyouwin/core/WineRegistryEditor$Location;->access$000(Lcom/wuyouwin/core/WineRegistryEditor$Location;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 322
    .local v7, "item":[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v11, v7, v8

    invoke-virtual {v5, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v15}, Lcom/wuyouwin/core/WineRegistryEditor$Location;->length()I

    move-result v8

    move-object v11, v7

    .end local v7    # "item":[Ljava/lang/String;
    .local v11, "item":[Ljava/lang/String;
    int-to-long v7, v8

    invoke-virtual {v12, v7, v8}, Ljava/io/BufferedReader;->skip(J)J

    .line 324
    invoke-virtual {v15}, Lcom/wuyouwin/core/WineRegistryEditor$Location;->length()I

    move-result v7

    add-int/2addr v13, v7

    .line 325
    .end local v11    # "item":[Ljava/lang/String;
    .end local v15    # "valueLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    const/4 v7, -0x1

    const/4 v8, 0x0

    goto :goto_2

    .line 327
    :cond_6
    move v7, v13

    .local v7, "i":I
    :goto_4
    iget v8, v3, Lcom/wuyouwin/core/WineRegistryEditor$Location;->end:I

    if-ge v7, v8, :cond_7

    .line 328
    array-length v8, v6

    iget v11, v3, Lcom/wuyouwin/core/WineRegistryEditor$Location;->end:I

    sub-int/2addr v11, v7

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 329
    .local v8, "length":I
    const/4 v11, 0x0

    invoke-virtual {v12, v6, v11, v8}, Ljava/io/BufferedReader;->read([CII)I

    .line 330
    invoke-virtual {v5, v6, v11, v8}, Ljava/io/BufferedWriter;->write([CII)V

    .line 327
    add-int/2addr v7, v8

    goto :goto_4

    .end local v8    # "length":I
    :cond_7
    nop

    .line 333
    .end local v7    # "i":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wuyouwin/core/WineRegistryEditor$Location;

    .line 334
    .local v8, "valueLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    iget v11, v8, Lcom/wuyouwin/core/WineRegistryEditor$Location;->end:I

    const/4 v14, -0x1

    if-eq v11, v14, :cond_8

    goto :goto_5

    .line 335
    :cond_8
    invoke-static {v8}, Lcom/wuyouwin/core/WineRegistryEditor$Location;->access$000(Lcom/wuyouwin/core/WineRegistryEditor$Location;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    .line 336
    .restart local v11    # "item":[Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    aget-object v17, v11, v15

    nop

    if-eqz v17, :cond_9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v16, 0x0

    aget-object v17, v11, v16

    invoke-static/range {v17 .. v17}, Lcom/wuyouwin/core/WineRegistryEditor;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_9
    const-string v2, "@"

    :goto_6
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v15, v11, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 337
    .end local v8    # "valueLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .end local v11    # "item":[Ljava/lang/String;
    move-object/from16 v2, p2

    goto :goto_5

    .line 339
    :cond_a
    :goto_7
    invoke-virtual {v12, v6}, Ljava/io/Reader;->read([C)I

    move-result v0

    move v2, v0

    const/4 v7, -0x1

    .local v2, "length":I
    if-eq v0, v7, :cond_b

    const/4 v0, 0x0

    invoke-virtual {v5, v6, v0, v2}, Ljava/io/BufferedWriter;->write([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    .line 340
    :cond_b
    const/4 v9, 0x1

    .line 341
    .end local v2    # "length":I
    .end local v13    # "position":I
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v5    # "writer":Ljava/io/BufferedWriter;
    :try_start_4
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 342
    .end local v12    # "reader":Ljava/io/BufferedReader;
    :goto_8
    goto :goto_d

    :catch_0
    move-exception v0

    goto :goto_8

    .line 307
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_b

    .restart local v5    # "writer":Ljava/io/BufferedWriter;
    :goto_9
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v7, v0

    :try_start_6
    invoke-virtual {v2, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "keyLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .end local v4    # "valueLocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wuyouwin/core/WineRegistryEditor$Location;>;"
    .end local v6    # "buffer":[C
    .end local v9    # "success":Z
    .end local v10    # "tempFile":Ljava/io/File;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "items":[[Ljava/lang/String;
    :goto_a
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v5    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "keyLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .restart local v4    # "valueLocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wuyouwin/core/WineRegistryEditor$Location;>;"
    .restart local v6    # "buffer":[C
    .restart local v9    # "success":Z
    .restart local v10    # "tempFile":Ljava/io/File;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "items":[[Ljava/lang/String;
    :goto_b
    :try_start_7
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object v5, v0

    :try_start_8
    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "keyLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .end local v4    # "valueLocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wuyouwin/core/WineRegistryEditor$Location;>;"
    .end local v6    # "buffer":[C
    .end local v9    # "success":Z
    .end local v10    # "tempFile":Ljava/io/File;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "items":[[Ljava/lang/String;
    :goto_c
    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 344
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "keyLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .restart local v4    # "valueLocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wuyouwin/core/WineRegistryEditor$Location;>;"
    .restart local v6    # "buffer":[C
    .restart local v9    # "success":Z
    .restart local v10    # "tempFile":Ljava/io/File;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "items":[[Ljava/lang/String;
    :goto_d
    if-eqz v9, :cond_c

    .line 345
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/wuyouwin/core/WineRegistryEditor;->modified:Z

    .line 346
    iget-object v0, v1, Lcom/wuyouwin/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-virtual {v10, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_e

    .line 348
    :cond_c
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 349
    :goto_e
    return-void
.end method

.method private static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 85
    const-string v0, "\\\""

    const-string v1, "\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\\\"

    const-string v2, "\\"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 90
    iget-boolean v0, p0, Lcom/wuyouwin/core/WineRegistryEditor;->modified:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/wuyouwin/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    iget-object v1, p0, Lcom/wuyouwin/core/WineRegistryEditor;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 94
    :goto_0
    return-void
.end method

.method public getDwordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "fallback"    # Ljava/lang/Integer;

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/core/WineRegistryEditor;->getRawValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p3

    :goto_0
    return-object v1
.end method

.method public getHexValues(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/core/WineRegistryEditor;->getRawValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "hex:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hex("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    :cond_0
    const-string v1, "hex[\\(\\)0-9]*:"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\\n  "

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "items":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [B

    .line 201
    .local v2, "bytes":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 203
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    aput-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_1

    .line 201
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 207
    .end local v3    # "i":I
    return-object v2

    .line 209
    .end local v1    # "items":[Ljava/lang/String;
    .end local v2    # "bytes":[B
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public getStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "fallback"    # Ljava/lang/String;

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/core/WineRegistryEditor;->getRawValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p3

    :goto_0
    return-object v1
.end method

.method public getSymlinkValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 213
    invoke-virtual {p0, p1, p2}, Lcom/wuyouwin/core/WineRegistryEditor;->getHexValues(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 214
    .local v0, "symlinkBytes":[B
    if-eqz v0, :cond_0

    .line 215
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v1

    .line 216
    .local v1, "buffer":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\Registry\\Machine\\"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 218
    .end local v1    # "buffer":Ljava/nio/CharBuffer;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public removeKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 361
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/wuyouwin/core/WineRegistryEditor;->removeKey(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public removeKey(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "removeTree"    # Z

    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, "removed":Z
    if-eqz p2, :cond_2

    .line 368
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->getKeyLocation(Ljava/lang/String;Z)Lcom/wuyouwin/core/WineRegistryEditor$Location;

    move-result-object v1

    move-object v2, v1

    .local v2, "location":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    if-eqz v1, :cond_1

    .line 369
    invoke-direct {p0, v2}, Lcom/wuyouwin/core/WineRegistryEditor;->removeRegion(Lcom/wuyouwin/core/WineRegistryEditor$Location;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 368
    :cond_1
    nop

    .line 371
    .end local v2    # "location":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    goto :goto_1

    .line 373
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->getKeyLocation(Ljava/lang/String;Z)Lcom/wuyouwin/core/WineRegistryEditor$Location;

    move-result-object v1

    .line 374
    .local v1, "location":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    if-eqz v1, :cond_3

    invoke-direct {p0, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->removeRegion(Lcom/wuyouwin/core/WineRegistryEditor$Location;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .line 376
    .end local v1    # "location":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    :cond_3
    :goto_1
    return v0
.end method

.method public removeValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 352
    invoke-direct {p0, p1}, Lcom/wuyouwin/core/WineRegistryEditor;->getKeyLocation(Ljava/lang/String;)Lcom/wuyouwin/core/WineRegistryEditor$Location;

    move-result-object v0

    .line 353
    .local v0, "keyLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    if-nez v0, :cond_0

    return-void

    .line 355
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/wuyouwin/core/WineRegistryEditor;->getValueLocation(Lcom/wuyouwin/core/WineRegistryEditor$Location;Ljava/lang/String;)Lcom/wuyouwin/core/WineRegistryEditor$Location;

    move-result-object v1

    .line 356
    .local v1, "valueLocation":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    if-nez v1, :cond_1

    return-void

    .line 357
    :cond_1
    invoke-direct {p0, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->removeRegion(Lcom/wuyouwin/core/WineRegistryEditor$Location;)Z

    .line 358
    return-void
.end method

.method public setCreateKeyIfNotExist(Z)V
    .locals 0
    .param p1, "createKeyIfNotExist"    # Z

    .line 97
    iput-boolean p1, p0, Lcom/wuyouwin/core/WineRegistryEditor;->createKeyIfNotExist:Z

    .line 98
    return-void
.end method

.method public setDwordValue(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dword:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%08x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/wuyouwin/core/WineRegistryEditor;->setRawValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public setHexValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 177
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/wuyouwin/math/Mathf;->roundTo(FF)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x7

    .line 178
    .local v0, "start":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v1, "lines":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v0

    .local v3, "j":I
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 180
    if-lez v2, :cond_0

    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_0

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    const/16 v5, 0x38

    if-le v3, v5, :cond_1

    .line 182
    const-string v3, "\\\n  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const/16 v3, 0x8

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_1

    .line 181
    .end local v3    # "j":I
    .restart local v4    # "j":I
    :cond_1
    move v3, v4

    .line 185
    .end local v4    # "j":I
    .restart local v3    # "j":I
    :goto_1
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 187
    .end local v2    # "i":I
    .end local v3    # "j":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/wuyouwin/core/WineRegistryEditor;->setRawValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public setHexValues(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "bytes"    # [B

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v0, "data":Ljava/lang/StringBuilder;
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p3, v2

    .local v3, "b":B
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%02x"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setHexValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 152
    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/wuyouwin/core/WineRegistryEditor;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "\"\""

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/wuyouwin/core/WineRegistryEditor;->setRawValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public varargs setStringValues(Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "items"    # [[Ljava/lang/String;

    .line 156
    array-length v0, p2

    new-array v0, v0, [[Ljava/lang/String;

    .line 157
    .local v0, "escapedItems":[[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 158
    aget-object v2, p2, v1

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget-object v3, p2, v1

    const/4 v4, 0x1

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p2, v1

    aget-object v4, v6, v4

    invoke-static {v4}, Lcom/wuyouwin/core/WineRegistryEditor;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const-string v3, "\"\""

    :goto_1
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 160
    .end local v1    # "i":I
    invoke-direct {p0, p1, v0}, Lcom/wuyouwin/core/WineRegistryEditor;->setRawValues(Ljava/lang/String;[[Ljava/lang/String;)V

    .line 161
    return-void
.end method
