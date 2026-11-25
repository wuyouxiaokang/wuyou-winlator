.class public Lcom/winlator/xenvironment/components/SysVSharedMemoryComponent;
.super Lcom/winlator/xenvironment/EnvironmentComponent;
.source "SysVSharedMemoryComponent.java"


# instance fields
.field private connector:Lcom/winlator/xconnector/XConnectorEpoll;

.field public final socketConfig:Lcom/winlator/xconnector/UnixSocketConfig;

.field private sysVSharedMemory:Lcom/winlator/sysvshm/SysVSharedMemory;

.field private final xServer:Lcom/winlator/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/winlator/xserver/XServer;Lcom/winlator/xconnector/UnixSocketConfig;)V
    .locals 0
    .param p1, "xServer"    # Lcom/winlator/xserver/XServer;
    .param p2, "socketConfig"    # Lcom/winlator/xconnector/UnixSocketConfig;

    .line 18
    invoke-direct {p0}, Lcom/winlator/xenvironment/EnvironmentComponent;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/winlator/xenvironment/components/SysVSharedMemoryComponent;->xServer:Lcom/winlator/xserver/XServer;

    .line 20
    iput-object p2, p0, Lcom/winlator/xenvironment/components/SysVSharedMemoryComponent;->socketConfig:Lcom/winlator/xconnector/UnixSocketConfig;

    .line 21
    return-void
.end method


# virtual methods
.method public start()V
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/winlator/xenvironment/components/SysVSharedMemoryComponent;->connector:Lcom/winlator/xconnector/XConnectorEpoll;

    if-eqz v0, :cond_0

    return-void

    .line 26
    :cond_0
    new-instance v0, Lcom/winlator/sysvshm/SysVSharedMemory;

    invoke-direct {v0}, Lcom/winlator/sysvshm/SysVSharedMemory;-><init>()V

    iput-object v0, p0, Lcom/winlator/xenvironment/components/SysVSharedMemoryComponent;->sysVSharedMemory:Lcom/winlator/sysvshm/SysVSharedMemory;

    .line 27
    new-instance v0, Lcom/winlator/xconnector/XConnectorEpoll;

    iget-object v1, p0, Lcom/winlator/xenvironment/components/SysVSharedMemoryComponent;->socketConfig:Lcom/winlator/xconnector/UnixSocketConfig;

    new-instance v2, Lcom/winlator/sysvshm/SysVSHMConnectionHandler;

    iget-object v3, p0, Lcom/winlator/xenvironment/components/SysVSharedMemoryComponent;->sysVSharedMemory:Lcom/winlator/sysvshm/SysVSharedMemory;

    invoke-direct {v2, v3}, Lcom/winlator/sysvshm/SysVSHMConnectionHandler;-><init>(Lcom/winlator/sysvshm/SysVSharedMemory;)V

    new-instance v3, Lcom/winlator/sysvshm/SysVSHMRequestHandler;

    invoke-direct {v3}, Lcom/winlator/sysvshm/SysVSHMRequestHandler;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/winlator/xconnector/XConnectorEpoll;-><init>(Lcom/winlator/xconnector/UnixSocketConfig;Lcom/winlator/xconnector/ConnectionHandler;Lcom/winlator/xconnector/RequestHandler;)V

    iput-object v0, p0, Lcom/winlator/xenvironment/components/SysVSharedMemoryComponent;->connector:Lcom/winlator/xconnector/XConnectorEpoll;

    .line 28
    iget-object v0, p0, Lcom/winlator/xenvironment/components/SysVSharedMemoryComponent;->connector:Lcom/winlator/xconnector/XConnectorEpoll;

    invoke-virtual {v0}, Lcom/winlator/xconnector/XConnectorEpoll;->start()V

    .line 30
    iget-object v0, p0, Lcom/winlator/xenvironment/components/SysVSharedMemoryComponent;->xServer:Lcom/winlator/xserver/XServer;

    new-instance v1, Lcom/winlator/xserver/SHMSegmentManager;

    iget-object v2, p0, Lcom/winlator/xenvironment/components/SysVSharedMemoryComponent;->sysVSharedMemory:Lcom/winlator/sysvshm/SysVSharedMemory;

    invoke-direct {v1, v2}, Lcom/winlator/xserver/SHMSegmentManager;-><init>(Lcom/winlator/sysvshm/SysVSharedMemory;)V

    invoke-virtual {v0, v1}, Lcom/winlator/xserver/XServer;->setSHMSegmentManager(Lcom/winlator/xserver/SHMSegmentManager;)V

    .line 31
    return-void
.end method

.method public stop()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/winlator/xenvironment/components/SysVSharedMemoryComponent;->connector:Lcom/winlator/xconnector/XConnectorEpoll;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/winlator/xenvironment/components/SysVSharedMemoryComponent;->connector:Lcom/winlator/xconnector/XConnectorEpoll;

    invoke-virtual {v0}, Lcom/winlator/xconnector/XConnectorEpoll;->destroy()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/xenvironment/components/SysVSharedMemoryComponent;->connector:Lcom/winlator/xconnector/XConnectorEpoll;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/winlator/xenvironment/components/SysVSharedMemoryComponent;->sysVSharedMemory:Lcom/winlator/sysvshm/SysVSharedMemory;

    invoke-virtual {v0}, Lcom/winlator/sysvshm/SysVSharedMemory;->deleteAll()V

    .line 41
    return-void
.end method
