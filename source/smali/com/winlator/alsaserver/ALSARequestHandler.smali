.class public Lcom/winlator/alsaserver/ALSARequestHandler;
.super Ljava/lang/Object;
.source "ALSARequestHandler.java"

# interfaces
.implements Lcom/winlator/xconnector/RequestHandler;


# instance fields
.field private maxSHMemoryId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/alsaserver/ALSARequestHandler;->maxSHMemoryId:I

    return-void
.end method

.method private copySharedBuffer(Lcom/winlator/alsaserver/ALSAClient;ILcom/winlator/xconnector/XOutputStream;)V
    .locals 5
    .param p1, "alsaClient"    # Lcom/winlator/alsaserver/ALSAClient;
    .param p2, "requestLength"    # I
    .param p3, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 86
    invoke-virtual {p1}, Lcom/winlator/alsaserver/ALSAClient;->getSharedBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 87
    .local v0, "sharedBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Lcom/winlator/alsaserver/ALSAClient;->getAuxBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 89
    .local v1, "auxBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 90
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    add-int/lit8 v3, p2, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 91
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 93
    invoke-virtual {p3}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v2

    .line 94
    .local v2, "lock":Lcom/winlator/xconnector/XStreamLock;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p3, v3}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 96
    .end local v2    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 93
    .restart local v2    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Lcom/winlator/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v3
.end method

.method private createSharedMemory(Lcom/winlator/alsaserver/ALSAClient;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 5
    .param p1, "alsaClient"    # Lcom/winlator/alsaserver/ALSAClient;
    .param p2, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 99
    invoke-virtual {p1}, Lcom/winlator/alsaserver/ALSAClient;->getBufferSizeInBytes()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 100
    .local v0, "shmSize":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alsa-shm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/winlator/alsaserver/ALSARequestHandler;->maxSHMemoryId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/winlator/alsaserver/ALSARequestHandler;->maxSHMemoryId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/winlator/sysvshm/SysVSharedMemory;->createMemoryFd(Ljava/lang/String;I)I

    move-result v1

    .line 102
    .local v1, "fd":I
    const/4 v2, 0x0

    if-ltz v1, :cond_0

    .line 103
    int-to-long v3, v0

    invoke-static {v1, v3, v4, v2, v2}, Lcom/winlator/sysvshm/SysVSharedMemory;->mapSHMSegment(IJIZ)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 104
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v3, :cond_0

    invoke-virtual {p1, v3}, Lcom/winlator/alsaserver/ALSAClient;->setSharedBuffer(Ljava/nio/ByteBuffer;)V

    .line 107
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .local v3, "lock":Lcom/winlator/xconnector/XStreamLock;
    :try_start_1
    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 109
    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->setAncillaryFd(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    if-eqz v3, :cond_1

    :try_start_2
    invoke-interface {v3}, Lcom/winlator/xconnector/XStreamLock;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 112
    .end local v3    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_1
    :goto_0
    if-ltz v1, :cond_2

    invoke-static {v1}, Lcom/winlator/xconnector/XConnectorEpoll;->closeFd(I)V

    .line 114
    :cond_2
    return-void

    .line 107
    .restart local v3    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :catchall_1
    move-exception v2

    if-eqz v3, :cond_3

    :try_start_3
    invoke-interface {v3}, Lcom/winlator/xconnector/XStreamLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    :try_start_4
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    nop

    .end local v0    # "shmSize":I
    .end local v1    # "fd":I
    .end local p1    # "alsaClient":Lcom/winlator/alsaserver/ALSAClient;
    .end local p2    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 112
    .end local v3    # "lock":Lcom/winlator/xconnector/XStreamLock;
    .restart local v0    # "shmSize":I
    .restart local v1    # "fd":I
    .restart local p1    # "alsaClient":Lcom/winlator/alsaserver/ALSAClient;
    .restart local p2    # "outputStream":Lcom/winlator/xconnector/XOutputStream;
    :goto_2
    if-ltz v1, :cond_4

    invoke-static {v1}, Lcom/winlator/xconnector/XConnectorEpoll;->closeFd(I)V

    .line 113
    :cond_4
    throw v2
.end method


# virtual methods
.method public handleRequest(Lcom/winlator/xconnector/ConnectedClient;)Z
    .locals 12
    .param p1, "client"    # Lcom/winlator/xconnector/ConnectedClient;

    .line 19
    invoke-virtual {p1}, Lcom/winlator/xconnector/ConnectedClient;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/alsaserver/ALSAClient;

    .line 20
    .local v0, "alsaClient":Lcom/winlator/alsaserver/ALSAClient;
    invoke-virtual {p1}, Lcom/winlator/xconnector/ConnectedClient;->getInputStream()Lcom/winlator/xconnector/XInputStream;

    move-result-object v1

    .line 21
    .local v1, "inputStream":Lcom/winlator/xconnector/XInputStream;
    invoke-virtual {p1}, Lcom/winlator/xconnector/ConnectedClient;->getOutputStream()Lcom/winlator/xconnector/XOutputStream;

    move-result-object v2

    .line 23
    .local v2, "outputStream":Lcom/winlator/xconnector/XOutputStream;
    invoke-virtual {v1}, Lcom/winlator/xconnector/XInputStream;->available()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    return v5

    .line 24
    :cond_0
    invoke-virtual {v1}, Lcom/winlator/xconnector/XInputStream;->readByte()B

    move-result v3

    .line 25
    .local v3, "requestCode":B
    invoke-virtual {v1}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v4

    .line 27
    .local v4, "requestLength":I
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    .line 72
    :pswitch_0
    invoke-virtual {v1}, Lcom/winlator/xconnector/XInputStream;->readByte()B

    move-result v5

    .line 73
    .local v5, "channels":B
    invoke-static {}, Lcom/winlator/alsaserver/ALSAClient$DataType;->values()[Lcom/winlator/alsaserver/ALSAClient$DataType;

    move-result-object v6

    invoke-virtual {v1}, Lcom/winlator/xconnector/XInputStream;->readByte()B

    move-result v7

    aget-object v6, v6, v7

    .line 74
    .local v6, "dataType":Lcom/winlator/alsaserver/ALSAClient$DataType;
    invoke-virtual {v1}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v7

    .line 75
    .local v7, "sampleRate":I
    iget-object v8, v0, Lcom/winlator/alsaserver/ALSAClient;->options:Lcom/winlator/alsaserver/ALSAClient$Options;

    iget-short v8, v8, Lcom/winlator/alsaserver/ALSAClient$Options;->latencyMillis:S

    invoke-static {v8, v5, v6, v7}, Lcom/winlator/alsaserver/ALSAClient;->latencyMillisToBufferSize(IILcom/winlator/alsaserver/ALSAClient$DataType;I)I

    move-result v8

    .line 77
    .local v8, "minBufferSize":I
    invoke-virtual {v2}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v9

    .line 78
    .local v9, "lock":Lcom/winlator/xconnector/XStreamLock;
    :try_start_0
    invoke-virtual {v2, v8}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    if-eqz v9, :cond_7

    invoke-interface {v9}, Lcom/winlator/xconnector/XStreamLock;->close()V

    goto/16 :goto_2

    .line 77
    :catchall_0
    move-exception v10

    if-eqz v9, :cond_1

    :try_start_1
    invoke-interface {v9}, Lcom/winlator/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v11

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v10

    .line 67
    .end local v5    # "channels":B
    .end local v6    # "dataType":Lcom/winlator/alsaserver/ALSAClient$DataType;
    .end local v7    # "sampleRate":I
    .end local v8    # "minBufferSize":I
    .end local v9    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :pswitch_1
    invoke-virtual {v2}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v5

    .line 68
    .local v5, "lock":Lcom/winlator/xconnector/XStreamLock;
    :try_start_2
    invoke-virtual {v0}, Lcom/winlator/alsaserver/ALSAClient;->pointer()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 69
    if-eqz v5, :cond_2

    invoke-interface {v5}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 70
    .end local v5    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_2
    goto/16 :goto_2

    .line 67
    .restart local v5    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :catchall_2
    move-exception v6

    if-eqz v5, :cond_3

    :try_start_3
    invoke-interface {v5}, Lcom/winlator/xconnector/XStreamLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v7

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v6

    .line 64
    .end local v5    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :pswitch_2
    invoke-virtual {v0}, Lcom/winlator/alsaserver/ALSAClient;->drain()V

    .line 65
    goto :goto_2

    .line 52
    :pswitch_3
    invoke-virtual {v0}, Lcom/winlator/alsaserver/ALSAClient;->getSharedBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 53
    .local v6, "sharedBuffer":Ljava/nio/ByteBuffer;
    if-eqz v6, :cond_4

    .line 54
    invoke-direct {p0, v0, v4, v2}, Lcom/winlator/alsaserver/ALSARequestHandler;->copySharedBuffer(Lcom/winlator/alsaserver/ALSAClient;ILcom/winlator/xconnector/XOutputStream;)V

    .line 55
    invoke-virtual {v0}, Lcom/winlator/alsaserver/ALSAClient;->getAuxBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/winlator/alsaserver/ALSAClient;->writeDataToTrack(Ljava/nio/ByteBuffer;)V

    .line 56
    invoke-virtual {v0}, Lcom/winlator/alsaserver/ALSAClient;->pointer()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 59
    :cond_4
    invoke-virtual {v1}, Lcom/winlator/xconnector/XInputStream;->available()I

    move-result v7

    if-ge v7, v4, :cond_5

    return v5

    .line 60
    :cond_5
    invoke-virtual {v1, v4}, Lcom/winlator/xconnector/XInputStream;->readByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/winlator/alsaserver/ALSAClient;->writeDataToTrack(Ljava/nio/ByteBuffer;)V

    .line 62
    goto :goto_2

    .line 41
    .end local v6    # "sharedBuffer":Ljava/nio/ByteBuffer;
    :pswitch_4
    invoke-virtual {v1}, Lcom/winlator/xconnector/XInputStream;->available()I

    move-result v6

    if-ge v6, v4, :cond_6

    return v5

    .line 43
    :cond_6
    invoke-virtual {v1}, Lcom/winlator/xconnector/XInputStream;->readByte()B

    move-result v5

    invoke-virtual {v0, v5}, Lcom/winlator/alsaserver/ALSAClient;->setChannels(I)V

    .line 44
    invoke-static {}, Lcom/winlator/alsaserver/ALSAClient$DataType;->values()[Lcom/winlator/alsaserver/ALSAClient$DataType;

    move-result-object v5

    invoke-virtual {v1}, Lcom/winlator/xconnector/XInputStream;->readByte()B

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Lcom/winlator/alsaserver/ALSAClient;->setDataType(Lcom/winlator/alsaserver/ALSAClient$DataType;)V

    .line 45
    invoke-virtual {v1}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/winlator/alsaserver/ALSAClient;->setSampleRate(I)V

    .line 46
    invoke-virtual {v1}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/winlator/alsaserver/ALSAClient;->setBufferSize(I)V

    .line 47
    invoke-virtual {v0}, Lcom/winlator/alsaserver/ALSAClient;->prepare()V

    .line 49
    invoke-direct {p0, v0, v2}, Lcom/winlator/alsaserver/ALSARequestHandler;->createSharedMemory(Lcom/winlator/alsaserver/ALSAClient;Lcom/winlator/xconnector/XOutputStream;)V

    .line 50
    goto :goto_2

    .line 38
    :pswitch_5
    invoke-virtual {v0}, Lcom/winlator/alsaserver/ALSAClient;->pause()V

    .line 39
    goto :goto_2

    .line 35
    :pswitch_6
    invoke-virtual {v0}, Lcom/winlator/alsaserver/ALSAClient;->stop()V

    .line 36
    goto :goto_2

    .line 32
    :pswitch_7
    invoke-virtual {v0}, Lcom/winlator/alsaserver/ALSAClient;->start()V

    .line 33
    goto :goto_2

    .line 29
    :pswitch_8
    invoke-virtual {v0}, Lcom/winlator/alsaserver/ALSAClient;->release()V

    .line 30
    nop

    .line 82
    :cond_7
    :goto_2
    const/4 v5, 0x1

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
