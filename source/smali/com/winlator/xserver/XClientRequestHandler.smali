.class public Lcom/winlator/xserver/XClientRequestHandler;
.super Ljava/lang/Object;
.source "XClientRequestHandler.java"

# interfaces
.implements Lcom/winlator/xconnector/RequestHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleAuthRequest(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)Z
    .locals 6
    .param p1, "client"    # Lcom/winlator/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 120
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->available()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 121
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/winlator/xconnector/XInputStream;->skip(I)V

    .line 123
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readShort()S

    move-result v1

    .line 124
    .local v1, "majorVersion":S
    const/16 v2, 0xb

    if-ne v1, v2, :cond_5

    .line 126
    invoke-virtual {p2, v0}, Lcom/winlator/xconnector/XInputStream;->skip(I)V

    .line 127
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readShort()S

    move-result v2

    .line 128
    .local v2, "nameLength":S
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readShort()S

    move-result v3

    .line 129
    .local v3, "dataLength":S
    invoke-virtual {p2, v0}, Lcom/winlator/xconnector/XInputStream;->skip(I)V

    .line 131
    if-lez v2, :cond_1

    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XInputStream;->readString8(I)Ljava/lang/String;

    .line 132
    :cond_1
    if-lez v3, :cond_2

    invoke-virtual {p2, v3}, Lcom/winlator/xconnector/XInputStream;->readString8(I)Ljava/lang/String;

    .line 134
    :cond_2
    iget-object v0, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    invoke-virtual {v0, v4}, Lcom/winlator/xserver/XServer;->lock(Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v0

    .line 135
    .local v0, "lock":Lcom/winlator/xserver/XLock;
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/winlator/xserver/XClientRequestHandler;->sendServerInformation(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/winlator/xserver/XLock;->close()V

    .line 138
    .end local v0    # "lock":Lcom/winlator/xserver/XLock;
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/winlator/xserver/XClient;->setAuthenticated(Z)V

    .line 139
    return v0

    .line 134
    .restart local v0    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_4

    :try_start_1
    invoke-interface {v0}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v4

    .line 124
    .end local v0    # "lock":Lcom/winlator/xserver/XLock;
    .end local v2    # "nameLength":S
    .end local v3    # "dataLength":S
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported major X protocol version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleNormalRequest(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)Z
    .locals 8
    .param p1, "client"    # Lcom/winlator/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 143
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->available()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    return v1

    .line 144
    :cond_0
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readByte()B

    move-result v0

    .line 145
    .local v0, "opcode":B
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readByte()B

    move-result v3

    .line 147
    .local v3, "requestData":B
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readUnsignedShort()I

    move-result v4

    .line 148
    .local v4, "requestLength":I
    if-eqz v4, :cond_1

    .line 149
    mul-int/lit8 v5, v4, 0x4

    sub-int/2addr v5, v2

    .end local v4    # "requestLength":I
    .local v5, "requestLength":I
    goto :goto_0

    .line 151
    .end local v5    # "requestLength":I
    .restart local v4    # "requestLength":I
    :cond_1
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->available()I

    move-result v5

    if-ge v5, v2, :cond_2

    .line 152
    return v1

    .line 154
    :cond_2
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v5

    mul-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x8

    .line 155
    .end local v4    # "requestLength":I
    .restart local v5    # "requestLength":I
    :goto_0
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->available()I

    move-result v2

    if-ge v2, v5, :cond_3

    return v1

    .line 157
    :cond_3
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->generateSequenceNumber()V

    .line 158
    invoke-virtual {p1, v3}, Lcom/winlator/xserver/XClient;->setRequestData(B)V

    .line 159
    invoke-virtual {p1, v5}, Lcom/winlator/xserver/XClient;->setRequestLength(I)V

    .line 162
    if-gez v0, :cond_5

    .line 163
    :try_start_0
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    invoke-virtual {v1, v0}, Lcom/winlator/xserver/XServer;->getExtension(B)Lcom/winlator/xserver/extensions/Extension;

    move-result-object v1

    .line 164
    .local v1, "extension":Lcom/winlator/xserver/extensions/Extension;
    if-eqz v1, :cond_4

    invoke-virtual {v1, p1, p2, p3}, Lcom/winlator/xserver/extensions/Extension;->handleRequest(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V

    goto :goto_1

    .line 425
    .end local v1    # "extension":Lcom/winlator/xserver/extensions/Extension;
    :catch_0
    move-exception v1

    goto/16 :goto_2a

    .line 165
    :cond_4
    :goto_1
    goto/16 :goto_28

    .line 167
    :cond_5
    sparse-switch v0, :sswitch_data_0

    .line 421
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported opcode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v1

    .line 418
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_0
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->skipRequest()V

    .line 419
    goto/16 :goto_28

    .line 415
    :sswitch_1
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/KeyboardRequests;->getModifierMapping(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V

    .line 416
    goto/16 :goto_28

    .line 412
    :sswitch_2
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/CursorRequests;->getPointerMapping(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V

    .line 413
    goto/16 :goto_28

    .line 409
    :sswitch_3
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->skipRequest()V

    .line 410
    goto/16 :goto_28

    .line 406
    :sswitch_4
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/WindowRequests;->getScreenSaver(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V

    .line 407
    goto/16 :goto_28

    .line 403
    :sswitch_5
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->skipRequest()V

    .line 404
    goto/16 :goto_28

    .line 400
    :sswitch_6
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->skipRequest()V

    .line 401
    goto/16 :goto_28

    .line 395
    :sswitch_7
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock(Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_0
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .local v1, "lock":Lcom/winlator/xserver/XLock;
    :try_start_1
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/KeyboardRequests;->getKeyboardMapping(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    if-eqz v1, :cond_6

    :try_start_2
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_2
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_2 .. :try_end_2} :catch_0

    .line 398
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_6
    goto/16 :goto_28

    .line 395
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_7

    :try_start_3
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 392
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_8
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/ExtensionRequests;->queryExtension(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V

    .line 393
    goto/16 :goto_28

    .line 387
    :sswitch_9
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->PIXMAP_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/xserver/XServer$Lockable;->CURSOR_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v4, v6}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_4
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_4 .. :try_end_4} :catch_0

    .line 388
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_5
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/CursorRequests;->freeCursor(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 389
    if-eqz v1, :cond_8

    :try_start_6
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_6
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_6 .. :try_end_6} :catch_0

    .line 390
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_8
    goto/16 :goto_28

    .line 387
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_2
    move-exception v2

    if-eqz v1, :cond_9

    :try_start_7
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v4

    :try_start_8
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_3
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 384
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_a
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->skipRequest()V

    .line 385
    goto/16 :goto_28

    .line 379
    :sswitch_b
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->PIXMAP_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/xserver/XServer$Lockable;->CURSOR_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v4, v6}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_8
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_8 .. :try_end_8} :catch_0

    .line 380
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_9
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/CursorRequests;->createCursor(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 381
    if-eqz v1, :cond_a

    :try_start_a
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_a
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_a .. :try_end_a} :catch_0

    .line 382
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_a
    goto/16 :goto_28

    .line 379
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_4
    move-exception v2

    if-eqz v1, :cond_b

    :try_start_b
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v4

    :try_start_c
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_4
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 376
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_c
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->skipRequest()V

    .line 377
    goto/16 :goto_28

    .line 373
    :sswitch_d
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->skipRequest()V

    .line 374
    goto/16 :goto_28

    .line 368
    :sswitch_e
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->PIXMAP_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v4}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_c
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_c .. :try_end_c} :catch_0

    .line 369
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_d
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/DrawRequests;->getImage(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 370
    if-eqz v1, :cond_c

    :try_start_e
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_e
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_e .. :try_end_e} :catch_0

    .line 371
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_c
    goto/16 :goto_28

    .line 368
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_6
    move-exception v2

    if-eqz v1, :cond_d

    :try_start_f
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_5

    :catchall_7
    move-exception v4

    :try_start_10
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    :goto_5
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 363
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_f
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->GRAPHIC_CONTEXT_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v4}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_10
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_10 .. :try_end_10} :catch_0

    .line 364
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_11
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/DrawRequests;->putImage(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 365
    if-eqz v1, :cond_e

    :try_start_12
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_12
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_12 .. :try_end_12} :catch_0

    .line 366
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_e
    goto/16 :goto_28

    .line 363
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_8
    move-exception v2

    if-eqz v1, :cond_f

    :try_start_13
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    goto :goto_6

    :catchall_9
    move-exception v4

    :try_start_14
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_6
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 358
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_10
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->GRAPHIC_CONTEXT_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v4}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_14
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_14 .. :try_end_14} :catch_0

    .line 359
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_15
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/DrawRequests;->polyFillRectangle(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 360
    if-eqz v1, :cond_10

    :try_start_16
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_16
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_16 .. :try_end_16} :catch_0

    .line 361
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_10
    goto/16 :goto_28

    .line 358
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_a
    move-exception v2

    if-eqz v1, :cond_11

    :try_start_17
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    goto :goto_7

    :catchall_b
    move-exception v4

    :try_start_18
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_11
    :goto_7
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 355
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_11
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->skipRequest()V

    .line 356
    goto/16 :goto_28

    .line 352
    :sswitch_12
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->skipRequest()V

    .line 353
    goto/16 :goto_28

    .line 347
    :sswitch_13
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->GRAPHIC_CONTEXT_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v4}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_18
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_18 .. :try_end_18} :catch_0

    .line 348
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_19
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/DrawRequests;->polyLine(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    .line 349
    if-eqz v1, :cond_12

    :try_start_1a
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_1a
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_1a .. :try_end_1a} :catch_0

    .line 350
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_12
    goto/16 :goto_28

    .line 347
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_c
    move-exception v2

    if-eqz v1, :cond_13

    :try_start_1b
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    goto :goto_8

    :catchall_d
    move-exception v4

    :try_start_1c
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_13
    :goto_8
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 342
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_14
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->GRAPHIC_CONTEXT_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v4}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_1c
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_1c .. :try_end_1c} :catch_0

    .line 343
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_1d
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/DrawRequests;->copyArea(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    .line 344
    if-eqz v1, :cond_14

    :try_start_1e
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_1e
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_1e .. :try_end_1e} :catch_0

    .line 345
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_14
    goto/16 :goto_28

    .line 342
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_e
    move-exception v2

    if-eqz v1, :cond_15

    :try_start_1f
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_f

    goto :goto_9

    :catchall_f
    move-exception v4

    :try_start_20
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_15
    :goto_9
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 337
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_15
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v4}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_20
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_20 .. :try_end_20} :catch_0

    .line 338
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_21
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/DrawRequests;->clearArea(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_10

    .line 339
    if-eqz v1, :cond_16

    :try_start_22
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_22
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_22 .. :try_end_22} :catch_0

    .line 340
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_16
    goto/16 :goto_28

    .line 337
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_10
    move-exception v2

    if-eqz v1, :cond_17

    :try_start_23
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_11

    goto :goto_a

    :catchall_11
    move-exception v4

    :try_start_24
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_17
    :goto_a
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 332
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_16
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->GRAPHIC_CONTEXT_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock(Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_24
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_24 .. :try_end_24} :catch_0

    .line 333
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_25
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/GraphicsContextRequests;->freeGC(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_12

    .line 334
    if-eqz v1, :cond_18

    :try_start_26
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_26
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_26 .. :try_end_26} :catch_0

    .line 335
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_18
    goto/16 :goto_28

    .line 332
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_12
    move-exception v2

    if-eqz v1, :cond_19

    :try_start_27
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_13

    goto :goto_b

    :catchall_13
    move-exception v4

    :try_start_28
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_19
    :goto_b
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 329
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_17
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->skipRequest()V

    .line 330
    goto/16 :goto_28

    .line 326
    :sswitch_18
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->skipRequest()V

    .line 327
    goto/16 :goto_28

    .line 321
    :sswitch_19
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->PIXMAP_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/xserver/XServer$Lockable;->GRAPHIC_CONTEXT_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v4, v6}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_28
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_28 .. :try_end_28} :catch_0

    .line 322
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_29
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/GraphicsContextRequests;->changeGC(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_14

    .line 323
    if-eqz v1, :cond_1a

    :try_start_2a
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_2a
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_2a .. :try_end_2a} :catch_0

    .line 324
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_1a
    goto/16 :goto_28

    .line 321
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_14
    move-exception v2

    if-eqz v1, :cond_1b

    :try_start_2b
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_15

    goto :goto_c

    :catchall_15
    move-exception v4

    :try_start_2c
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_c
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 316
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_1a
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->PIXMAP_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/xserver/XServer$Lockable;->GRAPHIC_CONTEXT_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v4, v6}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_2c
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_2c .. :try_end_2c} :catch_0

    .line 317
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_2d
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/GraphicsContextRequests;->createGC(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_16

    .line 318
    if-eqz v1, :cond_1c

    :try_start_2e
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_2e
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_2e .. :try_end_2e} :catch_0

    .line 319
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_1c
    goto/16 :goto_28

    .line 316
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_16
    move-exception v2

    if-eqz v1, :cond_1d

    :try_start_2f
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_17

    goto :goto_d

    :catchall_17
    move-exception v4

    :try_start_30
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1d
    :goto_d
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 311
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_1b
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->PIXMAP_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v4}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_30
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_30 .. :try_end_30} :catch_0

    .line 312
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_31
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/PixmapRequests;->freePixmap(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_18

    .line 313
    if-eqz v1, :cond_1e

    :try_start_32
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_32
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_32 .. :try_end_32} :catch_0

    .line 314
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_1e
    goto/16 :goto_28

    .line 311
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_18
    move-exception v2

    if-eqz v1, :cond_1f

    :try_start_33
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_19

    goto :goto_e

    :catchall_19
    move-exception v4

    :try_start_34
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_e
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 306
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_1c
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->PIXMAP_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v4}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_34
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_34 .. :try_end_34} :catch_0

    .line 307
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_35
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/PixmapRequests;->createPixmap(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1a

    .line 308
    if-eqz v1, :cond_20

    :try_start_36
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_36
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_36 .. :try_end_36} :catch_0

    .line 309
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_20
    goto/16 :goto_28

    .line 306
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_1a
    move-exception v2

    if-eqz v1, :cond_21

    :try_start_37
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1b

    goto :goto_f

    :catchall_1b
    move-exception v4

    :try_start_38
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_21
    :goto_f
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 303
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_1d
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/FontRequests;->listFonts(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V

    .line 304
    goto/16 :goto_28

    .line 300
    :sswitch_1e
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/FontRequests;->openFont(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V

    .line 301
    goto/16 :goto_28

    .line 295
    :sswitch_1f
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock(Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_38
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_38 .. :try_end_38} :catch_0

    .line 296
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_39
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/WindowRequests;->getInputFocus(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_1c

    .line 297
    if-eqz v1, :cond_22

    :try_start_3a
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_3a
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_3a .. :try_end_3a} :catch_0

    .line 298
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_22
    goto/16 :goto_28

    .line 295
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_1c
    move-exception v2

    if-eqz v1, :cond_23

    :try_start_3b
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1d

    goto :goto_10

    :catchall_1d
    move-exception v4

    :try_start_3c
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_23
    :goto_10
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 290
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_20
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock(Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_3c
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_3c .. :try_end_3c} :catch_0

    .line 291
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_3d
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/WindowRequests;->setInputFocus(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_1e

    .line 292
    if-eqz v1, :cond_24

    :try_start_3e
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_3e
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_3e .. :try_end_3e} :catch_0

    .line 293
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_24
    goto/16 :goto_28

    .line 290
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_1e
    move-exception v2

    if-eqz v1, :cond_25

    :try_start_3f
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_1f

    goto :goto_11

    :catchall_1f
    move-exception v4

    :try_start_40
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_25
    :goto_11
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 285
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_21
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v4}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_40
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_40 .. :try_end_40} :catch_0

    .line 286
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_41
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/WindowRequests;->warpPointer(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_20

    .line 287
    if-eqz v1, :cond_26

    :try_start_42
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_42
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_42 .. :try_end_42} :catch_0

    .line 288
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_26
    goto/16 :goto_28

    .line 285
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_20
    move-exception v2

    if-eqz v1, :cond_27

    :try_start_43
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_21

    goto :goto_12

    :catchall_21
    move-exception v4

    :try_start_44
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_27
    :goto_12
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 280
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_22
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock(Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_44
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_44 .. :try_end_44} :catch_0

    .line 281
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_45
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/WindowRequests;->translateCoordinates(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_22

    .line 282
    if-eqz v1, :cond_28

    :try_start_46
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_46
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_46 .. :try_end_46} :catch_0

    .line 283
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_28
    goto/16 :goto_28

    .line 280
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_22
    move-exception v2

    if-eqz v1, :cond_29

    :try_start_47
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_23

    goto :goto_13

    :catchall_23
    move-exception v4

    :try_start_48
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_29
    :goto_13
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 275
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_23
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v4}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_48
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_48 .. :try_end_48} :catch_0

    .line 276
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_49
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/WindowRequests;->queryPointer(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_24

    .line 277
    if-eqz v1, :cond_2a

    :try_start_4a
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_4a
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_4a .. :try_end_4a} :catch_0

    .line 278
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_2a
    goto/16 :goto_28

    .line 275
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_24
    move-exception v2

    if-eqz v1, :cond_2b

    :try_start_4b
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_25

    goto :goto_14

    :catchall_25
    move-exception v4

    :try_start_4c
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2b
    :goto_14
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 270
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_24
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v4}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_4c
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_4c .. :try_end_4c} :catch_0

    .line 271
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_4d
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/GrabRequests;->ungrabPointer(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_26

    .line 272
    if-eqz v1, :cond_2c

    :try_start_4e
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_4e
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_4e .. :try_end_4e} :catch_0

    .line 273
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_2c
    goto/16 :goto_28

    .line 270
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_26
    move-exception v2

    if-eqz v1, :cond_2d

    :try_start_4f
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_27

    goto :goto_15

    :catchall_27
    move-exception v4

    :try_start_50
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2d
    :goto_15
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 265
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_25
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/xserver/XServer$Lockable;->CURSOR_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v4, v6}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_50
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_50 .. :try_end_50} :catch_0

    .line 266
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_51
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/GrabRequests;->grabPointer(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_28

    .line 267
    if-eqz v1, :cond_2e

    :try_start_52
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_52
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_52 .. :try_end_52} :catch_0

    .line 268
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_2e
    goto/16 :goto_28

    .line 265
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_28
    move-exception v2

    if-eqz v1, :cond_2f

    :try_start_53
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_29

    goto :goto_16

    :catchall_29
    move-exception v4

    :try_start_54
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2f
    :goto_16
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 260
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_26
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    invoke-virtual {v1}, Lcom/winlator/xserver/XServer;->lockAll()Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_54
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_54 .. :try_end_54} :catch_0

    .line 261
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_55
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/WindowRequests;->sendEvent(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_2a

    .line 262
    if-eqz v1, :cond_30

    :try_start_56
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_56
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_56 .. :try_end_56} :catch_0

    .line 263
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_30
    goto/16 :goto_28

    .line 260
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_2a
    move-exception v2

    if-eqz v1, :cond_31

    :try_start_57
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_2b

    goto :goto_17

    :catchall_2b
    move-exception v4

    :try_start_58
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_31
    :goto_17
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 255
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_27
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock(Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_58
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_58 .. :try_end_58} :catch_0

    .line 256
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_59
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/SelectionRequests;->getSelectionOwner(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_2c

    .line 257
    if-eqz v1, :cond_32

    :try_start_5a
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_5a
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_5a .. :try_end_5a} :catch_0

    .line 258
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_32
    goto/16 :goto_28

    .line 255
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_2c
    move-exception v2

    if-eqz v1, :cond_33

    :try_start_5b
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_2d

    goto :goto_18

    :catchall_2d
    move-exception v4

    :try_start_5c
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_33
    :goto_18
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 250
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_28
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock(Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_5c
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_5c .. :try_end_5c} :catch_0

    .line 251
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_5d
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/SelectionRequests;->setSelectionOwner(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_2e

    .line 252
    if-eqz v1, :cond_34

    :try_start_5e
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_5e
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_5e .. :try_end_5e} :catch_0

    .line 253
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_34
    goto/16 :goto_28

    .line 250
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_2e
    move-exception v2

    if-eqz v1, :cond_35

    :try_start_5f
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_2f

    goto :goto_19

    :catchall_2f
    move-exception v4

    :try_start_60
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_35
    :goto_19
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 245
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_29
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock(Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_60
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_60 .. :try_end_60} :catch_0

    .line 246
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_61
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/WindowRequests;->getProperty(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_30

    .line 247
    if-eqz v1, :cond_36

    :try_start_62
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_62
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_62 .. :try_end_62} :catch_0

    .line 248
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_36
    goto/16 :goto_28

    .line 245
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_30
    move-exception v2

    if-eqz v1, :cond_37

    :try_start_63
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_31

    goto :goto_1a

    :catchall_31
    move-exception v4

    :try_start_64
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_37
    :goto_1a
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 240
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_2a
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock(Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_64
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_64 .. :try_end_64} :catch_0

    .line 241
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_65
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/WindowRequests;->deleteProperty(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_32

    .line 242
    if-eqz v1, :cond_38

    :try_start_66
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_66
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_66 .. :try_end_66} :catch_0

    .line 243
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_38
    goto/16 :goto_28

    .line 240
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_32
    move-exception v2

    if-eqz v1, :cond_39

    :try_start_67
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_33

    goto :goto_1b

    :catchall_33
    move-exception v4

    :try_start_68
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_39
    :goto_1b
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 235
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_2b
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock(Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_68
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_68 .. :try_end_68} :catch_0

    .line 236
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_69
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/WindowRequests;->changeProperty(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_34

    .line 237
    if-eqz v1, :cond_3a

    :try_start_6a
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_6a
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_6a .. :try_end_6a} :catch_0

    .line 238
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_3a
    goto/16 :goto_28

    .line 235
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_34
    move-exception v2

    if-eqz v1, :cond_3b

    :try_start_6b
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_35

    goto :goto_1c

    :catchall_35
    move-exception v4

    :try_start_6c
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3b
    :goto_1c
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 232
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_2c
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/AtomRequests;->getAtomName(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V

    .line 233
    goto/16 :goto_28

    .line 229
    :sswitch_2d
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/AtomRequests;->internAtom(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V

    .line 230
    goto/16 :goto_28

    .line 224
    :sswitch_2e
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock(Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_6c
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_6c .. :try_end_6c} :catch_0

    .line 225
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_6d
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/WindowRequests;->queryTree(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_36

    .line 226
    if-eqz v1, :cond_3c

    :try_start_6e
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_6e
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_6e .. :try_end_6e} :catch_0

    .line 227
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_3c
    goto/16 :goto_28

    .line 224
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_36
    move-exception v2

    if-eqz v1, :cond_3d

    :try_start_6f
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_37

    goto :goto_1d

    :catchall_37
    move-exception v4

    :try_start_70
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3d
    :goto_1d
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 219
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_2f
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v4}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_70
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_70 .. :try_end_70} :catch_0

    .line 220
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_71
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/WindowRequests;->getGeometry(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_38

    .line 221
    if-eqz v1, :cond_3e

    :try_start_72
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_72
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_72 .. :try_end_72} :catch_0

    .line 222
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_3e
    goto/16 :goto_28

    .line 219
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_38
    move-exception v2

    if-eqz v1, :cond_3f

    :try_start_73
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_39

    goto :goto_1e

    :catchall_39
    move-exception v4

    :try_start_74
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3f
    :goto_1e
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 214
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_30
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v4}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_74
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_74 .. :try_end_74} :catch_0

    .line 215
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_75
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/WindowRequests;->configureWindow(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_3a

    .line 216
    if-eqz v1, :cond_40

    :try_start_76
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_76
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_76 .. :try_end_76} :catch_0

    .line 217
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_40
    goto/16 :goto_28

    .line 214
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_3a
    move-exception v2

    if-eqz v1, :cond_41

    :try_start_77
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_3b

    goto :goto_1f

    :catchall_3b
    move-exception v4

    :try_start_78
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_41
    :goto_1f
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 209
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_31
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v4}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_78
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_78 .. :try_end_78} :catch_0

    .line 210
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_79
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/WindowRequests;->unmapWindow(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_3c

    .line 211
    if-eqz v1, :cond_42

    :try_start_7a
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_7a
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_7a .. :try_end_7a} :catch_0

    .line 212
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_42
    goto/16 :goto_28

    .line 209
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_3c
    move-exception v2

    if-eqz v1, :cond_43

    :try_start_7b
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_3d

    goto :goto_20

    :catchall_3d
    move-exception v4

    :try_start_7c
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_43
    :goto_20
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 204
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_32
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v4}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_7c
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_7c .. :try_end_7c} :catch_0

    .line 205
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_7d
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/WindowRequests;->mapSubWindows(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_3e

    .line 206
    if-eqz v1, :cond_44

    :try_start_7e
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_7e
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_7e .. :try_end_7e} :catch_0

    .line 207
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_44
    goto/16 :goto_28

    .line 204
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_3e
    move-exception v2

    if-eqz v1, :cond_45

    :try_start_7f
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_3f

    goto :goto_21

    :catchall_3f
    move-exception v4

    :try_start_80
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_45
    :goto_21
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 199
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_33
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v4}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_80
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_80 .. :try_end_80} :catch_0

    .line 200
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_81
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/WindowRequests;->mapWindow(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_40

    .line 201
    if-eqz v1, :cond_46

    :try_start_82
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_82
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_82 .. :try_end_82} :catch_0

    .line 202
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_46
    goto/16 :goto_28

    .line 199
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_40
    move-exception v2

    if-eqz v1, :cond_47

    :try_start_83
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_41

    goto :goto_22

    :catchall_41
    move-exception v4

    :try_start_84
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_47
    :goto_22
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 194
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_34
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock(Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_84
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_84 .. :try_end_84} :catch_0

    .line 195
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_85
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/WindowRequests;->reparentWindow(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_42

    .line 196
    if-eqz v1, :cond_48

    :try_start_86
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_86
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_86 .. :try_end_86} :catch_0

    .line 197
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_48
    goto/16 :goto_28

    .line 194
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_42
    move-exception v2

    if-eqz v1, :cond_49

    :try_start_87
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_43

    goto :goto_23

    :catchall_43
    move-exception v4

    :try_start_88
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_49
    :goto_23
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 189
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_35
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v4, v6}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_88
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_88 .. :try_end_88} :catch_0

    .line 190
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_89
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/WindowRequests;->destroySubWindows(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_44

    .line 191
    if-eqz v1, :cond_4a

    :try_start_8a
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_8a
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_8a .. :try_end_8a} :catch_0

    .line 192
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_4a
    goto/16 :goto_28

    .line 189
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_44
    move-exception v2

    if-eqz v1, :cond_4b

    :try_start_8b
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_45

    goto :goto_24

    :catchall_45
    move-exception v4

    :try_start_8c
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4b
    :goto_24
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 184
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_36
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v4, v6}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_8c
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_8c .. :try_end_8c} :catch_0

    .line 185
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_8d
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/WindowRequests;->destroyWindow(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_46

    .line 186
    if-eqz v1, :cond_4c

    :try_start_8e
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_8e
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_8e .. :try_end_8e} :catch_0

    .line 187
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_4c
    goto :goto_28

    .line 184
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_46
    move-exception v2

    if-eqz v1, :cond_4d

    :try_start_8f
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_47

    goto :goto_25

    :catchall_47
    move-exception v4

    :try_start_90
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4d
    :goto_25
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 179
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_37
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock(Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_90
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_90 .. :try_end_90} :catch_0

    .line 180
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_91
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/WindowRequests;->getWindowAttributes(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_48

    .line 181
    if-eqz v1, :cond_4e

    :try_start_92
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_92
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_92 .. :try_end_92} :catch_0

    .line 182
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_4e
    goto :goto_28

    .line 179
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_48
    move-exception v2

    if-eqz v1, :cond_4f

    :try_start_93
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_49

    goto :goto_26

    :catchall_49
    move-exception v4

    :try_start_94
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4f
    :goto_26
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 174
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_38
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->CURSOR_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v4}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_94
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_94 .. :try_end_94} :catch_0

    .line 175
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_95
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/WindowRequests;->changeWindowAttributes(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_4a

    .line 176
    if-eqz v1, :cond_50

    :try_start_96
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_96
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_96 .. :try_end_96} :catch_0

    .line 177
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_50
    goto :goto_28

    .line 174
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_4a
    move-exception v2

    if-eqz v1, :cond_51

    :try_start_97
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_4b

    goto :goto_27

    :catchall_4b
    move-exception v4

    :try_start_98
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_51
    :goto_27
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2

    .line 169
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :sswitch_39
    iget-object v1, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v7, Lcom/winlator/xserver/XServer$Lockable;->CURSOR_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v4, v6, v7}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1
    :try_end_98
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_98 .. :try_end_98} :catch_0

    .line 170
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_99
    invoke-static {p1, p2, p3}, Lcom/winlator/xserver/requests/WindowRequests;->createWindow(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_99
    .catchall {:try_start_99 .. :try_end_99} :catchall_4c

    .line 171
    if-eqz v1, :cond_52

    :try_start_9a
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_9a
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_9a .. :try_end_9a} :catch_0

    .line 172
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_52
    nop

    .line 428
    :goto_28
    goto :goto_2b

    .line 169
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_4c
    move-exception v2

    if-eqz v1, :cond_53

    :try_start_9b
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_9b
    .catchall {:try_start_9b .. :try_end_9b} :catchall_4d

    goto :goto_29

    :catchall_4d
    move-exception v4

    :try_start_9c
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_53
    :goto_29
    nop

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2
    :try_end_9c
    .catch Lcom/winlator/xserver/errors/XRequestError; {:try_start_9c .. :try_end_9c} :catch_0

    .line 425
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :goto_2a
    nop

    .line 426
    .local v1, "e":Lcom/winlator/xserver/errors/XRequestError;
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->skipRequest()V

    .line 427
    invoke-virtual {v1, p1, v0}, Lcom/winlator/xserver/errors/XRequestError;->sendError(Lcom/winlator/xserver/XClient;B)V

    .line 430
    .end local v1    # "e":Lcom/winlator/xserver/errors/XRequestError;
    :goto_2b
    const/4 v1, 0x1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_39
        0x2 -> :sswitch_38
        0x3 -> :sswitch_37
        0x4 -> :sswitch_36
        0x5 -> :sswitch_35
        0x7 -> :sswitch_34
        0x8 -> :sswitch_33
        0x9 -> :sswitch_32
        0xa -> :sswitch_31
        0xc -> :sswitch_30
        0xe -> :sswitch_2f
        0xf -> :sswitch_2e
        0x10 -> :sswitch_2d
        0x11 -> :sswitch_2c
        0x12 -> :sswitch_2b
        0x13 -> :sswitch_2a
        0x14 -> :sswitch_29
        0x16 -> :sswitch_28
        0x17 -> :sswitch_27
        0x19 -> :sswitch_26
        0x1a -> :sswitch_25
        0x1b -> :sswitch_24
        0x26 -> :sswitch_23
        0x28 -> :sswitch_22
        0x29 -> :sswitch_21
        0x2a -> :sswitch_20
        0x2b -> :sswitch_1f
        0x2d -> :sswitch_1e
        0x31 -> :sswitch_1d
        0x35 -> :sswitch_1c
        0x36 -> :sswitch_1b
        0x37 -> :sswitch_1a
        0x38 -> :sswitch_19
        0x3a -> :sswitch_18
        0x3b -> :sswitch_17
        0x3c -> :sswitch_16
        0x3d -> :sswitch_15
        0x3e -> :sswitch_14
        0x41 -> :sswitch_13
        0x42 -> :sswitch_12
        0x43 -> :sswitch_11
        0x46 -> :sswitch_10
        0x48 -> :sswitch_f
        0x49 -> :sswitch_e
        0x4e -> :sswitch_d
        0x4f -> :sswitch_c
        0x5d -> :sswitch_b
        0x5e -> :sswitch_a
        0x5f -> :sswitch_9
        0x62 -> :sswitch_8
        0x65 -> :sswitch_7
        0x68 -> :sswitch_6
        0x6b -> :sswitch_5
        0x6c -> :sswitch_4
        0x73 -> :sswitch_3
        0x75 -> :sswitch_2
        0x77 -> :sswitch_1
        0x7f -> :sswitch_0
    .end sparse-switch
.end method

.method private sendServerInformation(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 13
    .param p1, "client"    # Lcom/winlator/xserver/XClient;
    .param p2, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 44
    const-string v0, "Elbrus Technologies, LLC"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-short v1, v1

    .line 45
    .local v1, "vendorNameLength":S
    iget-object v2, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/xserver/XServer;->pixmapManager:Lcom/winlator/xserver/PixmapManager;

    iget-object v2, v2, Lcom/winlator/xserver/PixmapManager;->supportedPixmapFormats:[Lcom/winlator/xserver/PixmapFormat;

    array-length v2, v2

    int-to-byte v2, v2

    .line 47
    .local v2, "pixmapFormatCount":B
    invoke-virtual {p2}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v3

    .line 48
    .local v3, "lock":Lcom/winlator/xconnector/XStreamLock;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p2, v4}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 49
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 50
    const/16 v6, 0xb

    invoke-virtual {p2, v6}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 51
    invoke-virtual {p2, v5}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 52
    invoke-virtual {p2, v5}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 53
    invoke-virtual {p2, v4}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 54
    iget-object v6, p1, Lcom/winlator/xserver/XClient;->resourceIDBase:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 55
    iget-object v6, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/xserver/XServer;->resourceIDs:Lcom/winlator/xserver/ResourceIDs;

    iget v6, v6, Lcom/winlator/xserver/ResourceIDs;->idMask:I

    invoke-virtual {p2, v6}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 56
    const/16 v6, 0x100

    invoke-virtual {p2, v6}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 57
    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 58
    const/4 v7, -0x1

    invoke-virtual {p2, v7}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 59
    invoke-virtual {p2, v4}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 60
    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 61
    invoke-virtual {p2, v5}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 62
    invoke-virtual {p2, v5}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 63
    const/16 v8, 0x20

    invoke-virtual {p2, v8}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 64
    invoke-virtual {p2, v8}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 65
    const/16 v8, 0x8

    invoke-virtual {p2, v8}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 66
    invoke-virtual {p2, v7}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 67
    invoke-virtual {p2, v5}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 68
    invoke-virtual {p2, v0}, Lcom/winlator/xconnector/XOutputStream;->writeString8(Ljava/lang/String;)V

    .line 70
    iget-object v0, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/xserver/XServer;->pixmapManager:Lcom/winlator/xserver/PixmapManager;

    iget-object v0, v0, Lcom/winlator/xserver/PixmapManager;->supportedPixmapFormats:[Lcom/winlator/xserver/PixmapFormat;

    array-length v7, v0

    move v9, v5

    :goto_0
    if-ge v9, v7, :cond_0

    aget-object v10, v0, v9

    .line 71
    .local v10, "pixmapFormat":Lcom/winlator/xserver/PixmapFormat;
    iget-byte v11, v10, Lcom/winlator/xserver/PixmapFormat;->depth:B

    invoke-virtual {p2, v11}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 72
    iget-byte v11, v10, Lcom/winlator/xserver/PixmapFormat;->bitsPerPixel:B

    invoke-virtual {p2, v11}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 73
    iget-byte v11, v10, Lcom/winlator/xserver/PixmapFormat;->scanlinePad:B

    invoke-virtual {p2, v11}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 74
    const/4 v11, 0x5

    invoke-virtual {p2, v11}, Lcom/winlator/xconnector/XOutputStream;->writePad(I)V

    .line 70
    .end local v10    # "pixmapFormat":Lcom/winlator/xserver/PixmapFormat;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 77
    :cond_0
    iget-object v0, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    iget-object v0, v0, Lcom/winlator/xserver/WindowManager;->rootWindow:Lcom/winlator/xserver/Window;

    invoke-virtual {v0}, Lcom/winlator/xserver/Window;->getContent()Lcom/winlator/xserver/Drawable;

    move-result-object v0

    iget-object v0, v0, Lcom/winlator/xserver/Drawable;->visual:Lcom/winlator/xserver/Visual;

    .line 79
    .local v0, "rootVisual":Lcom/winlator/xserver/Visual;
    iget-object v7, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    iget-object v7, v7, Lcom/winlator/xserver/WindowManager;->rootWindow:Lcom/winlator/xserver/Window;

    iget v7, v7, Lcom/winlator/xserver/XResource;->id:I

    invoke-virtual {p2, v7}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 80
    invoke-virtual {p2, v5}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 81
    const v7, 0xffffff

    invoke-virtual {p2, v7}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 82
    invoke-virtual {p2, v5}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 83
    iget-object v7, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    iget-object v7, v7, Lcom/winlator/xserver/WindowManager;->rootWindow:Lcom/winlator/xserver/Window;

    invoke-virtual {v7}, Lcom/winlator/xserver/Window;->getAllEventMasks()Lcom/winlator/core/Bitmask;

    move-result-object v7

    invoke-virtual {v7}, Lcom/winlator/core/Bitmask;->getBits()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 84
    iget-object v7, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    iget-short v7, v7, Lcom/winlator/xserver/ScreenInfo;->width:S

    invoke-virtual {p2, v7}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 85
    iget-object v7, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    iget-short v7, v7, Lcom/winlator/xserver/ScreenInfo;->height:S

    invoke-virtual {p2, v7}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 86
    iget-object v7, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    invoke-virtual {v7}, Lcom/winlator/xserver/ScreenInfo;->getWidthInMillimeters()S

    move-result v7

    invoke-virtual {p2, v7}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 87
    iget-object v7, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    invoke-virtual {v7}, Lcom/winlator/xserver/ScreenInfo;->getHeightInMillimeters()S

    move-result v7

    invoke-virtual {p2, v7}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 88
    invoke-virtual {p2, v4}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 89
    invoke-virtual {p2, v4}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 90
    iget v7, v0, Lcom/winlator/xserver/Visual;->id:I

    invoke-virtual {p2, v7}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 91
    invoke-virtual {p2, v5}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 92
    invoke-virtual {p2, v5}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 93
    iget-byte v7, v0, Lcom/winlator/xserver/Visual;->depth:B

    invoke-virtual {p2, v7}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 94
    iget-object v7, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/xserver/XServer;->pixmapManager:Lcom/winlator/xserver/PixmapManager;

    iget-object v7, v7, Lcom/winlator/xserver/PixmapManager;->supportedVisuals:[Lcom/winlator/xserver/Visual;

    array-length v7, v7

    int-to-byte v7, v7

    invoke-virtual {p2, v7}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 96
    iget-object v7, p1, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/xserver/XServer;->pixmapManager:Lcom/winlator/xserver/PixmapManager;

    iget-object v7, v7, Lcom/winlator/xserver/PixmapManager;->supportedVisuals:[Lcom/winlator/xserver/Visual;

    array-length v9, v7

    move v10, v5

    :goto_1
    if-ge v10, v9, :cond_3

    aget-object v11, v7, v10

    .line 97
    .local v11, "visual":Lcom/winlator/xserver/Visual;
    iget-byte v12, v11, Lcom/winlator/xserver/Visual;->depth:B

    invoke-virtual {p2, v12}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 98
    invoke-virtual {p2, v5}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 99
    iget-boolean v12, v11, Lcom/winlator/xserver/Visual;->displayable:Z

    if-eqz v12, :cond_1

    move v12, v4

    goto :goto_2

    :cond_1
    move v12, v5

    :goto_2
    int-to-short v12, v12

    invoke-virtual {p2, v12}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 100
    invoke-virtual {p2, v5}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 102
    iget-boolean v12, v11, Lcom/winlator/xserver/Visual;->displayable:Z

    if-eqz v12, :cond_2

    .line 103
    iget v12, v11, Lcom/winlator/xserver/Visual;->id:I

    invoke-virtual {p2, v12}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 104
    iget-object v12, v11, Lcom/winlator/xserver/Visual;->type:Lcom/winlator/xserver/Visual$Type;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    int-to-byte v12, v12

    invoke-virtual {p2, v12}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 105
    iget-byte v12, v11, Lcom/winlator/xserver/Visual;->bitsPerRGBValue:B

    invoke-virtual {p2, v12}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 106
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v6}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 107
    iget v12, v11, Lcom/winlator/xserver/Visual;->redMask:I

    invoke-virtual {p2, v12}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 108
    iget v12, v11, Lcom/winlator/xserver/Visual;->greenMask:I

    invoke-virtual {p2, v12}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 109
    iget v12, v11, Lcom/winlator/xserver/Visual;->blueMask:I

    invoke-virtual {p2, v12}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 110
    invoke-virtual {p2, v5}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 96
    .end local v11    # "visual":Lcom/winlator/xserver/Visual;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 114
    :cond_3
    invoke-virtual {p2}, Lcom/winlator/xconnector/XOutputStream;->length()I

    move-result v4

    sub-int/2addr v4, v8

    div-int/lit8 v4, v4, 0x4

    int-to-short v4, v4

    .line 115
    .local v4, "additionalDataLength":S
    const/4 v5, 0x6

    invoke-virtual {p2, v5, v4}, Lcom/winlator/xconnector/XOutputStream;->writeShortAt(IS)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v0    # "rootVisual":Lcom/winlator/xserver/Visual;
    .end local v4    # "additionalDataLength":S
    if-eqz v3, :cond_4

    invoke-interface {v3}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 117
    .end local v3    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_4
    return-void

    .line 47
    .restart local v3    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :goto_3
    if-eqz v3, :cond_5

    :try_start_1
    invoke-interface {v3}, Lcom/winlator/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v4

    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw v0
.end method


# virtual methods
.method public handleRequest(Lcom/winlator/xconnector/ConnectedClient;)Z
    .locals 4
    .param p1, "client"    # Lcom/winlator/xconnector/ConnectedClient;

    .line 33
    move-object v0, p1

    check-cast v0, Lcom/winlator/xserver/XClient;

    .line 34
    .local v0, "xClient":Lcom/winlator/xserver/XClient;
    invoke-virtual {p1}, Lcom/winlator/xconnector/ConnectedClient;->getInputStream()Lcom/winlator/xconnector/XInputStream;

    move-result-object v1

    .line 35
    .local v1, "inputStream":Lcom/winlator/xconnector/XInputStream;
    invoke-virtual {p1}, Lcom/winlator/xconnector/ConnectedClient;->getOutputStream()Lcom/winlator/xconnector/XOutputStream;

    move-result-object v2

    .line 37
    .local v2, "outputStream":Lcom/winlator/xconnector/XOutputStream;
    invoke-virtual {v0}, Lcom/winlator/xserver/XClient;->isAuthenticated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    invoke-direct {p0, v0, v1, v2}, Lcom/winlator/xserver/XClientRequestHandler;->handleNormalRequest(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)Z

    move-result v3

    return v3

    .line 40
    :cond_0
    invoke-direct {p0, v0, v1, v2}, Lcom/winlator/xserver/XClientRequestHandler;->handleAuthRequest(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)Z

    move-result v3

    return v3
.end method
