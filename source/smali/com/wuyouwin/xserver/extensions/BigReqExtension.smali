.class public Lcom/wuyouwin/xserver/extensions/BigReqExtension;
.super Lcom/wuyouwin/xserver/extensions/Extension;
.source "BigReqExtension.java"


# direct methods
.method public constructor <init>(Lcom/wuyouwin/xserver/XServer;B)V
    .locals 0
    .param p1, "xServer"    # Lcom/wuyouwin/xserver/XServer;
    .param p2, "majorOpcode"    # B

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/xserver/extensions/Extension;-><init>(Lcom/wuyouwin/xserver/XServer;B)V

    .line 18
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 22
    const-string v0, "BIG-REQUESTS"

    return-object v0
.end method

.method public handleRequest(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 3
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 27
    invoke-virtual {p3}, Lcom/wuyouwin/xconnector/XOutputStream;->lock()Lcom/wuyouwin/xconnector/XStreamLock;

    move-result-object v0

    .line 28
    .local v0, "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p3, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 29
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 30
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/XClient;->getSequenceNumber()S

    move-result v2

    invoke-virtual {p3, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 31
    invoke-virtual {p3, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 32
    const v1, 0x3fffff

    invoke-virtual {p3, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 33
    const/16 v1, 0x14

    invoke-virtual {p3, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V

    .line 35
    .end local v0    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 27
    .restart local v0    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V
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
