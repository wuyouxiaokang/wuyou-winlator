.class public abstract Lcom/wuyouwin/xserver/requests/PixmapRequests;
.super Ljava/lang/Object;
.source "PixmapRequests.java"


# direct methods
.method public static createPixmap(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 9
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 14
    invoke-virtual {p0}, Lcom/wuyouwin/xserver/XClient;->getRequestData()B

    move-result v0

    .line 15
    .local v0, "depth":B
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 16
    .local v1, "pixmapId":I
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v2

    .line 17
    .local v2, "drawableId":I
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v3

    .line 18
    .local v3, "width":S
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v4

    .line 20
    .local v4, "height":S
    invoke-virtual {p0, v1}, Lcom/wuyouwin/xserver/XClient;->isValidResourceId(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 22
    iget-object v5, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v5, v5, Lcom/wuyouwin/xserver/XServer;->drawableManager:Lcom/wuyouwin/xserver/DrawableManager;

    invoke-virtual {v5, v2}, Lcom/wuyouwin/xserver/DrawableManager;->getDrawable(I)Lcom/wuyouwin/xserver/Drawable;

    move-result-object v5

    .line 23
    .local v5, "drawable":Lcom/wuyouwin/xserver/Drawable;
    if-eqz v5, :cond_2

    .line 25
    iget-object v6, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v6, v6, Lcom/wuyouwin/xserver/XServer;->drawableManager:Lcom/wuyouwin/xserver/DrawableManager;

    invoke-virtual {v6, v1, v3, v4, v0}, Lcom/wuyouwin/xserver/DrawableManager;->createDrawable(ISSB)Lcom/wuyouwin/xserver/Drawable;

    move-result-object v6

    .line 26
    .local v6, "backingStore":Lcom/wuyouwin/xserver/Drawable;
    if-eqz v6, :cond_1

    .line 27
    iget-object v7, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v7, v7, Lcom/wuyouwin/xserver/XServer;->pixmapManager:Lcom/wuyouwin/xserver/PixmapManager;

    invoke-virtual {v7, v6}, Lcom/wuyouwin/xserver/PixmapManager;->createPixmap(Lcom/wuyouwin/xserver/Drawable;)Lcom/wuyouwin/xserver/Pixmap;

    move-result-object v7

    .line 28
    .local v7, "pixmap":Lcom/wuyouwin/xserver/Pixmap;
    if-eqz v7, :cond_0

    .line 29
    invoke-virtual {p0, v7}, Lcom/wuyouwin/xserver/XClient;->registerAsOwnerOfResource(Lcom/wuyouwin/xserver/XResource;)V

    .line 30
    return-void

    .line 28
    :cond_0
    new-instance v8, Lcom/wuyouwin/xserver/errors/BadIdChoice;

    invoke-direct {v8, v1}, Lcom/wuyouwin/xserver/errors/BadIdChoice;-><init>(I)V

    throw v8

    .line 26
    .end local v7    # "pixmap":Lcom/wuyouwin/xserver/Pixmap;
    :cond_1
    new-instance v7, Lcom/wuyouwin/xserver/errors/BadIdChoice;

    invoke-direct {v7, v1}, Lcom/wuyouwin/xserver/errors/BadIdChoice;-><init>(I)V

    throw v7

    .line 23
    .end local v6    # "backingStore":Lcom/wuyouwin/xserver/Drawable;
    :cond_2
    new-instance v6, Lcom/wuyouwin/xserver/errors/BadDrawable;

    invoke-direct {v6, v2}, Lcom/wuyouwin/xserver/errors/BadDrawable;-><init>(I)V

    throw v6

    .line 20
    .end local v5    # "drawable":Lcom/wuyouwin/xserver/Drawable;
    :cond_3
    new-instance v5, Lcom/wuyouwin/xserver/errors/BadIdChoice;

    invoke-direct {v5, v1}, Lcom/wuyouwin/xserver/errors/BadIdChoice;-><init>(I)V

    throw v5
.end method

.method public static freePixmap(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 2
    .param p0, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p1, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 33
    iget-object v0, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v0, v0, Lcom/wuyouwin/xserver/XServer;->pixmapManager:Lcom/wuyouwin/xserver/PixmapManager;

    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xserver/PixmapManager;->freePixmap(I)V

    .line 34
    return-void
.end method
