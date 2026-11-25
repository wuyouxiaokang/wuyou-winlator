.class public Lcom/wuyouwin/xenvironment/components/ALSAServerComponent;
.super Lcom/wuyouwin/xenvironment/EnvironmentComponent;
.source "ALSAServerComponent.java"


# instance fields
.field private connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

.field private final options:Lcom/wuyouwin/alsaserver/ALSAClient$Options;

.field private final socketConfig:Lcom/wuyouwin/xconnector/UnixSocketConfig;


# direct methods
.method public constructor <init>(Lcom/wuyouwin/xconnector/UnixSocketConfig;Lcom/wuyouwin/alsaserver/ALSAClient$Options;)V
    .locals 0
    .param p1, "socketConfig"    # Lcom/wuyouwin/xconnector/UnixSocketConfig;
    .param p2, "options"    # Lcom/wuyouwin/alsaserver/ALSAClient$Options;

    .line 15
    invoke-direct {p0}, Lcom/wuyouwin/xenvironment/EnvironmentComponent;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/wuyouwin/xenvironment/components/ALSAServerComponent;->socketConfig:Lcom/wuyouwin/xconnector/UnixSocketConfig;

    .line 17
    iput-object p2, p0, Lcom/wuyouwin/xenvironment/components/ALSAServerComponent;->options:Lcom/wuyouwin/alsaserver/ALSAClient$Options;

    .line 18
    return-void
.end method


# virtual methods
.method public start()V
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/ALSAServerComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    if-eqz v0, :cond_0

    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/EnvironmentComponent;->environment:Lcom/wuyouwin/xenvironment/XEnvironment;

    invoke-virtual {v0}, Lcom/wuyouwin/xenvironment/XEnvironment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wuyouwin/alsaserver/ALSAClient;->assignFramesPerBuffer(Landroid/content/Context;)V

    .line 24
    new-instance v0, Lcom/wuyouwin/xconnector/XConnectorEpoll;

    iget-object v1, p0, Lcom/wuyouwin/xenvironment/components/ALSAServerComponent;->socketConfig:Lcom/wuyouwin/xconnector/UnixSocketConfig;

    new-instance v2, Lcom/wuyouwin/alsaserver/ALSAClientConnectionHandler;

    iget-object v3, p0, Lcom/wuyouwin/xenvironment/components/ALSAServerComponent;->options:Lcom/wuyouwin/alsaserver/ALSAClient$Options;

    invoke-direct {v2, v3}, Lcom/wuyouwin/alsaserver/ALSAClientConnectionHandler;-><init>(Lcom/wuyouwin/alsaserver/ALSAClient$Options;)V

    new-instance v3, Lcom/wuyouwin/alsaserver/ALSARequestHandler;

    invoke-direct {v3}, Lcom/wuyouwin/alsaserver/ALSARequestHandler;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/wuyouwin/xconnector/XConnectorEpoll;-><init>(Lcom/wuyouwin/xconnector/UnixSocketConfig;Lcom/wuyouwin/xconnector/ConnectionHandler;Lcom/wuyouwin/xconnector/RequestHandler;)V

    iput-object v0, p0, Lcom/wuyouwin/xenvironment/components/ALSAServerComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    .line 25
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/ALSAServerComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xconnector/XConnectorEpoll;->setMultithreadedClients(Z)V

    .line 26
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/ALSAServerComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    invoke-virtual {v0}, Lcom/wuyouwin/xconnector/XConnectorEpoll;->start()V

    .line 27
    return-void
.end method

.method public stop()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/ALSAServerComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/ALSAServerComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    invoke-virtual {v0}, Lcom/wuyouwin/xconnector/XConnectorEpoll;->destroy()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wuyouwin/xenvironment/components/ALSAServerComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    .line 35
    :cond_0
    return-void
.end method
