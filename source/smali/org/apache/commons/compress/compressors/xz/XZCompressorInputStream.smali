.class public Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "XZCompressorInputStream.java"


# instance fields
.field private final countingStream:Lorg/apache/commons/compress/utils/CountingInputStream;

.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "decompressConcatenated"    # Z

    .line 103
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;-><init>(Ljava/io/InputStream;ZI)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ZI)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "decompressConcatenated"    # Z
    .param p3, "memoryLimitInKb"    # I

    .line 130
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 131
    new-instance v0, Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/utils/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->countingStream:Lorg/apache/commons/compress/utils/CountingInputStream;

    .line 132
    if-eqz p2, :cond_0

    .line 133
    new-instance v0, Lorg/tukaani/xz/XZInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->countingStream:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-direct {v0, v1, p3}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

    goto :goto_0

    .line 135
    :cond_0
    new-instance v0, Lorg/tukaani/xz/SingleXZInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->countingStream:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-direct {v0, v1, p3}, Lorg/tukaani/xz/SingleXZInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

    .line 137
    :goto_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 183
    return-void
.end method

.method public read()I
    .locals 5

    .line 142
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 143
    .local v0, "ret":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V
    :try_end_0
    .catch Lorg/tukaani/xz/MemoryLimitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    return v0

    .line 145
    .end local v0    # "ret":I
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Lorg/tukaani/xz/MemoryLimitException;
    new-instance v1, Lorg/apache/commons/compress/MemoryLimitException;

    invoke-virtual {v0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryNeeded()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryLimit()I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/commons/compress/MemoryLimitException;-><init>(JILjava/lang/Exception;)V

    throw v1
.end method

.method public read([BII)I
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 152
    if-nez p3, :cond_0

    .line 153
    const/4 v0, 0x0

    return v0

    .line 156
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 157
    .local v0, "ret":I
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V
    :try_end_0
    .catch Lorg/tukaani/xz/MemoryLimitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    return v0

    .line 159
    .end local v0    # "ret":I
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Lorg/tukaani/xz/MemoryLimitException;
    new-instance v1, Lorg/apache/commons/compress/MemoryLimitException;

    invoke-virtual {v0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryNeeded()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryLimit()I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/commons/compress/MemoryLimitException;-><init>(JILjava/lang/Exception;)V

    throw v1
.end method

.method public skip(J)J
    .locals 5
    .param p1, "n"    # J

    .line 168
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0, p1, p2}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v0
    :try_end_0
    .catch Lorg/tukaani/xz/MemoryLimitException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 169
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Lorg/tukaani/xz/MemoryLimitException;
    new-instance v1, Lorg/apache/commons/compress/MemoryLimitException;

    invoke-virtual {v0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryNeeded()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryLimit()I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/commons/compress/MemoryLimitException;-><init>(JILjava/lang/Exception;)V

    throw v1
.end method
