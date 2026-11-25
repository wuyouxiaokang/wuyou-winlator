.class public Lcom/wuyouwin/xserver/XClient;
.super Lcom/wuyouwin/xconnector/ConnectedClient;
.source "XClient.java"

# interfaces
.implements Lcom/wuyouwin/xserver/XResourceManager$OnResourceLifecycleListener;


# instance fields
.field private authenticated:Z

.field private final eventListeners:Landroidx/collection/ArrayMap;

.field private initialLength:I

.field private final onDestroyListeners:Ljava/util/ArrayList;

.field private requestData:B

.field private requestLength:I

.field public final resourceIDBase:Ljava/lang/Integer;

.field private final resources:Ljava/util/ArrayList;

.field private sequenceNumber:S

.field public final xServer:Lcom/wuyouwin/xserver/XServer;


# direct methods
.method public constructor <init>(JILcom/wuyouwin/xserver/XServer;)V
    .locals 3
    .param p1, "nativePtr"    # J
    .param p3, "fd"    # I
    .param p4, "xServer"    # Lcom/wuyouwin/xserver/XServer;

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/xconnector/ConnectedClient;-><init>(JI)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wuyouwin/xserver/XClient;->authenticated:Z

    .line 19
    iput-short v0, p0, Lcom/wuyouwin/xserver/XClient;->sequenceNumber:S

    .line 23
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/xserver/XClient;->eventListeners:Landroidx/collection/ArrayMap;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/xserver/XClient;->resources:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/xserver/XClient;->onDestroyListeners:Ljava/util/ArrayList;

    .line 29
    iput-object p4, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    .line 31
    invoke-virtual {p4}, Lcom/wuyouwin/xserver/XServer;->lockAll()Lcom/wuyouwin/xserver/XLock;

    move-result-object v0

    .line 32
    .local v0, "lock":Lcom/wuyouwin/xserver/XLock;
    :try_start_0
    iget-object v1, p4, Lcom/wuyouwin/xserver/XServer;->resourceIDs:Lcom/wuyouwin/xserver/ResourceIDs;

    invoke-virtual {v1}, Lcom/wuyouwin/xserver/ResourceIDs;->get()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/wuyouwin/xserver/XClient;->resourceIDBase:Ljava/lang/Integer;

    .line 33
    iget-object v1, p4, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v1, p0}, Lcom/wuyouwin/xserver/XResourceManager;->addOnResourceLifecycleListener(Lcom/wuyouwin/xserver/XResourceManager$OnResourceLifecycleListener;)V

    .line 34
    iget-object v1, p4, Lcom/wuyouwin/xserver/XServer;->pixmapManager:Lcom/wuyouwin/xserver/PixmapManager;

    invoke-virtual {v1, p0}, Lcom/wuyouwin/xserver/XResourceManager;->addOnResourceLifecycleListener(Lcom/wuyouwin/xserver/XResourceManager$OnResourceLifecycleListener;)V

    .line 35
    iget-object v1, p4, Lcom/wuyouwin/xserver/XServer;->graphicsContextManager:Lcom/wuyouwin/xserver/GraphicsContextManager;

    invoke-virtual {v1, p0}, Lcom/wuyouwin/xserver/XResourceManager;->addOnResourceLifecycleListener(Lcom/wuyouwin/xserver/XResourceManager$OnResourceLifecycleListener;)V

    .line 36
    iget-object v1, p4, Lcom/wuyouwin/xserver/XServer;->cursorManager:Lcom/wuyouwin/xserver/CursorManager;

    invoke-virtual {v1, p0}, Lcom/wuyouwin/xserver/XResourceManager;->addOnResourceLifecycleListener(Lcom/wuyouwin/xserver/XResourceManager$OnResourceLifecycleListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/wuyouwin/xserver/XLock;->close()V

    .line 38
    .end local v0    # "lock":Lcom/wuyouwin/xserver/XLock;
    :cond_0
    return-void

    .line 31
    .restart local v0    # "lock":Lcom/wuyouwin/xserver/XLock;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lcom/wuyouwin/xserver/XLock;->close()V
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
.method public addOnDestroyListener(Lcom/wuyouwin/core/Callback;)V
    .locals 1

    .line 164
    .local p1, "onDestroyListener":Lcom/wuyouwin/core/Callback;, "Lcom/wuyouwin/core/Callback<Lcom/wuyouwin/xserver/XClient;>;"
    iget-object v0, p0, Lcom/wuyouwin/xserver/XClient;->onDestroyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/xserver/XClient;->onDestroyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 173
    invoke-super {p0}, Lcom/wuyouwin/xconnector/ConnectedClient;->destroy()V

    .line 175
    iget-object v0, p0, Lcom/wuyouwin/xserver/XClient;->onDestroyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/core/Callback;

    .local v1, "onDestroyListener":Lcom/wuyouwin/core/Callback;, "Lcom/wuyouwin/core/Callback<Lcom/wuyouwin/xserver/XClient;>;"
    invoke-interface {v1, p0}, Lcom/wuyouwin/core/Callback;->call(Ljava/lang/Object;)V

    .end local v1    # "onDestroyListener":Lcom/wuyouwin/core/Callback;, "Lcom/wuyouwin/core/Callback<Lcom/wuyouwin/xserver/XClient;>;"
    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method public freeResources()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/XServer;->lockAll()Lcom/wuyouwin/xserver/XLock;

    move-result-object v0

    .line 77
    .local v0, "lock":Lcom/wuyouwin/xserver/XLock;
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/wuyouwin/xserver/XClient;->resources:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 78
    iget-object v1, p0, Lcom/wuyouwin/xserver/XClient;->resources:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/wuyouwin/xserver/XClient;->resources:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/XResource;

    .line 79
    .local v1, "resource":Lcom/wuyouwin/xserver/XResource;
    instance-of v2, v1, Lcom/wuyouwin/xserver/Window;

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v2, v2, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    iget v3, v1, Lcom/wuyouwin/xserver/XResource;->id:I

    invoke-virtual {v2, v3}, Lcom/wuyouwin/xserver/WindowManager;->destroyWindow(I)V

    goto :goto_1

    .line 76
    .end local v1    # "resource":Lcom/wuyouwin/xserver/XResource;
    :catchall_0
    move-exception v1

    goto/16 :goto_3

    .line 82
    .restart local v1    # "resource":Lcom/wuyouwin/xserver/XResource;
    :cond_0
    instance-of v2, v1, Lcom/wuyouwin/xserver/Pixmap;

    if-eqz v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v2, v2, Lcom/wuyouwin/xserver/XServer;->pixmapManager:Lcom/wuyouwin/xserver/PixmapManager;

    iget v3, v1, Lcom/wuyouwin/xserver/XResource;->id:I

    invoke-virtual {v2, v3}, Lcom/wuyouwin/xserver/PixmapManager;->freePixmap(I)V

    goto :goto_1

    .line 85
    :cond_1
    instance-of v2, v1, Lcom/wuyouwin/xserver/GraphicsContext;

    if-eqz v2, :cond_2

    .line 86
    iget-object v2, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v2, v2, Lcom/wuyouwin/xserver/XServer;->graphicsContextManager:Lcom/wuyouwin/xserver/GraphicsContextManager;

    iget v3, v1, Lcom/wuyouwin/xserver/XResource;->id:I

    invoke-virtual {v2, v3}, Lcom/wuyouwin/xserver/GraphicsContextManager;->freeGraphicsContext(I)V

    goto :goto_1

    .line 88
    :cond_2
    instance-of v2, v1, Lcom/wuyouwin/xserver/Cursor;

    if-eqz v2, :cond_3

    .line 89
    iget-object v2, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v2, v2, Lcom/wuyouwin/xserver/XServer;->cursorManager:Lcom/wuyouwin/xserver/CursorManager;

    iget v3, v1, Lcom/wuyouwin/xserver/XResource;->id:I

    invoke-virtual {v2, v3}, Lcom/wuyouwin/xserver/CursorManager;->freeCursor(I)V

    .line 91
    .end local v1    # "resource":Lcom/wuyouwin/xserver/XResource;
    :cond_3
    :goto_1
    goto :goto_0

    .line 93
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/wuyouwin/xserver/XClient;->eventListeners:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 94
    iget-object v1, p0, Lcom/wuyouwin/xserver/XClient;->eventListeners:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 95
    .local v1, "i":I
    iget-object v2, p0, Lcom/wuyouwin/xserver/XClient;->eventListeners:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, v1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wuyouwin/xserver/Window;

    iget-object v3, p0, Lcom/wuyouwin/xserver/XClient;->eventListeners:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v1}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wuyouwin/xserver/EventListener;

    invoke-virtual {v2, v3}, Lcom/wuyouwin/xserver/Window;->removeEventListener(Lcom/wuyouwin/xserver/EventListener;)V

    .line 96
    .end local v1    # "i":I
    goto :goto_2

    .line 98
    :cond_5
    iget-object v1, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v1, v1, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v1, p0}, Lcom/wuyouwin/xserver/XResourceManager;->removeOnResourceLifecycleListener(Lcom/wuyouwin/xserver/XResourceManager$OnResourceLifecycleListener;)V

    .line 99
    iget-object v1, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v1, v1, Lcom/wuyouwin/xserver/XServer;->pixmapManager:Lcom/wuyouwin/xserver/PixmapManager;

    invoke-virtual {v1, p0}, Lcom/wuyouwin/xserver/XResourceManager;->removeOnResourceLifecycleListener(Lcom/wuyouwin/xserver/XResourceManager$OnResourceLifecycleListener;)V

    .line 100
    iget-object v1, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v1, v1, Lcom/wuyouwin/xserver/XServer;->graphicsContextManager:Lcom/wuyouwin/xserver/GraphicsContextManager;

    invoke-virtual {v1, p0}, Lcom/wuyouwin/xserver/XResourceManager;->removeOnResourceLifecycleListener(Lcom/wuyouwin/xserver/XResourceManager$OnResourceLifecycleListener;)V

    .line 101
    iget-object v1, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v1, v1, Lcom/wuyouwin/xserver/XServer;->cursorManager:Lcom/wuyouwin/xserver/CursorManager;

    invoke-virtual {v1, p0}, Lcom/wuyouwin/xserver/XResourceManager;->removeOnResourceLifecycleListener(Lcom/wuyouwin/xserver/XResourceManager$OnResourceLifecycleListener;)V

    .line 102
    iget-object v1, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v1, v1, Lcom/wuyouwin/xserver/XServer;->resourceIDs:Lcom/wuyouwin/xserver/ResourceIDs;

    iget-object v2, p0, Lcom/wuyouwin/xserver/XClient;->resourceIDBase:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/wuyouwin/xserver/ResourceIDs;->free(Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/wuyouwin/xserver/XLock;->close()V

    .line 104
    .end local v0    # "lock":Lcom/wuyouwin/xserver/XLock;
    :cond_6
    return-void

    .line 76
    .restart local v0    # "lock":Lcom/wuyouwin/xserver/XLock;
    :goto_3
    if-eqz v0, :cond_7

    :try_start_1
    invoke-interface {v0}, Lcom/wuyouwin/xserver/XLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    throw v1
.end method

.method public generateSequenceNumber()V
    .locals 1

    .line 107
    iget-short v0, p0, Lcom/wuyouwin/xserver/XClient;->sequenceNumber:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/wuyouwin/xserver/XClient;->sequenceNumber:S

    .line 108
    return-void
.end method

.method public getEventMaskForWindow(Lcom/wuyouwin/xserver/Window;)Lcom/wuyouwin/core/Bitmask;
    .locals 2
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;

    .line 149
    iget-object v0, p0, Lcom/wuyouwin/xserver/XClient;->eventListeners:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/xserver/EventListener;

    .line 150
    .local v0, "eventListener":Lcom/wuyouwin/xserver/EventListener;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/wuyouwin/xserver/EventListener;->eventMask:Lcom/wuyouwin/core/Bitmask;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/wuyouwin/core/Bitmask;

    invoke-direct {v1}, Lcom/wuyouwin/core/Bitmask;-><init>()V

    :goto_0
    return-object v1
.end method

.method public getInputStream()Lcom/wuyouwin/xconnector/XInputStream;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/wuyouwin/xconnector/ConnectedClient;->inputStream:Lcom/wuyouwin/xconnector/XInputStream;

    return-object v0
.end method

.method public getOutputStream()Lcom/wuyouwin/xconnector/XOutputStream;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/wuyouwin/xconnector/ConnectedClient;->outputStream:Lcom/wuyouwin/xconnector/XOutputStream;

    return-object v0
.end method

.method public getRemainingRequestLength()I
    .locals 2

    .line 132
    iget v0, p0, Lcom/wuyouwin/xserver/XClient;->initialLength:I

    iget-object v1, p0, Lcom/wuyouwin/xconnector/ConnectedClient;->inputStream:Lcom/wuyouwin/xconnector/XInputStream;

    invoke-virtual {v1}, Lcom/wuyouwin/xconnector/XInputStream;->available()I

    move-result v1

    sub-int/2addr v0, v1

    .line 133
    .local v0, "actualLength":I
    iget v1, p0, Lcom/wuyouwin/xserver/XClient;->requestLength:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public getRequestData()B
    .locals 1

    .line 124
    iget-byte v0, p0, Lcom/wuyouwin/xserver/XClient;->requestData:B

    return v0
.end method

.method public getSequenceNumber()S
    .locals 1

    .line 111
    iget-short v0, p0, Lcom/wuyouwin/xserver/XClient;->sequenceNumber:S

    return v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/wuyouwin/xserver/XClient;->authenticated:Z

    return v0
.end method

.method public isInterestedIn(ILcom/wuyouwin/xserver/Window;)Z
    .locals 2
    .param p1, "eventId"    # I
    .param p2, "window"    # Lcom/wuyouwin/xserver/Window;

    .line 63
    iget-object v0, p0, Lcom/wuyouwin/xserver/XClient;->eventListeners:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/xserver/EventListener;

    .line 64
    .local v0, "eventListener":Lcom/wuyouwin/xserver/EventListener;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/wuyouwin/xserver/EventListener;->isInterestedIn(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isValidResourceId(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 160
    iget-object v0, p0, Lcom/wuyouwin/xserver/XClient;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v0, v0, Lcom/wuyouwin/xserver/XServer;->resourceIDs:Lcom/wuyouwin/xserver/ResourceIDs;

    iget-object v1, p0, Lcom/wuyouwin/xserver/XClient;->resourceIDBase:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/wuyouwin/xserver/ResourceIDs;->isInInterval(II)Z

    move-result v0

    return v0
.end method

.method public onFreeResource(Lcom/wuyouwin/xserver/XResource;)V
    .locals 1
    .param p1, "resource"    # Lcom/wuyouwin/xserver/XResource;

    .line 155
    instance-of v0, p1, Lcom/wuyouwin/xserver/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/xserver/XClient;->eventListeners:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/xserver/XClient;->resources:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method public registerAsOwnerOfResource(Lcom/wuyouwin/xserver/XResource;)V
    .locals 1
    .param p1, "resource"    # Lcom/wuyouwin/xserver/XResource;

    .line 41
    iget-object v0, p0, Lcom/wuyouwin/xserver/XClient;->resources:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public sendEvent(Lcom/wuyouwin/xserver/events/Event;)V
    .locals 2
    .param p1, "event"    # Lcom/wuyouwin/xserver/events/Event;

    .line 55
    :try_start_0
    iget-short v0, p0, Lcom/wuyouwin/xserver/XClient;->sequenceNumber:S

    iget-object v1, p0, Lcom/wuyouwin/xconnector/ConnectedClient;->outputStream:Lcom/wuyouwin/xconnector/XOutputStream;

    invoke-virtual {p1, v0, v1}, Lcom/wuyouwin/xserver/events/Event;->send(SLcom/wuyouwin/xconnector/XOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public setAuthenticated(Z)V
    .locals 0
    .param p1, "authenticated"    # Z

    .line 72
    iput-boolean p1, p0, Lcom/wuyouwin/xserver/XClient;->authenticated:Z

    .line 73
    return-void
.end method

.method public setEventListenerForWindow(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/core/Bitmask;)V
    .locals 2
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;
    .param p2, "eventMask"    # Lcom/wuyouwin/core/Bitmask;

    .line 45
    iget-object v0, p0, Lcom/wuyouwin/xserver/XClient;->eventListeners:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/xserver/EventListener;

    .line 46
    .local v0, "eventListener":Lcom/wuyouwin/xserver/EventListener;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/wuyouwin/xserver/Window;->removeEventListener(Lcom/wuyouwin/xserver/EventListener;)V

    .line 47
    :cond_0
    invoke-virtual {p2}, Lcom/wuyouwin/core/Bitmask;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 48
    :cond_1
    new-instance v1, Lcom/wuyouwin/xserver/EventListener;

    invoke-direct {v1, p0, p2}, Lcom/wuyouwin/xserver/EventListener;-><init>(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/core/Bitmask;)V

    move-object v0, v1

    .line 49
    iget-object v1, p0, Lcom/wuyouwin/xserver/XClient;->eventListeners:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {p1, v0}, Lcom/wuyouwin/xserver/Window;->addEventListener(Lcom/wuyouwin/xserver/EventListener;)V

    .line 51
    return-void
.end method

.method public setRequestData(B)V
    .locals 0
    .param p1, "requestData"    # B

    .line 128
    iput-byte p1, p0, Lcom/wuyouwin/xserver/XClient;->requestData:B

    .line 129
    return-void
.end method

.method public setRequestLength(I)V
    .locals 1
    .param p1, "requestLength"    # I

    .line 119
    iput p1, p0, Lcom/wuyouwin/xserver/XClient;->requestLength:I

    .line 120
    iget-object v0, p0, Lcom/wuyouwin/xconnector/ConnectedClient;->inputStream:Lcom/wuyouwin/xconnector/XInputStream;

    invoke-virtual {v0}, Lcom/wuyouwin/xconnector/XInputStream;->available()I

    move-result v0

    iput v0, p0, Lcom/wuyouwin/xserver/XClient;->initialLength:I

    .line 121
    return-void
.end method

.method public skipRequest()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/wuyouwin/xconnector/ConnectedClient;->inputStream:Lcom/wuyouwin/xconnector/XInputStream;

    invoke-virtual {p0}, Lcom/wuyouwin/xserver/XClient;->getRemainingRequestLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 138
    return-void
.end method
