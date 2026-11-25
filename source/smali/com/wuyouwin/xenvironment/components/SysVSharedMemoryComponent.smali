.class public Lcom/wuyouwin/xenvironment/components/SysVSharedMemoryComponent;
.super Lcom/wuyouwin/xenvironment/EnvironmentComponent;
.source "SysVSharedMemoryComponent.java"


# instance fields
.field private connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

.field public final socketConfig:Lcom/wuyouwin/xconnector/UnixSocketConfig;

.field private sysVSharedMemory:Lcom/wuyouwin/sysvshm/SysVSharedMemory;

.field private final xServer:Lcom/wuyouwin/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/wuyouwin/xserver/XServer;Lcom/wuyouwin/xconnector/UnixSocketConfig;)V
    .locals 0
    .param p1, "xServer"    # Lcom/wuyouwin/xserver/XServer;
    .param p2, "socketConfig"    # Lcom/wuyouwin/xconnector/UnixSocketConfig;

    .line 18
    invoke-direct {p0}, Lcom/wuyouwin/xenvironment/EnvironmentComponent;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/wuyouwin/xenvironment/components/SysVSharedMemoryComponent;->xServer:Lcom/wuyouwin/xserver/XServer;

    .line 20
    iput-object p2, p0, Lcom/wuyouwin/xenvironment/components/SysVSharedMemoryComponent;->socketConfig:Lcom/wuyouwin/xconnector/UnixSocketConfig;

    .line 21
    return-void
.end method


# virtual methods
.method public start()V
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/SysVSharedMemoryComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    if-eqz v0, :cond_0

    return-void

    .line 26
    :cond_0
    new-instance v0, Lcom/wuyouwin/sysvshm/SysVSharedMemory;

    invoke-direct {v0}, Lcom/wuyouwin/sysvshm/SysVSharedMemory;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/xenvironment/components/SysVSharedMemoryComponent;->sysVSharedMemory:Lcom/wuyouwin/sysvshm/SysVSharedMemory;

    .line 27
    new-instance v0, Lcom/wuyouwin/xconnector/XConnectorEpoll;

    iget-object v1, p0, Lcom/wuyouwin/xenvironment/components/SysVSharedMemoryComponent;->socketConfig:Lcom/wuyouwin/xconnector/UnixSocketConfig;

    new-instance v2, Lcom/wuyouwin/sysvshm/SysVSHMConnectionHandler;

    iget-object v3, p0, Lcom/wuyouwin/xenvironment/components/SysVSharedMemoryComponent;->sysVSharedMemory:Lcom/wuyouwin/sysvshm/SysVSharedMemory;

    invoke-direct {v2, v3}, Lcom/wuyouwin/sysvshm/SysVSHMConnectionHandler;-><init>(Lcom/wuyouwin/sysvshm/SysVSharedMemory;)V

    new-instance v3, Lcom/wuyouwin/sysvshm/SysVSHMRequestHandler;

    invoke-direct {v3}, Lcom/wuyouwin/sysvshm/SysVSHMRequestHandler;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/wuyouwin/xconnector/XConnectorEpoll;-><init>(Lcom/wuyouwin/xconnector/UnixSocketConfig;Lcom/wuyouwin/xconnector/ConnectionHandler;Lcom/wuyouwin/xconnector/RequestHandler;)V

    iput-object v0, p0, Lcom/wuyouwin/xenvironment/components/SysVSharedMemoryComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    .line 28
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/SysVSharedMemoryComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    invoke-virtual {v0}, Lcom/wuyouwin/xconnector/XConnectorEpoll;->start()V

    .line 30
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/SysVSharedMemoryComponent;->xServer:Lcom/wuyouwin/xserver/XServer;

    new-instance v1, Lcom/wuyouwin/xserver/SHMSegmentManager;

    iget-object v2, p0, Lcom/wuyouwin/xenvironment/components/SysVSharedMemoryComponent;->sysVSharedMemory:Lcom/wuyouwin/sysvshm/SysVSharedMemory;

    invoke-direct {v1, v2}, Lcom/wuyouwin/xserver/SHMSegmentManager;-><init>(Lcom/wuyouwin/sysvshm/SysVSharedMemory;)V

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xserver/XServer;->setSHMSegmentManager(Lcom/wuyouwin/xserver/SHMSegmentManager;)V

    .line 31
    return-void
.end method

.method public stop()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/SysVSharedMemoryComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/SysVSharedMemoryComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    invoke-virtual {v0}, Lcom/wuyouwin/xconnector/XConnectorEpoll;->destroy()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wuyouwin/xenvironment/components/SysVSharedMemoryComponent;->connector:Lcom/wuyouwin/xconnector/XConnectorEpoll;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/components/SysVSharedMemoryComponent;->sysVSharedMemory:Lcom/wuyouwin/sysvshm/SysVSharedMemory;

    invoke-virtual {v0}, Lcom/wuyouwin/sysvshm/SysVSharedMemory;->deleteAll()V

    .line 41
    return-void
.end method
