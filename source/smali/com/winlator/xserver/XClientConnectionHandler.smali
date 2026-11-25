.class public Lcom/winlator/xserver/XClientConnectionHandler;
.super Ljava/lang/Object;
.source "XClientConnectionHandler.java"

# interfaces
.implements Lcom/winlator/xconnector/ConnectionHandler;


# instance fields
.field private final xServer:Lcom/winlator/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/winlator/xserver/XServer;)V
    .locals 0
    .param p1, "xServer"    # Lcom/winlator/xserver/XServer;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/winlator/xserver/XClientConnectionHandler;->xServer:Lcom/winlator/xserver/XServer;

    .line 11
    return-void
.end method


# virtual methods
.method public handleConnectionShutdown(Lcom/winlator/xconnector/ConnectedClient;)V
    .locals 1
    .param p1, "client"    # Lcom/winlator/xconnector/ConnectedClient;

    .line 23
    move-object v0, p1

    check-cast v0, Lcom/winlator/xserver/XClient;

    invoke-virtual {v0}, Lcom/winlator/xserver/XClient;->freeResources()V

    .line 24
    return-void
.end method

.method public handleNewConnection(Lcom/winlator/xconnector/ConnectedClient;)V
    .locals 0
    .param p1, "client"    # Lcom/winlator/xconnector/ConnectedClient;

    .line 19
    return-void
.end method

.method public newConnectedClient(JI)Lcom/winlator/xconnector/ConnectedClient;
    .locals 2
    .param p1, "clientPtr"    # J
    .param p3, "fd"    # I

    .line 15
    new-instance v0, Lcom/winlator/xserver/XClient;

    iget-object v1, p0, Lcom/winlator/xserver/XClientConnectionHandler;->xServer:Lcom/winlator/xserver/XServer;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/winlator/xserver/XClient;-><init>(JILcom/winlator/xserver/XServer;)V

    return-object v0
.end method
