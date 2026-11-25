.class public Lcom/wuyouwin/xserver/events/XIRawMotionNotify;
.super Lcom/wuyouwin/xserver/events/Event;
.source "XIRawMotionNotify.java"


# instance fields
.field private final deviceId:S

.field private final valuatorMask:I

.field private final valuators:[F

.field private final xInputExtension:Lcom/wuyouwin/xserver/extensions/XInputExtension;


# direct methods
.method public constructor <init>(Lcom/wuyouwin/xserver/extensions/XInputExtension;S[FI)V
    .locals 1
    .param p1, "xInputExtension"    # Lcom/wuyouwin/xserver/extensions/XInputExtension;
    .param p2, "deviceId"    # S
    .param p3, "valuators"    # [F
    .param p4, "valuatorMask"    # I

    .line 17
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lcom/wuyouwin/xserver/events/Event;-><init>(I)V

    .line 18
    iput-object p1, p0, Lcom/wuyouwin/xserver/events/XIRawMotionNotify;->xInputExtension:Lcom/wuyouwin/xserver/extensions/XInputExtension;

    .line 19
    iput-short p2, p0, Lcom/wuyouwin/xserver/events/XIRawMotionNotify;->deviceId:S

    .line 20
    iput-object p3, p0, Lcom/wuyouwin/xserver/events/XIRawMotionNotify;->valuators:[F

    .line 21
    iput p4, p0, Lcom/wuyouwin/xserver/events/XIRawMotionNotify;->valuatorMask:I

    .line 22
    return-void
.end method


# virtual methods
.method public send(SLcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 7
    .param p1, "sequenceNumber"    # S
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 26
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XOutputStream;->lock()Lcom/wuyouwin/xconnector/XStreamLock;

    move-result-object v0

    .line 27
    .local v0, "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :try_start_0
    iget-object v1, p0, Lcom/wuyouwin/xserver/events/XIRawMotionNotify;->valuators:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x4

    add-int/2addr v1, v2

    div-int/2addr v1, v2

    .line 29
    .local v1, "replyLength":I
    iget-byte v3, p0, Lcom/wuyouwin/xserver/events/Event;->code:B

    invoke-virtual {p2, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 30
    iget-object v3, p0, Lcom/wuyouwin/xserver/events/XIRawMotionNotify;->xInputExtension:Lcom/wuyouwin/xserver/extensions/XInputExtension;

    invoke-virtual {v3}, Lcom/wuyouwin/xserver/extensions/Extension;->getMajorOpcode()B

    move-result v3

    invoke-virtual {p2, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 31
    invoke-virtual {p2, p1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 32
    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 33
    const/16 v3, 0x11

    invoke-virtual {p2, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 34
    iget-short v3, p0, Lcom/wuyouwin/xserver/events/XIRawMotionNotify;->deviceId:S

    invoke-virtual {p2, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p2, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 36
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 37
    iget-short v4, p0, Lcom/wuyouwin/xserver/events/XIRawMotionNotify;->deviceId:S

    invoke-virtual {p2, v4}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 38
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 39
    invoke-virtual {p2, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 40
    invoke-virtual {p2, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writePad(I)V

    .line 41
    iget v2, p0, Lcom/wuyouwin/xserver/events/XIRawMotionNotify;->valuatorMask:I

    invoke-virtual {p2, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 43
    iget-object v2, p0, Lcom/wuyouwin/xserver/events/XIRawMotionNotify;->valuators:[F

    array-length v4, v2

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_0

    aget v6, v2, v5

    .local v6, "value":F
    invoke-virtual {p2, v6}, Lcom/wuyouwin/xconnector/XOutputStream;->writeFP3232(F)V

    .end local v6    # "value":F
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 26
    .end local v1    # "replyLength":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 44
    .restart local v1    # "replyLength":I
    :cond_0
    iget-object v2, p0, Lcom/wuyouwin/xserver/events/XIRawMotionNotify;->valuators:[F

    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_1

    aget v5, v2, v3

    .local v5, "value":F
    invoke-virtual {p2, v5}, Lcom/wuyouwin/xconnector/XOutputStream;->writeFP3232(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v5    # "value":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 45
    .end local v1    # "replyLength":I
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V

    .line 46
    .end local v0    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_2
    return-void

    .line 26
    .restart local v0    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :goto_2
    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v1
.end method
