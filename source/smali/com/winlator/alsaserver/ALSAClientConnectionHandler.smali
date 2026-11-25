.class public Lcom/winlator/alsaserver/ALSAClientConnectionHandler;
.super Ljava/lang/Object;
.source "ALSAClientConnectionHandler.java"

# interfaces
.implements Lcom/winlator/xconnector/ConnectionHandler;


# instance fields
.field private final options:Lcom/winlator/alsaserver/ALSAClient$Options;


# direct methods
.method public constructor <init>(Lcom/winlator/alsaserver/ALSAClient$Options;)V
    .locals 0
    .param p1, "options"    # Lcom/winlator/alsaserver/ALSAClient$Options;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/winlator/alsaserver/ALSAClientConnectionHandler;->options:Lcom/winlator/alsaserver/ALSAClient$Options;

    .line 11
    return-void
.end method


# virtual methods
.method public handleConnectionShutdown(Lcom/winlator/xconnector/ConnectedClient;)V
    .locals 1
    .param p1, "client"    # Lcom/winlator/xconnector/ConnectedClient;

    .line 20
    invoke-virtual {p1}, Lcom/winlator/xconnector/ConnectedClient;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/winlator/xconnector/ConnectedClient;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/alsaserver/ALSAClient;

    invoke-virtual {v0}, Lcom/winlator/alsaserver/ALSAClient;->release()V

    .line 21
    :cond_0
    return-void
.end method

.method public handleNewConnection(Lcom/winlator/xconnector/ConnectedClient;)V
    .locals 2
    .param p1, "client"    # Lcom/winlator/xconnector/ConnectedClient;

    .line 15
    new-instance v0, Lcom/winlator/alsaserver/ALSAClient;

    iget-object v1, p0, Lcom/winlator/alsaserver/ALSAClientConnectionHandler;->options:Lcom/winlator/alsaserver/ALSAClient$Options;

    invoke-direct {v0, v1}, Lcom/winlator/alsaserver/ALSAClient;-><init>(Lcom/winlator/alsaserver/ALSAClient$Options;)V

    invoke-virtual {p1, v0}, Lcom/winlator/xconnector/ConnectedClient;->setTag(Ljava/lang/Object;)V

    .line 16
    return-void
.end method
