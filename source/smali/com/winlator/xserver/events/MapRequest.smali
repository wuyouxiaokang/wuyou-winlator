.class public Lcom/winlator/xserver/events/MapRequest;
.super Lcom/winlator/xserver/events/Event;
.source "MapRequest.java"


# instance fields
.field private final parent:Lcom/winlator/xserver/Window;

.field private final window:Lcom/winlator/xserver/Window;


# direct methods
.method public constructor <init>(Lcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;)V
    .locals 1
    .param p1, "parent"    # Lcom/winlator/xserver/Window;
    .param p2, "window"    # Lcom/winlator/xserver/Window;

    .line 14
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/winlator/xserver/events/Event;-><init>(I)V

    .line 15
    iput-object p1, p0, Lcom/winlator/xserver/events/MapRequest;->parent:Lcom/winlator/xserver/Window;

    .line 16
    iput-object p2, p0, Lcom/winlator/xserver/events/MapRequest;->window:Lcom/winlator/xserver/Window;

    .line 17
    return-void
.end method


# virtual methods
.method public send(SLcom/winlator/xconnector/XOutputStream;)V
    .locals 3
    .param p1, "sequenceNumber"    # S
    .param p2, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 21
    invoke-virtual {p2}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v0

    .line 22
    .local v0, "lock":Lcom/winlator/xconnector/XStreamLock;
    :try_start_0
    iget-byte v1, p0, Lcom/winlator/xserver/events/Event;->code:B

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 23
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 24
    invoke-virtual {p2, p1}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 25
    iget-object v1, p0, Lcom/winlator/xserver/events/MapRequest;->parent:Lcom/winlator/xserver/Window;

    iget v1, v1, Lcom/winlator/xserver/XResource;->id:I

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 26
    iget-object v1, p0, Lcom/winlator/xserver/events/MapRequest;->window:Lcom/winlator/xserver/Window;

    iget v1, v1, Lcom/winlator/xserver/XResource;->id:I

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 27
    const/16 v1, 0x14

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 29
    .end local v0    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 21
    .restart local v0    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lcom/winlator/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method
