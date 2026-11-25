.class public abstract Lcom/wuyouwin/xserver/requests/DrawRequests;
.super Ljava/lang/Object;
.source "DrawRequests.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/xserver/requests/DrawRequests$Format;,
        Lcom/wuyouwin/xserver/requests/DrawRequests$CoordinateMode;
    }
.end annotation


# direct methods
.method public static clearArea(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 15
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 100
    invoke-virtual {p0}, Lcom/wuyouwin/xserver/XClient;->getRequestData()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 101
    .local v0, "exposures":Z
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 102
    .local v1, "windowId":I
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v8

    .line 103
    .local v8, "x":S
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v9

    .line 104
    .local v9, "y":S
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v10

    .line 105
    .local v10, "width":S
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v11

    .line 107
    .local v11, "height":S
    move-object v12, p0

    iget-object v2, v12, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v2, v2, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v2, v1}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v13

    .line 108
    .local v13, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v13, :cond_3

    .line 109
    invoke-virtual {v13}, Lcom/wuyouwin/xserver/Window;->isInputOutput()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    invoke-virtual {v13}, Lcom/wuyouwin/xserver/Window;->getContent()Lcom/wuyouwin/xserver/Drawable;

    move-result-object v14

    .line 112
    .local v14, "drawable":Lcom/wuyouwin/xserver/Drawable;
    const/4 v7, 0x0

    move-object v2, v14

    move v3, v8

    move v4, v9

    move v5, v10

    move v6, v11

    invoke-virtual/range {v2 .. v7}, Lcom/wuyouwin/xserver/Drawable;->fillRect(IIIII)V

    .line 114
    if-eqz v0, :cond_1

    new-instance v2, Lcom/wuyouwin/xserver/events/Expose;

    invoke-direct {v2, v13}, Lcom/wuyouwin/xserver/events/Expose;-><init>(Lcom/wuyouwin/xserver/Window;)V

    invoke-virtual {v13, v2}, Lcom/wuyouwin/xserver/Window;->sendEvent(Lcom/wuyouwin/xserver/events/Event;)V

    .line 115
    :cond_1
    return-void

    .line 109
    .end local v14    # "drawable":Lcom/wuyouwin/xserver/Drawable;
    :cond_2
    new-instance v2, Lcom/wuyouwin/xserver/errors/BadMatch;

    invoke-direct {v2}, Lcom/wuyouwin/xserver/errors/BadMatch;-><init>()V

    throw v2

    .line 108
    :cond_3
    new-instance v2, Lcom/wuyouwin/xserver/errors/BadWindow;

    invoke-direct {v2, v1}, Lcom/wuyouwin/xserver/errors/BadWindow;-><init>(I)V

    throw v2
.end method

.method public static copyArea(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 23
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 118
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 119
    .local v1, "srcDrawableId":I
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v2

    .line 120
    .local v2, "dstDrawableId":I
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v3

    .line 121
    .local v3, "gcId":I
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v13

    .line 122
    .local v13, "srcX":S
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v14

    .line 123
    .local v14, "srcY":S
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v15

    .line 124
    .local v15, "dstX":S
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v16

    .line 125
    .local v16, "dstY":S
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v17

    .line 126
    .local v17, "width":S
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v18

    .line 128
    .local v18, "height":S
    iget-object v4, v0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v4, v4, Lcom/wuyouwin/xserver/XServer;->drawableManager:Lcom/wuyouwin/xserver/DrawableManager;

    invoke-virtual {v4, v1}, Lcom/wuyouwin/xserver/DrawableManager;->getDrawable(I)Lcom/wuyouwin/xserver/Drawable;

    move-result-object v12

    .line 129
    .local v12, "srcDrawable":Lcom/wuyouwin/xserver/Drawable;
    if-eqz v12, :cond_6

    .line 131
    iget-object v4, v0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v4, v4, Lcom/wuyouwin/xserver/XServer;->drawableManager:Lcom/wuyouwin/xserver/DrawableManager;

    invoke-virtual {v4, v2}, Lcom/wuyouwin/xserver/DrawableManager;->getDrawable(I)Lcom/wuyouwin/xserver/Drawable;

    move-result-object v11

    .line 132
    .local v11, "dstDrawable":Lcom/wuyouwin/xserver/Drawable;
    if-eqz v11, :cond_5

    .line 134
    invoke-virtual {v12}, Lcom/wuyouwin/xserver/Drawable;->isOffscreenStorage()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v12}, Lcom/wuyouwin/xserver/Drawable;->getData()Ljava/nio/ByteBuffer;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v12}, Lcom/wuyouwin/xserver/Drawable;->isUseSharedData()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Lcom/wuyouwin/xserver/Drawable;->setData(Ljava/nio/ByteBuffer;)V

    .line 136
    invoke-virtual {v12}, Lcom/wuyouwin/xserver/Drawable;->getTexture()Lcom/wuyouwin/renderer/Texture;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/wuyouwin/xserver/Drawable;->setTexture(Lcom/wuyouwin/renderer/Texture;)V

    .line 138
    iget-object v4, v0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v4, v4, Lcom/wuyouwin/xserver/XServer;->activity:Lcom/wuyouwin/XServerDisplayActivity;

    iget v4, v4, Lcom/wuyouwin/XServerDisplayActivity;->frameRatingWindowId:I

    if-eq v1, v4, :cond_1

    .line 139
    iget-object v4, v0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v4, v4, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v4, v1}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v4

    .line 140
    .local v4, "srcWindow":Lcom/wuyouwin/xserver/Window;
    iget-object v5, v0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v5, v5, Lcom/wuyouwin/xserver/XServer;->activity:Lcom/wuyouwin/XServerDisplayActivity;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Lcom/wuyouwin/XServerDisplayActivity;->changeFrameRatingVisibility(Lcom/wuyouwin/xserver/Window;Z)V

    .line 142
    .end local v4    # "srcWindow":Lcom/wuyouwin/xserver/Window;
    :cond_1
    return-void

    .line 145
    :cond_2
    iget-object v4, v0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v4, v4, Lcom/wuyouwin/xserver/XServer;->graphicsContextManager:Lcom/wuyouwin/xserver/GraphicsContextManager;

    invoke-virtual {v4, v3}, Lcom/wuyouwin/xserver/GraphicsContextManager;->getGraphicsContext(I)Lcom/wuyouwin/xserver/GraphicsContext;

    move-result-object v19

    .line 146
    .local v19, "graphicsContext":Lcom/wuyouwin/xserver/GraphicsContext;
    if-eqz v19, :cond_4

    .line 148
    iget-object v4, v12, Lcom/wuyouwin/xserver/Drawable;->visual:Lcom/wuyouwin/xserver/Visual;

    iget-byte v4, v4, Lcom/wuyouwin/xserver/Visual;->depth:B

    iget-object v5, v11, Lcom/wuyouwin/xserver/Drawable;->visual:Lcom/wuyouwin/xserver/Visual;

    iget-byte v5, v5, Lcom/wuyouwin/xserver/Visual;->depth:B

    if-ne v4, v5, :cond_3

    .line 150
    invoke-virtual/range {v19 .. v19}, Lcom/wuyouwin/xserver/GraphicsContext;->getFunction()Lcom/wuyouwin/xserver/GraphicsContext$Function;

    move-result-object v20

    move-object v4, v11

    move v5, v13

    move v6, v14

    move v7, v15

    move/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v18

    move-object/from16 v21, v11

    .end local v11    # "dstDrawable":Lcom/wuyouwin/xserver/Drawable;
    .local v21, "dstDrawable":Lcom/wuyouwin/xserver/Drawable;
    move-object v11, v12

    move-object/from16 v22, v12

    .end local v12    # "srcDrawable":Lcom/wuyouwin/xserver/Drawable;
    .local v22, "srcDrawable":Lcom/wuyouwin/xserver/Drawable;
    move-object/from16 v12, v20

    invoke-virtual/range {v4 .. v12}, Lcom/wuyouwin/xserver/Drawable;->copyArea(SSSSSSLcom/wuyouwin/xserver/Drawable;Lcom/wuyouwin/xserver/GraphicsContext$Function;)V

    .line 151
    return-void

    .line 148
    .end local v21    # "dstDrawable":Lcom/wuyouwin/xserver/Drawable;
    .end local v22    # "srcDrawable":Lcom/wuyouwin/xserver/Drawable;
    .restart local v11    # "dstDrawable":Lcom/wuyouwin/xserver/Drawable;
    .restart local v12    # "srcDrawable":Lcom/wuyouwin/xserver/Drawable;
    :cond_3
    new-instance v4, Lcom/wuyouwin/xserver/errors/BadMatch;

    invoke-direct {v4}, Lcom/wuyouwin/xserver/errors/BadMatch;-><init>()V

    throw v4

    .line 146
    :cond_4
    new-instance v4, Lcom/wuyouwin/xserver/errors/BadGraphicsContext;

    invoke-direct {v4, v3}, Lcom/wuyouwin/xserver/errors/BadGraphicsContext;-><init>(I)V

    throw v4

    .line 132
    .end local v19    # "graphicsContext":Lcom/wuyouwin/xserver/GraphicsContext;
    :cond_5
    new-instance v4, Lcom/wuyouwin/xserver/errors/BadDrawable;

    invoke-direct {v4, v2}, Lcom/wuyouwin/xserver/errors/BadDrawable;-><init>(I)V

    throw v4

    .line 129
    .end local v11    # "dstDrawable":Lcom/wuyouwin/xserver/Drawable;
    :cond_6
    new-instance v4, Lcom/wuyouwin/xserver/errors/BadDrawable;

    invoke-direct {v4, v1}, Lcom/wuyouwin/xserver/errors/BadDrawable;-><init>(I)V

    throw v4
.end method

.method public static getImage(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 13
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 71
    invoke-static {}, Lcom/wuyouwin/xserver/requests/DrawRequests$Format;->values()[Lcom/wuyouwin/xserver/requests/DrawRequests$Format;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wuyouwin/xserver/XClient;->getRequestData()B

    move-result v1

    aget-object v0, v0, v1

    .line 72
    .local v0, "format":Lcom/wuyouwin/xserver/requests/DrawRequests$Format;
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 73
    .local v1, "drawableId":I
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v2

    .line 74
    .local v2, "x":S
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v3

    .line 75
    .local v3, "y":S
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v4

    .line 76
    .local v4, "width":S
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v5

    .line 77
    .local v5, "height":S
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 79
    sget-object v7, Lcom/wuyouwin/xserver/requests/DrawRequests$Format;->Z_PIXMAP:Lcom/wuyouwin/xserver/requests/DrawRequests$Format;

    if-ne v0, v7, :cond_5

    .line 81
    iget-object v7, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v7, v7, Lcom/wuyouwin/xserver/XServer;->drawableManager:Lcom/wuyouwin/xserver/DrawableManager;

    invoke-virtual {v7, v1}, Lcom/wuyouwin/xserver/DrawableManager;->getDrawable(I)Lcom/wuyouwin/xserver/Drawable;

    move-result-object v7

    .line 82
    .local v7, "drawable":Lcom/wuyouwin/xserver/Drawable;
    if-eqz v7, :cond_4

    .line 83
    iget-object v8, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v8, v8, Lcom/wuyouwin/xserver/XServer;->pixmapManager:Lcom/wuyouwin/xserver/PixmapManager;

    invoke-virtual {v8, v1}, Lcom/wuyouwin/xserver/PixmapManager;->getPixmap(I)Lcom/wuyouwin/xserver/Pixmap;

    move-result-object v8

    if-nez v8, :cond_0

    iget-object v8, v7, Lcom/wuyouwin/xserver/Drawable;->visual:Lcom/wuyouwin/xserver/Visual;

    iget v8, v8, Lcom/wuyouwin/xserver/Visual;->id:I

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 84
    .local v8, "visualId":I
    :goto_0
    invoke-virtual {v7, v2, v3, v4, v5}, Lcom/wuyouwin/xserver/Drawable;->getImage(SSSS)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 85
    .local v9, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v9}, Ljava/nio/Buffer;->limit()I

    move-result v10

    .line 87
    .local v10, "length":I
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XOutputStream;->lock()Lcom/wuyouwin/xconnector/XStreamLock;

    move-result-object v11

    .line 88
    .local v11, "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    const/4 v12, 0x1

    :try_start_0
    invoke-virtual {p2, v12}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 89
    iget-object v12, v7, Lcom/wuyouwin/xserver/Drawable;->visual:Lcom/wuyouwin/xserver/Visual;

    iget-byte v12, v12, Lcom/wuyouwin/xserver/Visual;->depth:B

    invoke-virtual {p2, v12}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 90
    invoke-virtual {p0}, Lcom/wuyouwin/xserver/XClient;->getSequenceNumber()S

    move-result v12

    invoke-virtual {p2, v12}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 91
    add-int/lit8 v12, v10, 0x3

    div-int/2addr v12, v6

    invoke-virtual {p2, v12}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 92
    invoke-virtual {p2, v8}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 93
    const/16 v6, 0x14

    invoke-virtual {p2, v6}, Lcom/wuyouwin/xconnector/XOutputStream;->writePad(I)V

    .line 94
    invoke-virtual {p2, v9}, Lcom/wuyouwin/xconnector/XOutputStream;->write(Ljava/nio/ByteBuffer;)V

    .line 95
    neg-int v6, v10

    and-int/lit8 v6, v6, 0x3

    if-lez v6, :cond_1

    neg-int v6, v10

    and-int/lit8 v6, v6, 0x3

    invoke-virtual {p2, v6}, Lcom/wuyouwin/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 87
    :catchall_0
    move-exception v6

    goto :goto_2

    .line 96
    :cond_1
    :goto_1
    if-eqz v11, :cond_2

    invoke-interface {v11}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V

    .line 97
    .end local v11    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_2
    return-void

    .line 87
    .restart local v11    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :goto_2
    if-eqz v11, :cond_3

    :try_start_1
    invoke-interface {v11}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v12

    invoke-virtual {v6, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v6

    .line 82
    .end local v8    # "visualId":I
    .end local v9    # "data":Ljava/nio/ByteBuffer;
    .end local v10    # "length":I
    .end local v11    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_4
    new-instance v6, Lcom/wuyouwin/xserver/errors/BadDrawable;

    invoke-direct {v6, v1}, Lcom/wuyouwin/xserver/errors/BadDrawable;-><init>(I)V

    throw v6

    .line 79
    .end local v7    # "drawable":Lcom/wuyouwin/xserver/Drawable;
    :cond_5
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v7, "Only Z_PIXMAP is supported."

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static polyFillRectangle(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 16
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 178
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 179
    .local v1, "drawableId":I
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v2

    .line 181
    .local v2, "gcId":I
    iget-object v3, v0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v3, v3, Lcom/wuyouwin/xserver/XServer;->drawableManager:Lcom/wuyouwin/xserver/DrawableManager;

    invoke-virtual {v3, v1}, Lcom/wuyouwin/xserver/DrawableManager;->getDrawable(I)Lcom/wuyouwin/xserver/Drawable;

    move-result-object v3

    .line 182
    .local v3, "drawable":Lcom/wuyouwin/xserver/Drawable;
    if-eqz v3, :cond_2

    .line 183
    iget-object v4, v0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v4, v4, Lcom/wuyouwin/xserver/XServer;->graphicsContextManager:Lcom/wuyouwin/xserver/GraphicsContextManager;

    invoke-virtual {v4, v2}, Lcom/wuyouwin/xserver/GraphicsContextManager;->getGraphicsContext(I)Lcom/wuyouwin/xserver/GraphicsContext;

    move-result-object v10

    .line 184
    .local v10, "graphicsContext":Lcom/wuyouwin/xserver/GraphicsContext;
    if-eqz v10, :cond_1

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/wuyouwin/xserver/XClient;->getRemainingRequestLength()I

    move-result v4

    move v11, v4

    .line 187
    .local v11, "length":I
    :goto_0
    if-eqz v11, :cond_0

    .line 188
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v12

    .line 189
    .local v12, "x":S
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v13

    .line 190
    .local v13, "y":S
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v14

    .line 191
    .local v14, "width":S
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v15

    .line 192
    .local v15, "height":S
    invoke-virtual {v10}, Lcom/wuyouwin/xserver/GraphicsContext;->getBackground()I

    move-result v9

    move-object v4, v3

    move v5, v12

    move v6, v13

    move v7, v14

    move v8, v15

    invoke-virtual/range {v4 .. v9}, Lcom/wuyouwin/xserver/Drawable;->fillRect(IIIII)V

    .line 193
    nop

    .end local v12    # "x":S
    .end local v13    # "y":S
    .end local v14    # "width":S
    .end local v15    # "height":S
    add-int/lit8 v11, v11, -0x8

    .line 194
    goto :goto_0

    .line 195
    :cond_0
    return-void

    .line 184
    .end local v11    # "length":I
    :cond_1
    new-instance v4, Lcom/wuyouwin/xserver/errors/BadGraphicsContext;

    invoke-direct {v4, v2}, Lcom/wuyouwin/xserver/errors/BadGraphicsContext;-><init>(I)V

    throw v4

    .line 182
    .end local v10    # "graphicsContext":Lcom/wuyouwin/xserver/GraphicsContext;
    :cond_2
    new-instance v4, Lcom/wuyouwin/xserver/errors/BadDrawable;

    invoke-direct {v4, v1}, Lcom/wuyouwin/xserver/errors/BadDrawable;-><init>(I)V

    throw v4
.end method

.method public static polyLine(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 10
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 154
    invoke-static {}, Lcom/wuyouwin/xserver/requests/DrawRequests$CoordinateMode;->values()[Lcom/wuyouwin/xserver/requests/DrawRequests$CoordinateMode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wuyouwin/xserver/XClient;->getRequestData()B

    move-result v1

    aget-object v0, v0, v1

    .line 155
    .local v0, "coordinateMode":Lcom/wuyouwin/xserver/requests/DrawRequests$CoordinateMode;
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 156
    .local v1, "drawableId":I
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v2

    .line 158
    .local v2, "gcId":I
    iget-object v3, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v3, v3, Lcom/wuyouwin/xserver/XServer;->drawableManager:Lcom/wuyouwin/xserver/DrawableManager;

    invoke-virtual {v3, v1}, Lcom/wuyouwin/xserver/DrawableManager;->getDrawable(I)Lcom/wuyouwin/xserver/Drawable;

    move-result-object v3

    .line 159
    .local v3, "drawable":Lcom/wuyouwin/xserver/Drawable;
    if-eqz v3, :cond_3

    .line 160
    iget-object v4, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v4, v4, Lcom/wuyouwin/xserver/XServer;->graphicsContextManager:Lcom/wuyouwin/xserver/GraphicsContextManager;

    invoke-virtual {v4, v2}, Lcom/wuyouwin/xserver/GraphicsContextManager;->getGraphicsContext(I)Lcom/wuyouwin/xserver/GraphicsContext;

    move-result-object v4

    .line 161
    .local v4, "graphicsContext":Lcom/wuyouwin/xserver/GraphicsContext;
    if-eqz v4, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/wuyouwin/xserver/XClient;->getRemainingRequestLength()I

    move-result v5

    .line 164
    .local v5, "length":I
    div-int/lit8 v6, v5, 0x2

    new-array v6, v6, [S

    .line 165
    .local v6, "points":[S
    const/4 v7, 0x0

    .line 166
    .local v7, "i":I
    :goto_0
    if-eqz v5, :cond_0

    .line 167
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .local v8, "i":I
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v9

    aput-short v9, v6, v7

    .line 168
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "i":I
    .restart local v7    # "i":I
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v9

    aput-short v9, v6, v8

    .line 169
    add-int/lit8 v5, v5, -0x4

    goto :goto_0

    .line 172
    :cond_0
    sget-object v8, Lcom/wuyouwin/xserver/requests/DrawRequests$CoordinateMode;->ORIGIN:Lcom/wuyouwin/xserver/requests/DrawRequests$CoordinateMode;

    if-ne v0, v8, :cond_1

    invoke-virtual {v4}, Lcom/wuyouwin/xserver/GraphicsContext;->getLineWidth()I

    move-result v8

    if-lez v8, :cond_1

    .line 173
    invoke-virtual {v4}, Lcom/wuyouwin/xserver/GraphicsContext;->getForeground()I

    move-result v8

    invoke-virtual {v4}, Lcom/wuyouwin/xserver/GraphicsContext;->getLineWidth()I

    move-result v9

    invoke-virtual {v3, v8, v9, v6}, Lcom/wuyouwin/xserver/Drawable;->drawLines(II[S)V

    .line 175
    :cond_1
    return-void

    .line 161
    .end local v5    # "length":I
    .end local v6    # "points":[S
    .end local v7    # "i":I
    :cond_2
    new-instance v5, Lcom/wuyouwin/xserver/errors/BadGraphicsContext;

    invoke-direct {v5, v2}, Lcom/wuyouwin/xserver/errors/BadGraphicsContext;-><init>(I)V

    throw v5

    .line 159
    .end local v4    # "graphicsContext":Lcom/wuyouwin/xserver/GraphicsContext;
    :cond_3
    new-instance v4, Lcom/wuyouwin/xserver/errors/BadDrawable;

    invoke-direct {v4, v1}, Lcom/wuyouwin/xserver/errors/BadDrawable;-><init>(I)V

    throw v4
.end method

.method public static putImage(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 25
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 27
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/wuyouwin/xserver/requests/DrawRequests$Format;->values()[Lcom/wuyouwin/xserver/requests/DrawRequests$Format;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/wuyouwin/xserver/XClient;->getRequestData()B

    move-result v3

    aget-object v2, v2, v3

    .line 28
    .local v2, "format":Lcom/wuyouwin/xserver/requests/DrawRequests$Format;
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v3

    .line 29
    .local v3, "drawableId":I
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v4

    .line 30
    .local v4, "gcId":I
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v16

    .line 31
    .local v16, "width":S
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v17

    .line 32
    .local v17, "height":S
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v18

    .line 33
    .local v18, "dstX":S
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v19

    .line 34
    .local v19, "dstY":S
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readByte()B

    move-result v20

    .line 35
    .local v20, "leftPad":B
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readByte()B

    move-result v15

    .line 36
    .local v15, "depth":B
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/wuyouwin/xserver/XClient;->getRemainingRequestLength()I

    move-result v14

    .line 38
    .local v14, "length":I
    invoke-virtual {v1, v14}, Lcom/wuyouwin/xconnector/XInputStream;->readByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 40
    .local v21, "data":Ljava/nio/ByteBuffer;
    iget-object v5, v0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v5, v5, Lcom/wuyouwin/xserver/XServer;->drawableManager:Lcom/wuyouwin/xserver/DrawableManager;

    invoke-virtual {v5, v3}, Lcom/wuyouwin/xserver/DrawableManager;->getDrawable(I)Lcom/wuyouwin/xserver/Drawable;

    move-result-object v13

    .line 41
    .local v13, "drawable":Lcom/wuyouwin/xserver/Drawable;
    if-eqz v13, :cond_7

    .line 43
    iget-object v5, v0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v5, v5, Lcom/wuyouwin/xserver/XServer;->graphicsContextManager:Lcom/wuyouwin/xserver/GraphicsContextManager;

    invoke-virtual {v5, v4}, Lcom/wuyouwin/xserver/GraphicsContextManager;->getGraphicsContext(I)Lcom/wuyouwin/xserver/GraphicsContext;

    move-result-object v22

    .line 44
    .local v22, "graphicsContext":Lcom/wuyouwin/xserver/GraphicsContext;
    if-eqz v22, :cond_6

    .line 46
    invoke-virtual/range {v22 .. v22}, Lcom/wuyouwin/xserver/GraphicsContext;->getFunction()Lcom/wuyouwin/xserver/GraphicsContext$Function;

    move-result-object v5

    sget-object v6, Lcom/wuyouwin/xserver/GraphicsContext$Function;->COPY:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    if-eq v5, v6, :cond_0

    sget-object v5, Lcom/wuyouwin/xserver/requests/DrawRequests$Format;->Z_PIXMAP:Lcom/wuyouwin/xserver/requests/DrawRequests$Format;

    if-ne v2, v5, :cond_1

    :cond_0
    goto :goto_0

    .line 47
    :cond_1
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "GC Function other than COPY is not supported."

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 50
    :goto_0
    sget-object v5, Lcom/wuyouwin/xserver/requests/DrawRequests$1;->$SwitchMap$com$winlator$xserver$requests$DrawRequests$Format:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    move-object/from16 v23, v13

    move/from16 v24, v14

    move v0, v15

    goto/16 :goto_1

    .line 62
    :pswitch_0
    if-nez v20, :cond_2

    .line 63
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v13

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v10, v16

    move/from16 v11, v17

    move v12, v15

    move-object/from16 v23, v13

    .end local v13    # "drawable":Lcom/wuyouwin/xserver/Drawable;
    .local v23, "drawable":Lcom/wuyouwin/xserver/Drawable;
    move-object/from16 v13, v21

    move/from16 v24, v14

    .end local v14    # "length":I
    .local v24, "length":I
    move/from16 v14, v16

    move v0, v15

    .end local v15    # "depth":B
    .local v0, "depth":B
    move/from16 v15, v17

    invoke-virtual/range {v5 .. v15}, Lcom/wuyouwin/xserver/Drawable;->drawImage(SSSSSSBLjava/nio/ByteBuffer;SS)V

    goto :goto_1

    .line 65
    .end local v0    # "depth":B
    .end local v23    # "drawable":Lcom/wuyouwin/xserver/Drawable;
    .end local v24    # "length":I
    .restart local v13    # "drawable":Lcom/wuyouwin/xserver/Drawable;
    .restart local v14    # "length":I
    .restart local v15    # "depth":B
    :cond_2
    new-instance v5, Lcom/wuyouwin/xserver/errors/BadMatch;

    invoke-direct {v5}, Lcom/wuyouwin/xserver/errors/BadMatch;-><init>()V

    throw v5

    .line 59
    :pswitch_1
    move-object/from16 v23, v13

    move/from16 v24, v14

    move v0, v15

    .end local v13    # "drawable":Lcom/wuyouwin/xserver/Drawable;
    .end local v14    # "length":I
    .end local v15    # "depth":B
    .restart local v0    # "depth":B
    .restart local v23    # "drawable":Lcom/wuyouwin/xserver/Drawable;
    .restart local v24    # "length":I
    move-object/from16 v15, v23

    .end local v23    # "drawable":Lcom/wuyouwin/xserver/Drawable;
    .local v15, "drawable":Lcom/wuyouwin/xserver/Drawable;
    iget-object v5, v15, Lcom/wuyouwin/xserver/Drawable;->visual:Lcom/wuyouwin/xserver/Visual;

    iget-byte v5, v5, Lcom/wuyouwin/xserver/Visual;->depth:B

    if-ne v5, v0, :cond_3

    move-object/from16 v23, v15

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/wuyouwin/xserver/errors/BadMatch;

    invoke-direct {v5}, Lcom/wuyouwin/xserver/errors/BadMatch;-><init>()V

    throw v5

    .line 52
    .end local v0    # "depth":B
    .end local v24    # "length":I
    .restart local v13    # "drawable":Lcom/wuyouwin/xserver/Drawable;
    .restart local v14    # "length":I
    .local v15, "depth":B
    :pswitch_2
    move/from16 v24, v14

    move v0, v15

    move-object v15, v13

    .end local v13    # "drawable":Lcom/wuyouwin/xserver/Drawable;
    .end local v14    # "length":I
    .restart local v0    # "depth":B
    .local v15, "drawable":Lcom/wuyouwin/xserver/Drawable;
    .restart local v24    # "length":I
    if-nez v20, :cond_5

    .line 53
    const/4 v5, 0x1

    if-ne v0, v5, :cond_4

    .line 54
    const/4 v7, 0x0

    const/4 v12, 0x1

    const/4 v6, 0x0

    move-object v5, v15

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v13, v21

    move/from16 v14, v16

    move-object/from16 v23, v15

    .end local v15    # "drawable":Lcom/wuyouwin/xserver/Drawable;
    .restart local v23    # "drawable":Lcom/wuyouwin/xserver/Drawable;
    move/from16 v15, v17

    invoke-virtual/range {v5 .. v15}, Lcom/wuyouwin/xserver/Drawable;->drawImage(SSSSSSBLjava/nio/ByteBuffer;SS)V

    .line 68
    :goto_1
    return-void

    .line 56
    .end local v23    # "drawable":Lcom/wuyouwin/xserver/Drawable;
    .restart local v15    # "drawable":Lcom/wuyouwin/xserver/Drawable;
    :cond_4
    new-instance v5, Lcom/wuyouwin/xserver/errors/BadMatch;

    invoke-direct {v5}, Lcom/wuyouwin/xserver/errors/BadMatch;-><init>()V

    throw v5

    .line 52
    :cond_5
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "PutImage.leftPad cannot be != 0."

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 44
    .end local v0    # "depth":B
    .end local v24    # "length":I
    .restart local v13    # "drawable":Lcom/wuyouwin/xserver/Drawable;
    .restart local v14    # "length":I
    .local v15, "depth":B
    :cond_6
    new-instance v5, Lcom/wuyouwin/xserver/errors/BadGraphicsContext;

    invoke-direct {v5, v4}, Lcom/wuyouwin/xserver/errors/BadGraphicsContext;-><init>(I)V

    throw v5

    .line 41
    .end local v22    # "graphicsContext":Lcom/wuyouwin/xserver/GraphicsContext;
    :cond_7
    new-instance v5, Lcom/wuyouwin/xserver/errors/BadDrawable;

    invoke-direct {v5, v3}, Lcom/wuyouwin/xserver/errors/BadDrawable;-><init>(I)V

    throw v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
