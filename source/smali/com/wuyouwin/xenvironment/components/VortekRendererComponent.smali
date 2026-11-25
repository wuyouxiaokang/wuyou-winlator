.class public Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;
.super Lcom/wuyouwin/xenvironment/EnvironmentComponent;
.source "VortekRendererComponent.java"

# interfaces
.implements Lcom/wuyouwin/xconnector/ConnectionHandler;
.implements Lcom/wuyouwin/xconnector/RequestHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;
    }
.end annotation


# static fields
.field public static final VK_MAX_VERSION:I


# instance fields
.field private connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

.field private final options:Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;

.field private final socketConfig:Lcom/wuyouwin/xconnector/UnixSocketConfig;

.field private final xServer:Lcom/wuyouwin/xserver/XServer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    const/4 v0, 0x3

    const/16 v1, 0x80

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/wuyouwin/core/GPUHelper;->vkMakeVersion(III)I

    move-result v0

    sput v0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;->VK_MAX_VERSION:I

    .line 36
    const-string v0, "vortekrenderer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/wuyouwin/xserver/XServer;Lcom/wuyouwin/xconnector/UnixSocketConfig;Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;)V
    .locals 2
    .param p1, "xServer"    # Lcom/wuyouwin/xserver/XServer;
    .param p2, "socketConfig"    # Lcom/wuyouwin/xconnector/UnixSocketConfig;
    .param p3, "options"    # Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;

    .line 72
    invoke-direct {p0}, Lcom/wuyouwin/xenvironment/EnvironmentComponent;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;->xServer:Lcom/wuyouwin/xserver/XServer;

    .line 74
    iput-object p2, p0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;->socketConfig:Lcom/wuyouwin/xconnector/UnixSocketConfig;

    .line 75
    iput-object p3, p0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;->options:Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;

    .line 77
    iget-object v0, p1, Lcom/wuyouwin/xserver/XServer;->activity:Lcom/wuyouwin/XServerDisplayActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 78
    .local v0, "nativeLibraryDir":Ljava/lang/String;
    iget-object v1, p3, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;->libvulkanPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;->initVulkanWrapper(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private native createVkContext(ILcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;)J
.end method

.method private native destroyVkContext(J)V
.end method

.method private getWindowHardwareBuffer(IZ)J
    .locals 4
    .param p1, "windowId"    # I
    .param p2, "useHALPixelFormatBGRA8888"    # Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v0, v0, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v0, p1}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v0

    .line 113
    .local v0, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;->xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/Window;->getContent()Lcom/wuyouwin/xserver/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p2}, Lcom/wuyouwin/renderer/GPUImage;->createOrObtain(Lcom/wuyouwin/xserver/XServer;Lcom/wuyouwin/xserver/Drawable;ZZ)Lcom/wuyouwin/renderer/GPUImage;

    move-result-object v1

    .line 115
    .local v1, "texture":Lcom/wuyouwin/renderer/GPUImage;
    invoke-virtual {v1}, Lcom/wuyouwin/renderer/GPUImage;->getHardwareBufferPtr()J

    move-result-wide v2

    return-wide v2

    .line 117
    .end local v1    # "texture":Lcom/wuyouwin/renderer/GPUImage;
    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private getWindowHeight(I)I
    .locals 2
    .param p1, "windowId"    # I
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v0, v0, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v0, p1}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v0

    .line 107
    .local v0, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/Window;->getHeight()S

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private getWindowWidth(I)I
    .locals 2
    .param p1, "windowId"    # I
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v0, v0, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v0, p1}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v0

    .line 101
    .local v0, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/Window;->getWidth()S

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private native handleExtraDataRequest(JII)Z
.end method

.method private native initVulkanWrapper(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private updateWindowContent(I)V
    .locals 4
    .param p1, "windowId"    # I
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v0, v0, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v0, p1}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v0

    .line 123
    .local v0, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/wuyouwin/xserver/Window;->getContent()Lcom/wuyouwin/xserver/Drawable;

    move-result-object v1

    .line 125
    .local v1, "drawable":Lcom/wuyouwin/xserver/Drawable;
    iget-object v2, v1, Lcom/wuyouwin/xserver/Drawable;->renderLock:Ljava/lang/Object;

    monitor-enter v2

    .line 126
    :try_start_0
    invoke-virtual {v1}, Lcom/wuyouwin/xserver/Drawable;->forceUpdate()V

    .line 127
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 129
    .end local v1    # "drawable":Lcom/wuyouwin/xserver/Drawable;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public handleConnectionShutdown(Lcom/wuyouwin/xconnector/ConnectedClient;)V
    .locals 2
    .param p1, "client"    # Lcom/wuyouwin/xconnector/ConnectedClient;

    .line 133
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/ConnectedClient;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/ConnectedClient;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 135
    .local v0, "contextPtr":J
    invoke-direct {p0, v0, v1}, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;->destroyVkContext(J)V

    .line 137
    .end local v0    # "contextPtr":J
    :cond_0
    return-void
.end method

.method public handleNewConnection(Lcom/wuyouwin/xconnector/ConnectedClient;)V
    .locals 0
    .param p1, "client"    # Lcom/wuyouwin/xconnector/ConnectedClient;

    .line 140
    return-void
.end method

.method public handleRequest(Lcom/wuyouwin/xconnector/ConnectedClient;)Z
    .locals 9
    .param p1, "client"    # Lcom/wuyouwin/xconnector/ConnectedClient;

    .line 144
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/ConnectedClient;->getInputStream()Lcom/wuyouwin/xconnector/XInputStream;

    move-result-object v0

    .line 145
    .local v0, "inputStream":Lcom/wuyouwin/xconnector/XInputStream;
    invoke-virtual {v0}, Lcom/wuyouwin/xconnector/XInputStream;->available()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    const/4 v1, 0x0

    return v1

    .line 146
    :cond_0
    invoke-virtual {v0}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 147
    .local v1, "requestCode":I
    invoke-virtual {v0}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v2

    .line 149
    .local v2, "requestLength":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 150
    iget v4, p1, Lcom/wuyouwin/xconnector/ConnectedClient;->fd:I

    iget-object v5, p0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;->options:Lcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;

    invoke-direct {p0, v4, v5}, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;->createVkContext(ILcom/wuyouwin/xenvironment/components/VortekRendererComponent$Options;)J

    move-result-wide v4

    .line 151
    .local v4, "contextPtr":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    .line 152
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/wuyouwin/xconnector/ConnectedClient;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v6, p0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    invoke-virtual {v6, p1}, Lcom/wuyouwin/xconnector/XConnectorEpoll;->killConnection(Lcom/wuyouwin/xconnector/ConnectedClient;)V

    .line 155
    .end local v4    # "contextPtr":J
    :goto_0
    goto :goto_1

    .line 156
    :cond_2
    const/16 v4, 0x7fff

    if-le v1, v4, :cond_4

    shr-int/lit8 v4, v1, 0x10

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 157
    const v4, 0xffff

    and-int/2addr v4, v1

    .line 158
    .local v4, "requestId":I
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/ConnectedClient;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 159
    .local v5, "contextPtr":J
    invoke-direct {p0, v5, v6, v4, v2}, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;->handleExtraDataRequest(JII)Z

    move-result v7

    .line 160
    .local v7, "success":Z
    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/io/IOException;

    const-string v8, "Failed to handle extra data request."

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 163
    .end local v4    # "requestId":I
    .end local v5    # "contextPtr":J
    .end local v7    # "success":Z
    :cond_4
    :goto_1
    return v3
.end method

.method public start()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    if-eqz v0, :cond_0

    return-void

    .line 84
    :cond_0
    new-instance v0, Lcom/wuyouwin/xconnector/XConnectorEpoll;

    iget-object v1, p0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;->socketConfig:Lcom/wuyouwin/xconnector/UnixSocketConfig;

    invoke-direct {v0, v1, p0, p0}, Lcom/wuyouwin/xconnector/XConnectorEpoll;-><init>(Lcom/wuyouwin/xconnector/UnixSocketConfig;Lcom/wuyouwin/xconnector/ConnectionHandler;Lcom/wuyouwin/xconnector/RequestHandler;)V

    iput-object v0, p0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    .line 85
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xconnector/XConnectorEpoll;->setInitialInputBufferCapacity(I)V

    .line 86
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xconnector/XConnectorEpoll;->setInitialOutputBufferCapacity(I)V

    .line 87
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    invoke-virtual {v0}, Lcom/wuyouwin/xconnector/XConnectorEpoll;->start()V

    .line 88
    return-void
.end method

.method public stop()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    invoke-virtual {v0}, Lcom/wuyouwin/xconnector/XConnectorEpoll;->destroy()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wuyouwin/xenvironment/components/VortekRendererComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    .line 96
    :cond_0
    return-void
.end method
