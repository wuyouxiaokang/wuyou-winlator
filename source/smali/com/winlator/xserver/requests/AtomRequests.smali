.class public abstract Lcom/winlator/xserver/requests/AtomRequests;
.super Ljava/lang/Object;
.source "AtomRequests.java"


# direct methods
.method public static getAtomName(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 6
    .param p0, "client"    # Lcom/winlator/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 35
    invoke-virtual {p1}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 36
    .local v0, "id":I
    if-ltz v0, :cond_2

    .line 38
    invoke-static {v0}, Lcom/winlator/xserver/Atom;->getName(I)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 41
    .local v2, "length":I
    invoke-virtual {p2}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v3

    .line 42
    .local v3, "lock":Lcom/winlator/xconnector/XStreamLock;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p2, v4}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 43
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 44
    invoke-virtual {p0}, Lcom/winlator/xserver/XClient;->getSequenceNumber()S

    move-result v4

    invoke-virtual {p2, v4}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 45
    neg-int v4, v2

    and-int/lit8 v4, v4, 0x3

    add-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x4

    invoke-virtual {p2, v4}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 46
    int-to-short v4, v2

    invoke-virtual {p2, v4}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 47
    const/16 v4, 0x16

    invoke-virtual {p2, v4}, Lcom/winlator/xconnector/XOutputStream;->writePad(I)V

    .line 48
    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeString8(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 50
    .end local v3    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 41
    .restart local v3    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v3}, Lcom/winlator/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v4

    .line 36
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "length":I
    .end local v3    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_2
    new-instance v1, Lcom/winlator/xserver/errors/BadAtom;

    invoke-direct {v1, v0}, Lcom/winlator/xserver/errors/BadAtom;-><init>(I)V

    throw v1
.end method

.method public static internAtom(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 7
    .param p0, "client"    # Lcom/winlator/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 17
    invoke-virtual {p0}, Lcom/winlator/xserver/XClient;->getRequestData()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 18
    .local v0, "onlyIfExists":Z
    :goto_0
    invoke-virtual {p1}, Lcom/winlator/xconnector/XInputStream;->readShort()S

    move-result v3

    .line 19
    .local v3, "length":S
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lcom/winlator/xconnector/XInputStream;->skip(I)V

    .line 20
    invoke-virtual {p1, v3}, Lcom/winlator/xconnector/XInputStream;->readString8(I)Ljava/lang/String;

    move-result-object v4

    .line 21
    .local v4, "name":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v4}, Lcom/winlator/xserver/Atom;->getId(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lcom/winlator/xserver/Atom;->internAtom(Ljava/lang/String;)I

    move-result v5

    .line 22
    .local v5, "id":I
    :goto_1
    if-ltz v5, :cond_4

    .line 24
    invoke-virtual {p2}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v6

    .line 25
    .local v6, "lock":Lcom/winlator/xconnector/XStreamLock;
    :try_start_0
    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 26
    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 27
    invoke-virtual {p0}, Lcom/winlator/xserver/XClient;->getSequenceNumber()S

    move-result v2

    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 28
    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 29
    invoke-virtual {p2, v5}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 30
    const/16 v1, 0x14

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    if-eqz v6, :cond_2

    invoke-interface {v6}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 32
    .end local v6    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_2
    return-void

    .line 24
    .restart local v6    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    :try_start_1
    invoke-interface {v6}, Lcom/winlator/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v1

    .line 22
    .end local v6    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_4
    new-instance v1, Lcom/winlator/xserver/errors/BadAtom;

    invoke-direct {v1, v5}, Lcom/winlator/xserver/errors/BadAtom;-><init>(I)V

    throw v1
.end method
