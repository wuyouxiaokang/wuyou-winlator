.class public Lcom/wuyouwin/sysvshm/SysVSHMConnectionHandler;
.super Ljava/lang/Object;
.source "SysVSHMConnectionHandler.java"

# interfaces
.implements Lcom/wuyouwin/xconnector/ConnectionHandler;


# instance fields
.field private final sysVSharedMemory:Lcom/wuyouwin/sysvshm/SysVSharedMemory;


# direct methods
.method public constructor <init>(Lcom/wuyouwin/sysvshm/SysVSharedMemory;)V
    .locals 0
    .param p1, "sysVSharedMemory"    # Lcom/wuyouwin/sysvshm/SysVSharedMemory;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/wuyouwin/sysvshm/SysVSHMConnectionHandler;->sysVSharedMemory:Lcom/wuyouwin/sysvshm/SysVSharedMemory;

    .line 11
    return-void
.end method


# virtual methods
.method public handleConnectionShutdown(Lcom/wuyouwin/xconnector/ConnectedClient;)V
    .locals 0
    .param p1, "client"    # Lcom/wuyouwin/xconnector/ConnectedClient;

    .line 19
    return-void
.end method

.method public handleNewConnection(Lcom/wuyouwin/xconnector/ConnectedClient;)V
    .locals 1
    .param p1, "client"    # Lcom/wuyouwin/xconnector/ConnectedClient;

    .line 15
    iget-object v0, p0, Lcom/wuyouwin/sysvshm/SysVSHMConnectionHandler;->sysVSharedMemory:Lcom/wuyouwin/sysvshm/SysVSharedMemory;

    invoke-virtual {p1, v0}, Lcom/wuyouwin/xconnector/ConnectedClient;->setTag(Ljava/lang/Object;)V

    .line 16
    return-void
.end method
