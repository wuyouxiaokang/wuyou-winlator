.class public abstract Lcom/wuyouwin/xserver/requests/WindowRequests;
.super Ljava/lang/Object;
.source "WindowRequests.java"


# direct methods
.method public static changeProperty(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 17
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 158
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/wuyouwin/xserver/Property$Mode;->values()[Lcom/wuyouwin/xserver/Property$Mode;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/wuyouwin/xserver/XClient;->getRequestData()B

    move-result v3

    aget-object v2, v2, v3

    .line 159
    .local v2, "mode":Lcom/wuyouwin/xserver/Property$Mode;
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v3

    .line 160
    .local v3, "windowId":I
    iget-object v4, v0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v4, v4, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v4, v3}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v10

    .line 161
    .local v10, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v10, :cond_2

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v11

    .line 164
    .local v11, "atom":I
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v12

    .line 165
    .local v12, "type":I
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readByte()B

    move-result v13

    .line 166
    .local v13, "format":B
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v14

    .line 168
    .local v14, "length":I
    shr-int/lit8 v5, v13, 0x3

    mul-int v15, v14, v5

    .line 170
    .local v15, "totalSize":I
    const/4 v5, 0x0

    .line 171
    .local v5, "data":[B
    if-lez v15, :cond_0

    .line 172
    new-array v5, v15, [B

    .line 173
    invoke-virtual {v1, v5}, Lcom/wuyouwin/xconnector/XInputStream;->read([B)V

    .line 174
    neg-int v6, v15

    and-int/2addr v4, v6

    invoke-virtual {v1, v4}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    move-object/from16 v16, v5

    goto :goto_0

    .line 171
    :cond_0
    move-object/from16 v16, v5

    .line 177
    .end local v5    # "data":[B
    .local v16, "data":[B
    :goto_0
    invoke-static {v13}, Lcom/wuyouwin/xserver/Property$Format;->valueOf(I)Lcom/wuyouwin/xserver/Property$Format;

    move-result-object v7

    move-object v4, v10

    move v5, v11

    move v6, v12

    move-object v8, v2

    move-object/from16 v9, v16

    invoke-virtual/range {v4 .. v9}, Lcom/wuyouwin/xserver/Window;->modifyProperty(IILcom/wuyouwin/xserver/Property$Format;Lcom/wuyouwin/xserver/Property$Mode;[B)Lcom/wuyouwin/xserver/Property;

    move-result-object v4

    .line 178
    .local v4, "property":Lcom/wuyouwin/xserver/Property;
    if-eqz v4, :cond_1

    .line 180
    iget-object v5, v0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v5, v5, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v5, v10, v4}, Lcom/wuyouwin/xserver/WindowManager;->triggerOnModifyWindowProperty(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Property;)V

    .line 181
    return-void

    .line 178
    :cond_1
    new-instance v5, Lcom/wuyouwin/xserver/errors/BadMatch;

    invoke-direct {v5}, Lcom/wuyouwin/xserver/errors/BadMatch;-><init>()V

    throw v5

    .line 161
    .end local v4    # "property":Lcom/wuyouwin/xserver/Property;
    .end local v11    # "atom":I
    .end local v12    # "type":I
    .end local v13    # "format":B
    .end local v14    # "length":I
    .end local v15    # "totalSize":I
    .end local v16    # "data":[B
    :cond_2
    new-instance v4, Lcom/wuyouwin/xserver/errors/BadWindow;

    invoke-direct {v4, v3}, Lcom/wuyouwin/xserver/errors/BadWindow;-><init>(I)V

    throw v4
.end method

.method public static changeWindowAttributes(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 4
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 88
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 89
    .local v0, "windowId":I
    new-instance v1, Lcom/wuyouwin/core/Bitmask;

    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/wuyouwin/core/Bitmask;-><init>(I)V

    .line 90
    .local v1, "valueMask":Lcom/wuyouwin/core/Bitmask;
    iget-object v2, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v2, v2, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v2, v0}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v2

    .line 91
    .local v2, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v2, :cond_2

    .line 92
    invoke-virtual {v1}, Lcom/wuyouwin/core/Bitmask;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 93
    iget-object v3, v2, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v3, v1, p1, p0}, Lcom/wuyouwin/xserver/WindowAttributes;->update(Lcom/wuyouwin/core/Bitmask;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xserver/XClient;)V

    .line 95
    const/16 v3, 0x800

    invoke-virtual {v1, v3}, Lcom/wuyouwin/core/Bitmask;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    const/high16 v3, 0x100000

    invoke-static {v3, v2, p0}, Lcom/wuyouwin/xserver/requests/WindowRequests;->isClientCanSelectFor(ILcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/XClient;)Z

    move-result v3

    nop

    if-eqz v3, :cond_0

    .line 97
    const/high16 v3, 0x40000

    invoke-static {v3, v2, p0}, Lcom/wuyouwin/xserver/requests/WindowRequests;->isClientCanSelectFor(ILcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/XClient;)Z

    move-result v3

    nop

    if-eqz v3, :cond_0

    .line 98
    const/4 v3, 0x4

    invoke-static {v3, v2, p0}, Lcom/wuyouwin/xserver/requests/WindowRequests;->isClientCanSelectFor(ILcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/XClient;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    iget-object v3, v2, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v3}, Lcom/wuyouwin/xserver/WindowAttributes;->getEventMask()Lcom/wuyouwin/core/Bitmask;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/wuyouwin/xserver/XClient;->setEventListenerForWindow(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/core/Bitmask;)V

    goto :goto_0

    .line 101
    :cond_0
    new-instance v3, Lcom/wuyouwin/xserver/errors/BadAccess;

    invoke-direct {v3}, Lcom/wuyouwin/xserver/errors/BadAccess;-><init>()V

    throw v3

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 91
    :cond_2
    new-instance v3, Lcom/wuyouwin/xserver/errors/BadWindow;

    invoke-direct {v3, v0}, Lcom/wuyouwin/xserver/errors/BadWindow;-><init>(I)V

    throw v3
.end method

.method public static configureWindow(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 4
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 382
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 383
    .local v0, "windowId":I
    iget-object v1, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v1, v1, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v1, v0}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v1

    .line 384
    .local v1, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v1, :cond_1

    .line 385
    new-instance v2, Lcom/wuyouwin/core/Bitmask;

    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v3

    invoke-direct {v2, v3}, Lcom/wuyouwin/core/Bitmask;-><init>(I)V

    .line 386
    .local v2, "valueMask":Lcom/wuyouwin/core/Bitmask;
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 387
    invoke-virtual {v2}, Lcom/wuyouwin/core/Bitmask;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v3, v3, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v3, v1, v2, p1}, Lcom/wuyouwin/xserver/WindowManager;->configureWindow(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/core/Bitmask;Lcom/wuyouwin/xconnector/XInputStream;)V

    .line 388
    :cond_0
    return-void

    .line 384
    .end local v2    # "valueMask":Lcom/wuyouwin/core/Bitmask;
    :cond_1
    new-instance v2, Lcom/wuyouwin/xserver/errors/BadWindow;

    invoke-direct {v2, v0}, Lcom/wuyouwin/xserver/errors/BadWindow;-><init>(I)V

    throw v2
.end method

.method public static createWindow(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 24
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 33
    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Lcom/wuyouwin/xserver/XClient;->getRequestData()B

    move-result v12

    .line 34
    .local v12, "depth":B
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v13

    .line 35
    .local v13, "windowId":I
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v14

    .line 37
    .local v14, "parentId":I
    invoke-virtual {v11, v13}, Lcom/wuyouwin/xserver/XClient;->isValidResourceId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    iget-object v0, v11, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v0, v0, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v0, v14}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v15

    .line 40
    .local v15, "parent":Lcom/wuyouwin/xserver/Window;
    if-eqz v15, :cond_1

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v16

    .line 43
    .local v16, "x":S
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v17

    .line 44
    .local v17, "y":S
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v18

    .line 45
    .local v18, "width":S
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v19

    .line 46
    .local v19, "height":S
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v10

    .line 47
    .local v10, "borderWidth":S
    invoke-static {}, Lcom/wuyouwin/xserver/WindowAttributes$WindowClass;->values()[Lcom/wuyouwin/xserver/WindowAttributes$WindowClass;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v1

    int-to-byte v1, v1

    aget-object v20, v0, v1

    .line 48
    .local v20, "windowClass":Lcom/wuyouwin/xserver/WindowAttributes$WindowClass;
    iget-object v0, v11, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v0, v0, Lcom/wuyouwin/xserver/XServer;->pixmapManager:Lcom/wuyouwin/xserver/PixmapManager;

    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xserver/PixmapManager;->getVisual(I)Lcom/wuyouwin/xserver/Visual;

    move-result-object v21

    .line 49
    .local v21, "visual":Lcom/wuyouwin/xserver/Visual;
    new-instance v0, Lcom/wuyouwin/core/Bitmask;

    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/wuyouwin/core/Bitmask;-><init>(I)V

    move-object v9, v0

    .line 51
    .local v9, "valueMask":Lcom/wuyouwin/core/Bitmask;
    iget-object v0, v11, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v0, v0, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    move v1, v13

    move-object v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v22, v9

    .end local v9    # "valueMask":Lcom/wuyouwin/core/Bitmask;
    .local v22, "valueMask":Lcom/wuyouwin/core/Bitmask;
    move v9, v12

    move/from16 v23, v12

    move v12, v10

    .end local v10    # "borderWidth":S
    .local v12, "borderWidth":S
    .local v23, "depth":B
    move-object/from16 v10, p0

    invoke-virtual/range {v0 .. v10}, Lcom/wuyouwin/xserver/WindowManager;->createWindow(ILcom/wuyouwin/xserver/Window;SSSSLcom/wuyouwin/xserver/WindowAttributes$WindowClass;Lcom/wuyouwin/xserver/Visual;BLcom/wuyouwin/xserver/XClient;)Lcom/wuyouwin/xserver/Window;

    move-result-object v0

    .line 52
    .local v0, "window":Lcom/wuyouwin/xserver/Window;
    invoke-virtual {v0, v12}, Lcom/wuyouwin/xserver/Window;->setBorderWidth(S)V

    .line 53
    invoke-virtual/range {v22 .. v22}, Lcom/wuyouwin/core/Bitmask;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    .end local v22    # "valueMask":Lcom/wuyouwin/core/Bitmask;
    .local v3, "valueMask":Lcom/wuyouwin/core/Bitmask;
    invoke-virtual {v1, v3, v2, v11}, Lcom/wuyouwin/xserver/WindowAttributes;->update(Lcom/wuyouwin/core/Bitmask;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xserver/XClient;)V

    goto :goto_0

    .end local v3    # "valueMask":Lcom/wuyouwin/core/Bitmask;
    .restart local v22    # "valueMask":Lcom/wuyouwin/core/Bitmask;
    :cond_0
    move-object/from16 v2, p1

    move-object/from16 v3, v22

    .line 54
    .end local v22    # "valueMask":Lcom/wuyouwin/core/Bitmask;
    .restart local v3    # "valueMask":Lcom/wuyouwin/core/Bitmask;
    :goto_0
    iget-object v1, v0, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v1}, Lcom/wuyouwin/xserver/WindowAttributes;->getEventMask()Lcom/wuyouwin/core/Bitmask;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/wuyouwin/xserver/XClient;->setEventListenerForWindow(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/core/Bitmask;)V

    .line 55
    invoke-virtual {v11, v0}, Lcom/wuyouwin/xserver/XClient;->registerAsOwnerOfResource(Lcom/wuyouwin/xserver/XResource;)V

    .line 56
    new-instance v1, Lcom/wuyouwin/xserver/events/CreateNotify;

    invoke-direct {v1, v15, v0}, Lcom/wuyouwin/xserver/events/CreateNotify;-><init>(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Window;)V

    const/high16 v4, 0x80000

    invoke-virtual {v15, v4, v1}, Lcom/wuyouwin/xserver/Window;->sendEvent(ILcom/wuyouwin/xserver/events/Event;)V

    .line 57
    return-void

    .line 40
    .end local v0    # "window":Lcom/wuyouwin/xserver/Window;
    .end local v3    # "valueMask":Lcom/wuyouwin/core/Bitmask;
    .end local v16    # "x":S
    .end local v17    # "y":S
    .end local v18    # "width":S
    .end local v19    # "height":S
    .end local v20    # "windowClass":Lcom/wuyouwin/xserver/WindowAttributes$WindowClass;
    .end local v21    # "visual":Lcom/wuyouwin/xserver/Visual;
    .end local v23    # "depth":B
    .local v12, "depth":B
    :cond_1
    new-instance v0, Lcom/wuyouwin/xserver/errors/BadWindow;

    invoke-direct {v0, v14}, Lcom/wuyouwin/xserver/errors/BadWindow;-><init>(I)V

    throw v0

    .line 37
    .end local v15    # "parent":Lcom/wuyouwin/xserver/Window;
    :cond_2
    new-instance v0, Lcom/wuyouwin/xserver/errors/BadIdChoice;

    invoke-direct {v0, v13}, Lcom/wuyouwin/xserver/errors/BadIdChoice;-><init>(I)V

    throw v0
.end method

.method public static deleteProperty(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 3
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 184
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 185
    .local v0, "windowId":I
    iget-object v1, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v1, v1, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v1, v0}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v1

    .line 186
    .local v1, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wuyouwin/xserver/Window;->removeProperty(I)V

    .line 188
    return-void

    .line 186
    :cond_0
    new-instance v2, Lcom/wuyouwin/xserver/errors/BadWindow;

    invoke-direct {v2, v0}, Lcom/wuyouwin/xserver/errors/BadWindow;-><init>(I)V

    throw v2
.end method

.method public static destroySubWindows(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 6
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 115
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 116
    .local v0, "windowId":I
    iget-object v1, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v1, v1, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v1, v0}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v1

    .line 117
    .local v1, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {v1}, Lcom/wuyouwin/xserver/Window;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wuyouwin/xserver/Window;

    .local v3, "child":Lcom/wuyouwin/xserver/Window;
    iget-object v4, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v4, v4, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    iget v5, v3, Lcom/wuyouwin/xserver/XResource;->id:I

    invoke-virtual {v4, v5}, Lcom/wuyouwin/xserver/WindowManager;->destroyWindow(I)V

    .end local v3    # "child":Lcom/wuyouwin/xserver/Window;
    goto :goto_0

    .line 120
    :cond_0
    return-void

    .line 117
    :cond_1
    new-instance v2, Lcom/wuyouwin/xserver/errors/BadWindow;

    invoke-direct {v2, v0}, Lcom/wuyouwin/xserver/errors/BadWindow;-><init>(I)V

    throw v2
.end method

.method public static destroyWindow(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 2
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 111
    iget-object v0, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v0, v0, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xserver/WindowManager;->destroyWindow(I)V

    .line 112
    return-void
.end method

.method public static getGeometry(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 9
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 391
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 392
    .local v0, "drawableId":I
    iget-object v1, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v1, v1, Lcom/wuyouwin/xserver/XServer;->drawableManager:Lcom/wuyouwin/xserver/DrawableManager;

    invoke-virtual {v1, v0}, Lcom/wuyouwin/xserver/DrawableManager;->getDrawable(I)Lcom/wuyouwin/xserver/Drawable;

    move-result-object v1

    .line 393
    .local v1, "drawable":Lcom/wuyouwin/xserver/Drawable;
    if-eqz v1, :cond_5

    .line 394
    iget-object v2, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v2, v2, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v2, v0}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v2

    .line 395
    .local v2, "window":Lcom/wuyouwin/xserver/Window;
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/wuyouwin/xserver/Window;->getX()S

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    .line 396
    .local v4, "x":S
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/wuyouwin/xserver/Window;->getY()S

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v3

    .line 397
    .local v5, "y":S
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/wuyouwin/xserver/Window;->getBorderWidth()S

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v3

    .line 399
    .local v6, "borderWidth":S
    :goto_2
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XOutputStream;->lock()Lcom/wuyouwin/xconnector/XStreamLock;

    move-result-object v7

    .line 400
    .local v7, "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {p2, v8}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 401
    iget-object v8, v1, Lcom/wuyouwin/xserver/Drawable;->visual:Lcom/wuyouwin/xserver/Visual;

    iget-byte v8, v8, Lcom/wuyouwin/xserver/Visual;->depth:B

    invoke-virtual {p2, v8}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 402
    invoke-virtual {p0}, Lcom/wuyouwin/xserver/XClient;->getSequenceNumber()S

    move-result v8

    invoke-virtual {p2, v8}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 403
    invoke-virtual {p2, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 404
    iget-object v3, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v3, v3, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    iget-object v3, v3, Lcom/wuyouwin/xserver/WindowManager;->rootWindow:Lcom/wuyouwin/xserver/Window;

    iget v3, v3, Lcom/wuyouwin/xserver/XResource;->id:I

    invoke-virtual {p2, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 405
    invoke-virtual {p2, v4}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 406
    invoke-virtual {p2, v5}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 407
    iget-short v3, v1, Lcom/wuyouwin/xserver/Drawable;->width:S

    invoke-virtual {p2, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 408
    iget-short v3, v1, Lcom/wuyouwin/xserver/Drawable;->height:S

    invoke-virtual {p2, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 409
    invoke-virtual {p2, v6}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 410
    const/16 v3, 0xa

    invoke-virtual {p2, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    if-eqz v7, :cond_3

    invoke-interface {v7}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V

    .line 412
    .end local v7    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_3
    return-void

    .line 399
    .restart local v7    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :catchall_0
    move-exception v3

    if-eqz v7, :cond_4

    :try_start_1
    invoke-interface {v7}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v8

    invoke-virtual {v3, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v3

    .line 393
    .end local v2    # "window":Lcom/wuyouwin/xserver/Window;
    .end local v4    # "x":S
    .end local v5    # "y":S
    .end local v6    # "borderWidth":S
    .end local v7    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_5
    new-instance v2, Lcom/wuyouwin/xserver/errors/BadDrawable;

    invoke-direct {v2, v0}, Lcom/wuyouwin/xserver/errors/BadDrawable;-><init>(I)V

    throw v2
.end method

.method public static getInputFocus(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 4
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 369
    iget-object v0, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v0, v0, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/WindowManager;->getFocusedWindow()Lcom/wuyouwin/xserver/Window;

    move-result-object v0

    .line 371
    .local v0, "focusedWindow":Lcom/wuyouwin/xserver/Window;
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XOutputStream;->lock()Lcom/wuyouwin/xconnector/XStreamLock;

    move-result-object v1

    .line 372
    .local v1, "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p2, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 373
    iget-object v2, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v2, v2, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v2}, Lcom/wuyouwin/xserver/WindowManager;->getFocusRevertTo()Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 374
    invoke-virtual {p0}, Lcom/wuyouwin/xserver/XClient;->getSequenceNumber()S

    move-result v2

    invoke-virtual {p2, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 375
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 376
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/wuyouwin/xserver/XResource;->id:I

    goto :goto_0

    .line 371
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 376
    :cond_0
    :goto_0
    invoke-virtual {p2, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 377
    const/16 v2, 0x14

    invoke-virtual {p2, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V

    .line 379
    .end local v1    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_1
    return-void

    .line 371
    .restart local v1    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :goto_1
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v2
.end method

.method public static getProperty(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 17
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 191
    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lcom/wuyouwin/xserver/XClient;->getRequestData()B

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    move v4, v0

    .line 192
    .local v4, "delete":Z
    invoke-virtual/range {p0 .. p0}, Lcom/wuyouwin/xserver/XClient;->getSequenceNumber()S

    move-result v5

    .line 193
    .local v5, "sequenceNumber":S
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v6

    .line 194
    .local v6, "windowId":I
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v0, v0, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v0, v6}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v8

    .line 195
    .local v8, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v8, :cond_8

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v9

    .line 198
    .local v9, "atom":I
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v10

    .line 199
    .local v10, "type":I
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v11

    .line 200
    .local v11, "longOffset":I
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v12

    .line 201
    .local v12, "longLength":I
    invoke-virtual {v8, v9}, Lcom/wuyouwin/xserver/Window;->getProperty(I)Lcom/wuyouwin/xserver/Property;

    move-result-object v13

    .line 203
    .local v13, "property":Lcom/wuyouwin/xserver/Property;
    const/4 v14, 0x0

    .line 204
    .local v14, "bytesAfter":I
    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/xconnector/XOutputStream;->lock()Lcom/wuyouwin/xconnector/XStreamLock;

    move-result-object v15

    .line 205
    .local v15, "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    const/16 v0, 0xc

    if-nez v13, :cond_1

    .line 206
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 207
    invoke-virtual {v1, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 208
    invoke-virtual {v1, v5}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 209
    invoke-virtual {v1, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 210
    invoke-virtual {v1, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 211
    invoke-virtual {v1, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 212
    invoke-virtual {v1, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 213
    invoke-virtual {v1, v0}, Lcom/wuyouwin/xconnector/XOutputStream;->writePad(I)V

    goto/16 :goto_1

    .line 204
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_2

    .line 215
    :cond_1
    iget v0, v13, Lcom/wuyouwin/xserver/Property;->type:I

    if-eq v0, v10, :cond_2

    if-eqz v10, :cond_2

    .line 216
    invoke-virtual {v1, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 217
    iget-object v0, v13, Lcom/wuyouwin/xserver/Property;->format:Lcom/wuyouwin/xserver/Property$Format;

    iget-byte v0, v0, Lcom/wuyouwin/xserver/Property$Format;->value:B

    invoke-virtual {v1, v0}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 218
    invoke-virtual {v1, v5}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 219
    invoke-virtual {v1, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 220
    iget v0, v13, Lcom/wuyouwin/xserver/Property;->type:I

    invoke-virtual {v1, v0}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 221
    invoke-virtual {v1, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 222
    invoke-virtual {v1, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 223
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/wuyouwin/xconnector/XOutputStream;->writePad(I)V

    goto :goto_1

    .line 226
    :cond_2
    iget-object v0, v13, Lcom/wuyouwin/xserver/Property;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 227
    .local v0, "data":[B
    mul-int/lit8 v2, v11, 0x4

    .line 228
    .local v2, "offset":I
    array-length v3, v0

    sub-int/2addr v3, v2

    mul-int/lit8 v7, v12, 0x4

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 229
    .local v3, "length":I
    if-ltz v3, :cond_6

    .line 230
    array-length v7, v0

    add-int v16, v2, v3

    sub-int v14, v7, v16

    .line 232
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 233
    iget-object v7, v13, Lcom/wuyouwin/xserver/Property;->format:Lcom/wuyouwin/xserver/Property$Format;

    iget-byte v7, v7, Lcom/wuyouwin/xserver/Property$Format;->value:B

    invoke-virtual {v1, v7}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 234
    invoke-virtual {v1, v5}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 235
    add-int/lit8 v7, v3, 0x3

    div-int/lit8 v7, v7, 0x4

    invoke-virtual {v1, v7}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 236
    iget v7, v13, Lcom/wuyouwin/xserver/Property;->type:I

    invoke-virtual {v1, v7}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 237
    invoke-virtual {v1, v14}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 238
    iget-object v7, v13, Lcom/wuyouwin/xserver/Property;->format:Lcom/wuyouwin/xserver/Property$Format;

    iget-byte v7, v7, Lcom/wuyouwin/xserver/Property$Format;->value:B

    div-int/lit8 v7, v7, 0x8

    div-int v7, v3, v7

    invoke-virtual {v1, v7}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 239
    const/16 v7, 0xc

    invoke-virtual {v1, v7}, Lcom/wuyouwin/xconnector/XOutputStream;->writePad(I)V

    .line 240
    invoke-virtual {v1, v0, v2, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->write([BII)V

    .line 241
    neg-int v7, v3

    and-int/lit8 v7, v7, 0x3

    if-lez v7, :cond_3

    neg-int v7, v3

    and-int/lit8 v7, v7, 0x3

    invoke-virtual {v1, v7}, Lcom/wuyouwin/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    .end local v0    # "data":[B
    .end local v2    # "offset":I
    .end local v3    # "length":I
    :cond_3
    :goto_1
    if-eqz v15, :cond_4

    invoke-interface {v15}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V

    .line 245
    .end local v15    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v13, :cond_5

    if-nez v14, :cond_5

    .line 246
    invoke-virtual {v8, v9}, Lcom/wuyouwin/xserver/Window;->removeProperty(I)V

    .line 248
    :cond_5
    return-void

    .line 229
    .restart local v0    # "data":[B
    .restart local v2    # "offset":I
    .restart local v3    # "length":I
    .restart local v15    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_6
    :try_start_1
    new-instance v7, Lcom/wuyouwin/xserver/errors/BadValue;

    invoke-direct {v7, v11}, Lcom/wuyouwin/xserver/errors/BadValue;-><init>(I)V

    .end local v4    # "delete":Z
    .end local v5    # "sequenceNumber":S
    .end local v6    # "windowId":I
    .end local v8    # "window":Lcom/wuyouwin/xserver/Window;
    .end local v9    # "atom":I
    .end local v10    # "type":I
    .end local v11    # "longOffset":I
    .end local v12    # "longLength":I
    .end local v13    # "property":Lcom/wuyouwin/xserver/Property;
    .end local v14    # "bytesAfter":I
    .end local v15    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    .end local p0    # "client":Lcom/wuyouwin/xserver/XClient;
    .end local p1    # "inputStream":Lcom/wuyouwin/xconnector/XInputStream;
    .end local p2    # "outputStream":Lcom/wuyouwin/xconnector/XOutputStream;
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    .end local v0    # "data":[B
    .end local v2    # "offset":I
    .end local v3    # "length":I
    .restart local v4    # "delete":Z
    .restart local v5    # "sequenceNumber":S
    .restart local v6    # "windowId":I
    .restart local v8    # "window":Lcom/wuyouwin/xserver/Window;
    .restart local v9    # "atom":I
    .restart local v10    # "type":I
    .restart local v11    # "longOffset":I
    .restart local v12    # "longLength":I
    .restart local v13    # "property":Lcom/wuyouwin/xserver/Property;
    .restart local v14    # "bytesAfter":I
    .restart local v15    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    .restart local p0    # "client":Lcom/wuyouwin/xserver/XClient;
    .restart local p1    # "inputStream":Lcom/wuyouwin/xconnector/XInputStream;
    .restart local p2    # "outputStream":Lcom/wuyouwin/xconnector/XOutputStream;
    :goto_2
    if-eqz v15, :cond_7

    :try_start_2
    invoke-interface {v15}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v2

    .line 195
    .end local v9    # "atom":I
    .end local v10    # "type":I
    .end local v11    # "longOffset":I
    .end local v12    # "longLength":I
    .end local v13    # "property":Lcom/wuyouwin/xserver/Property;
    .end local v14    # "bytesAfter":I
    .end local v15    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_8
    new-instance v0, Lcom/wuyouwin/xserver/errors/BadWindow;

    invoke-direct {v0, v6}, Lcom/wuyouwin/xserver/errors/BadWindow;-><init>(I)V

    throw v0
.end method

.method public static getScreenSaver(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 4
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 459
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XOutputStream;->lock()Lcom/wuyouwin/xconnector/XStreamLock;

    move-result-object v0

    .line 460
    .local v0, "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 461
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 462
    invoke-virtual {p0}, Lcom/wuyouwin/xserver/XClient;->getSequenceNumber()S

    move-result v3

    invoke-virtual {p2, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 463
    invoke-virtual {p2, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 464
    const/16 v2, 0x258

    invoke-virtual {p2, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 465
    invoke-virtual {p2, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 466
    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 467
    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 468
    const/16 v1, 0x12

    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V

    .line 470
    .end local v0    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 459
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

.method public static getWindowAttributes(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 6
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 60
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 61
    .local v0, "windowId":I
    iget-object v1, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v1, v1, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v1, v0}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v1

    .line 62
    .local v1, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v1, :cond_5

    .line 64
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XOutputStream;->lock()Lcom/wuyouwin/xconnector/XStreamLock;

    move-result-object v2

    .line 65
    .local v2, "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p2, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 66
    iget-object v4, v1, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v4}, Lcom/wuyouwin/xserver/WindowAttributes;->getBackingStore()Lcom/wuyouwin/xserver/WindowAttributes$BackingStore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {p2, v4}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 67
    invoke-virtual {p0}, Lcom/wuyouwin/xserver/XClient;->getSequenceNumber()S

    move-result v4

    invoke-virtual {p2, v4}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 68
    const/4 v4, 0x3

    invoke-virtual {p2, v4}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 69
    invoke-virtual {v1}, Lcom/wuyouwin/xserver/Window;->isInputOutput()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/wuyouwin/xserver/Window;->getContent()Lcom/wuyouwin/xserver/Drawable;

    move-result-object v4

    iget-object v4, v4, Lcom/wuyouwin/xserver/Drawable;->visual:Lcom/wuyouwin/xserver/Visual;

    iget v4, v4, Lcom/wuyouwin/xserver/Visual;->id:I

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v3

    goto/16 :goto_3

    .line 69
    :cond_0
    move v4, v5

    :goto_0
    invoke-virtual {p2, v4}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 70
    iget-object v4, v1, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v4}, Lcom/wuyouwin/xserver/WindowAttributes;->getWindowClass()Lcom/wuyouwin/xserver/WindowAttributes$WindowClass;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    int-to-short v4, v4

    invoke-virtual {p2, v4}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 71
    iget-object v4, v1, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v4}, Lcom/wuyouwin/xserver/WindowAttributes;->getBitGravity()Lcom/wuyouwin/xserver/WindowAttributes$BitGravity;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {p2, v4}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 72
    iget-object v4, v1, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v4}, Lcom/wuyouwin/xserver/WindowAttributes;->getWinGravity()Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {p2, v4}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 73
    iget-object v4, v1, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v4}, Lcom/wuyouwin/xserver/WindowAttributes;->getBackingPlanes()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 74
    iget-object v4, v1, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v4}, Lcom/wuyouwin/xserver/WindowAttributes;->getBackingPixel()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 75
    iget-object v4, v1, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v4}, Lcom/wuyouwin/xserver/WindowAttributes;->isSaveUnder()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    int-to-byte v4, v4

    invoke-virtual {p2, v4}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 76
    invoke-virtual {p2, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 77
    invoke-virtual {v1}, Lcom/wuyouwin/xserver/Window;->getMapState()Lcom/wuyouwin/xserver/Window$MapState;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {p2, v4}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 78
    iget-object v4, v1, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v4}, Lcom/wuyouwin/xserver/WindowAttributes;->isOverrideRedirect()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v3, v5

    :goto_2
    int-to-byte v3, v3

    invoke-virtual {p2, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 79
    invoke-virtual {p2, v5}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 80
    invoke-virtual {v1}, Lcom/wuyouwin/xserver/Window;->getAllEventMasks()Lcom/wuyouwin/core/Bitmask;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wuyouwin/core/Bitmask;->getBits()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 81
    invoke-virtual {p0, v1}, Lcom/wuyouwin/xserver/XClient;->getEventMaskForWindow(Lcom/wuyouwin/xserver/Window;)Lcom/wuyouwin/core/Bitmask;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wuyouwin/core/Bitmask;->getBits()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 82
    iget-object v3, v1, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v3}, Lcom/wuyouwin/xserver/WindowAttributes;->getDoNotPropagateMask()Lcom/wuyouwin/core/Bitmask;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wuyouwin/core/Bitmask;->getBits()I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {p2, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 83
    invoke-virtual {p2, v5}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V

    .line 85
    .end local v2    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_3
    return-void

    .line 64
    .restart local v2    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :goto_3
    if-eqz v2, :cond_4

    :try_start_1
    invoke-interface {v2}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    throw v3

    .line 62
    .end local v2    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_5
    new-instance v2, Lcom/wuyouwin/xserver/errors/BadWindow;

    invoke-direct {v2, v0}, Lcom/wuyouwin/xserver/errors/BadWindow;-><init>(I)V

    throw v2
.end method

.method private static isClientCanSelectFor(ILcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/XClient;)Z
    .locals 1
    .param p0, "eventId"    # I
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;
    .param p2, "client"    # Lcom/wuyouwin/xserver/XClient;

    .line 107
    iget-object v0, p1, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/WindowAttributes;->getEventMask()Lcom/wuyouwin/core/Bitmask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wuyouwin/core/Bitmask;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/wuyouwin/xserver/Window;->hasEventListenerFor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0, p1}, Lcom/wuyouwin/xserver/XClient;->isInterestedIn(ILcom/wuyouwin/xserver/Window;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static mapSubWindows(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 3
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 144
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 145
    .local v0, "windowId":I
    iget-object v1, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v1, v1, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v1, v0}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v1

    .line 146
    .local v1, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v1, :cond_0

    .line 147
    iget-object v2, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v2, v2, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v2, v1}, Lcom/wuyouwin/xserver/WindowManager;->mapSubWindows(Lcom/wuyouwin/xserver/Window;)V

    .line 148
    return-void

    .line 146
    :cond_0
    new-instance v2, Lcom/wuyouwin/xserver/errors/BadWindow;

    invoke-direct {v2, v0}, Lcom/wuyouwin/xserver/errors/BadWindow;-><init>(I)V

    throw v2
.end method

.method public static mapWindow(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 3
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 137
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 138
    .local v0, "windowId":I
    iget-object v1, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v1, v1, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v1, v0}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v1

    .line 139
    .local v1, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v1, :cond_0

    .line 140
    iget-object v2, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v2, v2, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v2, v1}, Lcom/wuyouwin/xserver/WindowManager;->mapWindow(Lcom/wuyouwin/xserver/Window;)V

    .line 141
    return-void

    .line 139
    :cond_0
    new-instance v2, Lcom/wuyouwin/xserver/errors/BadWindow;

    invoke-direct {v2, v0}, Lcom/wuyouwin/xserver/errors/BadWindow;-><init>(I)V

    throw v2
.end method

.method public static queryPointer(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 10
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 251
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 252
    .local v0, "windowId":I
    iget-object v1, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v1, v1, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v1, v0}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v1

    .line 253
    .local v1, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v1, :cond_5

    .line 254
    iget-object v2, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v2, v2, Lcom/wuyouwin/xserver/XServer;->pointer:Lcom/wuyouwin/xserver/Pointer;

    invoke-virtual {v2}, Lcom/wuyouwin/xserver/Pointer;->getClampedX()S

    move-result v2

    .line 255
    .local v2, "rootX":S
    iget-object v3, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v3, v3, Lcom/wuyouwin/xserver/XServer;->pointer:Lcom/wuyouwin/xserver/Pointer;

    invoke-virtual {v3}, Lcom/wuyouwin/xserver/Pointer;->getClampedY()S

    move-result v3

    .line 256
    .local v3, "rootY":S
    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/wuyouwin/xserver/Window;->getChildByCoords(SSZ)Lcom/wuyouwin/xserver/Window;

    move-result-object v5

    .line 257
    .local v5, "child":Lcom/wuyouwin/xserver/Window;
    invoke-virtual {v1, v2, v3}, Lcom/wuyouwin/xserver/Window;->rootPointToLocal(SS)[S

    move-result-object v6

    .line 259
    .local v6, "localPoint":[S
    const/4 v7, 0x0

    if-eqz v5, :cond_0

    .line 260
    invoke-virtual {v5}, Lcom/wuyouwin/xserver/Window;->getFullscreenTransformation()Lcom/wuyouwin/renderer/FullscreenTransformation;

    move-result-object v8

    .line 261
    .local v8, "fullscreenTransformation":Lcom/wuyouwin/renderer/FullscreenTransformation;
    if-eqz v8, :cond_0

    .line 262
    invoke-virtual {v8, v2, v3}, Lcom/wuyouwin/renderer/FullscreenTransformation;->transformPointerCoords(SS)[S

    move-result-object v9

    .line 263
    .local v9, "transformedPoint":[S
    aget-short v2, v9, v7

    .line 264
    aget-short v3, v9, v4

    .line 265
    invoke-virtual {v5, v2, v3}, Lcom/wuyouwin/xserver/Window;->rootPointToLocal(SS)[S

    move-result-object v6

    .line 269
    .end local v8    # "fullscreenTransformation":Lcom/wuyouwin/renderer/FullscreenTransformation;
    .end local v9    # "transformedPoint":[S
    :cond_0
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XOutputStream;->lock()Lcom/wuyouwin/xconnector/XStreamLock;

    move-result-object v8

    .line 270
    .local v8, "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :try_start_0
    invoke-virtual {p2, v4}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 271
    iget-object v9, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-virtual {v9}, Lcom/wuyouwin/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v9

    if-nez v9, :cond_1

    move v9, v4

    goto :goto_0

    :cond_1
    move v9, v7

    :goto_0
    int-to-byte v9, v9

    invoke-virtual {p2, v9}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 272
    invoke-virtual {p0}, Lcom/wuyouwin/xserver/XClient;->getSequenceNumber()S

    move-result v9

    invoke-virtual {p2, v9}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 273
    invoke-virtual {p2, v7}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 274
    iget-object v9, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v9, v9, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    iget-object v9, v9, Lcom/wuyouwin/xserver/WindowManager;->rootWindow:Lcom/wuyouwin/xserver/Window;

    iget v9, v9, Lcom/wuyouwin/xserver/XResource;->id:I

    invoke-virtual {p2, v9}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 275
    if-eqz v5, :cond_2

    iget v9, v5, Lcom/wuyouwin/xserver/XResource;->id:I

    goto :goto_1

    .line 269
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 275
    :cond_2
    move v9, v7

    :goto_1
    invoke-virtual {p2, v9}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 276
    invoke-virtual {p2, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 277
    invoke-virtual {p2, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 278
    aget-short v7, v6, v7

    invoke-virtual {p2, v7}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 279
    aget-short v4, v6, v4

    invoke-virtual {p2, v4}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 280
    iget-object v4, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v4, v4, Lcom/wuyouwin/xserver/XServer;->inputDeviceManager:Lcom/wuyouwin/xserver/InputDeviceManager;

    invoke-virtual {v4}, Lcom/wuyouwin/xserver/InputDeviceManager;->getKeyButMask()Lcom/wuyouwin/core/Bitmask;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wuyouwin/core/Bitmask;->getBits()I

    move-result v4

    int-to-short v4, v4

    invoke-virtual {p2, v4}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 281
    const/4 v4, 0x6

    invoke-virtual {p2, v4}, Lcom/wuyouwin/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    if-eqz v8, :cond_3

    invoke-interface {v8}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V

    .line 283
    .end local v8    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_3
    return-void

    .line 269
    .restart local v8    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :goto_2
    if-eqz v8, :cond_4

    :try_start_1
    invoke-interface {v8}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v7

    invoke-virtual {v4, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v4

    .line 253
    .end local v2    # "rootX":S
    .end local v3    # "rootY":S
    .end local v5    # "child":Lcom/wuyouwin/xserver/Window;
    .end local v6    # "localPoint":[S
    .end local v8    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_5
    new-instance v2, Lcom/wuyouwin/xserver/errors/BadWindow;

    invoke-direct {v2, v0}, Lcom/wuyouwin/xserver/errors/BadWindow;-><init>(I)V

    throw v2
.end method

.method public static queryTree(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 8
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 415
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 416
    .local v0, "windowId":I
    iget-object v1, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v1, v1, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v1, v0}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v1

    .line 417
    .local v1, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v1, :cond_4

    .line 418
    invoke-virtual {v1}, Lcom/wuyouwin/xserver/Window;->getParent()Lcom/wuyouwin/xserver/Window;

    move-result-object v2

    .line 419
    .local v2, "parent":Lcom/wuyouwin/xserver/Window;
    invoke-virtual {v1}, Lcom/wuyouwin/xserver/Window;->getChildren()Ljava/util/List;

    move-result-object v3

    .line 421
    .local v3, "children":Ljava/util/List;, "Ljava/util/List<Lcom/wuyouwin/xserver/Window;>;"
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XOutputStream;->lock()Lcom/wuyouwin/xconnector/XStreamLock;

    move-result-object v4

    .line 422
    .local v4, "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p2, v5}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 423
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 424
    invoke-virtual {p0}, Lcom/wuyouwin/xserver/XClient;->getSequenceNumber()S

    move-result v7

    invoke-virtual {p2, v7}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 425
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 426
    iget-object v7, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v7, v7, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    iget-object v7, v7, Lcom/wuyouwin/xserver/WindowManager;->rootWindow:Lcom/wuyouwin/xserver/Window;

    iget v7, v7, Lcom/wuyouwin/xserver/XResource;->id:I

    invoke-virtual {p2, v7}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 427
    if-eqz v2, :cond_0

    iget v6, v2, Lcom/wuyouwin/xserver/XResource;->id:I

    goto :goto_0

    .line 421
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 427
    :cond_0
    :goto_0
    invoke-virtual {p2, v6}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 428
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    int-to-short v6, v6

    invoke-virtual {p2, v6}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 429
    const/16 v6, 0xe

    invoke-virtual {p2, v6}, Lcom/wuyouwin/xconnector/XOutputStream;->writePad(I)V

    .line 431
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wuyouwin/xserver/Window;

    iget v5, v5, Lcom/wuyouwin/xserver/XResource;->id:I

    invoke-virtual {p2, v5}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    nop

    .line 432
    .end local v6    # "i":I
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V

    .line 433
    .end local v4    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_2
    return-void

    .line 421
    .restart local v4    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :goto_2
    if-eqz v4, :cond_3

    :try_start_1
    invoke-interface {v4}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v5

    .line 417
    .end local v2    # "parent":Lcom/wuyouwin/xserver/Window;
    .end local v3    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/wuyouwin/xserver/Window;>;"
    .end local v4    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_4
    new-instance v2, Lcom/wuyouwin/xserver/errors/BadWindow;

    invoke-direct {v2, v0}, Lcom/wuyouwin/xserver/errors/BadWindow;-><init>(I)V

    throw v2
.end method

.method public static reparentWindow(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 5
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 123
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 124
    .local v0, "windowId":I
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 125
    .local v1, "parentId":I
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 127
    iget-object v2, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v2, v2, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v2, v0}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v2

    .line 128
    .local v2, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v2, :cond_1

    .line 130
    iget-object v3, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v3, v3, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v3, v1}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v3

    .line 131
    .local v3, "parent":Lcom/wuyouwin/xserver/Window;
    if-eqz v3, :cond_0

    .line 133
    iget-object v4, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v4, v4, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v4, v2, v3}, Lcom/wuyouwin/xserver/WindowManager;->reparentWindow(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Window;)V

    .line 134
    return-void

    .line 131
    :cond_0
    new-instance v4, Lcom/wuyouwin/xserver/errors/BadWindow;

    invoke-direct {v4, v1}, Lcom/wuyouwin/xserver/errors/BadWindow;-><init>(I)V

    throw v4

    .line 128
    .end local v3    # "parent":Lcom/wuyouwin/xserver/Window;
    :cond_1
    new-instance v3, Lcom/wuyouwin/xserver/errors/BadWindow;

    invoke-direct {v3, v0}, Lcom/wuyouwin/xserver/errors/BadWindow;-><init>(I)V

    throw v3
.end method

.method public static sendEvent(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 6
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 436
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 438
    .local v0, "windowId":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_1

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v1, v1, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v1, v0}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v1

    .line 444
    .local v1, "destination":Lcom/wuyouwin/xserver/Window;
    if-eqz v1, :cond_3

    .line 446
    new-instance v2, Lcom/wuyouwin/core/Bitmask;

    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/wuyouwin/core/Bitmask;-><init>(I)V

    .line 448
    .local v2, "eventMask":Lcom/wuyouwin/core/Bitmask;
    const/16 v3, 0x20

    new-array v3, v3, [B

    .line 449
    .local v3, "data":[B
    invoke-virtual {p1, v3}, Lcom/wuyouwin/xconnector/XInputStream;->read([B)V

    .line 450
    new-instance v4, Lcom/wuyouwin/xserver/events/RawEvent;

    invoke-direct {v4, v3}, Lcom/wuyouwin/xserver/events/RawEvent;-><init>([B)V

    .line 452
    .local v4, "event":Lcom/wuyouwin/xserver/events/Event;
    invoke-virtual {v2}, Lcom/wuyouwin/core/Bitmask;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 453
    iget-object v5, v1, Lcom/wuyouwin/xserver/Window;->originClient:Lcom/wuyouwin/xserver/XClient;

    invoke-virtual {v5, v4}, Lcom/wuyouwin/xserver/XClient;->sendEvent(Lcom/wuyouwin/xserver/events/Event;)V

    goto :goto_0

    .line 455
    :cond_2
    invoke-virtual {v1, v2, v4}, Lcom/wuyouwin/xserver/Window;->sendEvent(Lcom/wuyouwin/core/Bitmask;Lcom/wuyouwin/xserver/events/Event;)V

    .line 456
    :goto_0
    return-void

    .line 444
    .end local v2    # "eventMask":Lcom/wuyouwin/core/Bitmask;
    .end local v3    # "data":[B
    .end local v4    # "event":Lcom/wuyouwin/xserver/events/Event;
    :cond_3
    new-instance v2, Lcom/wuyouwin/xserver/errors/BadWindow;

    invoke-direct {v2, v0}, Lcom/wuyouwin/xserver/errors/BadWindow;-><init>(I)V

    throw v2

    .line 439
    .end local v1    # "destination":Lcom/wuyouwin/xserver/Window;
    :goto_1
    invoke-virtual {p0}, Lcom/wuyouwin/xserver/XClient;->skipRequest()V

    .line 440
    return-void
.end method

.method public static setInputFocus(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 4
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 349
    invoke-static {}, Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;->values()[Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wuyouwin/xserver/XClient;->getRequestData()B

    move-result v1

    aget-object v0, v0, v1

    .line 350
    .local v0, "focusRevertTo":Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 351
    .local v1, "windowId":I
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 353
    sget-object v2, Lcom/wuyouwin/xserver/requests/WindowRequests$1;->$SwitchMap$com$winlator$xserver$WindowManager$FocusRevertTo:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 361
    :pswitch_0
    iget-object v2, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v2, v2, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v2, v1}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v2

    .line 362
    .local v2, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v2, :cond_0

    .line 363
    iget-object v3, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v3, v3, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v3, v2, v0}, Lcom/wuyouwin/xserver/WindowManager;->setFocus(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;)V

    goto :goto_0

    .line 362
    :cond_0
    new-instance v3, Lcom/wuyouwin/xserver/errors/BadWindow;

    invoke-direct {v3, v1}, Lcom/wuyouwin/xserver/errors/BadWindow;-><init>(I)V

    throw v3

    .line 358
    .end local v2    # "window":Lcom/wuyouwin/xserver/Window;
    :pswitch_1
    iget-object v2, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v2, v2, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    iget-object v3, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v3, v3, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    iget-object v3, v3, Lcom/wuyouwin/xserver/WindowManager;->rootWindow:Lcom/wuyouwin/xserver/Window;

    invoke-virtual {v2, v3, v0}, Lcom/wuyouwin/xserver/WindowManager;->setFocus(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;)V

    .line 359
    goto :goto_0

    .line 355
    :pswitch_2
    iget-object v2, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v2, v2, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/wuyouwin/xserver/WindowManager;->setFocus(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;)V

    .line 356
    nop

    .line 366
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static translateCoordinates(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 13
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 286
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 287
    .local v0, "srcWindowId":I
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 288
    .local v1, "dstWindowId":I
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v2

    .line 289
    .local v2, "srcX":S
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v3

    .line 291
    .local v3, "srcY":S
    iget-object v4, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v4, v4, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v4, v0}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v4

    .line 292
    .local v4, "srcWindow":Lcom/wuyouwin/xserver/Window;
    iget-object v5, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v5, v5, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v5, v1}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v5

    .line 294
    .local v5, "dstWindow":Lcom/wuyouwin/xserver/Window;
    if-eqz v4, :cond_4

    .line 295
    if-eqz v5, :cond_3

    .line 297
    invoke-virtual {v4, v2, v3}, Lcom/wuyouwin/xserver/Window;->localPointToRoot(SS)[S

    move-result-object v6

    .line 298
    .local v6, "rootPoint":[S
    const/4 v7, 0x0

    aget-short v8, v6, v7

    const/4 v9, 0x1

    aget-short v10, v6, v9

    invoke-virtual {v5, v8, v10}, Lcom/wuyouwin/xserver/Window;->rootPointToLocal(SS)[S

    move-result-object v8

    .line 299
    .local v8, "localPoint":[S
    aget-short v10, v6, v7

    aget-short v11, v6, v9

    invoke-virtual {v5, v10, v11}, Lcom/wuyouwin/xserver/Window;->getChildByCoords(SS)Lcom/wuyouwin/xserver/Window;

    move-result-object v10

    .line 301
    .local v10, "child":Lcom/wuyouwin/xserver/Window;
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XOutputStream;->lock()Lcom/wuyouwin/xconnector/XStreamLock;

    move-result-object v11

    .line 302
    .local v11, "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :try_start_0
    invoke-virtual {p2, v9}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 303
    invoke-virtual {p2, v9}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 304
    invoke-virtual {p0}, Lcom/wuyouwin/xserver/XClient;->getSequenceNumber()S

    move-result v12

    invoke-virtual {p2, v12}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 305
    invoke-virtual {p2, v7}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 306
    if-eqz v10, :cond_0

    iget v12, v10, Lcom/wuyouwin/xserver/XResource;->id:I

    goto :goto_0

    .line 301
    :catchall_0
    move-exception v7

    goto :goto_1

    .line 306
    :cond_0
    move v12, v7

    :goto_0
    invoke-virtual {p2, v12}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 307
    aget-short v7, v8, v7

    invoke-virtual {p2, v7}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 308
    aget-short v7, v8, v9

    invoke-virtual {p2, v7}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 309
    const/16 v7, 0x10

    invoke-virtual {p2, v7}, Lcom/wuyouwin/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    if-eqz v11, :cond_1

    invoke-interface {v11}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V

    .line 311
    .end local v11    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_1
    return-void

    .line 301
    .restart local v11    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :goto_1
    if-eqz v11, :cond_2

    :try_start_1
    invoke-interface {v11}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v9

    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v7

    .line 295
    .end local v6    # "rootPoint":[S
    .end local v8    # "localPoint":[S
    .end local v10    # "child":Lcom/wuyouwin/xserver/Window;
    .end local v11    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_3
    new-instance v6, Lcom/wuyouwin/xserver/errors/BadWindow;

    invoke-direct {v6, v1}, Lcom/wuyouwin/xserver/errors/BadWindow;-><init>(I)V

    throw v6

    .line 294
    :cond_4
    new-instance v6, Lcom/wuyouwin/xserver/errors/BadWindow;

    invoke-direct {v6, v0}, Lcom/wuyouwin/xserver/errors/BadWindow;-><init>(I)V

    throw v6
.end method

.method public static unmapWindow(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 3
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 151
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 152
    .local v0, "windowId":I
    iget-object v1, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v1, v1, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v1, v0}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v1

    .line 153
    .local v1, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v1, :cond_0

    .line 154
    iget-object v2, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v2, v2, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v2, v1}, Lcom/wuyouwin/xserver/WindowManager;->unmapWindow(Lcom/wuyouwin/xserver/Window;)V

    .line 155
    return-void

    .line 153
    :cond_0
    new-instance v2, Lcom/wuyouwin/xserver/errors/BadWindow;

    invoke-direct {v2, v0}, Lcom/wuyouwin/xserver/errors/BadWindow;-><init>(I)V

    throw v2
.end method

.method public static warpPointer(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 13
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 314
    iget-object v0, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/wuyouwin/xserver/XClient;->skipRequest()V

    .line 316
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v0, v0, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v0

    .line 320
    .local v0, "srcWindow":Lcom/wuyouwin/xserver/Window;
    iget-object v1, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v1, v1, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v1

    .line 321
    .local v1, "dstWindow":Lcom/wuyouwin/xserver/Window;
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v2

    .line 322
    .local v2, "srcX":S
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v3

    .line 323
    .local v3, "srcY":S
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v4

    .line 324
    .local v4, "srcWidth":S
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v5

    .line 325
    .local v5, "srcHeight":S
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v6

    .line 326
    .local v6, "dstX":S
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v7

    .line 328
    .local v7, "dstY":S
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_4

    .line 329
    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/Window;->getWidth()S

    move-result v10

    sub-int/2addr v10, v2

    int-to-short v4, v10

    .line 330
    :cond_1
    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/Window;->getHeight()S

    move-result v10

    sub-int/2addr v10, v3

    int-to-short v5, v10

    .line 332
    :cond_2
    iget-object v10, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v10, v10, Lcom/wuyouwin/xserver/XServer;->pointer:Lcom/wuyouwin/xserver/Pointer;

    invoke-virtual {v10}, Lcom/wuyouwin/xserver/Pointer;->getX()S

    move-result v10

    iget-object v11, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v11, v11, Lcom/wuyouwin/xserver/XServer;->pointer:Lcom/wuyouwin/xserver/Pointer;

    invoke-virtual {v11}, Lcom/wuyouwin/xserver/Pointer;->getY()S

    move-result v11

    invoke-virtual {v0, v10, v11}, Lcom/wuyouwin/xserver/Window;->rootPointToLocal(SS)[S

    move-result-object v10

    .line 333
    .local v10, "localPoint":[S
    aget-short v11, v10, v9

    if-lt v11, v2, :cond_3

    aget-short v11, v10, v8

    if-lt v11, v3, :cond_3

    aget-short v11, v10, v9

    add-int v12, v2, v4

    if-ge v11, v12, :cond_3

    aget-short v11, v10, v8

    add-int v12, v3, v5

    if-ge v11, v12, :cond_3

    move v11, v8

    goto :goto_0

    :cond_3
    move v11, v9

    .line 334
    .local v11, "isContained":Z
    :goto_0
    if-nez v11, :cond_4

    return-void

    .line 337
    .end local v10    # "localPoint":[S
    .end local v11    # "isContained":Z
    :cond_4
    if-nez v1, :cond_5

    .line 338
    iget-object v8, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v8, v8, Lcom/wuyouwin/xserver/XServer;->pointer:Lcom/wuyouwin/xserver/Pointer;

    iget-object v9, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v9, v9, Lcom/wuyouwin/xserver/XServer;->pointer:Lcom/wuyouwin/xserver/Pointer;

    invoke-virtual {v9}, Lcom/wuyouwin/xserver/Pointer;->getX()S

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v8, v9}, Lcom/wuyouwin/xserver/Pointer;->setX(I)V

    .line 339
    iget-object v8, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v8, v8, Lcom/wuyouwin/xserver/XServer;->pointer:Lcom/wuyouwin/xserver/Pointer;

    iget-object v9, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v9, v9, Lcom/wuyouwin/xserver/XServer;->pointer:Lcom/wuyouwin/xserver/Pointer;

    invoke-virtual {v9}, Lcom/wuyouwin/xserver/Pointer;->getY()S

    move-result v9

    add-int/2addr v9, v7

    invoke-virtual {v8, v9}, Lcom/wuyouwin/xserver/Pointer;->setY(I)V

    goto :goto_1

    .line 342
    :cond_5
    invoke-virtual {v1, v6, v7}, Lcom/wuyouwin/xserver/Window;->localPointToRoot(SS)[S

    move-result-object v10

    .line 343
    .restart local v10    # "localPoint":[S
    iget-object v11, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v11, v11, Lcom/wuyouwin/xserver/XServer;->pointer:Lcom/wuyouwin/xserver/Pointer;

    aget-short v9, v10, v9

    invoke-virtual {v11, v9}, Lcom/wuyouwin/xserver/Pointer;->setX(I)V

    .line 344
    iget-object v9, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v9, v9, Lcom/wuyouwin/xserver/XServer;->pointer:Lcom/wuyouwin/xserver/Pointer;

    aget-short v8, v10, v8

    invoke-virtual {v9, v8}, Lcom/wuyouwin/xserver/Pointer;->setY(I)V

    .line 346
    .end local v10    # "localPoint":[S
    :goto_1
    return-void
.end method
