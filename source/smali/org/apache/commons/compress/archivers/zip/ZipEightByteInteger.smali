.class public final Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
.super Ljava/lang/Object;
.source "ZipEightByteInteger.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;


# instance fields
.field private final value:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "value"    # J

    .line 75
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(Ljava/math/BigInteger;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "value"    # Ljava/math/BigInteger;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->value:Ljava/math/BigInteger;

    .line 84
    return-void
.end method

.method public static getLongValue([B)J
    .locals 2
    .param p0, "bytes"    # [B

    .line 196
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLongValue([BI)J
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .line 166
    invoke-static {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getValue([BI)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getValue([BI)Ljava/math/BigInteger;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .line 177
    add-int/lit8 v0, p1, 0x7

    aget-byte v0, p0, v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    const-wide/high16 v2, 0x7f00000000000000L    # 5.4861240687936887E303

    and-long/2addr v0, v2

    .line 178
    .local v0, "value":J
    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 179
    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    const-wide v4, 0xff0000000000L

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 180
    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    const-wide v4, 0xff00000000L

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 181
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    const-wide v4, 0xff000000L

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 182
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 183
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 184
    aget-byte v2, p0, p1

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 185
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 186
    .local v2, "val":Ljava/math/BigInteger;
    add-int/lit8 v3, p1, 0x7

    aget-byte v3, p0, v3

    const/16 v4, -0x80

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    .line 187
    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 186
    :goto_0
    return-object v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 215
    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->value:Ljava/math/BigInteger;

    move-object v1, p1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 216
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLongValue()J
    .locals 2

    .line 116
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->value:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZipEightByteInteger value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->value:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
