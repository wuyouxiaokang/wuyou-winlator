.class public Lcom/winlator/xenvironment/components/VirGLRendererComponent;
.super Lcom/winlator/xenvironment/EnvironmentComponent;
.source "VirGLRendererComponent.java"

# interfaces
.implements Lcom/winlator/xconnector/ConnectionHandler;
.implements Lcom/winlator/xconnector/RequestHandler;


# instance fields
.field private connector:Lcom/winlator/xconnector/XConnectorEpoll;

.field private final socketConfig:Lcom/winlator/xconnector/UnixSocketConfig;

.field private final xServer:Lcom/winlator/xserver/XServer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-string v0, "virglrenderer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/winlator/xserver/XServer;Lcom/winlator/xconnector/UnixSocketConfig;)V
    .locals 0
    .param p1, "xServer"    # Lcom/winlator/xserver/XServer;
    .param p2, "socketConfig"    # Lcom/winlator/xconnector/UnixSocketConfig;

    .line 28
    invoke-direct {p0}, Lcom/winlator/xenvironment/EnvironmentComponent;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/winlator/xenvironment/components/VirGLRendererComponent;->xServer:Lcom/winlator/xserver/XServer;

    .line 30
    iput-object p2, p0, Lcom/winlator/xenvironment/components/VirGLRendererComponent;->socketConfig:Lcom/winlator/xconnector/UnixSocketConfig;

    .line 31
    return-void
.end method

.method private native destroyClient(J)V
.end method

.method private flushFrontbuffer(II)V
    .locals 6
    .param p1, "drawableId"    # I
    .param p2, "framebuffer"    # I
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/winlator/xenvironment/components/VirGLRendererComponent;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/xserver/XServer;->drawableManager:Lcom/winlator/xserver/DrawableManager;

    invoke-virtual {v0, p1}, Lcom/winlator/xserver/DrawableManager;->getDrawable(I)Lcom/winlator/xserver/Drawable;

    move-result-object v0

    .line 77
    .local v0, "drawable":Lcom/winlator/xserver/Drawable;
    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v1, v0, Lcom/winlator/xserver/Drawable;->renderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/winlator/xserver/Drawable;->setData(Ljava/nio/ByteBuffer;)V

    .line 81
    invoke-virtual {v0}, Lcom/winlator/xserver/Drawable;->getTexture()Lcom/winlator/renderer/Texture;

    move-result-object v2

    .line 82
    .local v2, "texture":Lcom/winlator/renderer/Texture;
    const v3, 0x8d40

    invoke-static {v3, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 83
    iget-short v4, v0, Lcom/winlator/xserver/Drawable;->width:S

    iget-short v5, v0, Lcom/winlator/xserver/Drawable;->height:S

    invoke-virtual {v2, v4, v5}, Lcom/winlator/renderer/Texture;->copyFromReadBuffer(SS)V

    .line 84
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 85
    .end local v2    # "texture":Lcom/winlator/renderer/Texture;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {v0}, Lcom/winlator/xserver/Drawable;->getOnDrawListener()Ljava/lang/Runnable;

    move-result-object v1

    .line 88
    .local v1, "onDrawListener":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 89
    :cond_1
    return-void

    .line 85
    .end local v1    # "onDrawListener":Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private native handleNewConnection(I)J
.end method

.method private native handleRequest(J)V
.end method

.method private killConnection(I)V
    .locals 2
    .param p1, "fd"    # I
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/winlator/xenvironment/components/VirGLRendererComponent;->connector:Lcom/winlator/xconnector/XConnectorEpoll;

    iget-object v1, p0, Lcom/winlator/xenvironment/components/VirGLRendererComponent;->connector:Lcom/winlator/xconnector/XConnectorEpoll;

    invoke-virtual {v1, p1}, Lcom/winlator/xconnector/XConnectorEpoll;->getClientWidthFd(I)Lcom/winlator/xconnector/ConnectedClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/winlator/xconnector/XConnectorEpoll;->killConnection(Lcom/winlator/xconnector/ConnectedClient;)V

    .line 53
    return-void
.end method


# virtual methods
.method public handleConnectionShutdown(Lcom/winlator/xconnector/ConnectedClient;)V
    .locals 2
    .param p1, "client"    # Lcom/winlator/xconnector/ConnectedClient;

    .line 57
    invoke-virtual {p1}, Lcom/winlator/xconnector/ConnectedClient;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 58
    .local v0, "clientPtr":J
    invoke-direct {p0, v0, v1}, Lcom/winlator/xenvironment/components/VirGLRendererComponent;->destroyClient(J)V

    .line 59
    return-void
.end method

.method public handleNewConnection(Lcom/winlator/xconnector/ConnectedClient;)V
    .locals 3
    .param p1, "client"    # Lcom/winlator/xconnector/ConnectedClient;

    .line 63
    iget v0, p1, Lcom/winlator/xconnector/ConnectedClient;->fd:I

    invoke-direct {p0, v0}, Lcom/winlator/xenvironment/components/VirGLRendererComponent;->handleNewConnection(I)J

    move-result-wide v0

    .line 64
    .local v0, "clientPtr":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/winlator/xconnector/ConnectedClient;->setTag(Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public handleRequest(Lcom/winlator/xconnector/ConnectedClient;)Z
    .locals 3
    .param p1, "client"    # Lcom/winlator/xconnector/ConnectedClient;

    .line 69
    invoke-virtual {p1}, Lcom/winlator/xconnector/ConnectedClient;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 70
    .local v0, "clientPtr":J
    invoke-direct {p0, v0, v1}, Lcom/winlator/xenvironment/components/VirGLRendererComponent;->handleRequest(J)V

    .line 71
    const/4 v2, 0x1

    return v2
.end method

.method public start()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/winlator/xenvironment/components/VirGLRendererComponent;->connector:Lcom/winlator/xconnector/XConnectorEpoll;

    if-eqz v0, :cond_0

    return-void

    .line 36
    :cond_0
    new-instance v0, Lcom/winlator/xconnector/XConnectorEpoll;

    iget-object v1, p0, Lcom/winlator/xenvironment/components/VirGLRendererComponent;->socketConfig:Lcom/winlator/xconnector/UnixSocketConfig;

    invoke-direct {v0, v1, p0, p0}, Lcom/winlator/xconnector/XConnectorEpoll;-><init>(Lcom/winlator/xconnector/UnixSocketConfig;Lcom/winlator/xconnector/ConnectionHandler;Lcom/winlator/xconnector/RequestHandler;)V

    iput-object v0, p0, Lcom/winlator/xenvironment/components/VirGLRendererComponent;->connector:Lcom/winlator/xconnector/XConnectorEpoll;

    .line 37
    iget-object v0, p0, Lcom/winlator/xenvironment/components/VirGLRendererComponent;->connector:Lcom/winlator/xconnector/XConnectorEpoll;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/winlator/xconnector/XConnectorEpoll;->setInitialInputBufferCapacity(I)V

    .line 38
    iget-object v0, p0, Lcom/winlator/xenvironment/components/VirGLRendererComponent;->connector:Lcom/winlator/xconnector/XConnectorEpoll;

    invoke-virtual {v0, v1}, Lcom/winlator/xconnector/XConnectorEpoll;->setInitialOutputBufferCapacity(I)V

    .line 39
    iget-object v0, p0, Lcom/winlator/xenvironment/components/VirGLRendererComponent;->connector:Lcom/winlator/xconnector/XConnectorEpoll;

    invoke-virtual {v0}, Lcom/winlator/xconnector/XConnectorEpoll;->start()V

    .line 40
    return-void
.end method

.method public stop()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/winlator/xenvironment/components/VirGLRendererComponent;->connector:Lcom/winlator/xconnector/XConnectorEpoll;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/winlator/xenvironment/components/VirGLRendererComponent;->connector:Lcom/winlator/xconnector/XConnectorEpoll;

    invoke-virtual {v0}, Lcom/winlator/xconnector/XConnectorEpoll;->destroy()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/xenvironment/components/VirGLRendererComponent;->connector:Lcom/winlator/xconnector/XConnectorEpoll;

    .line 48
    :cond_0
    return-void
.end method
