.class public abstract Lcom/winlator/xserver/requests/SelectionRequests;
.super Ljava/lang/Object;
.source "SelectionRequests.java"


# direct methods
.method public static getSelectionOwner(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 5
    .param p0, "client"    # Lcom/winlator/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 31
    invoke-virtual {p1}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 32
    .local v0, "atom":I
    invoke-static {v0}, Lcom/winlator/xserver/Atom;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 33
    iget-object v1, p0, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->selectionManager:Lcom/winlator/xserver/SelectionManager;

    invoke-virtual {v1, v0}, Lcom/winlator/xserver/SelectionManager;->getSelection(I)Lcom/winlator/xserver/SelectionManager$Selection;

    move-result-object v1

    iget-object v1, v1, Lcom/winlator/xserver/SelectionManager$Selection;->owner:Lcom/winlator/xserver/Window;

    .line 35
    .local v1, "owner":Lcom/winlator/xserver/Window;
    invoke-virtual {p2}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v2

    .line 36
    .local v2, "lock":Lcom/winlator/xconnector/XStreamLock;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p2, v3}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 37
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 38
    invoke-virtual {p0}, Lcom/winlator/xserver/XClient;->getSequenceNumber()S

    move-result v4

    invoke-virtual {p2, v4}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 39
    invoke-virtual {p2, v3}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 40
    if-eqz v1, :cond_0

    iget v3, v1, Lcom/winlator/xserver/XResource;->id:I

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    invoke-virtual {p2, v3}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 41
    const/16 v3, 0x14

    invoke-virtual {p2, v3}, Lcom/winlator/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 43
    .end local v2    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_1
    return-void

    .line 35
    .restart local v2    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :goto_1
    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Lcom/winlator/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v3

    .line 32
    .end local v1    # "owner":Lcom/winlator/xserver/Window;
    .end local v2    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_3
    new-instance v1, Lcom/winlator/xserver/errors/BadAtom;

    invoke-direct {v1, v0}, Lcom/winlator/xserver/errors/BadAtom;-><init>(I)V

    throw v1
.end method

.method public static setSelectionOwner(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 5
    .param p0, "client"    # Lcom/winlator/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 19
    invoke-virtual {p1}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 20
    .local v0, "windowId":I
    invoke-virtual {p1}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 21
    .local v1, "atom":I
    invoke-virtual {p1}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v2

    .line 23
    .local v2, "timestamp":I
    iget-object v3, p0, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    invoke-virtual {v3, v0}, Lcom/winlator/xserver/WindowManager;->getWindow(I)Lcom/winlator/xserver/Window;

    move-result-object v3

    .line 24
    .local v3, "owner":Lcom/winlator/xserver/Window;
    if-eqz v3, :cond_1

    .line 25
    invoke-static {v1}, Lcom/winlator/xserver/Atom;->isValid(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    iget-object v4, p0, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/xserver/XServer;->selectionManager:Lcom/winlator/xserver/SelectionManager;

    invoke-virtual {v4, v1, v3, p0, v2}, Lcom/winlator/xserver/SelectionManager;->setSelection(ILcom/winlator/xserver/Window;Lcom/winlator/xserver/XClient;I)V

    .line 28
    return-void

    .line 25
    :cond_0
    new-instance v4, Lcom/winlator/xserver/errors/BadAtom;

    invoke-direct {v4, v1}, Lcom/winlator/xserver/errors/BadAtom;-><init>(I)V

    throw v4

    .line 24
    :cond_1
    new-instance v4, Lcom/winlator/xserver/errors/BadWindow;

    invoke-direct {v4, v0}, Lcom/winlator/xserver/errors/BadWindow;-><init>(I)V

    throw v4
.end method
