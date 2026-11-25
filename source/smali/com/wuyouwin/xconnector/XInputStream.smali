.class public Lcom/wuyouwin/xconnector/XInputStream;
.super Ljava/lang/Object;
.source "XInputStream.java"


# instance fields
.field private final nativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-string v0, "winlator"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "clientFd"    # I
    .param p2, "initialCapacity"    # I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/xconnector/XInputStream;->nativeAllocate(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wuyouwin/xconnector/XInputStream;->nativePtr:J

    .line 18
    return-void
.end method

.method private static native available(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native destroy(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native getActivePosition(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native getAncillaryFd(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private native nativeAllocate(II)J
.end method

.method private static native readByte(J)B
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native readByteBuffer(JI)Ljava/nio/ByteBuffer;
.end method

.method private static native readInt(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native readLong(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native readMoreData(JZ)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native readShort(J)S
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native setActivePosition(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native skip(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/wuyouwin/xconnector/XInputStream;->nativePtr:J

    invoke-static {v0, v1}, Lcom/wuyouwin/xconnector/XInputStream;->available(J)I

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/wuyouwin/xconnector/XInputStream;->nativePtr:J

    invoke-static {v0, v1}, Lcom/wuyouwin/xconnector/XInputStream;->destroy(J)V

    .line 90
    return-void
.end method

.method public getActivePosition()I
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/wuyouwin/xconnector/XInputStream;->nativePtr:J

    invoke-static {v0, v1}, Lcom/wuyouwin/xconnector/XInputStream;->getActivePosition(J)I

    move-result v0

    return v0
.end method

.method public getAncillaryFd()I
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/wuyouwin/xconnector/XInputStream;->nativePtr:J

    invoke-static {v0, v1}, Lcom/wuyouwin/xconnector/XInputStream;->getAncillaryFd(J)I

    move-result v0

    return v0
.end method

.method public read([B)V
    .locals 2
    .param p1, "result"    # [B

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/wuyouwin/xconnector/XInputStream;->readByte()B

    move-result v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public readByte()B
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/wuyouwin/xconnector/XInputStream;->nativePtr:J

    invoke-static {v0, v1}, Lcom/wuyouwin/xconnector/XInputStream;->readByte(J)B

    move-result v0

    return v0
.end method

.method public readByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "length"    # I

    .line 73
    iget-wide v0, p0, Lcom/wuyouwin/xconnector/XInputStream;->nativePtr:J

    invoke-static {v0, v1, p1}, Lcom/wuyouwin/xconnector/XInputStream;->readByteBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public readInt()I
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/wuyouwin/xconnector/XInputStream;->nativePtr:J

    invoke-static {v0, v1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt(J)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/wuyouwin/xconnector/XInputStream;->nativePtr:J

    invoke-static {v0, v1}, Lcom/wuyouwin/xconnector/XInputStream;->readLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readMoreData(Z)I
    .locals 2
    .param p1, "canReceiveAncillaryMessages"    # Z

    .line 21
    iget-wide v0, p0, Lcom/wuyouwin/xconnector/XInputStream;->nativePtr:J

    invoke-static {v0, v1, p1}, Lcom/wuyouwin/xconnector/XInputStream;->readMoreData(JZ)I

    move-result v0

    return v0
.end method

.method public readShort()S
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/wuyouwin/xconnector/XInputStream;->nativePtr:J

    invoke-static {v0, v1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort(J)S

    move-result v0

    return v0
.end method

.method public readString8(I)Ljava/lang/String;
    .locals 3
    .param p1, "length"    # I

    .line 77
    new-array v0, p1, [B

    .line 78
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Lcom/wuyouwin/xconnector/XInputStream;->read([B)V

    .line 79
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/wuyouwin/xserver/XServer;->LATIN1_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 80
    .local v1, "str":Ljava/lang/String;
    neg-int v2, p1

    and-int/lit8 v2, v2, 0x3

    if-lez v2, :cond_0

    neg-int v2, p1

    and-int/lit8 v2, v2, 0x3

    invoke-virtual {p0, v2}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 81
    :cond_0
    return-object v1
.end method

.method public readUnsignedByte()I
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/wuyouwin/xconnector/XInputStream;->nativePtr:J

    invoke-static {v0, v1}, Lcom/wuyouwin/xconnector/XInputStream;->readByte(J)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    return v0
.end method

.method public readUnsignedInt()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/wuyouwin/xconnector/XInputStream;->nativePtr:J

    invoke-static {v0, v1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnsignedShort()I
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/wuyouwin/xconnector/XInputStream;->nativePtr:J

    invoke-static {v0, v1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort(J)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    return v0
.end method

.method public setActivePosition(I)V
    .locals 2
    .param p1, "activePosition"    # I

    .line 33
    iget-wide v0, p0, Lcom/wuyouwin/xconnector/XInputStream;->nativePtr:J

    invoke-static {v0, v1, p1}, Lcom/wuyouwin/xconnector/XInputStream;->setActivePosition(JI)V

    .line 34
    return-void
.end method

.method public skip(I)V
    .locals 2
    .param p1, "length"    # I

    .line 85
    iget-wide v0, p0, Lcom/wuyouwin/xconnector/XInputStream;->nativePtr:J

    invoke-static {v0, v1, p1}, Lcom/wuyouwin/xconnector/XInputStream;->skip(JI)V

    .line 86
    return-void
.end method
