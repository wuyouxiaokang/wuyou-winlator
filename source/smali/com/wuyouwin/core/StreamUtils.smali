.class public abstract Lcom/wuyouwin/core/StreamUtils;
.super Ljava/lang/Object;
.source "StreamUtils.java"


# direct methods
.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 5
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "outStream"    # Ljava/io/OutputStream;

    .line 42
    const/high16 v0, 0x10000

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [B

    .line 44
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "amountRead":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 45
    invoke-virtual {p1, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 50
    .end local v0    # "buffer":[B
    .end local v3    # "amountRead":I
    :catch_0
    move-exception v0

    goto :goto_1

    .line 47
    .restart local v0    # "buffer":[B
    .restart local v3    # "amountRead":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    const/4 v1, 0x1

    return v1

    .line 50
    .end local v0    # "buffer":[B
    .end local v3    # "amountRead":I
    :goto_1
    nop

    .line 51
    .local v0, "e":Ljava/io/IOException;
    return v1
.end method

.method public static copyToByteArray(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "inStream"    # Ljava/io/InputStream;

    .line 33
    if-nez p0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 35
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 36
    .local v0, "outStream":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/wuyouwin/core/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 37
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static skip(Ljava/io/InputStream;I)I
    .locals 5
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "bytesToSkip"    # I

    .line 13
    int-to-long v0, p1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 15
    .local v0, "bytesSkipped":I
    if-lez v0, :cond_1

    if-eq v0, p1, :cond_1

    .line 16
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 19
    .local v1, "skipBuffer":[B
    :goto_0
    if-eq v0, p1, :cond_1

    .line 20
    array-length v3, v1

    sub-int v4, p1, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .local v3, "bytesRead":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 22
    :cond_0
    add-int/2addr v0, v3

    goto :goto_0

    .line 27
    .end local v0    # "bytesSkipped":I
    .end local v1    # "skipBuffer":[B
    .end local v3    # "bytesRead":I
    :catch_0
    move-exception v0

    goto :goto_2

    .line 25
    .restart local v0    # "bytesSkipped":I
    :cond_1
    :goto_1
    return v0

    .line 27
    .end local v0    # "bytesSkipped":I
    :goto_2
    nop

    .line 28
    .local v0, "e":Ljava/io/IOException;
    return v2
.end method
