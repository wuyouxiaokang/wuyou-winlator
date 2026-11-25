.class public abstract Lcom/wuyouwin/xserver/requests/ExtensionRequests;
.super Ljava/lang/Object;
.source "ExtensionRequests.java"


# direct methods
.method public static queryExtension(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 7
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 16
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v0

    .line 17
    .local v0, "length":S
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 18
    invoke-virtual {p1, v0}, Lcom/wuyouwin/xconnector/XInputStream;->readString8(I)Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-virtual {v2, v1}, Lcom/wuyouwin/xserver/XServer;->getExtensionByName(Ljava/lang/String;)Lcom/wuyouwin/xserver/extensions/Extension;

    move-result-object v2

    .line 20
    .local v2, "extension":Lcom/wuyouwin/xserver/extensions/Extension;
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XOutputStream;->lock()Lcom/wuyouwin/xconnector/XStreamLock;

    move-result-object v3

    .line 21
    .local v3, "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p2, v4}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 22
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 23
    invoke-virtual {p0}, Lcom/wuyouwin/xserver/XClient;->getSequenceNumber()S

    move-result v6

    invoke-virtual {p2, v6}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 24
    invoke-virtual {p2, v5}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 26
    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {p2, v4}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 28
    invoke-virtual {v2}, Lcom/wuyouwin/xserver/extensions/Extension;->getMajorOpcode()B

    move-result v4

    invoke-virtual {p2, v4}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 29
    invoke-virtual {v2}, Lcom/wuyouwin/xserver/extensions/Extension;->getFirstEventId()B

    move-result v4

    invoke-virtual {p2, v4}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 30
    invoke-virtual {v2}, Lcom/wuyouwin/xserver/extensions/Extension;->getFirstErrorId()B

    move-result v4

    invoke-virtual {p2, v4}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 31
    const/16 v4, 0x14

    invoke-virtual {p2, v4}, Lcom/wuyouwin/xconnector/XOutputStream;->writePad(I)V

    goto :goto_0

    .line 20
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual {p2, v5}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 35
    const/16 v4, 0x17

    invoke-virtual {p2, v4}, Lcom/wuyouwin/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V

    .line 38
    .end local v3    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_1
    return-void

    .line 20
    .restart local v3    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :goto_1
    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v3}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v4
.end method
