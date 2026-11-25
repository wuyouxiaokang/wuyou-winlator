.class public Lcom/wuyouwin/xserver/events/PresentCompleteNotify;
.super Lcom/wuyouwin/xserver/events/Event;
.source "PresentCompleteNotify.java"


# instance fields
.field private final eventId:I

.field private final kind:Lcom/wuyouwin/xserver/extensions/PresentExtension$CompleteKind;

.field private final mode:Lcom/wuyouwin/xserver/extensions/PresentExtension$CompleteMode;

.field private final msc:J

.field private final presentExtension:Lcom/wuyouwin/xserver/extensions/PresentExtension;

.field private final serial:I

.field private final ust:J

.field private final windowId:I


# direct methods
.method public constructor <init>(Lcom/wuyouwin/xserver/extensions/PresentExtension;ILcom/wuyouwin/xserver/Window;ILcom/wuyouwin/xserver/extensions/PresentExtension$CompleteKind;Lcom/wuyouwin/xserver/extensions/PresentExtension$CompleteMode;JJ)V
    .locals 1
    .param p1, "presentExtension"    # Lcom/wuyouwin/xserver/extensions/PresentExtension;
    .param p2, "eventId"    # I
    .param p3, "window"    # Lcom/wuyouwin/xserver/Window;
    .param p4, "serial"    # I
    .param p5, "kind"    # Lcom/wuyouwin/xserver/extensions/PresentExtension$CompleteKind;
    .param p6, "mode"    # Lcom/wuyouwin/xserver/extensions/PresentExtension$CompleteMode;
    .param p7, "ust"    # J
    .param p9, "msc"    # J

    .line 22
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lcom/wuyouwin/xserver/events/Event;-><init>(I)V

    .line 23
    iput-object p1, p0, Lcom/wuyouwin/xserver/events/PresentCompleteNotify;->presentExtension:Lcom/wuyouwin/xserver/extensions/PresentExtension;

    .line 24
    iput p2, p0, Lcom/wuyouwin/xserver/events/PresentCompleteNotify;->eventId:I

    .line 25
    iget v0, p3, Lcom/wuyouwin/xserver/XResource;->id:I

    iput v0, p0, Lcom/wuyouwin/xserver/events/PresentCompleteNotify;->windowId:I

    .line 26
    iput p4, p0, Lcom/wuyouwin/xserver/events/PresentCompleteNotify;->serial:I

    .line 27
    iput-object p5, p0, Lcom/wuyouwin/xserver/events/PresentCompleteNotify;->kind:Lcom/wuyouwin/xserver/extensions/PresentExtension$CompleteKind;

    .line 28
    iput-object p6, p0, Lcom/wuyouwin/xserver/events/PresentCompleteNotify;->mode:Lcom/wuyouwin/xserver/extensions/PresentExtension$CompleteMode;

    .line 29
    iput-wide p7, p0, Lcom/wuyouwin/xserver/events/PresentCompleteNotify;->ust:J

    .line 30
    iput-wide p9, p0, Lcom/wuyouwin/xserver/events/PresentCompleteNotify;->msc:J

    .line 31
    return-void
.end method


# virtual methods
.method public send(SLcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 3
    .param p1, "sequenceNumber"    # S
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 35
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XOutputStream;->lock()Lcom/wuyouwin/xconnector/XStreamLock;

    move-result-object v0

    .line 36
    .local v0, "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :try_start_0
    iget-byte v1, p0, Lcom/wuyouwin/xserver/events/Event;->code:B

    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 37
    iget-object v1, p0, Lcom/wuyouwin/xserver/events/PresentCompleteNotify;->presentExtension:Lcom/wuyouwin/xserver/extensions/PresentExtension;

    invoke-virtual {v1}, Lcom/wuyouwin/xserver/extensions/Extension;->getMajorOpcode()B

    move-result v1

    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 38
    invoke-virtual {p2, p1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 39
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 40
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 41
    iget-object v1, p0, Lcom/wuyouwin/xserver/events/PresentCompleteNotify;->kind:Lcom/wuyouwin/xserver/extensions/PresentExtension$CompleteKind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 42
    iget-object v1, p0, Lcom/wuyouwin/xserver/events/PresentCompleteNotify;->mode:Lcom/wuyouwin/xserver/extensions/PresentExtension$CompleteMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 43
    iget v1, p0, Lcom/wuyouwin/xserver/events/PresentCompleteNotify;->eventId:I

    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 44
    iget v1, p0, Lcom/wuyouwin/xserver/events/PresentCompleteNotify;->windowId:I

    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 45
    iget v1, p0, Lcom/wuyouwin/xserver/events/PresentCompleteNotify;->serial:I

    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 46
    iget-wide v1, p0, Lcom/wuyouwin/xserver/events/PresentCompleteNotify;->ust:J

    invoke-virtual {p2, v1, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeLong(J)V

    .line 47
    iget-wide v1, p0, Lcom/wuyouwin/xserver/events/PresentCompleteNotify;->msc:J

    invoke-virtual {p2, v1, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V

    .line 49
    .end local v0    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 35
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
