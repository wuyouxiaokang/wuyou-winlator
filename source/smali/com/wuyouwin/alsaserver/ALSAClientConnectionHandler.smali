.class public Lcom/wuyouwin/alsaserver/ALSAClientConnectionHandler;
.super Ljava/lang/Object;
.source "ALSAClientConnectionHandler.java"

# interfaces
.implements Lcom/wuyouwin/xconnector/ConnectionHandler;


# instance fields
.field private final options:Lcom/wuyouwin/alsaserver/ALSAClient$Options;


# direct methods
.method public constructor <init>(Lcom/wuyouwin/alsaserver/ALSAClient$Options;)V
    .locals 0
    .param p1, "options"    # Lcom/wuyouwin/alsaserver/ALSAClient$Options;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/wuyouwin/alsaserver/ALSAClientConnectionHandler;->options:Lcom/wuyouwin/alsaserver/ALSAClient$Options;

    .line 11
    return-void
.end method


# virtual methods
.method public handleConnectionShutdown(Lcom/wuyouwin/xconnector/ConnectedClient;)V
    .locals 1
    .param p1, "client"    # Lcom/wuyouwin/xconnector/ConnectedClient;

    .line 20
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/ConnectedClient;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/ConnectedClient;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/alsaserver/ALSAClient;

    invoke-virtual {v0}, Lcom/wuyouwin/alsaserver/ALSAClient;->release()V

    .line 21
    :cond_0
    return-void
.end method

.method public handleNewConnection(Lcom/wuyouwin/xconnector/ConnectedClient;)V
    .locals 2
    .param p1, "client"    # Lcom/wuyouwin/xconnector/ConnectedClient;

    .line 15
    new-instance v0, Lcom/wuyouwin/alsaserver/ALSAClient;

    iget-object v1, p0, Lcom/wuyouwin/alsaserver/ALSAClientConnectionHandler;->options:Lcom/wuyouwin/alsaserver/ALSAClient$Options;

    invoke-direct {v0, v1}, Lcom/wuyouwin/alsaserver/ALSAClient;-><init>(Lcom/wuyouwin/alsaserver/ALSAClient$Options;)V

    invoke-virtual {p1, v0}, Lcom/wuyouwin/xconnector/ConnectedClient;->setTag(Ljava/lang/Object;)V

    .line 16
    return-void
.end method
