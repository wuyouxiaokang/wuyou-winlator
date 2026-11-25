.class public abstract Lcom/winlator/xserver/requests/KeyboardRequests;
.super Ljava/lang/Object;
.source "KeyboardRequests.java"


# direct methods
.method public static getKeyboardMapping(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 5
    .param p0, "client"    # Lcom/winlator/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 17
    invoke-virtual {p1}, Lcom/winlator/xconnector/XInputStream;->readByte()B

    move-result v0

    .line 18
    .local v0, "firstKeycode":B
    invoke-virtual {p1}, Lcom/winlator/xconnector/XInputStream;->readUnsignedByte()I

    move-result v1

    .line 19
    .local v1, "count":I
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/winlator/xconnector/XInputStream;->skip(I)V

    .line 21
    invoke-virtual {p2}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v3

    .line 22
    .local v3, "lock":Lcom/winlator/xconnector/XStreamLock;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p2, v4}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 23
    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 24
    invoke-virtual {p0}, Lcom/winlator/xserver/XClient;->getSequenceNumber()S

    move-result v2

    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 25
    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 26
    const/16 v2, 0x18

    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XOutputStream;->writePad(I)V

    .line 28
    add-int/lit8 v2, v0, -0x8

    .line 29
    .local v2, "i":I
    :goto_0
    if-eqz v1, :cond_0

    .line 30
    iget-object v4, p0, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/xserver/XServer;->keyboard:Lcom/winlator/xserver/Keyboard;

    iget-object v4, v4, Lcom/winlator/xserver/Keyboard;->keysyms:[I

    aget v4, v4, v2

    invoke-virtual {p2, v4}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    add-int/lit8 v1, v1, -0x1

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    .end local v2    # "i":I
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 29
    .restart local v2    # "i":I
    :cond_0
    nop

    .line 34
    .end local v2    # "i":I
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 35
    .end local v3    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_1
    return-void

    .line 21
    .restart local v3    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :goto_1
    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v3}, Lcom/winlator/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v2
.end method

.method public static getModifierMapping(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 3
    .param p0, "client"    # Lcom/winlator/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 38
    invoke-virtual {p2}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v0

    .line 39
    .local v0, "lock":Lcom/winlator/xconnector/XStreamLock;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 40
    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 41
    invoke-virtual {p0}, Lcom/winlator/xserver/XClient;->getSequenceNumber()S

    move-result v1

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 42
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 43
    const/16 v1, 0x18

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writePad(I)V

    .line 44
    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 46
    .end local v0    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 38
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
