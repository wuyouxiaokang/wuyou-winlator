.class public Lcom/winlator/xserver/events/XIRawButtonReleaseNotify;
.super Lcom/winlator/xserver/events/Event;
.source "XIRawButtonReleaseNotify.java"


# instance fields
.field private final buttonCode:I

.field private final deviceId:S

.field private final xInputExtension:Lcom/winlator/xserver/extensions/XInputExtension;


# direct methods
.method public constructor <init>(Lcom/winlator/xserver/extensions/XInputExtension;SI)V
    .locals 1
    .param p1, "xInputExtension"    # Lcom/winlator/xserver/extensions/XInputExtension;
    .param p2, "deviceId"    # S
    .param p3, "buttonCode"    # I

    .line 16
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lcom/winlator/xserver/events/Event;-><init>(I)V

    .line 17
    iput-object p1, p0, Lcom/winlator/xserver/events/XIRawButtonReleaseNotify;->xInputExtension:Lcom/winlator/xserver/extensions/XInputExtension;

    .line 18
    iput-short p2, p0, Lcom/winlator/xserver/events/XIRawButtonReleaseNotify;->deviceId:S

    .line 19
    iput p3, p0, Lcom/winlator/xserver/events/XIRawButtonReleaseNotify;->buttonCode:I

    .line 20
    return-void
.end method


# virtual methods
.method public send(SLcom/winlator/xconnector/XOutputStream;)V
    .locals 4
    .param p1, "sequenceNumber"    # S
    .param p2, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 24
    invoke-virtual {p2}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v0

    .line 25
    .local v0, "lock":Lcom/winlator/xconnector/XStreamLock;
    :try_start_0
    iget-byte v1, p0, Lcom/winlator/xserver/events/Event;->code:B

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 26
    iget-object v1, p0, Lcom/winlator/xserver/events/XIRawButtonReleaseNotify;->xInputExtension:Lcom/winlator/xserver/extensions/XInputExtension;

    invoke-virtual {v1}, Lcom/winlator/xserver/extensions/Extension;->getMajorOpcode()B

    move-result v1

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 27
    invoke-virtual {p2, p1}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 28
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 29
    const/16 v2, 0x10

    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 30
    iget-short v2, p0, Lcom/winlator/xserver/events/XIRawButtonReleaseNotify;->deviceId:S

    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 32
    iget v2, p0, Lcom/winlator/xserver/events/XIRawButtonReleaseNotify;->buttonCode:I

    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 33
    iget-short v2, p0, Lcom/winlator/xserver/events/XIRawButtonReleaseNotify;->deviceId:S

    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 34
    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 35
    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 36
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 38
    .end local v0    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 24
    .restart local v0    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lcom/winlator/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method
