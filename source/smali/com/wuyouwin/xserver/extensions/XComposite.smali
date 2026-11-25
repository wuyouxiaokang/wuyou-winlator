.class public Lcom/wuyouwin/xserver/extensions/XComposite;
.super Lcom/wuyouwin/xserver/extensions/Extension;
.source "XComposite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/xserver/extensions/XComposite$UpdateMode;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/wuyouwin/xserver/XServer;B)V
    .locals 0
    .param p1, "xServer"    # Lcom/wuyouwin/xserver/XServer;
    .param p2, "majorOpcode"    # B

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/xserver/extensions/Extension;-><init>(Lcom/wuyouwin/xserver/XServer;B)V

    .line 37
    return-void
.end method

.method private queryVersion(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 4
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 54
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 56
    invoke-virtual {p3}, Lcom/wuyouwin/xconnector/XOutputStream;->lock()Lcom/wuyouwin/xconnector/XStreamLock;

    move-result-object v0

    .line 57
    .local v0, "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p3, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 58
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 59
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/XClient;->getSequenceNumber()S

    move-result v3

    invoke-virtual {p3, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 60
    invoke-virtual {p3, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 61
    invoke-virtual {p3, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 62
    invoke-virtual {p3, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 63
    const/16 v1, 0x10

    invoke-virtual {p3, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V

    .line 65
    .end local v0    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 56
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

.method private redirectWindow(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 8
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 68
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 69
    .local v0, "windowId":I
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XInputStream;->readByte()B

    move-result v1

    .line 70
    .local v1, "updateMode":B
    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 72
    iget-object v2, p0, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v2, v2, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v2, v0}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v2

    .line 73
    .local v2, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v2, :cond_4

    .line 75
    iget-object v3, p0, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v3, v3, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    iget-object v3, v3, Lcom/wuyouwin/xserver/WindowManager;->rootWindow:Lcom/wuyouwin/xserver/Window;

    if-eq v2, v3, :cond_3

    .line 76
    const-string v3, "compositeRedirectParent"

    invoke-virtual {v2, v3}, Lcom/wuyouwin/xserver/Window;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 78
    invoke-virtual {v2}, Lcom/wuyouwin/xserver/Window;->getParent()Lcom/wuyouwin/xserver/Window;

    move-result-object v4

    .line 79
    .local v4, "parent":Lcom/wuyouwin/xserver/Window;
    invoke-virtual {v2, v3, v4}, Lcom/wuyouwin/xserver/Window;->setTag(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/wuyouwin/xserver/extensions/XComposite;->setWindowsToOffscreenStorage(Lcom/wuyouwin/xserver/Window;Z)V

    .line 81
    iget-object v3, v4, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/wuyouwin/xserver/WindowAttributes;->setRenderSubwindows(Z)V

    .line 82
    iget-object v3, p0, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v3, v3, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v3, v2}, Lcom/wuyouwin/xserver/WindowManager;->triggerOnChangeWindowZOrder(Lcom/wuyouwin/xserver/Window;)V

    .line 84
    sget-object v3, Lcom/wuyouwin/xserver/extensions/XComposite$UpdateMode;->REDIRECT_AUTOMATIC:Lcom/wuyouwin/xserver/extensions/XComposite$UpdateMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 85
    invoke-virtual {v4}, Lcom/wuyouwin/xserver/Window;->getContent()Lcom/wuyouwin/xserver/Drawable;

    move-result-object v3

    .line 86
    .local v3, "parentContent":Lcom/wuyouwin/xserver/Drawable;
    invoke-virtual {v3}, Lcom/wuyouwin/xserver/Drawable;->getTexture()Lcom/wuyouwin/renderer/Texture;

    move-result-object v5

    .line 87
    .local v5, "texture":Lcom/wuyouwin/renderer/Texture;
    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-virtual {v6}, Lcom/wuyouwin/xserver/XServer;->getRenderer()Lcom/wuyouwin/renderer/GLRenderer;

    move-result-object v6

    iget-object v6, v6, Lcom/wuyouwin/renderer/GLRenderer;->xServerView:Lcom/wuyouwin/widget/XServerView;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/wuyouwin/renderer/GPUImage$$ExternalSyntheticLambda0;

    invoke-direct {v7, v5}, Lcom/wuyouwin/renderer/GPUImage$$ExternalSyntheticLambda0;-><init>(Lcom/wuyouwin/renderer/Texture;)V

    invoke-virtual {v6, v7}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 88
    :cond_0
    invoke-virtual {v2}, Lcom/wuyouwin/xserver/Window;->getContent()Lcom/wuyouwin/xserver/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wuyouwin/xserver/Drawable;->getTexture()Lcom/wuyouwin/renderer/Texture;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/wuyouwin/xserver/Drawable;->setTexture(Lcom/wuyouwin/renderer/Texture;)V

    .line 90
    .end local v3    # "parentContent":Lcom/wuyouwin/xserver/Drawable;
    .end local v5    # "texture":Lcom/wuyouwin/renderer/Texture;
    :cond_1
    return-void

    .line 76
    .end local v4    # "parent":Lcom/wuyouwin/xserver/Window;
    :cond_2
    new-instance v3, Lcom/wuyouwin/xserver/errors/BadAccess;

    invoke-direct {v3}, Lcom/wuyouwin/xserver/errors/BadAccess;-><init>()V

    throw v3

    .line 75
    :cond_3
    new-instance v3, Lcom/wuyouwin/xserver/errors/BadMatch;

    invoke-direct {v3}, Lcom/wuyouwin/xserver/errors/BadMatch;-><init>()V

    throw v3

    .line 73
    :cond_4
    new-instance v3, Lcom/wuyouwin/xserver/errors/BadWindow;

    invoke-direct {v3, v0}, Lcom/wuyouwin/xserver/errors/BadWindow;-><init>(I)V

    throw v3
.end method

.method private setWindowsToOffscreenStorage(Lcom/wuyouwin/xserver/Window;Z)V
    .locals 2
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;
    .param p2, "offscreenStorage"    # Z

    .line 45
    iget-object v0, p1, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/WindowAttributes;->isMapped()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->getContent()Lcom/wuyouwin/xserver/Drawable;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/wuyouwin/xserver/Drawable;->setOffscreenStorage(Z)V

    .line 48
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/Window;

    .line 49
    .local v1, "child":Lcom/wuyouwin/xserver/Window;
    invoke-direct {p0, v1, p2}, Lcom/wuyouwin/xserver/extensions/XComposite;->setWindowsToOffscreenStorage(Lcom/wuyouwin/xserver/Window;Z)V

    .line 50
    .end local v1    # "child":Lcom/wuyouwin/xserver/Window;
    goto :goto_0

    .line 51
    :cond_1
    return-void
.end method

.method private unredirectWindow(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 9
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 93
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 94
    .local v0, "windowId":I
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XInputStream;->readByte()B

    move-result v1

    .line 95
    .local v1, "updateMode":B
    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 97
    iget-object v2, p0, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v2, v2, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v2, v0}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v2

    .line 98
    .local v2, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v2, :cond_5

    .line 100
    iget-object v3, p0, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v3, v3, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    iget-object v3, v3, Lcom/wuyouwin/xserver/WindowManager;->rootWindow:Lcom/wuyouwin/xserver/Window;

    if-eq v2, v3, :cond_4

    .line 101
    const-string v3, "compositeRedirectParent"

    invoke-virtual {v2, v3}, Lcom/wuyouwin/xserver/Window;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wuyouwin/xserver/Window;

    .line 102
    .local v4, "oldParent":Lcom/wuyouwin/xserver/Window;
    if-eqz v4, :cond_3

    .line 104
    invoke-virtual {v2}, Lcom/wuyouwin/xserver/Window;->isSurface()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/wuyouwin/xserver/Window;->getWidth()S

    move-result v5

    invoke-virtual {v4}, Lcom/wuyouwin/xserver/Window;->getWidth()S

    move-result v8

    if-ne v5, v8, :cond_0

    invoke-virtual {v2}, Lcom/wuyouwin/xserver/Window;->getHeight()S

    move-result v5

    invoke-virtual {v4}, Lcom/wuyouwin/xserver/Window;->getHeight()S

    move-result v8

    if-ne v5, v8, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    .line 105
    .local v5, "forceRedirectAutomatic":Z
    :goto_0
    if-eqz v5, :cond_1

    sget-object v8, Lcom/wuyouwin/xserver/extensions/XComposite$UpdateMode;->REDIRECT_AUTOMATIC:Lcom/wuyouwin/xserver/extensions/XComposite$UpdateMode;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    int-to-byte v1, v8

    .line 107
    :cond_1
    invoke-virtual {v2, v3}, Lcom/wuyouwin/xserver/Window;->removeTag(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, v2, v6}, Lcom/wuyouwin/xserver/extensions/XComposite;->setWindowsToOffscreenStorage(Lcom/wuyouwin/xserver/Window;Z)V

    .line 109
    iget-object v3, v4, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v3, v7}, Lcom/wuyouwin/xserver/WindowAttributes;->setRenderSubwindows(Z)V

    .line 110
    iget-object v3, p0, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v3, v3, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v3, v2}, Lcom/wuyouwin/xserver/WindowManager;->triggerOnChangeWindowZOrder(Lcom/wuyouwin/xserver/Window;)V

    .line 112
    sget-object v3, Lcom/wuyouwin/xserver/extensions/XComposite$UpdateMode;->REDIRECT_AUTOMATIC:Lcom/wuyouwin/xserver/extensions/XComposite$UpdateMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 113
    invoke-virtual {v4}, Lcom/wuyouwin/xserver/Window;->getContent()Lcom/wuyouwin/xserver/Drawable;

    move-result-object v3

    .line 114
    .local v3, "parentContent":Lcom/wuyouwin/xserver/Drawable;
    new-instance v6, Lcom/wuyouwin/renderer/Texture;

    invoke-direct {v6, v3}, Lcom/wuyouwin/renderer/Texture;-><init>(Lcom/wuyouwin/xserver/Drawable;)V

    invoke-virtual {v3, v6}, Lcom/wuyouwin/xserver/Drawable;->setTexture(Lcom/wuyouwin/renderer/Texture;)V

    .line 116
    .end local v3    # "parentContent":Lcom/wuyouwin/xserver/Drawable;
    :cond_2
    return-void

    .line 102
    .end local v5    # "forceRedirectAutomatic":Z
    :cond_3
    new-instance v3, Lcom/wuyouwin/xserver/errors/BadValue;

    invoke-direct {v3, v0}, Lcom/wuyouwin/xserver/errors/BadValue;-><init>(I)V

    throw v3

    .line 100
    .end local v4    # "oldParent":Lcom/wuyouwin/xserver/Window;
    :cond_4
    new-instance v3, Lcom/wuyouwin/xserver/errors/BadMatch;

    invoke-direct {v3}, Lcom/wuyouwin/xserver/errors/BadMatch;-><init>()V

    throw v3

    .line 98
    :cond_5
    new-instance v3, Lcom/wuyouwin/xserver/errors/BadWindow;

    invoke-direct {v3, v0}, Lcom/wuyouwin/xserver/errors/BadWindow;-><init>(I)V

    throw v3
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "Composite"

    return-object v0
.end method

.method public handleRequest(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 4
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 120
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/XClient;->getRequestData()B

    move-result v0

    .line 122
    .local v0, "opcode":I
    packed-switch v0, :pswitch_data_0

    .line 137
    :pswitch_0
    new-instance v1, Lcom/wuyouwin/xserver/errors/BadImplementation;

    invoke-direct {v1}, Lcom/wuyouwin/xserver/errors/BadImplementation;-><init>()V

    throw v1

    .line 132
    :pswitch_1
    iget-object v1, p0, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    sget-object v2, Lcom/wuyouwin/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/wuyouwin/xserver/XServer$Lockable;

    sget-object v3, Lcom/wuyouwin/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/wuyouwin/xserver/XServer$Lockable;

    filled-new-array {v2, v3}, [Lcom/wuyouwin/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wuyouwin/xserver/XServer;->lock([Lcom/wuyouwin/xserver/XServer$Lockable;)Lcom/wuyouwin/xserver/XLock;

    move-result-object v1

    .line 133
    .local v1, "lock":Lcom/wuyouwin/xserver/XLock;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/xserver/extensions/XComposite;->unredirectWindow(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/wuyouwin/xserver/XLock;->close()V

    .line 135
    .end local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :cond_0
    goto :goto_2

    .line 132
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

    .line 127
    .end local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :pswitch_2
    iget-object v1, p0, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    sget-object v2, Lcom/wuyouwin/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/wuyouwin/xserver/XServer$Lockable;

    sget-object v3, Lcom/wuyouwin/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/wuyouwin/xserver/XServer$Lockable;

    filled-new-array {v2, v3}, [Lcom/wuyouwin/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wuyouwin/xserver/XServer;->lock([Lcom/wuyouwin/xserver/XServer$Lockable;)Lcom/wuyouwin/xserver/XLock;

    move-result-object v1

    .line 128
    .restart local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/xserver/extensions/XComposite;->redirectWindow(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 129
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/wuyouwin/xserver/XLock;->close()V

    .line 130
    .end local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :cond_2
    goto :goto_2

    .line 127
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

    .line 124
    .end local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/xserver/extensions/XComposite;->queryVersion(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V

    .line 125
    nop

    .line 139
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
