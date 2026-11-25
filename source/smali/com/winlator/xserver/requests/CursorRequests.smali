.class public abstract Lcom/winlator/xserver/requests/CursorRequests;
.super Ljava/lang/Object;
.source "CursorRequests.java"


# direct methods
.method public static createCursor(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 24
    .param p0, "client"    # Lcom/winlator/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 18
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v7

    .line 19
    .local v7, "cursorId":I
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v8

    .line 20
    .local v8, "sourcePixmapId":I
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v9

    .line 22
    .local v9, "maskPixmapId":I
    invoke-virtual {v0, v7}, Lcom/winlator/xserver/XClient;->isValidResourceId(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 24
    iget-object v1, v0, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->pixmapManager:Lcom/winlator/xserver/PixmapManager;

    invoke-virtual {v1, v8}, Lcom/winlator/xserver/PixmapManager;->getPixmap(I)Lcom/winlator/xserver/Pixmap;

    move-result-object v10

    .line 25
    .local v10, "sourcePixmap":Lcom/winlator/xserver/Pixmap;
    if-eqz v10, :cond_3

    .line 27
    iget-object v1, v0, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->pixmapManager:Lcom/winlator/xserver/PixmapManager;

    invoke-virtual {v1, v9}, Lcom/winlator/xserver/PixmapManager;->getPixmap(I)Lcom/winlator/xserver/Pixmap;

    move-result-object v11

    .line 28
    .local v11, "maskPixmap":Lcom/winlator/xserver/Pixmap;
    if-eqz v11, :cond_0

    iget-object v1, v11, Lcom/winlator/xserver/Pixmap;->drawable:Lcom/winlator/xserver/Drawable;

    iget-object v1, v1, Lcom/winlator/xserver/Drawable;->visual:Lcom/winlator/xserver/Visual;

    iget-byte v1, v1, Lcom/winlator/xserver/Visual;->depth:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, v11, Lcom/winlator/xserver/Pixmap;->drawable:Lcom/winlator/xserver/Drawable;

    iget-short v1, v1, Lcom/winlator/xserver/Drawable;->width:S

    iget-object v2, v10, Lcom/winlator/xserver/Pixmap;->drawable:Lcom/winlator/xserver/Drawable;

    iget-short v2, v2, Lcom/winlator/xserver/Drawable;->width:S

    if-ne v1, v2, :cond_1

    iget-object v1, v11, Lcom/winlator/xserver/Pixmap;->drawable:Lcom/winlator/xserver/Drawable;

    iget-short v1, v1, Lcom/winlator/xserver/Drawable;->height:S

    iget-object v2, v10, Lcom/winlator/xserver/Pixmap;->drawable:Lcom/winlator/xserver/Drawable;

    iget-short v2, v2, Lcom/winlator/xserver/Drawable;->height:S

    if-ne v1, v2, :cond_1

    :cond_0
    goto :goto_0

    .line 32
    :cond_1
    new-instance v1, Lcom/winlator/xserver/errors/BadMatch;

    invoke-direct {v1}, Lcom/winlator/xserver/errors/BadMatch;-><init>()V

    throw v1

    .line 35
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xconnector/XInputStream;->readShort()S

    move-result v1

    int-to-byte v15, v1

    .line 36
    .local v15, "foreRed":B
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xconnector/XInputStream;->readShort()S

    move-result v1

    int-to-byte v14, v1

    .line 37
    .local v14, "foreGreen":B
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xconnector/XInputStream;->readShort()S

    move-result v1

    int-to-byte v13, v1

    .line 38
    .local v13, "foreBlue":B
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xconnector/XInputStream;->readShort()S

    move-result v1

    int-to-byte v12, v1

    .line 39
    .local v12, "backRed":B
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xconnector/XInputStream;->readShort()S

    move-result v1

    int-to-byte v6, v1

    .line 40
    .local v6, "backGreen":B
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xconnector/XInputStream;->readShort()S

    move-result v1

    int-to-byte v5, v1

    .line 41
    .local v5, "backBlue":B
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xconnector/XInputStream;->readShort()S

    move-result v20

    .line 42
    .local v20, "x":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xconnector/XInputStream;->readShort()S

    move-result v21

    .line 44
    .local v21, "y":S
    iget-object v1, v0, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->cursorManager:Lcom/winlator/xserver/CursorManager;

    move v2, v7

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v22, v5

    .end local v5    # "backBlue":B
    .local v22, "backBlue":B
    move-object v5, v10

    move/from16 v23, v6

    .end local v6    # "backGreen":B
    .local v23, "backGreen":B
    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/winlator/xserver/CursorManager;->createCursor(ISSLcom/winlator/xserver/Pixmap;Lcom/winlator/xserver/Pixmap;)Lcom/winlator/xserver/Cursor;

    move-result-object v1

    .line 45
    .local v1, "cursor":Lcom/winlator/xserver/Cursor;
    if-eqz v1, :cond_2

    .line 46
    iget-object v2, v0, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/xserver/XServer;->cursorManager:Lcom/winlator/xserver/CursorManager;

    move v3, v12

    .end local v12    # "backRed":B
    .local v3, "backRed":B
    move-object v12, v2

    move v2, v13

    .end local v13    # "foreBlue":B
    .local v2, "foreBlue":B
    move-object v13, v1

    move v4, v14

    .end local v14    # "foreGreen":B
    .local v4, "foreGreen":B
    move v14, v15

    move v5, v15

    .end local v15    # "foreRed":B
    .local v5, "foreRed":B
    move v15, v4

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v23

    move/from16 v19, v22

    invoke-virtual/range {v12 .. v19}, Lcom/winlator/xserver/CursorManager;->recolorCursor(Lcom/winlator/xserver/Cursor;BBBBBB)V

    .line 47
    invoke-virtual {v0, v1}, Lcom/winlator/xserver/XClient;->registerAsOwnerOfResource(Lcom/winlator/xserver/XResource;)V

    .line 48
    return-void

    .line 45
    .end local v2    # "foreBlue":B
    .end local v3    # "backRed":B
    .end local v4    # "foreGreen":B
    .end local v5    # "foreRed":B
    .restart local v12    # "backRed":B
    .restart local v13    # "foreBlue":B
    .restart local v14    # "foreGreen":B
    .restart local v15    # "foreRed":B
    :cond_2
    new-instance v6, Lcom/winlator/xserver/errors/BadIdChoice;

    invoke-direct {v6, v7}, Lcom/winlator/xserver/errors/BadIdChoice;-><init>(I)V

    throw v6

    .line 25
    .end local v1    # "cursor":Lcom/winlator/xserver/Cursor;
    .end local v11    # "maskPixmap":Lcom/winlator/xserver/Pixmap;
    .end local v12    # "backRed":B
    .end local v13    # "foreBlue":B
    .end local v14    # "foreGreen":B
    .end local v15    # "foreRed":B
    .end local v20    # "x":S
    .end local v21    # "y":S
    .end local v22    # "backBlue":B
    .end local v23    # "backGreen":B
    :cond_3
    new-instance v1, Lcom/winlator/xserver/errors/BadPixmap;

    invoke-direct {v1, v8}, Lcom/winlator/xserver/errors/BadPixmap;-><init>(I)V

    throw v1

    .line 22
    .end local v10    # "sourcePixmap":Lcom/winlator/xserver/Pixmap;
    :cond_4
    new-instance v1, Lcom/winlator/xserver/errors/BadIdChoice;

    invoke-direct {v1, v7}, Lcom/winlator/xserver/errors/BadIdChoice;-><init>(I)V

    throw v1
.end method

.method public static freeCursor(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 2
    .param p0, "client"    # Lcom/winlator/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 51
    iget-object v0, p0, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/xserver/XServer;->cursorManager:Lcom/winlator/xserver/CursorManager;

    invoke-virtual {p1}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winlator/xserver/CursorManager;->freeCursor(I)V

    .line 52
    return-void
.end method

.method public static getPointerMapping(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 5
    .param p0, "client"    # Lcom/winlator/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 55
    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v1

    .line 56
    .local v1, "lock":Lcom/winlator/xconnector/XStreamLock;
    const/4 v2, 0x1

    :try_start_0
    new-array v3, v0, [B

    fill-array-data v3, :array_0

    .line 57
    .local v3, "buttonsMap":[B
    array-length v4, v3

    int-to-byte v4, v4

    .line 59
    .local v4, "length":B
    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 60
    invoke-virtual {p2, v4}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 61
    invoke-virtual {p0}, Lcom/winlator/xserver/XClient;->getSequenceNumber()S

    move-result v2

    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 62
    add-int/lit8 v2, v4, 0x3

    div-int/lit8 v2, v2, 0x4

    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 63
    const/16 v2, 0x18

    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XOutputStream;->writePad(I)V

    .line 64
    invoke-virtual {p2, v3}, Lcom/winlator/xconnector/XOutputStream;->write([B)V

    .line 65
    neg-int v2, v4

    and-int/2addr v0, v2

    invoke-virtual {p2, v0}, Lcom/winlator/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v3    # "buttonsMap":[B
    .end local v4    # "length":B
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 67
    .end local v1    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 55
    .restart local v1    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Lcom/winlator/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
    .end array-data
.end method
