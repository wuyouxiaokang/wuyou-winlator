.class public Lcom/winlator/winhandler/WinHandler;
.super Ljava/lang/Object;
.source "WinHandler.java"


# instance fields
.field private final actions:Ljava/util/ArrayDeque;

.field protected final activity:Lcom/winlator/XServerDisplayActivity;

.field public final gamepadHandler:Lcom/winlator/winhandler/GamepadHandler;

.field protected initReceived:Z

.field private localhost:Ljava/net/InetAddress;

.field private midiHandler:Lcom/winlator/winhandler/MIDIHandler;

.field private onGetProcessInfoListener:Lcom/winlator/winhandler/OnGetProcessInfoListener;

.field private onPreExecListener:Lcom/winlator/winhandler/OnPreExecListener;

.field protected final receiveData:Ljava/nio/ByteBuffer;

.field private final receivePacket:Ljava/net/DatagramPacket;

.field private requestCallback:Lcom/winlator/core/Callback;

.field private running:Z

.field protected final sendData:Ljava/nio/ByteBuffer;

.field private final sendPacket:Ljava/net/DatagramPacket;

.field private socket:Ljava/net/DatagramSocket;


# direct methods
.method public static synthetic $r8$lambda$3Zizl-ni8SEVWI377il25-4JN6o(Lcom/winlator/winhandler/WinHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/winlator/winhandler/WinHandler;->lambda$handleRequest$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$4vse4JIDSueWkzDENfSPq-Wg5vM(Lcom/winlator/winhandler/WinHandler;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/winhandler/WinHandler;->lambda$killProcess$1(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8TtK9DCCKIzXARxaP6uLaq2qIKE(Lcom/winlator/winhandler/WinHandler;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/winhandler/WinHandler;->lambda$bringToFront$7(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$CF7vjtbLUbP-p5VWpC24Lh-uFEU(Lcom/winlator/winhandler/WinHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/winlator/winhandler/WinHandler;->lambda$showDesktop$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$EDhA3EcC7sfg-rHW4YdjRYT9_uM(Lcom/winlator/winhandler/WinHandler;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/winhandler/WinHandler;->lambda$setProcessAffinity$3(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$L4OsvxmRH5jXjFBCfRPnWCHSlEw(Lcom/winlator/winhandler/WinHandler;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/winhandler/WinHandler;->lambda$getExecutablePath$11(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QaZ-fWEhhiLzJ9Ptdjvt8nmQJV0(Lcom/winlator/winhandler/WinHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/winlator/winhandler/WinHandler;->lambda$startSendThread$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$V97eFdVhuEShbmBtL7GtHoXjYes(Lcom/winlator/winhandler/WinHandler;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/winhandler/WinHandler;->lambda$setProcessAffinity$4(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$V_1k3XjQ7wXS2pcm89oWO28GLko(Lcom/winlator/winhandler/WinHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/winlator/winhandler/WinHandler;->lambda$start$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$X9JiBWmwR0zIekWA-buFhy7Lmx0(Lcom/winlator/winhandler/WinHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/winhandler/WinHandler;->lambda$exec$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iOSe9aKeBw9YiRCPFjqlZrWr9k0(Lcom/winlator/winhandler/WinHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/winlator/winhandler/WinHandler;->lambda$listProcesses$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$jggmBc1E8r7Gm24KPMzqCTfEdjU(Lcom/winlator/winhandler/WinHandler;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/winhandler/WinHandler;->lambda$setClipboardData$10(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kdo1ITKQTdFyV0VaoOvS-JcysZ4(Lcom/winlator/winhandler/WinHandler;JI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/winhandler/WinHandler;->lambda$showWindow$9(JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$l7OCMoRp4wO0HGFScGjAyIH1-WU(Lcom/winlator/winhandler/WinHandler;IIII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/winlator/winhandler/WinHandler;->lambda$mouseEvent$5(IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/winlator/XServerDisplayActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/winlator/XServerDisplayActivity;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v0, 0x100

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    .line 32
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    .line 33
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendPacket:Ljava/net/DatagramPacket;

    .line 34
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lcom/winlator/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lcom/winlator/winhandler/WinHandler;->receivePacket:Ljava/net/DatagramPacket;

    .line 35
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/winlator/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/winhandler/WinHandler;->initReceived:Z

    .line 37
    iput-boolean v0, p0, Lcom/winlator/winhandler/WinHandler;->running:Z

    .line 43
    new-instance v0, Lcom/winlator/winhandler/GamepadHandler;

    invoke-direct {v0, p0}, Lcom/winlator/winhandler/GamepadHandler;-><init>(Lcom/winlator/winhandler/WinHandler;)V

    iput-object v0, p0, Lcom/winlator/winhandler/WinHandler;->gamepadHandler:Lcom/winlator/winhandler/GamepadHandler;

    .line 47
    iput-object p1, p0, Lcom/winlator/winhandler/WinHandler;->activity:Lcom/winlator/XServerDisplayActivity;

    .line 48
    return-void
.end method

.method private handleRequest(BI)V
    .locals 18
    .param p1, "requestCode"    # B
    .param p2, "port"    # I

    .line 314
    move-object/from16 v1, p0

    move/from16 v2, p2

    const/4 v0, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 409
    :sswitch_0
    iget-object v4, v1, Lcom/winlator/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 410
    .local v4, "requestLength":I
    const/4 v5, 0x0

    .line 411
    .local v5, "shouldExit":Z
    if-lez v4, :cond_0

    .line 412
    new-array v6, v4, [B

    .line 413
    .local v6, "data":[B
    iget-object v7, v1, Lcom/winlator/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    new-instance v8, Ljava/net/DatagramPacket;

    array-length v9, v6

    invoke-direct {v8, v6, v9}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {v7, v8}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 414
    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 415
    .local v7, "path":Ljava/lang/String;
    iget-object v8, v1, Lcom/winlator/winhandler/WinHandler;->onPreExecListener:Lcom/winlator/winhandler/OnPreExecListener;

    if-eqz v8, :cond_0

    iget-object v8, v1, Lcom/winlator/winhandler/WinHandler;->onPreExecListener:Lcom/winlator/winhandler/OnPreExecListener;

    invoke-interface {v8, v7}, Lcom/winlator/winhandler/OnPreExecListener;->onPreExec(Ljava/lang/String;)Z

    move-result v5

    .line 417
    .end local v6    # "data":[B
    .end local v7    # "path":Ljava/lang/String;
    :cond_0
    int-to-byte v6, v5

    new-array v3, v3, [B

    aput-byte v6, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/winlator/winhandler/WinHandler;->sendPacket(I[B)Z

    .line 418
    goto/16 :goto_2

    .line 393
    .end local v4    # "requestLength":I
    .end local v5    # "shouldExit":Z
    :sswitch_1
    iget-object v0, v1, Lcom/winlator/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 394
    .local v3, "requestLength":I
    const-string v0, ""

    .line 395
    .local v0, "path":Ljava/lang/String;
    if-lez v3, :cond_1

    .line 396
    new-array v4, v3, [B

    .line 397
    .local v4, "data":[B
    iget-object v5, v1, Lcom/winlator/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    new-instance v6, Ljava/net/DatagramPacket;

    array-length v7, v4

    invoke-direct {v6, v4, v7}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {v5, v6}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 398
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v5

    move-object v4, v0

    goto :goto_0

    .line 395
    .end local v4    # "data":[B
    :cond_1
    move-object v4, v0

    .line 400
    .end local v0    # "path":Ljava/lang/String;
    .local v4, "path":Ljava/lang/String;
    :goto_0
    iget-object v0, v1, Lcom/winlator/winhandler/WinHandler;->requestCallback:Lcom/winlator/core/Callback;

    if-eqz v0, :cond_7

    .line 401
    iget-object v5, v1, Lcom/winlator/winhandler/WinHandler;->requestCallback:Lcom/winlator/core/Callback;

    monitor-enter v5

    .line 402
    :try_start_0
    iget-object v0, v1, Lcom/winlator/winhandler/WinHandler;->requestCallback:Lcom/winlator/core/Callback;

    invoke-interface {v0, v4}, Lcom/winlator/core/Callback;->call(Ljava/lang/Object;)V

    .line 403
    iget-object v0, v1, Lcom/winlator/winhandler/WinHandler;->requestCallback:Lcom/winlator/core/Callback;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 404
    monitor-exit v5

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 349
    .end local v3    # "requestLength":I
    .end local v4    # "path":Ljava/lang/String;
    :sswitch_2
    iget-object v0, v1, Lcom/winlator/winhandler/WinHandler;->gamepadHandler:Lcom/winlator/winhandler/GamepadHandler;

    invoke-virtual {v0, v2}, Lcom/winlator/winhandler/GamepadHandler;->handleSetGamepadStateRequest(I)V

    .line 350
    goto/16 :goto_2

    .line 386
    :sswitch_3
    iget-object v0, v1, Lcom/winlator/winhandler/WinHandler;->midiHandler:Lcom/winlator/winhandler/MIDIHandler;

    if-eqz v0, :cond_7

    .line 387
    iget-object v0, v1, Lcom/winlator/winhandler/WinHandler;->midiHandler:Lcom/winlator/winhandler/MIDIHandler;

    invoke-virtual {v0}, Lcom/winlator/winhandler/MIDIHandler;->outputPortDisconnect()V

    .line 388
    iget-object v0, v1, Lcom/winlator/winhandler/WinHandler;->midiHandler:Lcom/winlator/winhandler/MIDIHandler;

    invoke-virtual {v0}, Lcom/winlator/winhandler/MIDIHandler;->close()V

    goto/16 :goto_2

    .line 369
    :sswitch_4
    iget-object v4, v1, Lcom/winlator/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    if-ne v4, v3, :cond_2

    move v0, v3

    .line 370
    .local v0, "isMidiOut":Z
    :cond_2
    iget-object v3, v1, Lcom/winlator/winhandler/WinHandler;->midiHandler:Lcom/winlator/winhandler/MIDIHandler;

    if-nez v3, :cond_3

    new-instance v3, Lcom/winlator/winhandler/MIDIHandler;

    invoke-direct {v3, v1}, Lcom/winlator/winhandler/MIDIHandler;-><init>(Lcom/winlator/winhandler/WinHandler;)V

    iput-object v3, v1, Lcom/winlator/winhandler/WinHandler;->midiHandler:Lcom/winlator/winhandler/MIDIHandler;

    .line 371
    :cond_3
    if-eqz v0, :cond_4

    .line 372
    iget-object v3, v1, Lcom/winlator/winhandler/WinHandler;->midiHandler:Lcom/winlator/winhandler/MIDIHandler;

    new-instance v4, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda13;

    invoke-direct {v4, v1}, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda13;-><init>(Lcom/winlator/winhandler/WinHandler;)V

    invoke-virtual {v3, v4}, Lcom/winlator/winhandler/MIDIHandler;->open(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 380
    :cond_4
    iget-object v3, v1, Lcom/winlator/winhandler/WinHandler;->midiHandler:Lcom/winlator/winhandler/MIDIHandler;

    invoke-virtual {v3}, Lcom/winlator/winhandler/MIDIHandler;->outputPortConnect()V

    .line 381
    iget-object v3, v1, Lcom/winlator/winhandler/WinHandler;->midiHandler:Lcom/winlator/winhandler/MIDIHandler;

    invoke-virtual {v3, v2}, Lcom/winlator/winhandler/MIDIHandler;->addClient(I)V

    .line 383
    goto/16 :goto_2

    .line 362
    .end local v0    # "isMidiOut":Z
    :sswitch_5
    iget-object v0, v1, Lcom/winlator/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 363
    .local v0, "requestLength":I
    new-array v3, v0, [B

    .line 364
    .local v3, "data":[B
    iget-object v4, v1, Lcom/winlator/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    new-instance v5, Ljava/net/DatagramPacket;

    array-length v6, v3

    invoke-direct {v5, v3, v6}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {v4, v5}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 365
    iget-object v4, v1, Lcom/winlator/winhandler/WinHandler;->activity:Lcom/winlator/XServerDisplayActivity;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4, v5}, Lcom/winlator/core/FileUtils;->openIntent(Landroid/app/Activity;Ljava/lang/String;)V

    .line 366
    goto/16 :goto_2

    .line 353
    .end local v0    # "requestLength":I
    .end local v3    # "data":[B
    :sswitch_6
    iget-object v0, v1, Lcom/winlator/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 354
    .local v0, "x":S
    iget-object v3, v1, Lcom/winlator/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 355
    .local v3, "y":S
    iget-object v4, v1, Lcom/winlator/winhandler/WinHandler;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-virtual {v4}, Lcom/winlator/XServerDisplayActivity;->getXServer()Lcom/winlator/xserver/XServer;

    move-result-object v4

    .line 356
    .local v4, "xServer":Lcom/winlator/xserver/XServer;
    iget-object v5, v4, Lcom/winlator/xserver/XServer;->pointer:Lcom/winlator/xserver/Pointer;

    invoke-virtual {v5, v0}, Lcom/winlator/xserver/Pointer;->setX(I)V

    .line 357
    iget-object v5, v4, Lcom/winlator/xserver/XServer;->pointer:Lcom/winlator/xserver/Pointer;

    invoke-virtual {v5, v3}, Lcom/winlator/xserver/Pointer;->setY(I)V

    .line 358
    iget-object v5, v1, Lcom/winlator/winhandler/WinHandler;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-virtual {v5}, Lcom/winlator/XServerDisplayActivity;->getXServerView()Lcom/winlator/widget/XServerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 359
    goto/16 :goto_2

    .line 345
    .end local v0    # "x":S
    .end local v3    # "y":S
    .end local v4    # "xServer":Lcom/winlator/xserver/XServer;
    :sswitch_7
    iget-object v0, v1, Lcom/winlator/winhandler/WinHandler;->gamepadHandler:Lcom/winlator/winhandler/GamepadHandler;

    invoke-virtual {v0, v2}, Lcom/winlator/winhandler/GamepadHandler;->handleReleaseGamepadRequest(I)V

    .line 346
    goto/16 :goto_2

    .line 341
    :sswitch_8
    iget-object v0, v1, Lcom/winlator/winhandler/WinHandler;->gamepadHandler:Lcom/winlator/winhandler/GamepadHandler;

    invoke-virtual {v0, v2}, Lcom/winlator/winhandler/GamepadHandler;->handleGetGamepadRequest(I)V

    .line 342
    goto/16 :goto_2

    .line 324
    :sswitch_9
    iget-object v4, v1, Lcom/winlator/winhandler/WinHandler;->onGetProcessInfoListener:Lcom/winlator/winhandler/OnGetProcessInfoListener;

    if-nez v4, :cond_5

    return-void

    .line 325
    :cond_5
    iget-object v4, v1, Lcom/winlator/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    iget-object v5, v1, Lcom/winlator/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 326
    iget-object v4, v1, Lcom/winlator/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 327
    .local v4, "numProcesses":I
    iget-object v5, v1, Lcom/winlator/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 328
    .local v5, "index":I
    iget-object v6, v1, Lcom/winlator/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 329
    .local v6, "pid":I
    iget-object v7, v1, Lcom/winlator/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v14

    .line 330
    .local v14, "memoryUsage":J
    iget-object v7, v1, Lcom/winlator/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v16

    .line 331
    .local v16, "affinityMask":I
    iget-object v7, v1, Lcom/winlator/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    if-ne v7, v3, :cond_6

    move v13, v3

    goto :goto_1

    :cond_6
    move v13, v0

    .line 333
    .local v13, "wow64Process":Z
    :goto_1
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 334
    .local v0, "bytes":[B
    iget-object v3, v1, Lcom/winlator/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 335
    invoke-static {v0}, Lcom/winlator/core/StringUtils;->fromANSIString([B)Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, "name":Ljava/lang/String;
    iget-object v12, v1, Lcom/winlator/winhandler/WinHandler;->onGetProcessInfoListener:Lcom/winlator/winhandler/OnGetProcessInfoListener;

    new-instance v10, Lcom/winlator/winhandler/ProcessInfo;

    move-object v7, v10

    move v8, v6

    move-object v9, v3

    move-object/from16 v17, v0

    move-object v0, v10

    .end local v0    # "bytes":[B
    .local v17, "bytes":[B
    move-wide v10, v14

    move-object v2, v12

    move/from16 v12, v16

    invoke-direct/range {v7 .. v13}, Lcom/winlator/winhandler/ProcessInfo;-><init>(ILjava/lang/String;JIZ)V

    invoke-interface {v2, v5, v4, v0}, Lcom/winlator/winhandler/OnGetProcessInfoListener;->onGetProcessInfo(IILcom/winlator/winhandler/ProcessInfo;)V

    .line 338
    goto :goto_2

    .line 316
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "numProcesses":I
    .end local v5    # "index":I
    .end local v6    # "pid":I
    .end local v13    # "wow64Process":Z
    .end local v14    # "memoryUsage":J
    .end local v16    # "affinityMask":I
    .end local v17    # "bytes":[B
    :sswitch_a
    iput-boolean v3, v1, Lcom/winlator/winhandler/WinHandler;->initReceived:Z

    .line 318
    iget-object v2, v1, Lcom/winlator/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 319
    :try_start_1
    iget-object v0, v1, Lcom/winlator/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 320
    monitor-exit v2

    .line 321
    nop

    .line 421
    :cond_7
    :goto_2
    return-void

    .line 320
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x5 -> :sswitch_9
        0x8 -> :sswitch_8
        0xa -> :sswitch_7
        0xd -> :sswitch_6
        0xf -> :sswitch_5
        0x10 -> :sswitch_4
        0x11 -> :sswitch_3
        0x13 -> :sswitch_2
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method private synthetic lambda$bringToFront$7(Ljava/lang/String;J)V
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "handle"    # J

    .line 194
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 195
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 197
    .local v0, "bytes":[B
    array-length v1, v0

    const/16 v2, 0xf2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 198
    .local v1, "minLength":I
    iget-object v2, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 199
    iget-object v2, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 200
    iget-object v2, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 201
    const/16 v2, 0x1f0a

    invoke-virtual {p0, v2}, Lcom/winlator/winhandler/WinHandler;->sendPacket(I)Z

    .line 202
    return-void
.end method

.method private synthetic lambda$exec$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 81
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 83
    .local v0, "filenameBytes":[B
    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 84
    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 85
    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 87
    .local v1, "parametersBytes":[B
    iget-object v2, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 88
    iget-object v2, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 89
    .end local v1    # "parametersBytes":[B
    goto :goto_0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 91
    :goto_0
    const/16 v1, 0x1f0a

    invoke-virtual {p0, v1}, Lcom/winlator/winhandler/WinHandler;->sendPacket(I)Z

    .line 92
    return-void
.end method

.method private synthetic lambda$getExecutablePath$11(I)V
    .locals 2
    .param p1, "processId"    # I

    .line 240
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 241
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 242
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 243
    const/16 v0, 0x1f0a

    invoke-virtual {p0, v0}, Lcom/winlator/winhandler/WinHandler;->sendPacket(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->requestCallback:Lcom/winlator/core/Callback;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->requestCallback:Lcom/winlator/core/Callback;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 246
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 248
    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$handleRequest$13()V
    .locals 4

    .line 373
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->midiHandler:Lcom/winlator/winhandler/MIDIHandler;

    invoke-virtual {v0}, Lcom/winlator/winhandler/MIDIHandler;->init()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-virtual {v0}, Lcom/winlator/XServerDisplayActivity;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "soundfont"

    const-string v2, "SONiVOX-EAS-GM-Wavetable"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "soundfont":Ljava/lang/String;
    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->midiHandler:Lcom/winlator/winhandler/MIDIHandler;

    sget-object v2, Lcom/winlator/core/GeneralComponents$Type;->SOUNDFONT:Lcom/winlator/core/GeneralComponents$Type;

    iget-object v3, p0, Lcom/winlator/winhandler/WinHandler;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-static {v2, v3, v0}, Lcom/winlator/core/GeneralComponents;->getDefinitivePath(Lcom/winlator/core/GeneralComponents$Type;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/winhandler/MIDIHandler;->loadSoundFont(Ljava/lang/String;)V

    .line 377
    .end local v0    # "soundfont":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private synthetic lambda$killProcess$1(Ljava/lang/String;I)V
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 110
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 111
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 112
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 114
    .local v1, "bytes":[B
    array-length v2, v1

    const/16 v3, 0xf7

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 115
    .local v2, "minLength":I
    iget-object v3, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 116
    iget-object v3, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 117
    .end local v1    # "bytes":[B
    .end local v2    # "minLength":I
    goto :goto_0

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 120
    const/16 v0, 0x1f0a

    invoke-virtual {p0, v0}, Lcom/winlator/winhandler/WinHandler;->sendPacket(I)Z

    .line 121
    return-void
.end method

.method private synthetic lambda$listProcesses$2()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 127
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 128
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 130
    const/16 v0, 0x1f0a

    invoke-virtual {p0, v0}, Lcom/winlator/winhandler/WinHandler;->sendPacket(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->onGetProcessInfoListener:Lcom/winlator/winhandler/OnGetProcessInfoListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->onGetProcessInfoListener:Lcom/winlator/winhandler/OnGetProcessInfoListener;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v1, v2}, Lcom/winlator/winhandler/OnGetProcessInfoListener;->onGetProcessInfo(IILcom/winlator/winhandler/ProcessInfo;)V

    .line 133
    :cond_0
    return-void
.end method

.method private synthetic lambda$mouseEvent$5(IIII)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "wheelDelta"    # I

    .line 165
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 166
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 167
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 168
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 169
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    int-to-short v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 170
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    int-to-short v1, p3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 171
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    int-to-short v1, p4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 172
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 173
    const/16 v0, 0x1f0a

    invoke-virtual {p0, v0}, Lcom/winlator/winhandler/WinHandler;->sendPacket(I)Z

    .line 174
    return-void
.end method

.method private synthetic lambda$setClipboardData$10(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 228
    .local v0, "bytes":[B
    array-length v1, v0

    const/16 v2, 0xfb

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 229
    .local v1, "minLength":I
    iget-object v2, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 230
    iget-object v2, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 231
    iget-object v2, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 232
    const/16 v2, 0x1f0a

    invoke-virtual {p0, v2}, Lcom/winlator/winhandler/WinHandler;->sendPacket(I)Z

    .line 233
    return-void
.end method

.method private synthetic lambda$setProcessAffinity$3(Ljava/lang/String;I)V
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "affinityMask"    # I

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 139
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 140
    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 141
    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    array-length v2, v0

    add-int/lit8 v2, v2, 0x9

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 142
    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 143
    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 144
    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    array-length v2, v0

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 145
    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 146
    const/16 v1, 0x1f0a

    invoke-virtual {p0, v1}, Lcom/winlator/winhandler/WinHandler;->sendPacket(I)Z

    .line 147
    return-void
.end method

.method private synthetic lambda$setProcessAffinity$4(II)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "affinityMask"    # I

    .line 152
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 153
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 154
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 155
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 156
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 157
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 158
    const/16 v0, 0x1f0a

    invoke-virtual {p0, v0}, Lcom/winlator/winhandler/WinHandler;->sendPacket(I)Z

    .line 159
    return-void
.end method

.method private synthetic lambda$showDesktop$8()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 208
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 209
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 210
    const/16 v0, 0x1f0a

    invoke-virtual {p0, v0}, Lcom/winlator/winhandler/WinHandler;->sendPacket(I)Z

    .line 211
    return-void
.end method

.method private synthetic lambda$showWindow$9(JI)V
    .locals 2
    .param p1, "handle"    # J
    .param p3, "nCmdShow"    # I

    .line 216
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 217
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 218
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 219
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 220
    const/16 v0, 0x1f0a

    invoke-virtual {p0, v0}, Lcom/winlator/winhandler/WinHandler;->sendPacket(I)Z

    .line 221
    return-void
.end method

.method private synthetic lambda$start$14()V
    .locals 4

    .line 438
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lcom/winlator/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    .line 439
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 440
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    const/16 v3, 0x1f0b

    invoke-direct {v2, v1, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 442
    :goto_0
    iget-boolean v0, p0, Lcom/winlator/winhandler/WinHandler;->running:Z

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->receivePacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 445
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :try_start_1
    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 447
    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 448
    .local v1, "requestCode":B
    iget-object v2, p0, Lcom/winlator/winhandler/WinHandler;->receivePacket:Ljava/net/DatagramPacket;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/winlator/winhandler/WinHandler;->handleRequest(BI)V

    .line 449
    .end local v1    # "requestCode":B
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 452
    :catch_0
    move-exception v0

    :cond_0
    nop

    .line 453
    return-void
.end method

.method private synthetic lambda$startSendThread$12()V
    .locals 2

    .line 282
    nop

    :goto_0
    iget-boolean v0, p0, Lcom/winlator/winhandler/WinHandler;->running:Z

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 284
    :goto_1
    :try_start_0
    iget-boolean v1, p0, Lcom/winlator/winhandler/WinHandler;->initReceived:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 289
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 286
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    :goto_2
    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    .line 289
    :goto_3
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 291
    :cond_1
    return-void
.end method

.method private startSendThread()V
    .locals 2

    .line 281
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda11;-><init>(Lcom/winlator/winhandler/WinHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 292
    return-void
.end method


# virtual methods
.method protected addAction(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 260
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 263
    monitor-exit v0

    .line 264
    return-void

    .line 263
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bringToFront(Ljava/lang/String;)V
    .locals 2
    .param p1, "processName"    # Ljava/lang/String;

    .line 189
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/winlator/winhandler/WinHandler;->bringToFront(Ljava/lang/String;J)V

    .line 190
    return-void
.end method

.method public bringToFront(Ljava/lang/String;J)V
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "handle"    # J

    .line 193
    new-instance v0, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/winhandler/WinHandler;Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Lcom/winlator/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 203
    return-void
.end method

.method public exec(Ljava/lang/String;)V
    .locals 4
    .param p1, "command"    # Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 98
    :cond_0
    const-string v0, " "

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "cmdList":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 100
    .local v1, "filename":Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    aget-object v2, v0, v3

    goto :goto_0

    :cond_1
    const-string v2, ""

    .line 101
    .local v2, "parameters":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/winlator/winhandler/WinHandler;->exec(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public exec(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda8;-><init>(Lcom/winlator/winhandler/WinHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/winlator/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method

.method public getExecutablePath(I)Ljava/lang/String;
    .locals 5
    .param p1, "processId"    # I

    .line 237
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 238
    .local v0, "pathRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0}, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda9;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    iput-object v1, p0, Lcom/winlator/winhandler/WinHandler;->requestCallback:Lcom/winlator/core/Callback;

    .line 239
    new-instance v1, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda10;-><init>(Lcom/winlator/winhandler/WinHandler;I)V

    invoke-virtual {p0, v1}, Lcom/winlator/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 249
    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->requestCallback:Lcom/winlator/core/Callback;

    monitor-enter v1

    .line 251
    :try_start_0
    iget-object v2, p0, Lcom/winlator/winhandler/WinHandler;->requestCallback:Lcom/winlator/core/Callback;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :goto_0
    goto :goto_1

    .line 254
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 253
    :catch_0
    move-exception v2

    goto :goto_0

    .line 254
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/winlator/winhandler/WinHandler;->requestCallback:Lcom/winlator/core/Callback;

    .line 256
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 254
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getMIDIhandler()Lcom/winlator/winhandler/MIDIHandler;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->midiHandler:Lcom/winlator/winhandler/MIDIHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/winlator/winhandler/MIDIHandler;

    invoke-direct {v0, p0}, Lcom/winlator/winhandler/MIDIHandler;-><init>(Lcom/winlator/winhandler/WinHandler;)V

    iput-object v0, p0, Lcom/winlator/winhandler/WinHandler;->midiHandler:Lcom/winlator/winhandler/MIDIHandler;

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->midiHandler:Lcom/winlator/winhandler/MIDIHandler;

    return-object v0
.end method

.method public killProcess(Ljava/lang/String;I)V
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 109
    new-instance v0, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1, p2}, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda14;-><init>(Lcom/winlator/winhandler/WinHandler;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/winlator/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method public listProcesses()V
    .locals 1

    .line 125
    new-instance v0, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/winhandler/WinHandler;)V

    invoke-virtual {p0, v0}, Lcom/winlator/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method public mouseEvent(IIII)V
    .locals 7
    .param p1, "flags"    # I
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "wheelDelta"    # I

    .line 163
    iget-boolean v0, p0, Lcom/winlator/winhandler/WinHandler;->initReceived:Z

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    new-instance v0, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda1;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/winhandler/WinHandler;IIII)V

    invoke-virtual {p0, v0}, Lcom/winlator/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 457
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->gamepadHandler:Lcom/winlator/winhandler/GamepadHandler;

    invoke-virtual {v0, p1}, Lcom/winlator/winhandler/GamepadHandler;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 461
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->gamepadHandler:Lcom/winlator/winhandler/GamepadHandler;

    invoke-virtual {v0, p1}, Lcom/winlator/winhandler/GamepadHandler;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected sendPacket(I)Z
    .locals 4
    .param p1, "port"    # I

    .line 52
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    .line 53
    .local v1, "size":I
    if-nez v1, :cond_0

    return v0

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/winlator/winhandler/WinHandler;->sendPacket:Ljava/net/DatagramPacket;

    iget-object v3, p0, Lcom/winlator/winhandler/WinHandler;->localhost:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 55
    iget-object v2, p0, Lcom/winlator/winhandler/WinHandler;->sendPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v2, p1}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 56
    iget-object v2, p0, Lcom/winlator/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    iget-object v3, p0, Lcom/winlator/winhandler/WinHandler;->sendPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    const/4 v0, 0x1

    return v0

    .line 59
    .end local v1    # "size":I
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/io/IOException;
    return v0
.end method

.method protected sendPacket(I[B)Z
    .locals 2
    .param p1, "port"    # I
    .param p2, "data"    # [B

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, p2}, Ljava/net/DatagramPacket;->setData([B)V

    .line 67
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendPacket:Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->localhost:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 68
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 69
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->sendPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 70
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->sendPacket:Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/winlator/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setData([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    const/4 v0, 0x1

    return v0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public setClipboardData(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 225
    new-instance v0, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/winhandler/WinHandler;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/winlator/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 234
    return-void
.end method

.method public setOnGetProcessInfoListener(Lcom/winlator/winhandler/OnGetProcessInfoListener;)V
    .locals 2
    .param p1, "onGetProcessInfoListener"    # Lcom/winlator/winhandler/OnGetProcessInfoListener;

    .line 271
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 272
    :try_start_0
    iput-object p1, p0, Lcom/winlator/winhandler/WinHandler;->onGetProcessInfoListener:Lcom/winlator/winhandler/OnGetProcessInfoListener;

    .line 273
    monitor-exit v0

    .line 274
    return-void

    .line 273
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setOnPreExecListener(Lcom/winlator/winhandler/OnPreExecListener;)V
    .locals 0
    .param p1, "onPreExecListener"    # Lcom/winlator/winhandler/OnPreExecListener;

    .line 277
    iput-object p1, p0, Lcom/winlator/winhandler/WinHandler;->onPreExecListener:Lcom/winlator/winhandler/OnPreExecListener;

    .line 278
    return-void
.end method

.method public setProcessAffinity(II)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "affinityMask"    # I

    .line 151
    new-instance v0, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda5;-><init>(Lcom/winlator/winhandler/WinHandler;II)V

    invoke-virtual {p0, v0}, Lcom/winlator/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method public setProcessAffinity(Ljava/lang/String;I)V
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "affinityMask"    # I

    .line 137
    new-instance v0, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda6;-><init>(Lcom/winlator/winhandler/WinHandler;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/winlator/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method public showDesktop()V
    .locals 1

    .line 206
    new-instance v0, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/winhandler/WinHandler;)V

    invoke-virtual {p0, v0}, Lcom/winlator/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method

.method public showWindow(JI)V
    .locals 1
    .param p1, "handle"    # J
    .param p3, "nCmdShow"    # I

    .line 215
    new-instance v0, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda12;-><init>(Lcom/winlator/winhandler/WinHandler;JI)V

    invoke-virtual {p0, v0}, Lcom/winlator/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 222
    return-void
.end method

.method public start()V
    .locals 2

    .line 425
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/winhandler/WinHandler;->localhost:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    goto :goto_1

    .line 427
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/net/UnknownHostException;
    :try_start_1
    const-string v1, "127.0.0.1"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/winlator/winhandler/WinHandler;->localhost:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 431
    :goto_0
    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0

    .line 434
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/winhandler/WinHandler;->running:Z

    .line 435
    invoke-direct {p0}, Lcom/winlator/winhandler/WinHandler;->startSendThread()V

    .line 436
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/winlator/winhandler/WinHandler$$ExternalSyntheticLambda7;-><init>(Lcom/winlator/winhandler/WinHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 454
    return-void
.end method

.method public stop()V
    .locals 3

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/winhandler/WinHandler;->running:Z

    .line 297
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 299
    iput-object v1, p0, Lcom/winlator/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 303
    :try_start_0
    iget-object v2, p0, Lcom/winlator/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 304
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->midiHandler:Lcom/winlator/winhandler/MIDIHandler;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->midiHandler:Lcom/winlator/winhandler/MIDIHandler;

    invoke-virtual {v0}, Lcom/winlator/winhandler/MIDIHandler;->close()V

    .line 308
    iget-object v0, p0, Lcom/winlator/winhandler/WinHandler;->midiHandler:Lcom/winlator/winhandler/MIDIHandler;

    invoke-virtual {v0}, Lcom/winlator/winhandler/MIDIHandler;->destroy()V

    .line 309
    iput-object v1, p0, Lcom/winlator/winhandler/WinHandler;->midiHandler:Lcom/winlator/winhandler/MIDIHandler;

    .line 311
    :cond_1
    return-void

    .line 304
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
