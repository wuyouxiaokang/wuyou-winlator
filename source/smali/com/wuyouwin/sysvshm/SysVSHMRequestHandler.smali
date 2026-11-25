.class public Lcom/wuyouwin/sysvshm/SysVSHMRequestHandler;
.super Ljava/lang/Object;
.source "SysVSHMRequestHandler.java"

# interfaces
.implements Lcom/wuyouwin/xconnector/RequestHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleRequest(Lcom/wuyouwin/xconnector/ConnectedClient;)Z
    .locals 10
    .param p1, "client"    # Lcom/wuyouwin/xconnector/ConnectedClient;

    .line 14
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/ConnectedClient;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/sysvshm/SysVSharedMemory;

    .line 15
    .local v0, "sysVSharedMemory":Lcom/wuyouwin/sysvshm/SysVSharedMemory;
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/ConnectedClient;->getInputStream()Lcom/wuyouwin/xconnector/XInputStream;

    move-result-object v1

    .line 16
    .local v1, "inputStream":Lcom/wuyouwin/xconnector/XInputStream;
    invoke-virtual {p1}, Lcom/wuyouwin/xconnector/ConnectedClient;->getOutputStream()Lcom/wuyouwin/xconnector/XOutputStream;

    move-result-object v2

    .line 18
    .local v2, "outputStream":Lcom/wuyouwin/xconnector/XOutputStream;
    invoke-virtual {v1}, Lcom/wuyouwin/xconnector/XInputStream;->available()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    return v5

    .line 19
    :cond_0
    invoke-virtual {v1}, Lcom/wuyouwin/xconnector/XInputStream;->readByte()B

    move-result v3

    .line 21
    .local v3, "requestCode":B
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 41
    :pswitch_0
    invoke-virtual {v1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v4

    .line 42
    .local v4, "shmid":I
    invoke-virtual {v0, v4}, Lcom/wuyouwin/sysvshm/SysVSharedMemory;->delete(I)V

    .line 43
    goto :goto_1

    .line 32
    .end local v4    # "shmid":I
    :pswitch_1
    invoke-virtual {v1}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v4

    .line 34
    .restart local v4    # "shmid":I
    invoke-virtual {v2}, Lcom/wuyouwin/xconnector/XOutputStream;->lock()Lcom/wuyouwin/xconnector/XStreamLock;

    move-result-object v6

    .line 35
    .local v6, "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :try_start_0
    invoke-virtual {v2, v5}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 36
    invoke-virtual {v0, v4}, Lcom/wuyouwin/sysvshm/SysVSharedMemory;->getFd(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/wuyouwin/xconnector/XOutputStream;->setAncillaryFd(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz v6, :cond_1

    invoke-interface {v6}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V

    .line 38
    .end local v6    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_1
    goto :goto_1

    .line 34
    .restart local v6    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :catchall_0
    move-exception v5

    if-eqz v6, :cond_2

    :try_start_1
    invoke-interface {v6}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v7

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v5

    .line 23
    .end local v4    # "shmid":I
    .end local v6    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :pswitch_2
    invoke-virtual {v1}, Lcom/wuyouwin/xconnector/XInputStream;->readUnsignedInt()J

    move-result-wide v4

    .line 24
    .local v4, "size":J
    invoke-virtual {v0, v4, v5}, Lcom/wuyouwin/sysvshm/SysVSharedMemory;->get(J)I

    move-result v6

    .line 26
    .local v6, "shmid":I
    invoke-virtual {v2}, Lcom/wuyouwin/xconnector/XOutputStream;->lock()Lcom/wuyouwin/xconnector/XStreamLock;

    move-result-object v7

    .line 27
    .local v7, "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :try_start_2
    invoke-virtual {v2, v6}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 28
    if-eqz v7, :cond_3

    invoke-interface {v7}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V

    .line 29
    .end local v7    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_3
    nop

    .line 46
    .end local v4    # "size":J
    .end local v6    # "shmid":I
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 26
    .restart local v4    # "size":J
    .restart local v6    # "shmid":I
    .restart local v7    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :catchall_2
    move-exception v8

    if-eqz v7, :cond_4

    :try_start_3
    invoke-interface {v7}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v9

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
