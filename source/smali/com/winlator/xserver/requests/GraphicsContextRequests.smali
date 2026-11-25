.class public abstract Lcom/winlator/xserver/requests/GraphicsContextRequests;
.super Ljava/lang/Object;
.source "GraphicsContextRequests.java"


# direct methods
.method public static changeGC(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 4
    .param p0, "client"    # Lcom/winlator/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 32
    invoke-virtual {p1}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 33
    .local v0, "gcId":I
    new-instance v1, Lcom/winlator/core/Bitmask;

    invoke-virtual {p1}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/winlator/core/Bitmask;-><init>(I)V

    .line 34
    .local v1, "valueMask":Lcom/winlator/core/Bitmask;
    iget-object v2, p0, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/xserver/XServer;->graphicsContextManager:Lcom/winlator/xserver/GraphicsContextManager;

    invoke-virtual {v2, v0}, Lcom/winlator/xserver/GraphicsContextManager;->getGraphicsContext(I)Lcom/winlator/xserver/GraphicsContext;

    move-result-object v2

    .line 35
    .local v2, "graphicsContext":Lcom/winlator/xserver/GraphicsContext;
    if-eqz v2, :cond_1

    .line 37
    invoke-virtual {v1}, Lcom/winlator/core/Bitmask;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/xserver/XServer;->graphicsContextManager:Lcom/winlator/xserver/GraphicsContextManager;

    invoke-virtual {v3, v2, v1, p1}, Lcom/winlator/xserver/GraphicsContextManager;->updateGraphicsContext(Lcom/winlator/xserver/GraphicsContext;Lcom/winlator/core/Bitmask;Lcom/winlator/xconnector/XInputStream;)V

    .line 38
    :cond_0
    return-void

    .line 35
    :cond_1
    new-instance v3, Lcom/winlator/xserver/errors/BadGraphicsContext;

    invoke-direct {v3, v0}, Lcom/winlator/xserver/errors/BadGraphicsContext;-><init>(I)V

    throw v3
.end method

.method public static createGC(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 6
    .param p0, "client"    # Lcom/winlator/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 16
    invoke-virtual {p1}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 17
    .local v0, "gcId":I
    invoke-virtual {p1}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 18
    .local v1, "drawableId":I
    new-instance v2, Lcom/winlator/core/Bitmask;

    invoke-virtual {p1}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/winlator/core/Bitmask;-><init>(I)V

    .line 20
    .local v2, "valueMask":Lcom/winlator/core/Bitmask;
    invoke-virtual {p0, v0}, Lcom/winlator/xserver/XClient;->isValidResourceId(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 22
    iget-object v3, p0, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/xserver/XServer;->drawableManager:Lcom/winlator/xserver/DrawableManager;

    invoke-virtual {v3, v1}, Lcom/winlator/xserver/DrawableManager;->getDrawable(I)Lcom/winlator/xserver/Drawable;

    move-result-object v3

    .line 23
    .local v3, "drawable":Lcom/winlator/xserver/Drawable;
    if-eqz v3, :cond_2

    .line 24
    iget-object v4, p0, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/xserver/XServer;->graphicsContextManager:Lcom/winlator/xserver/GraphicsContextManager;

    invoke-virtual {v4, v0, v3}, Lcom/winlator/xserver/GraphicsContextManager;->createGraphicsContext(ILcom/winlator/xserver/Drawable;)Lcom/winlator/xserver/GraphicsContext;

    move-result-object v4

    .line 25
    .local v4, "graphicsContext":Lcom/winlator/xserver/GraphicsContext;
    if-eqz v4, :cond_1

    .line 27
    invoke-virtual {p0, v4}, Lcom/winlator/xserver/XClient;->registerAsOwnerOfResource(Lcom/winlator/xserver/XResource;)V

    .line 28
    invoke-virtual {v2}, Lcom/winlator/core/Bitmask;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v5, v5, Lcom/winlator/xserver/XServer;->graphicsContextManager:Lcom/winlator/xserver/GraphicsContextManager;

    invoke-virtual {v5, v4, v2, p1}, Lcom/winlator/xserver/GraphicsContextManager;->updateGraphicsContext(Lcom/winlator/xserver/GraphicsContext;Lcom/winlator/core/Bitmask;Lcom/winlator/xconnector/XInputStream;)V

    .line 29
    :cond_0
    return-void

    .line 25
    :cond_1
    new-instance v5, Lcom/winlator/xserver/errors/BadIdChoice;

    invoke-direct {v5, v0}, Lcom/winlator/xserver/errors/BadIdChoice;-><init>(I)V

    throw v5

    .line 23
    .end local v4    # "graphicsContext":Lcom/winlator/xserver/GraphicsContext;
    :cond_2
    new-instance v4, Lcom/winlator/xserver/errors/BadDrawable;

    invoke-direct {v4, v1}, Lcom/winlator/xserver/errors/BadDrawable;-><init>(I)V

    throw v4

    .line 20
    .end local v3    # "drawable":Lcom/winlator/xserver/Drawable;
    :cond_3
    new-instance v3, Lcom/winlator/xserver/errors/BadIdChoice;

    invoke-direct {v3, v0}, Lcom/winlator/xserver/errors/BadIdChoice;-><init>(I)V

    throw v3
.end method

.method public static freeGC(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 2
    .param p0, "client"    # Lcom/winlator/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 41
    iget-object v0, p0, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/xserver/XServer;->graphicsContextManager:Lcom/winlator/xserver/GraphicsContextManager;

    invoke-virtual {p1}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winlator/xserver/GraphicsContextManager;->freeGraphicsContext(I)V

    .line 42
    return-void
.end method
