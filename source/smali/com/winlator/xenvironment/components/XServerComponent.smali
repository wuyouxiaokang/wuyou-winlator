.class public Lcom/winlator/xenvironment/components/XServerComponent;
.super Lcom/winlator/xenvironment/EnvironmentComponent;
.source "XServerComponent.java"


# instance fields
.field private connector:Lcom/winlator/xconnector/XConnectorEpoll;

.field private final socketConfig:Lcom/winlator/xconnector/UnixSocketConfig;

.field private final xServer:Lcom/winlator/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/winlator/xserver/XServer;Lcom/winlator/xconnector/UnixSocketConfig;)V
    .locals 0
    .param p1, "xServer"    # Lcom/winlator/xserver/XServer;
    .param p2, "socketConfig"    # Lcom/winlator/xconnector/UnixSocketConfig;

    .line 15
    invoke-direct {p0}, Lcom/winlator/xenvironment/EnvironmentComponent;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/winlator/xenvironment/components/XServerComponent;->xServer:Lcom/winlator/xserver/XServer;

    .line 17
    iput-object p2, p0, Lcom/winlator/xenvironment/components/XServerComponent;->socketConfig:Lcom/winlator/xconnector/UnixSocketConfig;

    .line 18
    return-void
.end method


# virtual methods
.method public start()V
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/winlator/xenvironment/components/XServerComponent;->connector:Lcom/winlator/xconnector/XConnectorEpoll;

    if-eqz v0, :cond_0

    return-void

    .line 23
    :cond_0
    new-instance v0, Lcom/winlator/xconnector/XConnectorEpoll;

    iget-object v1, p0, Lcom/winlator/xenvironment/components/XServerComponent;->socketConfig:Lcom/winlator/xconnector/UnixSocketConfig;

    new-instance v2, Lcom/winlator/xserver/XClientConnectionHandler;

    iget-object v3, p0, Lcom/winlator/xenvironment/components/XServerComponent;->xServer:Lcom/winlator/xserver/XServer;

    invoke-direct {v2, v3}, Lcom/winlator/xserver/XClientConnectionHandler;-><init>(Lcom/winlator/xserver/XServer;)V

    new-instance v3, Lcom/winlator/xserver/XClientRequestHandler;

    invoke-direct {v3}, Lcom/winlator/xserver/XClientRequestHandler;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/winlator/xconnector/XConnectorEpoll;-><init>(Lcom/winlator/xconnector/UnixSocketConfig;Lcom/winlator/xconnector/ConnectionHandler;Lcom/winlator/xconnector/RequestHandler;)V

    iput-object v0, p0, Lcom/winlator/xenvironment/components/XServerComponent;->connector:Lcom/winlator/xconnector/XConnectorEpoll;

    .line 24
    iget-object v0, p0, Lcom/winlator/xenvironment/components/XServerComponent;->connector:Lcom/winlator/xconnector/XConnectorEpoll;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/winlator/xconnector/XConnectorEpoll;->setInitialInputBufferCapacity(I)V

    .line 25
    iget-object v0, p0, Lcom/winlator/xenvironment/components/XServerComponent;->connector:Lcom/winlator/xconnector/XConnectorEpoll;

    invoke-virtual {v0, v1}, Lcom/winlator/xconnector/XConnectorEpoll;->setInitialOutputBufferCapacity(I)V

    .line 26
    iget-object v0, p0, Lcom/winlator/xenvironment/components/XServerComponent;->connector:Lcom/winlator/xconnector/XConnectorEpoll;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/winlator/xconnector/XConnectorEpoll;->setCanReceiveAncillaryMessages(Z)V

    .line 27
    iget-object v0, p0, Lcom/winlator/xenvironment/components/XServerComponent;->connector:Lcom/winlator/xconnector/XConnectorEpoll;

    invoke-virtual {v0}, Lcom/winlator/xconnector/XConnectorEpoll;->start()V

    .line 28
    return-void
.end method

.method public stop()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/winlator/xenvironment/components/XServerComponent;->connector:Lcom/winlator/xconnector/XConnectorEpoll;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/winlator/xenvironment/components/XServerComponent;->connector:Lcom/winlator/xconnector/XConnectorEpoll;

    invoke-virtual {v0}, Lcom/winlator/xconnector/XConnectorEpoll;->destroy()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/xenvironment/components/XServerComponent;->connector:Lcom/winlator/xconnector/XConnectorEpoll;

    .line 36
    :cond_0
    return-void
.end method
