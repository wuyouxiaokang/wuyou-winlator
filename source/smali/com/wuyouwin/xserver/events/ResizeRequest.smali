.class public Lcom/wuyouwin/xserver/events/ResizeRequest;
.super Lcom/wuyouwin/xserver/events/Event;
.source "ResizeRequest.java"


# instance fields
.field private final height:S

.field private final width:S

.field private final window:Lcom/wuyouwin/xserver/Window;


# direct methods
.method public constructor <init>(Lcom/wuyouwin/xserver/Window;SS)V
    .locals 1
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;
    .param p2, "width"    # S
    .param p3, "height"    # S

    .line 15
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/wuyouwin/xserver/events/Event;-><init>(I)V

    .line 16
    iput-object p1, p0, Lcom/wuyouwin/xserver/events/ResizeRequest;->window:Lcom/wuyouwin/xserver/Window;

    .line 17
    iput-short p2, p0, Lcom/wuyouwin/xserver/events/ResizeRequest;->width:S

    .line 18
    iput-short p3, p0, Lcom/wuyouwin/xserver/events/ResizeRequest;->height:S

    .line 19
    return-void
.end method


# virtual methods
.method public send(SLcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 3
    .param p1, "sequenceNumber"    # S
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 23
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XOutputStream;->lock()Lcom/wuyouwin/xconnector/XStreamLock;

    move-result-object v0

    .line 24
    .local v0, "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :try_start_0
    iget-byte v1, p0, Lcom/wuyouwin/xserver/events/Event;->code:B

    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 25
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 26
    invoke-virtual {p2, p1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 27
    iget-object v1, p0, Lcom/wuyouwin/xserver/events/ResizeRequest;->window:Lcom/wuyouwin/xserver/Window;

    iget v1, v1, Lcom/wuyouwin/xserver/XResource;->id:I

    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 28
    iget-short v1, p0, Lcom/wuyouwin/xserver/events/ResizeRequest;->width:S

    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 29
    iget-short v1, p0, Lcom/wuyouwin/xserver/events/ResizeRequest;->height:S

    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 30
    const/16 v1, 0x14

    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V

    .line 32
    .end local v0    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 23
    .restart local v0    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V
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
