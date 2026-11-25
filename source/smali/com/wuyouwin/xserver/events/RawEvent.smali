.class public Lcom/wuyouwin/xserver/events/RawEvent;
.super Lcom/wuyouwin/xserver/events/Event;
.source "RawEvent.java"


# instance fields
.field private final data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 12
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lcom/wuyouwin/xserver/events/Event;-><init>(I)V

    .line 13
    iput-object p1, p0, Lcom/wuyouwin/xserver/events/RawEvent;->data:[B

    .line 14
    return-void
.end method


# virtual methods
.method public send(SLcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 3
    .param p1, "sequenceNumber"    # S
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 18
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XOutputStream;->lock()Lcom/wuyouwin/xconnector/XStreamLock;

    move-result-object v0

    .line 19
    .local v0, "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :try_start_0
    iget-object v1, p0, Lcom/wuyouwin/xserver/events/RawEvent;->data:[B

    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V

    .line 21
    .end local v0    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 18
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
