.class public Lcom/winlator/xserver/extensions/DRI3Extension;
.super Lcom/winlator/xserver/extensions/Extension;
.source "DRI3Extension.java"


# instance fields
.field private final onDestroyDrawableListener:Lcom/winlator/core/Callback;


# direct methods
.method public static synthetic $r8$lambda$aH7fNz9hBL0BOE9R31nA0j9mwPg(Lcom/winlator/xserver/Drawable;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/winlator/xserver/extensions/DRI3Extension;->lambda$new$0(Lcom/winlator/xserver/Drawable;)V

    return-void
.end method

.method public constructor <init>(Lcom/winlator/xserver/XServer;B)V
    .locals 1
    .param p1, "xServer"    # Lcom/winlator/xserver/XServer;
    .param p2, "majorOpcode"    # B

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/winlator/xserver/extensions/Extension;-><init>(Lcom/winlator/xserver/XServer;B)V

    .line 32
    new-instance v0, Lcom/winlator/xserver/extensions/DRI3Extension$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/winlator/xserver/extensions/DRI3Extension$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/winlator/xserver/extensions/DRI3Extension;->onDestroyDrawableListener:Lcom/winlator/core/Callback;

    .line 47
    return-void
.end method

.method private bufferFromPixmap(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 11
    .param p1, "client"    # Lcom/winlator/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 105
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 107
    .local v0, "windowId":I
    iget-object v1, p0, Lcom/winlator/xserver/extensions/Extension;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    invoke-virtual {v1, v0}, Lcom/winlator/xserver/WindowManager;->getWindow(I)Lcom/winlator/xserver/Window;

    move-result-object v1

    .line 109
    .local v1, "window":Lcom/winlator/xserver/Window;
    if-nez v1, :cond_1

    .line 110
    iget-object v2, p0, Lcom/winlator/xserver/extensions/Extension;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/xserver/XServer;->pixmapManager:Lcom/winlator/xserver/PixmapManager;

    invoke-virtual {v2, v0}, Lcom/winlator/xserver/PixmapManager;->getPixmap(I)Lcom/winlator/xserver/Pixmap;

    move-result-object v2

    .line 111
    .local v2, "pixmap":Lcom/winlator/xserver/Pixmap;
    if-eqz v2, :cond_0

    .line 112
    iget-object v2, v2, Lcom/winlator/xserver/Pixmap;->drawable:Lcom/winlator/xserver/Drawable;

    .line 113
    .local v2, "content":Lcom/winlator/xserver/Drawable;
    goto :goto_0

    .line 111
    .local v2, "pixmap":Lcom/winlator/xserver/Pixmap;
    :cond_0
    new-instance v3, Lcom/winlator/xserver/errors/BadPixmap;

    invoke-direct {v3, v0}, Lcom/winlator/xserver/errors/BadPixmap;-><init>(I)V

    throw v3

    .line 114
    .end local v2    # "pixmap":Lcom/winlator/xserver/Pixmap;
    :cond_1
    invoke-virtual {v1}, Lcom/winlator/xserver/Window;->getContent()Lcom/winlator/xserver/Drawable;

    move-result-object v2

    .line 116
    .local v2, "content":Lcom/winlator/xserver/Drawable;
    :goto_0
    iget-object v3, p0, Lcom/winlator/xserver/extensions/Extension;->xServer:Lcom/winlator/xserver/XServer;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v2, v4, v5}, Lcom/winlator/renderer/GPUImage;->createOrObtain(Lcom/winlator/xserver/XServer;Lcom/winlator/xserver/Drawable;ZZ)Lcom/winlator/renderer/GPUImage;

    move-result-object v3

    .line 117
    .local v3, "texture":Lcom/winlator/renderer/GPUImage;
    invoke-virtual {v3}, Lcom/winlator/renderer/GPUImage;->getStride()S

    move-result v6

    .line 118
    .local v6, "stride":S
    invoke-virtual {v3}, Lcom/winlator/renderer/GPUImage;->getNativeHandle()I

    move-result v7

    .line 120
    .local v7, "nativeHandle":I
    iget-object v8, p0, Lcom/winlator/xserver/extensions/Extension;->xServer:Lcom/winlator/xserver/XServer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bufferFromPixmap handle "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", width "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v10, v2, Lcom/winlator/xserver/Drawable;->width:S

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", height "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v10, v2, Lcom/winlator/xserver/Drawable;->height:S

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", stride "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/winlator/xserver/XServer;->debugPrint(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p3}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v8

    .line 123
    .local v8, "lock":Lcom/winlator/xconnector/XStreamLock;
    :try_start_0
    invoke-virtual {p3, v5}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 124
    invoke-virtual {p3, v5}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 125
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->getSequenceNumber()S

    move-result v5

    invoke-virtual {p3, v5}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 126
    invoke-virtual {p3, v4}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 127
    iget-short v4, v2, Lcom/winlator/xserver/Drawable;->height:S

    mul-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {p3, v4}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 128
    iget-short v4, v2, Lcom/winlator/xserver/Drawable;->width:S

    invoke-virtual {p3, v4}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 129
    iget-short v4, v2, Lcom/winlator/xserver/Drawable;->height:S

    invoke-virtual {p3, v4}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 130
    invoke-virtual {p3, v6}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 131
    const/16 v4, 0x20

    invoke-virtual {p3, v4}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 132
    invoke-virtual {p3, v4}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 133
    const/16 v4, 0xc

    invoke-virtual {p3, v4}, Lcom/winlator/xconnector/XOutputStream;->writePad(I)V

    .line 134
    invoke-virtual {p3, v7}, Lcom/winlator/xconnector/XOutputStream;->setAncillaryFd(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    if-eqz v8, :cond_2

    invoke-interface {v8}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 136
    .end local v8    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_2
    return-void

    .line 122
    .restart local v8    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :catchall_0
    move-exception v4

    if-eqz v8, :cond_3

    :try_start_1
    invoke-interface {v8}, Lcom/winlator/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v4
.end method

.method private static synthetic lambda$new$0(Lcom/winlator/xserver/Drawable;)V
    .locals 3
    .param p0, "drawable"    # Lcom/winlator/xserver/Drawable;

    .line 33
    invoke-virtual {p0}, Lcom/winlator/xserver/Drawable;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 34
    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/winlator/sysvshm/SysVSharedMemory;->unmapSHMSegment(Ljava/nio/ByteBuffer;J)V

    .line 35
    return-void
.end method

.method private open(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 5
    .param p1, "client"    # Lcom/winlator/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 69
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 70
    .local v0, "drawableId":I
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XInputStream;->skip(I)V

    .line 72
    iget-object v1, p0, Lcom/winlator/xserver/extensions/Extension;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->drawableManager:Lcom/winlator/xserver/DrawableManager;

    invoke-virtual {v1, v0}, Lcom/winlator/xserver/DrawableManager;->getDrawable(I)Lcom/winlator/xserver/Drawable;

    move-result-object v1

    .line 73
    .local v1, "drawable":Lcom/winlator/xserver/Drawable;
    if-eqz v1, :cond_2

    .line 75
    invoke-virtual {p3}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v2

    .line 76
    .local v2, "lock":Lcom/winlator/xconnector/XStreamLock;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p3, v3}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 77
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 78
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->getSequenceNumber()S

    move-result v4

    invoke-virtual {p3, v4}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 79
    invoke-virtual {p3, v3}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 80
    const/16 v3, 0x18

    invoke-virtual {p3, v3}, Lcom/winlator/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 82
    .end local v2    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 75
    .restart local v2    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Lcom/winlator/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v3

    .line 73
    .end local v2    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_2
    new-instance v2, Lcom/winlator/xserver/errors/BadDrawable;

    invoke-direct {v2, v0}, Lcom/winlator/xserver/errors/BadDrawable;-><init>(I)V

    throw v2
.end method

.method private pixmapFromBuffer(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 24
    .param p1, "client"    # Lcom/winlator/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 85
    move-object/from16 v11, p0

    invoke-virtual/range {p2 .. p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v12

    .line 86
    .local v12, "pixmapId":I
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v13

    .line 87
    .local v13, "windowId":I
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v14

    .line 88
    .local v14, "size":I
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/xconnector/XInputStream;->readShort()S

    move-result v15

    .line 89
    .local v15, "width":S
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/xconnector/XInputStream;->readShort()S

    move-result v16

    .line 90
    .local v16, "height":S
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/xconnector/XInputStream;->readShort()S

    move-result v17

    .line 91
    .local v17, "stride":S
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/xconnector/XInputStream;->readByte()B

    move-result v18

    .line 92
    .local v18, "depth":B
    const/4 v0, 0x1

    move-object/from16 v9, p2

    invoke-virtual {v9, v0}, Lcom/winlator/xconnector/XInputStream;->skip(I)V

    .line 94
    iget-object v0, v11, Lcom/winlator/xserver/extensions/Extension;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    invoke-virtual {v0, v13}, Lcom/winlator/xserver/WindowManager;->getWindow(I)Lcom/winlator/xserver/Window;

    move-result-object v19

    .line 95
    .local v19, "window":Lcom/winlator/xserver/Window;
    if-eqz v19, :cond_1

    .line 97
    iget-object v0, v11, Lcom/winlator/xserver/extensions/Extension;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/xserver/XServer;->pixmapManager:Lcom/winlator/xserver/PixmapManager;

    invoke-virtual {v0, v12}, Lcom/winlator/xserver/PixmapManager;->getPixmap(I)Lcom/winlator/xserver/Pixmap;

    move-result-object v20

    .line 98
    .local v20, "pixmap":Lcom/winlator/xserver/Pixmap;
    if-nez v20, :cond_0

    .line 100
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/xconnector/XInputStream;->getAncillaryFd()I

    move-result v21

    .line 101
    .local v21, "fd":I
    const/4 v6, 0x0

    int-to-long v7, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-wide/from16 v22, v7

    move/from16 v7, v18

    move/from16 v8, v21

    move-wide/from16 v9, v22

    invoke-direct/range {v0 .. v10}, Lcom/winlator/xserver/extensions/DRI3Extension;->pixmapFromFd(Lcom/winlator/xserver/XClient;ISSIIBIJ)V

    .line 102
    return-void

    .line 98
    .end local v21    # "fd":I
    :cond_0
    new-instance v0, Lcom/winlator/xserver/errors/BadIdChoice;

    invoke-direct {v0, v12}, Lcom/winlator/xserver/errors/BadIdChoice;-><init>(I)V

    throw v0

    .line 95
    .end local v20    # "pixmap":Lcom/winlator/xserver/Pixmap;
    :cond_1
    new-instance v0, Lcom/winlator/xserver/errors/BadWindow;

    invoke-direct {v0, v13}, Lcom/winlator/xserver/errors/BadWindow;-><init>(I)V

    throw v0
.end method

.method private pixmapFromBuffers(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 25
    .param p1, "client"    # Lcom/winlator/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 139
    move-object/from16 v11, p0

    move-object/from16 v12, p2

    invoke-virtual/range {p2 .. p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v13

    .line 140
    .local v13, "pixmapId":I
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v14

    .line 141
    .local v14, "windowId":I
    const/4 v0, 0x4

    invoke-virtual {v12, v0}, Lcom/winlator/xconnector/XInputStream;->skip(I)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/xconnector/XInputStream;->readShort()S

    move-result v15

    .line 143
    .local v15, "width":S
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/xconnector/XInputStream;->readShort()S

    move-result v9

    .line 144
    .local v9, "height":S
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v10

    .line 145
    .local v10, "stride":I
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v16

    .line 146
    .local v16, "offset":I
    const/16 v0, 0x18

    invoke-virtual {v12, v0}, Lcom/winlator/xconnector/XInputStream;->skip(I)V

    .line 147
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/xconnector/XInputStream;->readByte()B

    move-result v17

    .line 148
    .local v17, "depth":B
    const/16 v0, 0xb

    invoke-virtual {v12, v0}, Lcom/winlator/xconnector/XInputStream;->skip(I)V

    .line 150
    iget-object v0, v11, Lcom/winlator/xserver/extensions/Extension;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    invoke-virtual {v0, v14}, Lcom/winlator/xserver/WindowManager;->getWindow(I)Lcom/winlator/xserver/Window;

    move-result-object v18

    .line 151
    .local v18, "window":Lcom/winlator/xserver/Window;
    if-eqz v18, :cond_1

    .line 153
    iget-object v0, v11, Lcom/winlator/xserver/extensions/Extension;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/xserver/XServer;->pixmapManager:Lcom/winlator/xserver/PixmapManager;

    invoke-virtual {v0, v13}, Lcom/winlator/xserver/PixmapManager;->getPixmap(I)Lcom/winlator/xserver/Pixmap;

    move-result-object v19

    .line 154
    .local v19, "pixmap":Lcom/winlator/xserver/Pixmap;
    if-nez v19, :cond_0

    .line 156
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/xconnector/XInputStream;->getAncillaryFd()I

    move-result v20

    .line 157
    .local v20, "fd":I
    int-to-long v0, v10

    int-to-long v2, v9

    mul-long v21, v0, v2

    .line 158
    .local v21, "size":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v15

    move v4, v9

    move v5, v10

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, v20

    move/from16 v23, v9

    move/from16 v24, v10

    .end local v9    # "height":S
    .end local v10    # "stride":I
    .local v23, "height":S
    .local v24, "stride":I
    move-wide/from16 v9, v21

    invoke-direct/range {v0 .. v10}, Lcom/winlator/xserver/extensions/DRI3Extension;->pixmapFromFd(Lcom/winlator/xserver/XClient;ISSIIBIJ)V

    .line 159
    return-void

    .line 154
    .end local v20    # "fd":I
    .end local v21    # "size":J
    .end local v23    # "height":S
    .end local v24    # "stride":I
    .restart local v9    # "height":S
    .restart local v10    # "stride":I
    :cond_0
    new-instance v0, Lcom/winlator/xserver/errors/BadIdChoice;

    invoke-direct {v0, v13}, Lcom/winlator/xserver/errors/BadIdChoice;-><init>(I)V

    throw v0

    .line 151
    .end local v19    # "pixmap":Lcom/winlator/xserver/Pixmap;
    :cond_1
    new-instance v0, Lcom/winlator/xserver/errors/BadWindow;

    invoke-direct {v0, v14}, Lcom/winlator/xserver/errors/BadWindow;-><init>(I)V

    throw v0
.end method

.method private pixmapFromFd(Lcom/winlator/xserver/XClient;ISSIIBIJ)V
    .locals 4
    .param p1, "client"    # Lcom/winlator/xserver/XClient;
    .param p2, "pixmapId"    # I
    .param p3, "width"    # S
    .param p4, "height"    # S
    .param p5, "stride"    # I
    .param p6, "offset"    # I
    .param p7, "depth"    # B
    .param p8, "fd"    # I
    .param p9, "size"    # J

    .line 163
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p8, p9, p10, p6, v0}, Lcom/winlator/sysvshm/SysVSharedMemory;->mapSHMSegment(IJIZ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 164
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    .line 166
    div-int/lit8 v1, p5, 0x4

    int-to-short v1, v1

    .line 167
    .local v1, "totalWidth":S
    iget-object v2, p0, Lcom/winlator/xserver/extensions/Extension;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/xserver/XServer;->drawableManager:Lcom/winlator/xserver/DrawableManager;

    invoke-virtual {v2, p2, v1, p4, p7}, Lcom/winlator/xserver/DrawableManager;->createDrawable(ISSB)Lcom/winlator/xserver/Drawable;

    move-result-object v2

    .line 168
    .local v2, "drawable":Lcom/winlator/xserver/Drawable;
    invoke-virtual {v2, v0}, Lcom/winlator/xserver/Drawable;->setData(Ljava/nio/ByteBuffer;)V

    .line 169
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/winlator/xserver/Drawable;->setTexture(Lcom/winlator/renderer/Texture;)V

    .line 170
    iget-object v3, p0, Lcom/winlator/xserver/extensions/DRI3Extension;->onDestroyDrawableListener:Lcom/winlator/core/Callback;

    invoke-virtual {v2, v3}, Lcom/winlator/xserver/Drawable;->setOnDestroyListener(Lcom/winlator/core/Callback;)V

    .line 171
    iget-object v3, p0, Lcom/winlator/xserver/extensions/Extension;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/xserver/XServer;->pixmapManager:Lcom/winlator/xserver/PixmapManager;

    invoke-virtual {v3, v2}, Lcom/winlator/xserver/PixmapManager;->createPixmap(Lcom/winlator/xserver/Drawable;)Lcom/winlator/xserver/Pixmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    nop

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "totalWidth":S
    .end local v2    # "drawable":Lcom/winlator/xserver/Drawable;
    invoke-static {p8}, Lcom/winlator/xconnector/XConnectorEpoll;->closeFd(I)V

    .line 175
    nop

    .line 176
    return-void

    .line 174
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 164
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    :try_start_1
    new-instance v1, Lcom/winlator/xserver/errors/BadAlloc;

    invoke-direct {v1}, Lcom/winlator/xserver/errors/BadAlloc;-><init>()V

    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "pixmapId":I
    .end local p3    # "width":S
    .end local p4    # "height":S
    .end local p5    # "stride":I
    .end local p6    # "offset":I
    .end local p7    # "depth":B
    .end local p8    # "fd":I
    .end local p9    # "size":J
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "pixmapId":I
    .restart local p3    # "width":S
    .restart local p4    # "height":S
    .restart local p5    # "stride":I
    .restart local p6    # "offset":I
    .restart local p7    # "depth":B
    .restart local p8    # "fd":I
    .restart local p9    # "size":J
    :goto_0
    invoke-static {p8}, Lcom/winlator/xconnector/XConnectorEpoll;->closeFd(I)V

    .line 175
    throw v0
.end method

.method private queryVersion(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 4
    .param p1, "client"    # Lcom/winlator/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 55
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/winlator/xconnector/XInputStream;->skip(I)V

    .line 57
    invoke-virtual {p3}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v0

    .line 58
    .local v0, "lock":Lcom/winlator/xconnector/XStreamLock;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p3, v1}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 59
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 60
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->getSequenceNumber()S

    move-result v3

    invoke-virtual {p3, v3}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 61
    invoke-virtual {p3, v2}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 62
    invoke-virtual {p3, v1}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 63
    invoke-virtual {p3, v2}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 64
    const/16 v1, 0x10

    invoke-virtual {p3, v1}, Lcom/winlator/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 66
    .end local v0    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 57
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


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "DRI3"

    return-object v0
.end method

.method public handleRequest(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 5
    .param p1, "client"    # Lcom/winlator/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 180
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->getRequestData()B

    move-result v0

    .line 181
    .local v0, "opcode":I
    packed-switch v0, :pswitch_data_0

    .line 206
    :pswitch_0
    new-instance v1, Lcom/winlator/xserver/errors/BadImplementation;

    invoke-direct {v1}, Lcom/winlator/xserver/errors/BadImplementation;-><init>()V

    throw v1

    .line 201
    :pswitch_1
    iget-object v1, p0, Lcom/winlator/xserver/extensions/Extension;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v3, Lcom/winlator/xserver/XServer$Lockable;->PIXMAP_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v3, v4}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1

    .line 202
    .local v1, "lock":Lcom/winlator/xserver/XLock;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/xserver/extensions/DRI3Extension;->pixmapFromBuffers(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V

    .line 204
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_0
    goto/16 :goto_4

    .line 201
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2

    .line 196
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :pswitch_2
    iget-object v1, p0, Lcom/winlator/xserver/extensions/Extension;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v3, Lcom/winlator/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v3}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1

    .line 197
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/xserver/extensions/DRI3Extension;->bufferFromPixmap(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 198
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V

    .line 199
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_2
    goto :goto_4

    .line 196
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_2
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v2

    .line 191
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :pswitch_3
    iget-object v1, p0, Lcom/winlator/xserver/extensions/Extension;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v3, Lcom/winlator/xserver/XServer$Lockable;->PIXMAP_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v3, v4}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1

    .line 192
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_4
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/xserver/extensions/DRI3Extension;->pixmapFromBuffer(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 193
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V

    .line 194
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_4
    goto :goto_4

    .line 191
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_4
    move-exception v2

    if-eqz v1, :cond_5

    :try_start_5
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v2

    .line 186
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :pswitch_4
    iget-object v1, p0, Lcom/winlator/xserver/extensions/Extension;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XServer;->lock(Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v1

    .line 187
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :try_start_6
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/xserver/extensions/DRI3Extension;->open(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 188
    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V

    .line 189
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :cond_6
    goto :goto_4

    .line 186
    .restart local v1    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_6
    move-exception v2

    if-eqz v1, :cond_7

    :try_start_7
    invoke-interface {v1}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_3

    :catchall_7
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v2

    .line 183
    .end local v1    # "lock":Lcom/winlator/xserver/XLock;
    :pswitch_5
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/xserver/extensions/DRI3Extension;->queryVersion(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V

    .line 184
    nop

    .line 208
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
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
