.class public Lcom/wuyouwin/xconnector/XOutputStream;
.super Ljava/lang/Object;
.source "XOutputStream.java"

# interfaces
.implements Lcom/wuyouwin/xconnector/XStreamLock;


# instance fields
.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final nativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-string v0, "winlator"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "clientFd"    # I
    .param p2, "initialCapacity"    # I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/xconnector/XOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/xconnector/XOutputStream;->nativeAllocate(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wuyouwin/xconnector/XOutputStream;->nativePtr:J

    .line 21
    return-void
.end method

.method private static native destroy(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native length(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private native nativeAllocate(II)J
.end method

.method private static native sendData(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native setAncillaryFd(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native writeAt(JI[B)V
.end method

.method private static native writeByte(JB)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native writeByteBuffer(JLjava/nio/ByteBuffer;II)V
.end method

.method private static native writeInt(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native writeLong(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native writePad(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native writeShort(JS)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 117
    :try_start_0
    iget-wide v0, p0, Lcom/wuyouwin/xconnector/XOutputStream;->nativePtr:J

    invoke-static {v0, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->sendData(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/wuyouwin/xconnector/XOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 121
    nop

    .line 122
    return-void

    .line 117
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to send data."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/wuyouwin/xconnector/XOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 121
    throw v0
.end method

.method public destroy()V
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/wuyouwin/xconnector/XOutputStream;->nativePtr:J

    invoke-static {v0, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->destroy(J)V

    .line 112
    return-void
.end method

.method public length()I
    .locals 2

    .line 125
    iget-wide v0, p0, Lcom/wuyouwin/xconnector/XOutputStream;->nativePtr:J

    invoke-static {v0, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->length(J)I

    move-result v0

    return v0
.end method

.method public lock()Lcom/wuyouwin/xconnector/XStreamLock;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/wuyouwin/xconnector/XOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 107
    return-object p0
.end method

.method public setAncillaryFd(I)V
    .locals 2
    .param p1, "ancillaryFd"    # I

    .line 24
    iget-wide v0, p0, Lcom/wuyouwin/xconnector/XOutputStream;->nativePtr:J

    invoke-static {v0, v1, p1}, Lcom/wuyouwin/xconnector/XOutputStream;->setAncillaryFd(JI)V

    .line 25
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 81
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-wide v0, p0, Lcom/wuyouwin/xconnector/XOutputStream;->nativePtr:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-static {v0, v1, p1, v2, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByteBuffer(JLjava/nio/ByteBuffer;II)V

    goto :goto_1

    .line 85
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 86
    iget-wide v2, p0, Lcom/wuyouwin/xconnector/XOutputStream;->nativePtr:J

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(JB)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_1
    :goto_1
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "data"    # [B

    .line 51
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/wuyouwin/xconnector/XOutputStream;->write([BII)V

    .line 52
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 55
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    iget-wide v1, p0, Lcom/wuyouwin/xconnector/XOutputStream;->nativePtr:J

    aget-byte v3, p1, v0

    invoke-static {v1, v2, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(JB)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public writeByte(B)V
    .locals 2
    .param p1, "value"    # B

    .line 28
    iget-wide v0, p0, Lcom/wuyouwin/xconnector/XOutputStream;->nativePtr:J

    invoke-static {v0, v1, p1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(JB)V

    .line 29
    return-void
.end method

.method public writeFP3232(F)V
    .locals 4
    .param p1, "value"    # F

    .line 97
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 98
    .local v0, "tmp":F
    float-to-int v1, v0

    .line 99
    .local v1, "integral":I
    sub-float v2, p1, v0

    const/high16 v3, 0x4f800000

    mul-float/2addr v2, v3

    .line 100
    .end local v0    # "tmp":F
    .local v2, "tmp":F
    float-to-int v0, v2

    .line 101
    .local v0, "frac":I
    invoke-virtual {p0, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 103
    return-void
.end method

.method public writeInt(I)V
    .locals 2
    .param p1, "value"    # I

    .line 36
    iget-wide v0, p0, Lcom/wuyouwin/xconnector/XOutputStream;->nativePtr:J

    invoke-static {v0, v1, p1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(JI)V

    .line 37
    return-void
.end method

.method public writeIntAt(II)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "value"    # I

    .line 67
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    ushr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    ushr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    ushr-int/lit8 v3, p2, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x4

    new-array v4, v4, [B

    const/4 v5, 0x0

    aput-byte v0, v4, v5

    const/4 v0, 0x1

    aput-byte v1, v4, v0

    const/4 v0, 0x2

    aput-byte v2, v4, v0

    const/4 v0, 0x3

    aput-byte v3, v4, v0

    move-object v0, v4

    .line 73
    .local v0, "data":[B
    iget-wide v1, p0, Lcom/wuyouwin/xconnector/XOutputStream;->nativePtr:J

    invoke-static {v1, v2, p1, v0}, Lcom/wuyouwin/xconnector/XOutputStream;->writeAt(JI[B)V

    .line 74
    return-void
.end method

.method public writeLong(J)V
    .locals 2
    .param p1, "value"    # J

    .line 40
    iget-wide v0, p0, Lcom/wuyouwin/xconnector/XOutputStream;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeLong(JJ)V

    .line 41
    return-void
.end method

.method public writePad(I)V
    .locals 2
    .param p1, "length"    # I

    .line 92
    iget-wide v0, p0, Lcom/wuyouwin/xconnector/XOutputStream;->nativePtr:J

    invoke-static {v0, v1, p1}, Lcom/wuyouwin/xconnector/XOutputStream;->writePad(JI)V

    .line 93
    return-void
.end method

.method public writeShort(S)V
    .locals 2
    .param p1, "value"    # S

    .line 32
    iget-wide v0, p0, Lcom/wuyouwin/xconnector/XOutputStream;->nativePtr:J

    invoke-static {v0, v1, p1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(JS)V

    .line 33
    return-void
.end method

.method public writeShortAt(IS)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "value"    # S

    .line 59
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v0, v2, v3

    const/4 v0, 0x1

    aput-byte v1, v2, v0

    move-object v0, v2

    .line 63
    .local v0, "data":[B
    iget-wide v1, p0, Lcom/wuyouwin/xconnector/XOutputStream;->nativePtr:J

    invoke-static {v1, v2, p1, v0}, Lcom/wuyouwin/xconnector/XOutputStream;->writeAt(JI[B)V

    .line 64
    return-void
.end method

.method public writeString8(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/wuyouwin/xserver/XServer;->LATIN1_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 45
    .local v0, "bytes":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    neg-int v1, v1

    and-int/lit8 v1, v1, 0x3

    .line 46
    .local v1, "length":I
    invoke-virtual {p0, v0}, Lcom/wuyouwin/xconnector/XOutputStream;->write([B)V

    .line 47
    if-lez v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writePad(I)V

    .line 48
    :cond_0
    return-void
.end method
