.class public Lcom/wuyouwin/xenvironment/components/XServerComponent;
.super Lcom/wuyouwin/xenvironment/EnvironmentComponent;
.source "XServerComponent.java"


# instance fields
.field private connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

.field private final socketConfig:Lcom/wuyouwin/xconnector/UnixSocketConfig;

.field private final xServer:Lcom/wuyouwin/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/wuyouwin/xserver/XServer;Lcom/wuyouwin/xconnector/UnixSocketConfig;)V
    .locals 0
    .param p1, "xServer"    # Lcom/wuyouwin/xserver/XServer;
    .param p2, "socketConfig"    # Lcom/wuyouwin/xconnector/UnixSocketConfig;

    .line 15
    invoke-direct {p0}, Lcom/wuyouwin/xenvironment/EnvironmentComponent;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/wuyouwin/xenvironment/components/XServerComponent;->xServer:Lcom/wuyouwin/xserver/XServer;

    .line 17
    iput-object p2, p0, Lcom/wuyouwin/xenvironment/components/XServerComponent;->socketConfig:Lcom/wuyouwin/xconnector/UnixSocketConfig;

    .line 18
    return-void
.end method


# virtual methods
.method public start()V
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/XServerComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    if-eqz v0, :cond_0

    return-void

    .line 23
    :cond_0
    new-instance v0, Lcom/wuyouwin/xconnector/XConnectorEpoll;

    iget-object v1, p0, Lcom/wuyouwin/xenvironment/components/XServerComponent;->socketConfig:Lcom/wuyouwin/xconnector/UnixSocketConfig;

    new-instance v2, Lcom/wuyouwin/xserver/XClientConnectionHandler;

    iget-object v3, p0, Lcom/wuyouwin/xenvironment/components/XServerComponent;->xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-direct {v2, v3}, Lcom/wuyouwin/xserver/XClientConnectionHandler;-><init>(Lcom/wuyouwin/xserver/XServer;)V

    new-instance v3, Lcom/wuyouwin/xserver/XClientRequestHandler;

    invoke-direct {v3}, Lcom/wuyouwin/xserver/XClientRequestHandler;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/wuyouwin/xconnector/XConnectorEpoll;-><init>(Lcom/wuyouwin/xconnector/UnixSocketConfig;Lcom/wuyouwin/xconnector/ConnectionHandler;Lcom/wuyouwin/xconnector/RequestHandler;)V

    iput-object v0, p0, Lcom/wuyouwin/xenvironment/components/XServerComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    .line 24
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/XServerComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xconnector/XConnectorEpoll;->setInitialInputBufferCapacity(I)V

    .line 25
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/XServerComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xconnector/XConnectorEpoll;->setInitialOutputBufferCapacity(I)V

    .line 26
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/XServerComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xconnector/XConnectorEpoll;->setCanReceiveAncillaryMessages(Z)V

    .line 27
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/XServerComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    invoke-virtual {v0}, Lcom/wuyouwin/xconnector/XConnectorEpoll;->start()V

    .line 28
    return-void
.end method

.method public stop()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/XServerComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/XServerComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    invoke-virtual {v0}, Lcom/wuyouwin/xconnector/XConnectorEpoll;->destroy()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wuyouwin/xenvironment/components/XServerComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    .line 36
    :cond_0
    return-void
.end method
