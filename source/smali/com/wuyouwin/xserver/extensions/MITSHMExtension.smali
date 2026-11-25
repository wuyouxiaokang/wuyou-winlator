.class public Lcom/wuyouwin/xserver/extensions/MITSHMExtension;
.super Lcom/wuyouwin/xserver/extensions/Extension;
.source "MITSHMExtension.java"


# direct methods
.method public constructor <init>(Lcom/wuyouwin/xserver/XServer;B)V
    .locals 0
    .param p1, "xServer"    # Lcom/wuyouwin/xserver/XServer;
    .param p2, "majorOpcode"    # B

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/xserver/extensions/Extension;-><init>(Lcom/wuyouwin/xserver/XServer;B)V

    .line 36
    return-void
.end method

.method private attach(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 3
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 68
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 69
    .local v0, "xid":I
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 70
    .local v1, "shmid":I
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 71
    iget-object v2, p0, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-virtual {v2}, Lcom/wuyouwin/xserver/XServer;->getSHMSegmentManager()Lcom/wuyouwin/xserver/SHMSegmentManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/wuyouwin/xserver/SHMSegmentManager;->attach(II)V

    .line 72
    return-void
.end method

.method private createPixmap(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 4
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 117
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 118
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 119
    .local v0, "drawableId":I
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v1

    .line 120
    .local v1, "width":S
    const/16 v2, 0xe

    invoke-virtual {p2, v2}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 122
    iget-object v2, p0, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v2, v2, Lcom/wuyouwin/xserver/XServer;->drawableManager:Lcom/wuyouwin/xserver/DrawableManager;

    invoke-virtual {v2, v0}, Lcom/wuyouwin/xserver/DrawableManager;->getDrawable(I)Lcom/wuyouwin/xserver/Drawable;

    move-result-object v2

    .line 123
    .local v2, "drawable":Lcom/wuyouwin/xserver/Drawable;
    if-eqz v2, :cond_1

    .line 125
    iget-short v3, v2, Lcom/wuyouwin/xserver/Drawable;->width:S

    if-ne v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/wuyouwin/xserver/Drawable;->setUseSharedData(Z)V

    .line 126
    return-void

    .line 123
    :cond_1
    new-instance v3, Lcom/wuyouwin/xserver/errors/BadDrawable;

    invoke-direct {v3, v0}, Lcom/wuyouwin/xserver/errors/BadDrawable;-><init>(I)V

    throw v3
.end method

.method private detach(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 2
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 75
    iget-object v0, p0, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/XServer;->getSHMSegmentManager()Lcom/wuyouwin/xserver/SHMSegmentManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xserver/SHMSegmentManager;->detach(I)V

    .line 76
    return-void
.end method

.method private putImage(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 28
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 79
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v3

    .line 80
    .local v3, "drawableId":I
    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v4

    .line 81
    .local v4, "gcId":I
    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v16

    .line 82
    .local v16, "totalWidth":S
    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v17

    .line 83
    .local v17, "totalHeight":S
    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v18

    .line 84
    .local v18, "srcX":S
    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v19

    .line 85
    .local v19, "srcY":S
    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v20

    .line 86
    .local v20, "srcWidth":S
    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v21

    .line 87
    .local v21, "srcHeight":S
    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v22

    .line 88
    .local v22, "dstX":S
    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v23

    .line 89
    .local v23, "dstY":S
    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/xconnector/XInputStream;->readByte()B

    move-result v24

    .line 90
    .local v24, "depth":B
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 91
    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v15

    .line 92
    .local v15, "shmseg":I
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 94
    iget-object v0, v1, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v0, v0, Lcom/wuyouwin/xserver/XServer;->drawableManager:Lcom/wuyouwin/xserver/DrawableManager;

    invoke-virtual {v0, v3}, Lcom/wuyouwin/xserver/DrawableManager;->getDrawable(I)Lcom/wuyouwin/xserver/Drawable;

    move-result-object v14

    .line 95
    .local v14, "drawable":Lcom/wuyouwin/xserver/Drawable;
    if-eqz v14, :cond_5

    .line 97
    iget-object v0, v1, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v0, v0, Lcom/wuyouwin/xserver/XServer;->graphicsContextManager:Lcom/wuyouwin/xserver/GraphicsContextManager;

    invoke-virtual {v0, v4}, Lcom/wuyouwin/xserver/GraphicsContextManager;->getGraphicsContext(I)Lcom/wuyouwin/xserver/GraphicsContext;

    move-result-object v25

    .line 98
    .local v25, "graphicsContext":Lcom/wuyouwin/xserver/GraphicsContext;
    if-eqz v25, :cond_4

    .line 100
    iget-object v0, v1, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/XServer;->getSHMSegmentManager()Lcom/wuyouwin/xserver/SHMSegmentManager;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/wuyouwin/xserver/SHMSegmentManager;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 101
    .local v13, "data":Ljava/nio/ByteBuffer;
    if-eqz v13, :cond_3

    .line 103
    invoke-virtual/range {v25 .. v25}, Lcom/wuyouwin/xserver/GraphicsContext;->getFunction()Lcom/wuyouwin/xserver/GraphicsContext$Function;

    move-result-object v0

    sget-object v5, Lcom/wuyouwin/xserver/GraphicsContext$Function;->COPY:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    if-ne v0, v5, :cond_2

    .line 107
    invoke-virtual {v14}, Lcom/wuyouwin/xserver/Drawable;->isUseSharedData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v5, v14, Lcom/wuyouwin/xserver/Drawable;->renderLock:Ljava/lang/Object;

    monitor-enter v5

    .line 109
    :try_start_0
    invoke-virtual {v14}, Lcom/wuyouwin/xserver/Drawable;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eq v0, v13, :cond_0

    invoke-virtual {v14, v13}, Lcom/wuyouwin/xserver/Drawable;->setData(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 110
    :cond_0
    :goto_0
    invoke-virtual {v14}, Lcom/wuyouwin/xserver/Drawable;->forceUpdate()V

    .line 111
    monitor-exit v5

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    move v1, v15

    goto :goto_2

    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 113
    :cond_1
    move-object v5, v14

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v22

    move/from16 v9, v23

    move/from16 v10, v20

    move/from16 v11, v21

    move/from16 v12, v24

    move-object/from16 v26, v13

    .end local v13    # "data":Ljava/nio/ByteBuffer;
    .local v26, "data":Ljava/nio/ByteBuffer;
    move-object/from16 v27, v14

    .end local v14    # "drawable":Lcom/wuyouwin/xserver/Drawable;
    .local v27, "drawable":Lcom/wuyouwin/xserver/Drawable;
    move/from16 v14, v16

    move v1, v15

    .end local v15    # "shmseg":I
    .local v1, "shmseg":I
    move/from16 v15, v17

    invoke-virtual/range {v5 .. v15}, Lcom/wuyouwin/xserver/Drawable;->drawImage(SSSSSSBLjava/nio/ByteBuffer;SS)V

    .line 114
    :goto_2
    return-void

    .line 104
    .end local v1    # "shmseg":I
    .end local v26    # "data":Ljava/nio/ByteBuffer;
    .end local v27    # "drawable":Lcom/wuyouwin/xserver/Drawable;
    .restart local v13    # "data":Ljava/nio/ByteBuffer;
    .restart local v14    # "drawable":Lcom/wuyouwin/xserver/Drawable;
    .restart local v15    # "shmseg":I
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v5, "GC Function other than COPY is not supported."

    invoke-direct {v0, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_3
    move v1, v15

    .end local v15    # "shmseg":I
    .restart local v1    # "shmseg":I
    new-instance v0, Lcom/wuyouwin/xserver/errors/BadSHMSegment;

    invoke-direct {v0, v1}, Lcom/wuyouwin/xserver/errors/BadSHMSegment;-><init>(I)V

    throw v0

    .line 98
    .end local v1    # "shmseg":I
    .end local v13    # "data":Ljava/nio/ByteBuffer;
    .restart local v15    # "shmseg":I
    :cond_4
    new-instance v0, Lcom/wuyouwin/xserver/errors/BadGraphicsContext;

    invoke-direct {v0, v4}, Lcom/wuyouwin/xserver/errors/BadGraphicsContext;-><init>(I)V

    throw v0

    .line 95
    .end local v25    # "graphicsContext":Lcom/wuyouwin/xserver/GraphicsContext;
    :cond_5
    new-instance v0, Lcom/wuyouwin/xserver/errors/BadDrawable;

    invoke-direct {v0, v3}, Lcom/wuyouwin/xserver/errors/BadDrawable;-><init>(I)V

    throw v0
.end method

.method private queryVersion(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 4
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 54
    invoke-virtual {p3}, Lcom/wuyouwin/xconnector/XOutputStream;->lock()Lcom/wuyouwin/xconnector/XStreamLock;

    move-result-object v0

    .line 55
    .local v0, "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p3, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 56
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 57
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/XClient;->getSequenceNumber()S

    move-result v3

    invoke-virtual {p3, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 58
    invoke-virtual {p3, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 59
    invoke-virtual {p3, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 60
    invoke-virtual {p3, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 61
    invoke-virtual {p3, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 62
    invoke-virtual {p3, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 63
    invoke-virtual {p3, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V

    .line 65
    .end local v0    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 54
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


# virtual methods
.method public getErrorCount()B
    .locals 1

    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public getEventCount()B
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "MIT-SHM"

    return-object v0
.end method

.method public handleRequest(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 5
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 130
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/XClient;->getRequestData()B

    move-result v0

    .line 131
    .local v0, "opcode":I
    packed-switch v0, :pswitch_data_0

    .line 156
    :pswitch_0
    new-instance v1, Lcom/wuyouwin/xserver/errors/BadImplementation;

    invoke-direct {v1}, Lcom/wuyouwin/xserver/errors/BadImplementation;-><init>()V

    throw v1

    .line 151
    :pswitch_1
    iget-object v1, p0, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    sget-object v2, Lcom/wuyouwin/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/wuyouwin/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/wuyouwin/xserver/XServer;->lock(Lcom/wuyouwin/xserver/XServer$Lockable;)Lcom/wuyouwin/xserver/XLock;

    move-result-object v1

    .line 152
    .local v1, "lock":Lcom/wuyouwin/xserver/XLock;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/xserver/extensions/MITSHMExtension;->createPixmap(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/wuyouwin/xserver/XLock;->close()V

    .line 154
    .end local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :cond_0
    goto/16 :goto_4

    .line 151
    .restart local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Lcom/wuyouwin/xserver/XLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2

    .line 146
    .end local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :pswitch_2
    iget-object v1, p0, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    sget-object v2, Lcom/wuyouwin/xserver/XServer$Lockable;->SHMSEGMENT_MANAGER:Lcom/wuyouwin/xserver/XServer$Lockable;

    sget-object v3, Lcom/wuyouwin/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/wuyouwin/xserver/XServer$Lockable;

    sget-object v4, Lcom/wuyouwin/xserver/XServer$Lockable;->GRAPHIC_CONTEXT_MANAGER:Lcom/wuyouwin/xserver/XServer$Lockable;

    filled-new-array {v2, v3, v4}, [Lcom/wuyouwin/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wuyouwin/xserver/XServer;->lock([Lcom/wuyouwin/xserver/XServer$Lockable;)Lcom/wuyouwin/xserver/XLock;

    move-result-object v1

    .line 147
    .restart local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/xserver/extensions/MITSHMExtension;->putImage(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 148
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/wuyouwin/xserver/XLock;->close()V

    .line 149
    .end local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :cond_2
    goto :goto_4

    .line 146
    .restart local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :catchall_2
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Lcom/wuyouwin/xserver/XLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v2

    .line 141
    .end local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :pswitch_3
    iget-object v1, p0, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    sget-object v2, Lcom/wuyouwin/xserver/XServer$Lockable;->SHMSEGMENT_MANAGER:Lcom/wuyouwin/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/wuyouwin/xserver/XServer;->lock(Lcom/wuyouwin/xserver/XServer$Lockable;)Lcom/wuyouwin/xserver/XLock;

    move-result-object v1

    .line 142
    .restart local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :try_start_4
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/xserver/extensions/MITSHMExtension;->detach(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 143
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/wuyouwin/xserver/XLock;->close()V

    .line 144
    .end local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :cond_4
    goto :goto_4

    .line 141
    .restart local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :catchall_4
    move-exception v2

    if-eqz v1, :cond_5

    :try_start_5
    invoke-interface {v1}, Lcom/wuyouwin/xserver/XLock;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v2

    .line 136
    .end local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :pswitch_4
    iget-object v1, p0, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    sget-object v2, Lcom/wuyouwin/xserver/XServer$Lockable;->SHMSEGMENT_MANAGER:Lcom/wuyouwin/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/wuyouwin/xserver/XServer;->lock(Lcom/wuyouwin/xserver/XServer$Lockable;)Lcom/wuyouwin/xserver/XLock;

    move-result-object v1

    .line 137
    .restart local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :try_start_6
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/xserver/extensions/MITSHMExtension;->attach(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 138
    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/wuyouwin/xserver/XLock;->close()V

    .line 139
    .end local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :cond_6
    goto :goto_4

    .line 136
    .restart local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :catchall_6
    move-exception v2

    if-eqz v1, :cond_7

    :try_start_7
    invoke-interface {v1}, Lcom/wuyouwin/xserver/XLock;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_3

    :catchall_7
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v2

    .line 133
    .end local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :pswitch_5
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/xserver/extensions/MITSHMExtension;->queryVersion(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V

    .line 134
    nop

    .line 158
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
