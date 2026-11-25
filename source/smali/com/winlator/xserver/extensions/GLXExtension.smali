.class public Lcom/winlator/xserver/extensions/GLXExtension;
.super Lcom/winlator/xserver/extensions/Extension;
.source "GLXExtension.java"


# instance fields
.field private final clientGLContexts:Landroid/util/SparseArray;

.field private final clientGLXContexts:Landroid/util/SparseArray;

.field private final glxExtensions:Ljava/lang/String;

.field private final onDestroyClientListener:Lcom/winlator/core/Callback;


# direct methods
.method public static synthetic $r8$lambda$mHQvGHM2_mx_y4_x6LGG1-rlbV0(Lcom/winlator/xserver/extensions/GLXExtension;Lcom/winlator/xserver/XClient;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/xserver/extensions/GLXExtension;->lambda$new$0(Lcom/winlator/xserver/XClient;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-string v0, "gladiorenderer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/winlator/xserver/XServer;B)V
    .locals 1
    .param p1, "xServer"    # Lcom/winlator/xserver/XServer;
    .param p2, "majorOpcode"    # B

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/winlator/xserver/extensions/Extension;-><init>(Lcom/winlator/xserver/XServer;B)V

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/winlator/xserver/extensions/GLXExtension;->clientGLXContexts:Landroid/util/SparseArray;

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/winlator/xserver/extensions/GLXExtension;->clientGLContexts:Landroid/util/SparseArray;

    .line 34
    const-string v0, "GLX_ARB_create_context GLX_ARB_get_proc_address"

    iput-object v0, p0, Lcom/winlator/xserver/extensions/GLXExtension;->glxExtensions:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/winlator/xserver/extensions/GLXExtension$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/winlator/xserver/extensions/GLXExtension$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/xserver/extensions/GLXExtension;)V

    iput-object v0, p0, Lcom/winlator/xserver/extensions/GLXExtension;->onDestroyClientListener:Lcom/winlator/core/Callback;

    .line 46
    return-void
.end method

.method private clearWindowContent(I)V
    .locals 3
    .param p1, "windowId"    # I
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/winlator/xserver/extensions/Extension;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    invoke-virtual {v0, p1}, Lcom/winlator/xserver/WindowManager;->getWindow(I)Lcom/winlator/xserver/Window;

    move-result-object v0

    .line 323
    .local v0, "window":Lcom/winlator/xserver/Window;
    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/winlator/xserver/Window;->getContent()Lcom/winlator/xserver/Drawable;

    move-result-object v1

    .line 325
    .local v1, "drawable":Lcom/winlator/xserver/Drawable;
    invoke-virtual {v1}, Lcom/winlator/xserver/Drawable;->getData()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 326
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/Drawable;->setData(Ljava/nio/ByteBuffer;)V

    .line 327
    invoke-virtual {v1}, Lcom/winlator/xserver/Drawable;->getTexture()Lcom/winlator/renderer/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/winlator/renderer/Texture;->destroy()V

    .line 330
    .end local v1    # "drawable":Lcom/winlator/xserver/Drawable;
    :cond_0
    return-void
.end method

.method private createContext(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 6
    .param p1, "client"    # Lcom/winlator/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 117
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 118
    .local v0, "contextId":I
    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XInputStream;->skip(I)V

    .line 119
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 120
    .local v1, "shareList":I
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readByte()B

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 122
    .local v2, "isDirect":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 123
    invoke-direct {p0, p1, v0, v1}, Lcom/winlator/xserver/extensions/GLXExtension;->createGLXContextForClient(Lcom/winlator/xserver/XClient;II)V

    .line 125
    invoke-virtual {p3}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v5

    .line 126
    .local v5, "lock":Lcom/winlator/xconnector/XStreamLock;
    :try_start_0
    invoke-virtual {p3, v4}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 127
    invoke-virtual {p3, v3}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 128
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->getSequenceNumber()S

    move-result v3

    invoke-virtual {p3, v3}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 129
    const/16 v3, 0x1c

    invoke-virtual {p3, v3}, Lcom/winlator/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    if-eqz v5, :cond_1

    invoke-interface {v5}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 131
    .end local v5    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_1
    return-void

    .line 125
    .restart local v5    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :catchall_0
    move-exception v3

    if-eqz v5, :cond_2

    :try_start_1
    invoke-interface {v5}, Lcom/winlator/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v3

    .line 122
    .end local v5    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_3
    new-instance v3, Lcom/winlator/xserver/errors/GLXBadContext;

    invoke-direct {v3}, Lcom/winlator/xserver/errors/GLXBadContext;-><init>()V

    throw v3
.end method

.method private createContextAttribsARB(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 11
    .param p1, "client"    # Lcom/winlator/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 247
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 248
    .local v0, "contextId":I
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 249
    .local v1, "fbConfigId":I
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XInputStream;->skip(I)V

    .line 250
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v3

    .line 251
    .local v3, "shareContext":I
    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XInputStream;->skip(I)V

    .line 252
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v2

    .line 254
    .local v2, "numAttribs":I
    if-eqz v0, :cond_9

    .line 255
    const/4 v4, 0x1

    if-ne v1, v4, :cond_8

    .line 257
    const/4 v5, 0x3

    .line 258
    .local v5, "glMajorVersion":I
    const/4 v6, 0x3

    .line 259
    .local v6, "glMinorVersion":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_2

    .line 260
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v8

    .line 261
    .local v8, "name":I
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v9

    .line 263
    .local v9, "value":I
    const/16 v10, 0x2091

    if-ne v8, v10, :cond_0

    move v5, v9

    goto :goto_1

    .line 264
    :cond_0
    const/16 v10, 0x2092

    if-ne v8, v10, :cond_1

    move v6, v9

    .line 259
    .end local v8    # "name":I
    .end local v9    # "value":I
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 267
    .end local v7    # "i":I
    const/4 v7, 0x3

    const/4 v8, 0x0

    if-gt v5, v7, :cond_3

    if-gt v6, v7, :cond_3

    move v7, v4

    goto :goto_2

    :cond_3
    move v7, v8

    .line 268
    .local v7, "success":Z
    :goto_2
    if-eqz v7, :cond_4

    invoke-direct {p0, p1, v0, v3}, Lcom/winlator/xserver/extensions/GLXExtension;->createGLXContextForClient(Lcom/winlator/xserver/XClient;II)V

    .line 270
    :cond_4
    invoke-virtual {p3}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v9

    .line 271
    .local v9, "lock":Lcom/winlator/xconnector/XStreamLock;
    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    move v4, v8

    :goto_3
    :try_start_0
    invoke-virtual {p3, v4}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 272
    invoke-virtual {p3, v8}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 273
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->getSequenceNumber()S

    move-result v4

    invoke-virtual {p3, v4}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 274
    const/16 v4, 0x1c

    invoke-virtual {p3, v4}, Lcom/winlator/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    if-eqz v9, :cond_6

    invoke-interface {v9}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 276
    .end local v9    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_6
    return-void

    .line 270
    .restart local v9    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :catchall_0
    move-exception v4

    if-eqz v9, :cond_7

    :try_start_1
    invoke-interface {v9}, Lcom/winlator/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v8

    invoke-virtual {v4, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    throw v4

    .line 255
    .end local v5    # "glMajorVersion":I
    .end local v6    # "glMinorVersion":I
    .end local v7    # "success":Z
    .end local v9    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_8
    new-instance v4, Lcom/winlator/xserver/errors/GLXBadFBConfig;

    invoke-direct {v4}, Lcom/winlator/xserver/errors/GLXBadFBConfig;-><init>()V

    throw v4

    .line 254
    :cond_9
    new-instance v4, Lcom/winlator/xserver/errors/GLXBadContext;

    invoke-direct {v4}, Lcom/winlator/xserver/errors/GLXBadContext;-><init>()V

    throw v4
.end method

.method private native createGLContext(I)J
.end method

.method private createGLContext(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 6
    .param p1, "client"    # Lcom/winlator/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 71
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 73
    .local v0, "contextId":I
    iget-object v1, p0, Lcom/winlator/xserver/extensions/GLXExtension;->clientGLContexts:Landroid/util/SparseArray;

    iget v2, p1, Lcom/winlator/xconnector/ConnectedClient;->fd:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseLongArray;

    .line 74
    .local v1, "contexts":Landroid/util/SparseLongArray;
    if-nez v1, :cond_0

    .line 75
    iget-object v2, p0, Lcom/winlator/xserver/extensions/GLXExtension;->clientGLContexts:Landroid/util/SparseArray;

    iget v3, p1, Lcom/winlator/xconnector/ConnectedClient;->fd:I

    new-instance v4, Landroid/util/SparseLongArray;

    invoke-direct {v4}, Landroid/util/SparseLongArray;-><init>()V

    move-object v1, v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    iget-object v2, p0, Lcom/winlator/xserver/extensions/GLXExtension;->onDestroyClientListener:Lcom/winlator/core/Callback;

    invoke-virtual {p1, v2}, Lcom/winlator/xserver/XClient;->addOnDestroyListener(Lcom/winlator/core/Callback;)V

    .line 79
    :cond_0
    iget v2, p1, Lcom/winlator/xconnector/ConnectedClient;->fd:I

    invoke-direct {p0, v2}, Lcom/winlator/xserver/extensions/GLXExtension;->createGLContext(I)J

    move-result-wide v2

    .line 80
    .local v2, "context":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v0, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 81
    :cond_1
    return-void
.end method

.method private native createGLXContext(IJ)J
.end method

.method private createGLXContextForClient(Lcom/winlator/xserver/XClient;II)V
    .locals 8
    .param p1, "client"    # Lcom/winlator/xserver/XClient;
    .param p2, "contextId"    # I
    .param p3, "shareContextId"    # I

    .line 102
    iget-object v0, p0, Lcom/winlator/xserver/extensions/GLXExtension;->clientGLXContexts:Landroid/util/SparseArray;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/winlator/xserver/extensions/GLXExtension;->clientGLXContexts:Landroid/util/SparseArray;

    iget v2, p1, Lcom/winlator/xconnector/ConnectedClient;->fd:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseLongArray;

    .line 104
    .local v1, "contexts":Landroid/util/SparseLongArray;
    if-nez v1, :cond_0

    .line 105
    iget-object v2, p0, Lcom/winlator/xserver/extensions/GLXExtension;->clientGLXContexts:Landroid/util/SparseArray;

    iget v3, p1, Lcom/winlator/xconnector/ConnectedClient;->fd:I

    new-instance v4, Landroid/util/SparseLongArray;

    invoke-direct {v4}, Landroid/util/SparseLongArray;-><init>()V

    move-object v1, v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    iget-object v2, p0, Lcom/winlator/xserver/extensions/GLXExtension;->onDestroyClientListener:Lcom/winlator/core/Callback;

    invoke-virtual {p1, v2}, Lcom/winlator/xserver/XClient;->addOnDestroyListener(Lcom/winlator/core/Callback;)V

    goto :goto_0

    .line 113
    .end local v1    # "contexts":Landroid/util/SparseLongArray;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 109
    .restart local v1    # "contexts":Landroid/util/SparseLongArray;
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    if-lez p3, :cond_1

    invoke-virtual {v1, p3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    goto :goto_1

    :cond_1
    move-wide v4, v2

    .line 110
    .local v4, "sharedContextPtr":J
    :goto_1
    invoke-direct {p0, p2, v4, v5}, Lcom/winlator/xserver/extensions/GLXExtension;->createGLXContext(IJ)J

    move-result-wide v6

    .line 111
    .local v6, "context":J
    cmp-long v2, v6, v2

    if-eqz v2, :cond_2

    .line 112
    invoke-virtual {v1, p2, v6, v7}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 113
    .end local v1    # "contexts":Landroid/util/SparseLongArray;
    .end local v4    # "sharedContextPtr":J
    .end local v6    # "context":J
    monitor-exit v0

    .line 114
    return-void

    .line 111
    .restart local v1    # "contexts":Landroid/util/SparseLongArray;
    .restart local v4    # "sharedContextPtr":J
    .restart local v6    # "context":J
    :cond_2
    new-instance v2, Lcom/winlator/xserver/errors/BadAlloc;

    invoke-direct {v2}, Lcom/winlator/xserver/errors/BadAlloc;-><init>()V

    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "contextId":I
    .end local p3    # "shareContextId":I
    throw v2

    .line 113
    .end local v1    # "contexts":Landroid/util/SparseLongArray;
    .end local v4    # "sharedContextPtr":J
    .end local v6    # "context":J
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "contextId":I
    .restart local p3    # "shareContextId":I
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private destroyAllGLContexts(I)V
    .locals 5
    .param p1, "clientFd"    # I

    .line 359
    iget-object v0, p0, Lcom/winlator/xserver/extensions/GLXExtension;->clientGLContexts:Landroid/util/SparseArray;

    monitor-enter v0

    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/winlator/xserver/extensions/GLXExtension;->clientGLContexts:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseLongArray;

    .line 361
    .local v1, "contexts":Landroid/util/SparseLongArray;
    if-eqz v1, :cond_1

    .line 362
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    nop

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/winlator/xserver/extensions/GLXExtension;->destroyGLContext(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 366
    .end local v1    # "contexts":Landroid/util/SparseLongArray;
    .end local v2    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 363
    .restart local v1    # "contexts":Landroid/util/SparseLongArray;
    :cond_0
    invoke-virtual {v1}, Landroid/util/SparseLongArray;->clear()V

    .line 365
    :cond_1
    iget-object v2, p0, Lcom/winlator/xserver/extensions/GLXExtension;->clientGLContexts:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 366
    .end local v1    # "contexts":Landroid/util/SparseLongArray;
    monitor-exit v0

    .line 367
    return-void

    .line 366
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private destroyAllGLXContexts(I)V
    .locals 5
    .param p1, "clientFd"    # I

    .line 370
    iget-object v0, p0, Lcom/winlator/xserver/extensions/GLXExtension;->clientGLXContexts:Landroid/util/SparseArray;

    monitor-enter v0

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/winlator/xserver/extensions/GLXExtension;->clientGLXContexts:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseLongArray;

    .line 372
    .local v1, "contexts":Landroid/util/SparseLongArray;
    if-eqz v1, :cond_1

    .line 373
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    nop

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/winlator/xserver/extensions/GLXExtension;->destroyGLXContext(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 377
    .end local v1    # "contexts":Landroid/util/SparseLongArray;
    .end local v2    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 374
    .restart local v1    # "contexts":Landroid/util/SparseLongArray;
    :cond_0
    invoke-virtual {v1}, Landroid/util/SparseLongArray;->clear()V

    .line 376
    :cond_1
    iget-object v2, p0, Lcom/winlator/xserver/extensions/GLXExtension;->clientGLXContexts:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 377
    .end local v1    # "contexts":Landroid/util/SparseLongArray;
    monitor-exit v0

    .line 378
    return-void

    .line 377
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private destroyContext(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 7
    .param p1, "client"    # Lcom/winlator/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 134
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 136
    .local v0, "contextId":I
    iget-object v1, p0, Lcom/winlator/xserver/extensions/GLXExtension;->clientGLXContexts:Landroid/util/SparseArray;

    monitor-enter v1

    .line 137
    :try_start_0
    iget-object v2, p0, Lcom/winlator/xserver/extensions/GLXExtension;->clientGLXContexts:Landroid/util/SparseArray;

    iget v3, p1, Lcom/winlator/xconnector/ConnectedClient;->fd:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseLongArray;

    .line 138
    .local v2, "contexts":Landroid/util/SparseLongArray;
    if-eqz v2, :cond_1

    .line 140
    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    .line 141
    .local v3, "context":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    .line 143
    invoke-direct {p0, v3, v4}, Lcom/winlator/xserver/extensions/GLXExtension;->destroyGLXContext(J)V

    .line 144
    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->delete(I)V

    .line 145
    .end local v2    # "contexts":Landroid/util/SparseLongArray;
    .end local v3    # "context":J
    monitor-exit v1

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 141
    .restart local v2    # "contexts":Landroid/util/SparseLongArray;
    .restart local v3    # "context":J
    :cond_0
    new-instance v5, Lcom/winlator/xserver/errors/GLXBadContext;

    invoke-direct {v5}, Lcom/winlator/xserver/errors/GLXBadContext;-><init>()V

    .end local v0    # "contextId":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v5

    .line 138
    .end local v3    # "context":J
    .restart local v0    # "contextId":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :cond_1
    new-instance v3, Lcom/winlator/xserver/errors/GLXBadContext;

    invoke-direct {v3}, Lcom/winlator/xserver/errors/GLXBadContext;-><init>()V

    .end local v0    # "contextId":I
    .end local p1    # "client":Lcom/winlator/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v3

    .line 145
    .end local v2    # "contexts":Landroid/util/SparseLongArray;
    .restart local v0    # "contextId":I
    .restart local p1    # "client":Lcom/winlator/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private native destroyGLContext(J)V
.end method

.method private destroyGLContext(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 7
    .param p1, "client"    # Lcom/winlator/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 84
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 86
    .local v0, "contextId":I
    iget-object v1, p0, Lcom/winlator/xserver/extensions/GLXExtension;->clientGLContexts:Landroid/util/SparseArray;

    iget v2, p1, Lcom/winlator/xconnector/ConnectedClient;->fd:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseLongArray;

    .line 87
    .local v1, "contexts":Landroid/util/SparseLongArray;
    if-eqz v1, :cond_3

    .line 89
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v4

    .line 90
    .local v4, "context":J
    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v4, v5}, Lcom/winlator/xserver/extensions/GLXExtension;->destroyGLContext(J)V

    .line 91
    :cond_0
    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->delete(I)V

    .line 93
    invoke-virtual {p3}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v2

    .line 94
    .local v2, "lock":Lcom/winlator/xconnector/XStreamLock;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p3, v3}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 95
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 96
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->getSequenceNumber()S

    move-result v3

    invoke-virtual {p3, v3}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 97
    const/16 v3, 0x1c

    invoke-virtual {p3, v3}, Lcom/winlator/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 99
    .end local v2    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_1
    return-void

    .line 93
    .restart local v2    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Lcom/winlator/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    invoke-virtual {v3, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v3

    .line 87
    .end local v2    # "lock":Lcom/winlator/xconnector/XStreamLock;
    .end local v4    # "context":J
    :cond_3
    new-instance v2, Lcom/winlator/xserver/errors/GLXBadContext;

    invoke-direct {v2}, Lcom/winlator/xserver/errors/GLXBadContext;-><init>()V

    throw v2
.end method

.method private native destroyGLXContext(J)V
.end method

.method private getFBConfigs(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 11
    .param p1, "client"    # Lcom/winlator/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 210
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/winlator/xconnector/XInputStream;->skip(I)V

    .line 212
    const/4 v0, 0x1

    .line 213
    .local v0, "numFBConfigs":I
    const/16 v1, 0xb

    .line 214
    .local v1, "numProperties":I
    const/4 v2, 0x1

    const/16 v3, 0xb

    const/16 v4, 0x16

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    .line 228
    .local v5, "properties":[I
    invoke-virtual {p3}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v6

    .line 229
    .local v6, "lock":Lcom/winlator/xconnector/XStreamLock;
    :try_start_0
    invoke-virtual {p3, v2}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 230
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 231
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->getSequenceNumber()S

    move-result v8

    invoke-virtual {p3, v8}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 232
    invoke-virtual {p3, v4}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 233
    invoke-virtual {p3, v2}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 234
    invoke-virtual {p3, v3}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 235
    const/16 v4, 0x10

    invoke-virtual {p3, v4}, Lcom/winlator/xconnector/XOutputStream;->writePad(I)V

    .line 237
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 238
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v3, :cond_0

    .line 239
    mul-int/lit8 v10, v8, 0x2

    add-int/2addr v10, v7

    aget v10, v5, v10

    invoke-virtual {p3, v10}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 240
    mul-int/lit8 v10, v8, 0x2

    add-int/2addr v10, v2

    aget v10, v5, v10

    invoke-virtual {p3, v10}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    add-int/2addr v9, v2

    add-int/2addr v8, v2

    goto :goto_1

    .line 228
    .end local v4    # "i":I
    .end local v8    # "k":I
    .end local v9    # "j":I
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 237
    .restart local v4    # "i":I
    .restart local v8    # "k":I
    .restart local v9    # "j":I
    :cond_0
    add-int/2addr v4, v2

    goto :goto_0

    .end local v9    # "j":I
    :cond_1
    nop

    .line 243
    .end local v4    # "i":I
    .end local v8    # "k":I
    if-eqz v6, :cond_2

    invoke-interface {v6}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 244
    .end local v6    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_2
    return-void

    .line 228
    .restart local v6    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :goto_2
    if-eqz v6, :cond_3

    :try_start_1
    invoke-interface {v6}, Lcom/winlator/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v2

    nop

    :array_0
    .array-data 4
        0x8013
        0x1
        0x8
        0x8
        0x9
        0x8
        0xa
        0x8
        0xb
        0x8
        0xc
        0x18
        0xd
        0x8
        0x2
        0x20
        0x5
        0x1
        0x8010
        0x1
        0x8011
        0x1
    .end array-data
.end method

.method private getGLXContextPtr(II)J
    .locals 4
    .param p1, "clientFd"    # I
    .param p2, "id"    # I
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/winlator/xserver/extensions/GLXExtension;->clientGLXContexts:Landroid/util/SparseArray;

    monitor-enter v0

    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/winlator/xserver/extensions/GLXExtension;->clientGLXContexts:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseLongArray;

    .line 354
    .local v1, "contexts":Landroid/util/SparseLongArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    goto :goto_0

    .line 355
    .end local v1    # "contexts":Landroid/util/SparseLongArray;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 354
    .restart local v1    # "contexts":Landroid/util/SparseLongArray;
    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    monitor-exit v0

    return-wide v2

    .line 355
    .end local v1    # "contexts":Landroid/util/SparseLongArray;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getWindowSize(I)[S
    .locals 5
    .param p1, "windowId"    # I
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/winlator/xserver/extensions/Extension;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    invoke-virtual {v0, p1}, Lcom/winlator/xserver/WindowManager;->getWindow(I)Lcom/winlator/xserver/Window;

    move-result-object v0

    .line 317
    .local v0, "window":Lcom/winlator/xserver/Window;
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    new-array v2, v2, [S

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/winlator/xserver/Window;->getWidth()S

    move-result v4

    aput-short v4, v2, v3

    invoke-virtual {v0}, Lcom/winlator/xserver/Window;->getHeight()S

    move-result v3

    aput-short v3, v2, v1

    goto :goto_0

    :cond_0
    aput-short v3, v2, v3

    aput-short v3, v2, v1

    :goto_0
    return-object v2
.end method

.method private synthetic lambda$new$0(Lcom/winlator/xserver/XClient;)V
    .locals 1
    .param p1, "client"    # Lcom/winlator/xserver/XClient;

    .line 36
    iget v0, p1, Lcom/winlator/xconnector/ConnectedClient;->fd:I

    invoke-direct {p0, v0}, Lcom/winlator/xserver/extensions/GLXExtension;->destroyAllGLContexts(I)V

    .line 37
    iget v0, p1, Lcom/winlator/xconnector/ConnectedClient;->fd:I

    invoke-direct {p0, v0}, Lcom/winlator/xserver/extensions/GLXExtension;->destroyAllGLXContexts(I)V

    .line 38
    return-void
.end method

.method private queryExtensionsString(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 6
    .param p1, "client"    # Lcom/winlator/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 163
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/winlator/xconnector/XInputStream;->skip(I)V

    .line 164
    const-string v1, "GLX_ARB_create_context GLX_ARB_get_proc_address"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 166
    .local v2, "length":I
    invoke-virtual {p3}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v3

    .line 167
    .local v3, "lock":Lcom/winlator/xconnector/XStreamLock;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p3, v4}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 168
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 169
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->getSequenceNumber()S

    move-result v5

    invoke-virtual {p3, v5}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 170
    neg-int v5, v2

    and-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v2

    div-int/2addr v5, v0

    invoke-virtual {p3, v5}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 171
    invoke-virtual {p3, v4}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 172
    invoke-virtual {p3, v2}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 173
    const/16 v0, 0x10

    invoke-virtual {p3, v0}, Lcom/winlator/xconnector/XOutputStream;->writePad(I)V

    .line 174
    invoke-virtual {p3, v1}, Lcom/winlator/xconnector/XOutputStream;->writeString8(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 176
    .end local v3    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 166
    .restart local v3    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v3}, Lcom/winlator/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method private queryServerString(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 7
    .param p1, "client"    # Lcom/winlator/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 179
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/winlator/xconnector/XInputStream;->skip(I)V

    .line 180
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 182
    .local v1, "name":I
    const-string v2, ""

    .line 184
    .local v2, "string":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 192
    :pswitch_0
    const-string v2, "GLX_ARB_create_context GLX_ARB_get_proc_address"

    goto :goto_0

    .line 189
    :pswitch_1
    const-string v2, "1.4"

    .line 190
    goto :goto_0

    .line 186
    :pswitch_2
    const-string v2, "Winlator"

    .line 187
    nop

    .line 195
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 197
    .local v3, "length":I
    invoke-virtual {p3}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v4

    .line 198
    .local v4, "lock":Lcom/winlator/xconnector/XStreamLock;
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p3, v5}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 199
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 200
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->getSequenceNumber()S

    move-result v6

    invoke-virtual {p3, v6}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 201
    neg-int v6, v3

    and-int/lit8 v6, v6, 0x3

    add-int/2addr v6, v3

    div-int/2addr v6, v0

    invoke-virtual {p3, v6}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 202
    invoke-virtual {p3, v5}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 203
    invoke-virtual {p3, v3}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 204
    const/16 v0, 0x10

    invoke-virtual {p3, v0}, Lcom/winlator/xconnector/XOutputStream;->writePad(I)V

    .line 205
    invoke-virtual {p3, v2}, Lcom/winlator/xconnector/XOutputStream;->writeString8(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 207
    .end local v4    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 197
    .restart local v4    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_1

    :try_start_1
    invoke-interface {v4}, Lcom/winlator/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private queryVersion(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 4
    .param p1, "client"    # Lcom/winlator/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 149
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/winlator/xconnector/XInputStream;->skip(I)V

    .line 151
    invoke-virtual {p3}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v0

    .line 152
    .local v0, "lock":Lcom/winlator/xconnector/XStreamLock;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p3, v1}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 153
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 154
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->getSequenceNumber()S

    move-result v3

    invoke-virtual {p3, v3}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 155
    invoke-virtual {p3, v2}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 156
    invoke-virtual {p3, v1}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 157
    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 158
    const/16 v1, 0x10

    invoke-virtual {p3, v1}, Lcom/winlator/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 160
    .end local v0    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 151
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

.method private updateWindowContent(ISSZ)Z
    .locals 5
    .param p1, "drawableId"    # I
    .param p2, "width"    # S
    .param p3, "height"    # S
    .param p4, "flipY"    # Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/winlator/xserver/extensions/Extension;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/xserver/XServer;->drawableManager:Lcom/winlator/xserver/DrawableManager;

    invoke-virtual {v0, p1}, Lcom/winlator/xserver/DrawableManager;->getDrawable(I)Lcom/winlator/xserver/Drawable;

    move-result-object v0

    .line 335
    .local v0, "drawable":Lcom/winlator/xserver/Drawable;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 337
    :cond_0
    iget-object v2, v0, Lcom/winlator/xserver/Drawable;->renderLock:Ljava/lang/Object;

    monitor-enter v2

    .line 338
    :try_start_0
    iget-short v3, v0, Lcom/winlator/xserver/Drawable;->width:S

    if-ne v3, p2, :cond_1

    iget-short v3, v0, Lcom/winlator/xserver/Drawable;->height:S

    if-eq v3, p3, :cond_2

    :cond_1
    goto :goto_1

    .line 340
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/winlator/xserver/Drawable;->setData(Ljava/nio/ByteBuffer;)V

    .line 341
    invoke-virtual {v0}, Lcom/winlator/xserver/Drawable;->getTexture()Lcom/winlator/renderer/Texture;

    move-result-object v3

    .line 342
    .local v3, "texture":Lcom/winlator/renderer/Texture;
    invoke-virtual {v3, p4}, Lcom/winlator/renderer/Texture;->setFlipY(Z)V

    .line 343
    invoke-virtual {v3, p2, p3}, Lcom/winlator/renderer/Texture;->copyFromReadBuffer(SS)V

    .line 344
    invoke-virtual {v0}, Lcom/winlator/xserver/Drawable;->getOnDrawListener()Ljava/lang/Runnable;

    move-result-object v4

    .line 345
    .local v4, "onDrawListener":Ljava/lang/Runnable;
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 346
    .end local v3    # "texture":Lcom/winlator/renderer/Texture;
    .end local v4    # "onDrawListener":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_3
    :goto_0
    monitor-exit v2

    .line 347
    return v1

    .line 338
    :goto_1
    monitor-exit v2

    const/4 v1, 0x0

    return v1

    .line 346
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getErrorCount()B
    .locals 1

    .line 67
    const/4 v0, 0x3

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 62
    const-string v0, "GLX"

    return-object v0
.end method

.method public handleRequest(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 2
    .param p1, "client"    # Lcom/winlator/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 280
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->getRequestData()B

    move-result v0

    .line 281
    .local v0, "opcode":I
    sparse-switch v0, :sswitch_data_0

    .line 310
    new-instance v1, Lcom/winlator/xserver/errors/BadImplementation;

    invoke-direct {v1}, Lcom/winlator/xserver/errors/BadImplementation;-><init>()V

    throw v1

    .line 307
    :sswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/xserver/extensions/GLXExtension;->createContextAttribsARB(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V

    .line 308
    goto :goto_0

    .line 304
    :sswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/xserver/extensions/GLXExtension;->getFBConfigs(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V

    .line 305
    goto :goto_0

    .line 301
    :sswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/xserver/extensions/GLXExtension;->queryServerString(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V

    .line 302
    goto :goto_0

    .line 298
    :sswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/xserver/extensions/GLXExtension;->queryExtensionsString(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V

    .line 299
    goto :goto_0

    .line 295
    :sswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/xserver/extensions/GLXExtension;->queryVersion(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V

    .line 296
    goto :goto_0

    .line 292
    :sswitch_5
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/xserver/extensions/GLXExtension;->destroyContext(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V

    .line 293
    goto :goto_0

    .line 289
    :sswitch_6
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/xserver/extensions/GLXExtension;->createContext(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V

    .line 290
    goto :goto_0

    .line 286
    :sswitch_7
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/xserver/extensions/GLXExtension;->destroyGLContext(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V

    .line 287
    goto :goto_0

    .line 283
    :sswitch_8
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/xserver/extensions/GLXExtension;->createGLContext(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V

    .line 284
    nop

    .line 312
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_7
        0x3 -> :sswitch_6
        0x4 -> :sswitch_5
        0x7 -> :sswitch_4
        0x12 -> :sswitch_3
        0x13 -> :sswitch_2
        0x15 -> :sswitch_1
        0x22 -> :sswitch_0
    .end sparse-switch
.end method
