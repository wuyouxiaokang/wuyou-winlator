.class public abstract Lorg/apache/commons/compress/utils/ArchiveUtils;
.super Ljava/lang/Object;
.source "ArchiveUtils.java"


# direct methods
.method public static isArrayZero([BI)Z
    .locals 2
    .param p0, "a"    # [B
    .param p1, "size"    # I

    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 255
    aget-byte v1, p0, v0

    if-eqz v1, :cond_0

    .line 256
    const/4 v1, 0x0

    return v1

    .line 254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 259
    .end local v0    # "i":I
    const/4 v0, 0x1

    return v0
.end method

.method public static isEqual([BII[BIIZ)Z
    .locals 5
    .param p0, "buffer1"    # [B
    .param p1, "offset1"    # I
    .param p2, "length1"    # I
    .param p3, "buffer2"    # [B
    .param p4, "offset2"    # I
    .param p5, "length2"    # I
    .param p6, "ignoreTrailingNulls"    # Z

    .line 159
    if-ge p2, p5, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p5

    .line 160
    .local v0, "minLen":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    .line 161
    add-int v3, p1, v1

    aget-byte v3, p0, v3

    add-int v4, p4, v1

    aget-byte v4, p3, v4

    if-eq v3, v4, :cond_1

    .line 162
    return v2

    .line 160
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 165
    .end local v1    # "i":I
    const/4 v1, 0x1

    if-ne p2, p5, :cond_3

    .line 166
    return v1

    .line 168
    :cond_3
    if-eqz p6, :cond_9

    .line 169
    if-le p2, p5, :cond_6

    .line 170
    move v3, p5

    .local v3, "i":I
    :goto_2
    if-ge v3, p2, :cond_5

    .line 171
    add-int v4, p1, v3

    aget-byte v4, p0, v4

    if-eqz v4, :cond_4

    .line 172
    return v2

    .line 170
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    nop

    .end local v3    # "i":I
    goto :goto_4

    .line 176
    :cond_6
    move v3, p2

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, p5, :cond_8

    .line 177
    add-int v4, p4, v3

    aget-byte v4, p3, v4

    if-eqz v4, :cond_7

    .line 178
    return v2

    .line 176
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 182
    .end local v3    # "i":I
    :cond_8
    :goto_4
    return v1

    .line 184
    :cond_9
    return v2
.end method

.method public static matchAsciiBuffer(Ljava/lang/String;[BII)Z
    .locals 8
    .param p0, "expected"    # Ljava/lang/String;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 76
    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .local v0, "buffer1":[B
    nop

    .line 81
    array-length v3, v0

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v1, v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isEqual([BII[BIIZ)Z

    move-result v1

    return v1

    .line 77
    .end local v0    # "buffer1":[B
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
