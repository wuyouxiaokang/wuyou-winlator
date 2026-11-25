.class public abstract Lcom/winlator/xserver/requests/GrabRequests;
.super Ljava/lang/Object;
.source "GrabRequests.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/xserver/requests/GrabRequests$Status;
    }
.end annotation


# direct methods
.method public static grabPointer(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 9
    .param p0, "client"    # Lcom/winlator/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 20
    iget-object v0, p0, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    invoke-virtual {v0}, Lcom/winlator/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v0

    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/winlator/xserver/XClient;->skipRequest()V

    .line 22
    invoke-virtual {p2}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v0

    .line 23
    .local v0, "lock":Lcom/winlator/xconnector/XStreamLock;
    :try_start_0
    invoke-virtual {p2, v3}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 24
    sget-object v3, Lcom/winlator/xserver/requests/GrabRequests$Status;->ALREADY_GRABBED:Lcom/winlator/xserver/requests/GrabRequests$Status;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {p2, v3}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 25
    invoke-virtual {p0}, Lcom/winlator/xserver/XClient;->getSequenceNumber()S

    move-result v3

    invoke-virtual {p2, v3}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 26
    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 27
    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 29
    .end local v0    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 22
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

    .line 32
    .end local v0    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_2
    invoke-virtual {p0}, Lcom/winlator/xserver/XClient;->getRequestData()B

    move-result v0

    if-ne v0, v3, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    .line 33
    .local v0, "ownerEvents":Z
    :goto_1
    invoke-virtual {p1}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v4

    .line 34
    .local v4, "windowId":I
    iget-object v5, p0, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v5, v5, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    invoke-virtual {v5, v4}, Lcom/winlator/xserver/WindowManager;->getWindow(I)Lcom/winlator/xserver/Window;

    move-result-object v5

    .line 35
    .local v5, "window":Lcom/winlator/xserver/Window;
    if-eqz v5, :cond_8

    .line 37
    new-instance v6, Lcom/winlator/core/Bitmask;

    invoke-virtual {p1}, Lcom/winlator/xconnector/XInputStream;->readShort()S

    move-result v7

    invoke-direct {v6, v7}, Lcom/winlator/core/Bitmask;-><init>(I)V

    .line 38
    .local v6, "eventMask":Lcom/winlator/core/Bitmask;
    const/16 v7, 0xe

    invoke-virtual {p1, v7}, Lcom/winlator/xconnector/XInputStream;->skip(I)V

    .line 41
    iget-object v7, p0, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/xserver/XServer;->grabManager:Lcom/winlator/xserver/GrabManager;

    invoke-virtual {v7}, Lcom/winlator/xserver/GrabManager;->getWindow()Lcom/winlator/xserver/Window;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/xserver/XServer;->grabManager:Lcom/winlator/xserver/GrabManager;

    invoke-virtual {v7}, Lcom/winlator/xserver/GrabManager;->getClient()Lcom/winlator/xserver/XClient;

    move-result-object v7

    if-eq v7, p0, :cond_4

    .line 42
    sget-object v7, Lcom/winlator/xserver/requests/GrabRequests$Status;->ALREADY_GRABBED:Lcom/winlator/xserver/requests/GrabRequests$Status;

    .local v7, "status":Lcom/winlator/xserver/requests/GrabRequests$Status;
    goto :goto_2

    .line 44
    .end local v7    # "status":Lcom/winlator/xserver/requests/GrabRequests$Status;
    :cond_4
    invoke-virtual {v5}, Lcom/winlator/xserver/Window;->getMapState()Lcom/winlator/xserver/Window$MapState;

    move-result-object v7

    sget-object v8, Lcom/winlator/xserver/Window$MapState;->VIEWABLE:Lcom/winlator/xserver/Window$MapState;

    if-eq v7, v8, :cond_5

    .line 45
    sget-object v7, Lcom/winlator/xserver/requests/GrabRequests$Status;->NOT_VIEWABLE:Lcom/winlator/xserver/requests/GrabRequests$Status;

    .restart local v7    # "status":Lcom/winlator/xserver/requests/GrabRequests$Status;
    goto :goto_2

    .line 48
    .end local v7    # "status":Lcom/winlator/xserver/requests/GrabRequests$Status;
    :cond_5
    sget-object v7, Lcom/winlator/xserver/requests/GrabRequests$Status;->SUCCESS:Lcom/winlator/xserver/requests/GrabRequests$Status;

    .line 49
    .restart local v7    # "status":Lcom/winlator/xserver/requests/GrabRequests$Status;
    iget-object v8, p0, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v8, v8, Lcom/winlator/xserver/XServer;->grabManager:Lcom/winlator/xserver/GrabManager;

    invoke-virtual {v8, v5, v0, v6, p0}, Lcom/winlator/xserver/GrabManager;->activatePointerGrab(Lcom/winlator/xserver/Window;ZLcom/winlator/core/Bitmask;Lcom/winlator/xserver/XClient;)V

    .line 52
    :goto_2
    invoke-virtual {p2}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v8

    .line 53
    .local v8, "lock":Lcom/winlator/xconnector/XStreamLock;
    :try_start_2
    invoke-virtual {p2, v3}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 54
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {p2, v3}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 55
    invoke-virtual {p0}, Lcom/winlator/xserver/XClient;->getSequenceNumber()S

    move-result v3

    invoke-virtual {p2, v3}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 56
    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 57
    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writePad(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 58
    if-eqz v8, :cond_6

    invoke-interface {v8}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 59
    .end local v8    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_6
    return-void

    .line 52
    .restart local v8    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :catchall_2
    move-exception v1

    if-eqz v8, :cond_7

    :try_start_3
    invoke-interface {v8}, Lcom/winlator/xconnector/XStreamLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v1

    .line 35
    .end local v6    # "eventMask":Lcom/winlator/core/Bitmask;
    .end local v7    # "status":Lcom/winlator/xserver/requests/GrabRequests$Status;
    .end local v8    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_8
    new-instance v1, Lcom/winlator/xserver/errors/BadWindow;

    invoke-direct {v1, v4}, Lcom/winlator/xserver/errors/BadWindow;-><init>(I)V

    throw v1
.end method

.method public static ungrabPointer(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 1
    .param p0, "client"    # Lcom/winlator/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 62
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/winlator/xconnector/XInputStream;->skip(I)V

    .line 63
    iget-object v0, p0, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/xserver/XServer;->grabManager:Lcom/winlator/xserver/GrabManager;

    invoke-virtual {v0}, Lcom/winlator/xserver/GrabManager;->deactivatePointerGrab()V

    .line 64
    return-void
.end method
