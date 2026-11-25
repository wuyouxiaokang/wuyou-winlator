.class public Lcom/winlator/xconnector/XConnectorEpoll;
.super Ljava/lang/Object;
.source "XConnectorEpoll.java"


# instance fields
.field private canReceiveAncillaryMessages:Z

.field private final connectedClients:Ljava/util/ArrayList;

.field private final connectionHandler:Lcom/winlator/xconnector/ConnectionHandler;

.field private initialInputBufferCapacity:I

.field private initialOutputBufferCapacity:I

.field private multithreadedClients:Z

.field private nativePtr:J

.field private final requestHandler:Lcom/winlator/xconnector/RequestHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "winlator"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/winlator/xconnector/UnixSocketConfig;Lcom/winlator/xconnector/ConnectionHandler;Lcom/winlator/xconnector/RequestHandler;)V
    .locals 4
    .param p1, "socketConfig"    # Lcom/winlator/xconnector/UnixSocketConfig;
    .param p2, "connectionHandler"    # Lcom/winlator/xconnector/ConnectionHandler;
    .param p3, "requestHandler"    # Lcom/winlator/xconnector/RequestHandler;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winlator/xconnector/XConnectorEpoll;->connectedClients:Ljava/util/ArrayList;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/xconnector/XConnectorEpoll;->canReceiveAncillaryMessages:Z

    .line 17
    iput-boolean v0, p0, Lcom/winlator/xconnector/XConnectorEpoll;->multithreadedClients:Z

    .line 18
    const/16 v0, 0x40

    iput v0, p0, Lcom/winlator/xconnector/XConnectorEpoll;->initialInputBufferCapacity:I

    .line 19
    iput v0, p0, Lcom/winlator/xconnector/XConnectorEpoll;->initialOutputBufferCapacity:I

    .line 27
    iput-object p2, p0, Lcom/winlator/xconnector/XConnectorEpoll;->connectionHandler:Lcom/winlator/xconnector/ConnectionHandler;

    .line 28
    iput-object p3, p0, Lcom/winlator/xconnector/XConnectorEpoll;->requestHandler:Lcom/winlator/xconnector/RequestHandler;

    .line 30
    iget-object v0, p1, Lcom/winlator/xconnector/UnixSocketConfig;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/winlator/xconnector/XConnectorEpoll;->nativeAllocate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/winlator/xconnector/XConnectorEpoll;->nativePtr:J

    .line 31
    iget-wide v0, p0, Lcom/winlator/xconnector/XConnectorEpoll;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 32
    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to allocate XConnectorEpoll."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native closeFd(I)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native destroy(J)V
.end method

.method private handleConnectionShutdown(Ljava/lang/Object;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 48
    move-object v0, p1

    check-cast v0, Lcom/winlator/xconnector/ConnectedClient;

    .line 49
    .local v0, "client":Lcom/winlator/xconnector/ConnectedClient;
    iget-object v1, p0, Lcom/winlator/xconnector/XConnectorEpoll;->connectionHandler:Lcom/winlator/xconnector/ConnectionHandler;

    invoke-interface {v1, v0}, Lcom/winlator/xconnector/ConnectionHandler;->handleConnectionShutdown(Lcom/winlator/xconnector/ConnectedClient;)V

    .line 50
    invoke-virtual {v0}, Lcom/winlator/xconnector/ConnectedClient;->destroy()V

    .line 52
    iget-object v1, p0, Lcom/winlator/xconnector/XConnectorEpoll;->connectedClients:Ljava/util/ArrayList;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v2, p0, Lcom/winlator/xconnector/XConnectorEpoll;->connectedClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 54
    monitor-exit v1

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private handleExistingConnection(Ljava/lang/Object;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 72
    move-object v0, p1

    check-cast v0, Lcom/winlator/xconnector/ConnectedClient;

    .line 73
    .local v0, "client":Lcom/winlator/xconnector/ConnectedClient;
    invoke-virtual {v0}, Lcom/winlator/xconnector/ConnectedClient;->getInputStream()Lcom/winlator/xconnector/XInputStream;

    move-result-object v1

    .line 76
    .local v1, "inputStream":Lcom/winlator/xconnector/XInputStream;
    if-eqz v1, :cond_2

    .line 77
    :try_start_0
    iget-boolean v2, p0, Lcom/winlator/xconnector/XConnectorEpoll;->canReceiveAncillaryMessages:Z

    invoke-virtual {v1, v2}, Lcom/winlator/xconnector/XInputStream;->readMoreData(Z)I

    move-result v2

    if-lez v2, :cond_1

    .line 78
    const/4 v2, 0x0

    .line 79
    .local v2, "activePosition":I
    :goto_0
    iget-object v3, p0, Lcom/winlator/xconnector/XConnectorEpoll;->requestHandler:Lcom/winlator/xconnector/RequestHandler;

    invoke-interface {v3, v0}, Lcom/winlator/xconnector/RequestHandler;->handleRequest(Lcom/winlator/xconnector/ConnectedClient;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/winlator/xconnector/XInputStream;->getActivePosition()I

    move-result v3

    move v2, v3

    goto :goto_0

    .line 86
    .end local v2    # "activePosition":I
    :catch_0
    move-exception v2

    goto :goto_2

    .line 80
    .restart local v2    # "activePosition":I
    :cond_0
    invoke-virtual {v1, v2}, Lcom/winlator/xconnector/XInputStream;->setActivePosition(I)V

    .line 81
    .end local v2    # "activePosition":I
    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {p0, v0}, Lcom/winlator/xconnector/XConnectorEpoll;->killConnection(Lcom/winlator/xconnector/ConnectedClient;)V

    goto :goto_1

    .line 84
    :cond_2
    iget-object v2, p0, Lcom/winlator/xconnector/XConnectorEpoll;->requestHandler:Lcom/winlator/xconnector/RequestHandler;

    invoke-interface {v2, v0}, Lcom/winlator/xconnector/RequestHandler;->handleRequest(Lcom/winlator/xconnector/ConnectedClient;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_1
    goto :goto_3

    .line 86
    :goto_2
    nop

    .line 87
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lcom/winlator/xconnector/XConnectorEpoll;->killConnection(Lcom/winlator/xconnector/ConnectedClient;)V

    .line 89
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    return-void
.end method

.method private handleNewConnection(JI)Ljava/lang/Object;
    .locals 3
    .param p1, "clientPtr"    # J
    .param p3, "fd"    # I
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/winlator/xconnector/XConnectorEpoll;->connectionHandler:Lcom/winlator/xconnector/ConnectionHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/winlator/xconnector/ConnectionHandler;->newConnectedClient(JI)Lcom/winlator/xconnector/ConnectedClient;

    move-result-object v0

    .line 60
    .local v0, "client":Lcom/winlator/xconnector/ConnectedClient;
    iget v1, p0, Lcom/winlator/xconnector/XConnectorEpoll;->initialInputBufferCapacity:I

    invoke-virtual {v0, v1}, Lcom/winlator/xconnector/ConnectedClient;->createInputStream(I)V

    .line 61
    iget v1, p0, Lcom/winlator/xconnector/XConnectorEpoll;->initialOutputBufferCapacity:I

    invoke-virtual {v0, v1}, Lcom/winlator/xconnector/ConnectedClient;->createOutputStream(I)V

    .line 62
    iget-object v1, p0, Lcom/winlator/xconnector/XConnectorEpoll;->connectionHandler:Lcom/winlator/xconnector/ConnectionHandler;

    invoke-interface {v1, v0}, Lcom/winlator/xconnector/ConnectionHandler;->handleNewConnection(Lcom/winlator/xconnector/ConnectedClient;)V

    .line 64
    iget-object v1, p0, Lcom/winlator/xconnector/XConnectorEpoll;->connectedClients:Ljava/util/ArrayList;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v2, p0, Lcom/winlator/xconnector/XConnectorEpoll;->connectedClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    monitor-exit v1

    .line 67
    return-object v0

    .line 66
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private killAllConnections()V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 93
    nop

    :goto_0
    iget-object v0, p0, Lcom/winlator/xconnector/XConnectorEpoll;->connectedClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/winlator/xconnector/XConnectorEpoll;->connectedClients:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/xconnector/ConnectedClient;

    invoke-virtual {p0, v0}, Lcom/winlator/xconnector/XConnectorEpoll;->killConnection(Lcom/winlator/xconnector/ConnectedClient;)V

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method

.method private static native killConnection(JJ)V
.end method

.method private native nativeAllocate(Ljava/lang/String;)J
.end method

.method private static native startEpollThread(JZ)V
.end method

.method private static native stopEpollThread(J)V
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .line 39
    iget-wide v0, p0, Lcom/winlator/xconnector/XConnectorEpoll;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 40
    iget-wide v0, p0, Lcom/winlator/xconnector/XConnectorEpoll;->nativePtr:J

    invoke-static {v0, v1}, Lcom/winlator/xconnector/XConnectorEpoll;->stopEpollThread(J)V

    .line 41
    iget-wide v0, p0, Lcom/winlator/xconnector/XConnectorEpoll;->nativePtr:J

    invoke-static {v0, v1}, Lcom/winlator/xconnector/XConnectorEpoll;->destroy(J)V

    .line 42
    iput-wide v2, p0, Lcom/winlator/xconnector/XConnectorEpoll;->nativePtr:J

    .line 44
    :cond_0
    return-void
.end method

.method public getClientWidthFd(I)Lcom/winlator/xconnector/ConnectedClient;
    .locals 4
    .param p1, "fd"    # I

    .line 101
    iget-object v0, p0, Lcom/winlator/xconnector/XConnectorEpoll;->connectedClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/winlator/xconnector/XConnectorEpoll;->connectedClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/xconnector/ConnectedClient;

    .line 103
    .local v2, "client":Lcom/winlator/xconnector/ConnectedClient;
    iget v3, v2, Lcom/winlator/xconnector/ConnectedClient;->fd:I

    if-ne v3, p1, :cond_0

    monitor-exit v0

    return-object v2

    .line 105
    .end local v2    # "client":Lcom/winlator/xconnector/ConnectedClient;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 103
    .restart local v2    # "client":Lcom/winlator/xconnector/ConnectedClient;
    :cond_0
    nop

    .line 104
    .end local v2    # "client":Lcom/winlator/xconnector/ConnectedClient;
    goto :goto_0

    .line 105
    :cond_1
    monitor-exit v0

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 105
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public killConnection(Lcom/winlator/xconnector/ConnectedClient;)V
    .locals 4
    .param p1, "client"    # Lcom/winlator/xconnector/ConnectedClient;

    .line 110
    iget-wide v0, p0, Lcom/winlator/xconnector/XConnectorEpoll;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/winlator/xconnector/XConnectorEpoll;->nativePtr:J

    iget-wide v2, p1, Lcom/winlator/xconnector/ConnectedClient;->nativePtr:J

    invoke-static {v0, v1, v2, v3}, Lcom/winlator/xconnector/XConnectorEpoll;->killConnection(JJ)V

    .line 111
    :cond_0
    return-void
.end method

.method public setCanReceiveAncillaryMessages(Z)V
    .locals 0
    .param p1, "canReceiveAncillaryMessages"    # Z

    .line 118
    iput-boolean p1, p0, Lcom/winlator/xconnector/XConnectorEpoll;->canReceiveAncillaryMessages:Z

    .line 119
    return-void
.end method

.method public setInitialInputBufferCapacity(I)V
    .locals 0
    .param p1, "initialInputBufferCapacity"    # I

    .line 126
    iput p1, p0, Lcom/winlator/xconnector/XConnectorEpoll;->initialInputBufferCapacity:I

    .line 127
    return-void
.end method

.method public setInitialOutputBufferCapacity(I)V
    .locals 0
    .param p1, "initialOutputBufferCapacity"    # I

    .line 134
    iput p1, p0, Lcom/winlator/xconnector/XConnectorEpoll;->initialOutputBufferCapacity:I

    .line 135
    return-void
.end method

.method public setMultithreadedClients(Z)V
    .locals 0
    .param p1, "multithreadedClients"    # Z

    .line 142
    iput-boolean p1, p0, Lcom/winlator/xconnector/XConnectorEpoll;->multithreadedClients:Z

    .line 143
    return-void
.end method

.method public start()V
    .locals 4

    .line 35
    iget-wide v0, p0, Lcom/winlator/xconnector/XConnectorEpoll;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/winlator/xconnector/XConnectorEpoll;->nativePtr:J

    iget-boolean v2, p0, Lcom/winlator/xconnector/XConnectorEpoll;->multithreadedClients:Z

    invoke-static {v0, v1, v2}, Lcom/winlator/xconnector/XConnectorEpoll;->startEpollThread(JZ)V

    .line 36
    :cond_0
    return-void
.end method
