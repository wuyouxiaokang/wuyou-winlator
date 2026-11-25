.class public abstract Lorg/apache/commons/compress/utils/ByteUtils;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# direct methods
.method private static final checkReadLength(I)V
    .locals 2
    .param p0, "length"    # I

    .line 257
    const/16 v0, 0x8

    if-gt p0, v0, :cond_0

    .line 260
    return-void

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t read more than eight bytes into a long value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromLittleEndian([BII)J
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "off"    # I
    .param p2, "length"    # I

    .line 80
    invoke-static {p2}, Lorg/apache/commons/compress/utils/ByteUtils;->checkReadLength(I)V

    .line 81
    const-wide/16 v0, 0x0

    .line 82
    .local v0, "l":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 83
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 85
    .end local v2    # "i":I
    return-wide v0
.end method

.method public static toLittleEndian([BJII)V
    .locals 6
    .param p0, "b"    # [B
    .param p1, "value"    # J
    .param p3, "off"    # I
    .param p4, "length"    # I

    .line 166
    move-wide v0, p1

    .line 167
    .local v0, "num":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p4, :cond_0

    .line 168
    add-int v3, p3, v2

    const-wide/16 v4, 0xff

    and-long/2addr v4, v0

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 169
    const/16 v3, 0x8

    shr-long/2addr v0, v3

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 171
    .end local v2    # "i":I
    return-void
.end method
