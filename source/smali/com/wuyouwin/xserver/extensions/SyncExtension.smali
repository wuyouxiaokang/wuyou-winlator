.class public Lcom/wuyouwin/xserver/extensions/SyncExtension;
.super Lcom/wuyouwin/xserver/extensions/Extension;
.source "SyncExtension.java"


# instance fields
.field private final fences:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Lcom/wuyouwin/xserver/XServer;B)V
    .locals 1
    .param p1, "xServer"    # Lcom/wuyouwin/xserver/XServer;
    .param p2, "majorOpcode"    # B

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/xserver/extensions/Extension;-><init>(Lcom/wuyouwin/xserver/XServer;B)V

    .line 19
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    .line 31
    return-void
.end method

.method private awaitFence(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 7
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 102
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/XClient;->getRemainingRequestLength()I

    move-result v0

    .line 103
    .local v0, "length":I
    div-int/lit8 v1, v0, 0x4

    new-array v1, v1, [I

    .line 104
    .local v1, "ids":[I
    const/4 v2, 0x0

    .line 106
    .local v2, "i":I
    :goto_0
    if-eqz v0, :cond_0

    .line 107
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v4

    aput v4, v1, v2

    .line 108
    add-int/lit8 v0, v0, -0x4

    move v2, v3

    goto :goto_0

    .line 111
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_0
    const/4 v3, 0x0

    .line 112
    .local v3, "busyWaitIter":I
    :goto_1
    invoke-direct {p0, v1}, Lcom/wuyouwin/xserver/extensions/SyncExtension;->isAnyTriggered([I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 114
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "busyWaitIter":I
    .local v4, "busyWaitIter":I
    const/16 v5, 0x1f4

    if-ge v3, v5, :cond_1

    .line 115
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_2

    .line 119
    :catch_0
    move-exception v3

    goto :goto_3

    .line 117
    :cond_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_2
    move v3, v4

    goto :goto_1

    .line 119
    :goto_3
    nop

    .line 120
    .local v3, "e":Ljava/lang/InterruptedException;
    move v3, v4

    .line 123
    .end local v4    # "busyWaitIter":I
    .local v3, "busyWaitIter":I
    :cond_2
    return-void
.end method

.method private createFence(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 4
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 60
    iget-object v0, p0, Lcom/wuyouwin/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 61
    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 62
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 64
    .local v1, "id":I
    iget-object v2, p0, Lcom/wuyouwin/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_1

    .line 66
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XInputStream;->readByte()B

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v2, v3

    .line 67
    .local v2, "initiallyTriggered":Z
    const/4 v3, 0x3

    invoke-virtual {p2, v3}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 69
    iget-object v3, p0, Lcom/wuyouwin/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 70
    .end local v1    # "id":I
    .end local v2    # "initiallyTriggered":Z
    monitor-exit v0

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 64
    .restart local v1    # "id":I
    :cond_1
    new-instance v2, Lcom/wuyouwin/xserver/errors/BadIdChoice;

    invoke-direct {v2, v1}, Lcom/wuyouwin/xserver/errors/BadIdChoice;-><init>(I)V

    .end local p1    # "client":Lcom/wuyouwin/xserver/XClient;
    .end local p2    # "inputStream":Lcom/wuyouwin/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/wuyouwin/xconnector/XOutputStream;
    throw v2

    .line 70
    .end local v1    # "id":I
    .restart local p1    # "client":Lcom/wuyouwin/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/wuyouwin/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/wuyouwin/xconnector/XOutputStream;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private destroyFence(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 3
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 94
    iget-object v0, p0, Lcom/wuyouwin/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 95
    :try_start_0
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 96
    .local v1, "id":I
    iget-object v2, p0, Lcom/wuyouwin/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/wuyouwin/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 98
    .end local v1    # "id":I
    monitor-exit v0

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 96
    .restart local v1    # "id":I
    :cond_0
    new-instance v2, Lcom/wuyouwin/xserver/errors/BadFence;

    invoke-direct {v2, v1}, Lcom/wuyouwin/xserver/errors/BadFence;-><init>(I)V

    .end local p1    # "client":Lcom/wuyouwin/xserver/XClient;
    .end local p2    # "inputStream":Lcom/wuyouwin/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/wuyouwin/xconnector/XOutputStream;
    throw v2

    .line 98
    .end local v1    # "id":I
    .restart local p1    # "client":Lcom/wuyouwin/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/wuyouwin/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/wuyouwin/xconnector/XOutputStream;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isAnyTriggered([I)Z
    .locals 6
    .param p1, "ids"    # [I

    .line 50
    iget-object v0, p0, Lcom/wuyouwin/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 51
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, p1, v3

    .line 52
    .local v4, "id":I
    iget-object v5, p0, Lcom/wuyouwin/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_1

    .line 53
    iget-object v5, p0, Lcom/wuyouwin/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 56
    .end local v4    # "id":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 53
    .restart local v4    # "id":I
    :cond_0
    nop

    .line 51
    .end local v4    # "id":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    .restart local v4    # "id":I
    :cond_1
    new-instance v1, Lcom/wuyouwin/xserver/errors/BadFence;

    invoke-direct {v1, v4}, Lcom/wuyouwin/xserver/errors/BadFence;-><init>(I)V

    .end local p1    # "ids":[I
    throw v1

    .line 55
    .end local v4    # "id":I
    .restart local p1    # "ids":[I
    :cond_2
    monitor-exit v0

    return v2

    .line 56
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resetFence(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 5
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 82
    iget-object v0, p0, Lcom/wuyouwin/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 83
    :try_start_0
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 84
    .local v1, "id":I
    iget-object v2, p0, Lcom/wuyouwin/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/wuyouwin/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 87
    .local v2, "triggered":Z
    if-eqz v2, :cond_0

    .line 89
    iget-object v3, p0, Lcom/wuyouwin/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 90
    .end local v1    # "id":I
    .end local v2    # "triggered":Z
    monitor-exit v0

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 87
    .restart local v1    # "id":I
    .restart local v2    # "triggered":Z
    :cond_0
    new-instance v3, Lcom/wuyouwin/xserver/errors/BadMatch;

    invoke-direct {v3}, Lcom/wuyouwin/xserver/errors/BadMatch;-><init>()V

    .end local p1    # "client":Lcom/wuyouwin/xserver/XClient;
    .end local p2    # "inputStream":Lcom/wuyouwin/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/wuyouwin/xconnector/XOutputStream;
    throw v3

    .line 84
    .end local v2    # "triggered":Z
    .restart local p1    # "client":Lcom/wuyouwin/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/wuyouwin/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/wuyouwin/xconnector/XOutputStream;
    :cond_1
    new-instance v2, Lcom/wuyouwin/xserver/errors/BadFence;

    invoke-direct {v2, v1}, Lcom/wuyouwin/xserver/errors/BadFence;-><init>(I)V

    .end local p1    # "client":Lcom/wuyouwin/xserver/XClient;
    .end local p2    # "inputStream":Lcom/wuyouwin/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/wuyouwin/xconnector/XOutputStream;
    throw v2

    .line 90
    .end local v1    # "id":I
    .restart local p1    # "client":Lcom/wuyouwin/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/wuyouwin/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/wuyouwin/xconnector/XOutputStream;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private triggerFence(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 4
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 74
    iget-object v0, p0, Lcom/wuyouwin/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 75
    :try_start_0
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 76
    .local v1, "id":I
    iget-object v2, p0, Lcom/wuyouwin/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/wuyouwin/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 78
    .end local v1    # "id":I
    monitor-exit v0

    .line 79
    return-void

    .line 78
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 76
    .restart local v1    # "id":I
    :cond_0
    new-instance v2, Lcom/wuyouwin/xserver/errors/BadFence;

    invoke-direct {v2, v1}, Lcom/wuyouwin/xserver/errors/BadFence;-><init>(I)V

    .end local p1    # "client":Lcom/wuyouwin/xserver/XClient;
    .end local p2    # "inputStream":Lcom/wuyouwin/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/wuyouwin/xconnector/XOutputStream;
    throw v2

    .line 78
    .end local v1    # "id":I
    .restart local p1    # "client":Lcom/wuyouwin/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/wuyouwin/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/wuyouwin/xconnector/XOutputStream;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getErrorCount()B
    .locals 1

    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, "SYNC"

    return-object v0
.end method

.method public handleRequest(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 2
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 127
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/XClient;->getRequestData()B

    move-result v0

    .line 128
    .local v0, "opcode":I
    packed-switch v0, :pswitch_data_0

    .line 145
    :pswitch_0
    new-instance v1, Lcom/wuyouwin/xserver/errors/BadImplementation;

    invoke-direct {v1}, Lcom/wuyouwin/xserver/errors/BadImplementation;-><init>()V

    throw v1

    .line 142
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/xserver/extensions/SyncExtension;->awaitFence(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V

    .line 143
    goto :goto_0

    .line 139
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/xserver/extensions/SyncExtension;->destroyFence(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V

    .line 140
    goto :goto_0

    .line 136
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/xserver/extensions/SyncExtension;->resetFence(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V

    .line 137
    goto :goto_0

    .line 133
    :pswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/xserver/extensions/SyncExtension;->triggerFence(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V

    .line 134
    goto :goto_0

    .line 130
    :pswitch_5
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/xserver/extensions/SyncExtension;->createFence(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V

    .line 131
    nop

    .line 147
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTriggered(I)V
    .locals 3
    .param p1, "id"    # I

    .line 44
    iget-object v0, p0, Lcom/wuyouwin/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/wuyouwin/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/wuyouwin/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 47
    return-void

    .line 46
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
