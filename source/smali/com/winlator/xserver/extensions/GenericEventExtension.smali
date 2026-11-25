.class public Lcom/winlator/xserver/extensions/GenericEventExtension;
.super Lcom/winlator/xserver/extensions/Extension;
.source "GenericEventExtension.java"


# direct methods
.method public constructor <init>(Lcom/winlator/xserver/XServer;B)V
    .locals 0
    .param p1, "xServer"    # Lcom/winlator/xserver/XServer;
    .param p2, "majorOpcode"    # B

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/winlator/xserver/extensions/Extension;-><init>(Lcom/winlator/xserver/XServer;B)V

    .line 21
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 25
    const-string v0, "Generic Event Extension"

    return-object v0
.end method

.method public handleRequest(Lcom/winlator/xserver/XClient;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xconnector/XOutputStream;)V
    .locals 5
    .param p1, "client"    # Lcom/winlator/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 30
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->getRequestData()B

    move-result v0

    .line 31
    .local v0, "opcode":I
    if-nez v0, :cond_2

    .line 32
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XInputStream;->skip(I)V

    .line 34
    invoke-virtual {p3}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v1

    .line 35
    .local v1, "lock":Lcom/winlator/xconnector/XStreamLock;
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p3, v2}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 36
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 37
    invoke-virtual {p1}, Lcom/winlator/xserver/XClient;->getSequenceNumber()S

    move-result v4

    invoke-virtual {p3, v4}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 38
    invoke-virtual {p3, v3}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 39
    invoke-virtual {p3, v2}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 40
    invoke-virtual {p3, v3}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 41
    const/16 v2, 0x14

    invoke-virtual {p3, v2}, Lcom/winlator/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 43
    .end local v1    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 34
    .restart local v1    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Lcom/winlator/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2

    .line 31
    .end local v1    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_2
    new-instance v1, Lcom/winlator/xserver/errors/BadImplementation;

    invoke-direct {v1}, Lcom/winlator/xserver/errors/BadImplementation;-><init>()V

    throw v1
.end method
