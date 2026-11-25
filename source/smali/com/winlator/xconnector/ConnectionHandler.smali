.class public interface abstract Lcom/winlator/xconnector/ConnectionHandler;
.super Ljava/lang/Object;
.source "ConnectionHandler.java"


# virtual methods
.method public abstract handleConnectionShutdown(Lcom/winlator/xconnector/ConnectedClient;)V
.end method

.method public abstract handleNewConnection(Lcom/winlator/xconnector/ConnectedClient;)V
.end method

.method public newConnectedClient(JI)Lcom/winlator/xconnector/ConnectedClient;
    .locals 1
    .param p1, "clientPtr"    # J
    .param p3, "fd"    # I

    .line 5
    new-instance v0, Lcom/winlator/xconnector/ConnectedClient;

    invoke-direct {v0, p1, p2, p3}, Lcom/winlator/xconnector/ConnectedClient;-><init>(JI)V

    return-object v0
.end method
