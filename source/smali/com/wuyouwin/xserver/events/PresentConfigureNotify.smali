.class public Lcom/wuyouwin/xserver/events/PresentConfigureNotify;
.super Lcom/wuyouwin/xserver/events/Event;
.source "PresentConfigureNotify.java"


# instance fields
.field private final eventId:I

.field private final height:S

.field private final pixmapFlags:I

.field private final pixmapHeight:S

.field private final pixmapWidth:S

.field private final presentExtension:Lcom/wuyouwin/xserver/extensions/PresentExtension;

.field private final width:S

.field private final windowId:I

.field private final x:S

.field private final y:S


# direct methods
.method public constructor <init>(Lcom/wuyouwin/xserver/extensions/PresentExtension;ILcom/wuyouwin/xserver/Window;I)V
    .locals 1
    .param p1, "presentExtension"    # Lcom/wuyouwin/xserver/extensions/PresentExtension;
    .param p2, "eventId"    # I
    .param p3, "window"    # Lcom/wuyouwin/xserver/Window;
    .param p4, "pixmapFlags"    # I

    .line 24
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lcom/wuyouwin/xserver/events/Event;-><init>(I)V

    .line 25
    iput-object p1, p0, Lcom/wuyouwin/xserver/events/PresentConfigureNotify;->presentExtension:Lcom/wuyouwin/xserver/extensions/PresentExtension;

    .line 26
    iput p2, p0, Lcom/wuyouwin/xserver/events/PresentConfigureNotify;->eventId:I

    .line 27
    iget v0, p3, Lcom/wuyouwin/xserver/XResource;->id:I

    iput v0, p0, Lcom/wuyouwin/xserver/events/PresentConfigureNotify;->windowId:I

    .line 28
    invoke-virtual {p3}, Lcom/wuyouwin/xserver/Window;->getX()S

    move-result v0

    iput-short v0, p0, Lcom/wuyouwin/xserver/events/PresentConfigureNotify;->x:S

    .line 29
    invoke-virtual {p3}, Lcom/wuyouwin/xserver/Window;->getY()S

    move-result v0

    iput-short v0, p0, Lcom/wuyouwin/xserver/events/PresentConfigureNotify;->y:S

    .line 30
    invoke-virtual {p3}, Lcom/wuyouwin/xserver/Window;->getWidth()S

    move-result v0

    iput-short v0, p0, Lcom/wuyouwin/xserver/events/PresentConfigureNotify;->width:S

    .line 31
    invoke-virtual {p3}, Lcom/wuyouwin/xserver/Window;->getHeight()S

    move-result v0

    iput-short v0, p0, Lcom/wuyouwin/xserver/events/PresentConfigureNotify;->height:S

    .line 32
    iget-short v0, p0, Lcom/wuyouwin/xserver/events/PresentConfigureNotify;->width:S

    iput-short v0, p0, Lcom/wuyouwin/xserver/events/PresentConfigureNotify;->pixmapWidth:S

    .line 33
    iget-short v0, p0, Lcom/wuyouwin/xserver/events/PresentConfigureNotify;->height:S

    iput-short v0, p0, Lcom/wuyouwin/xserver/events/PresentConfigureNotify;->pixmapHeight:S

    .line 34
    iput p4, p0, Lcom/wuyouwin/xserver/events/PresentConfigureNotify;->pixmapFlags:I

    .line 35
    return-void
.end method


# virtual methods
.method public send(SLcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 3
    .param p1, "sequenceNumber"    # S
    .param p2, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 39
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XOutputStream;->lock()Lcom/wuyouwin/xconnector/XStreamLock;

    move-result-object v0

    .line 40
    .local v0, "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :try_start_0
    iget-byte v1, p0, Lcom/wuyouwin/xserver/events/Event;->code:B

    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 41
    iget-object v1, p0, Lcom/wuyouwin/xserver/events/PresentConfigureNotify;->presentExtension:Lcom/wuyouwin/xserver/extensions/PresentExtension;

    invoke-virtual {v1}, Lcom/wuyouwin/xserver/extensions/Extension;->getMajorOpcode()B

    move-result v1

    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 42
    invoke-virtual {p2, p1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 43
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 44
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 45
    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 46
    iget v2, p0, Lcom/wuyouwin/xserver/events/PresentConfigureNotify;->eventId:I

    invoke-virtual {p2, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 47
    iget v2, p0, Lcom/wuyouwin/xserver/events/PresentConfigureNotify;->windowId:I

    invoke-virtual {p2, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 48
    iget-short v2, p0, Lcom/wuyouwin/xserver/events/PresentConfigureNotify;->x:S

    invoke-virtual {p2, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 49
    iget-short v2, p0, Lcom/wuyouwin/xserver/events/PresentConfigureNotify;->y:S

    invoke-virtual {p2, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 50
    iget-short v2, p0, Lcom/wuyouwin/xserver/events/PresentConfigureNotify;->width:S

    invoke-virtual {p2, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 51
    iget-short v2, p0, Lcom/wuyouwin/xserver/events/PresentConfigureNotify;->height:S

    invoke-virtual {p2, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 52
    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 53
    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 54
    iget-short v1, p0, Lcom/wuyouwin/xserver/events/PresentConfigureNotify;->pixmapWidth:S

    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 55
    iget-short v1, p0, Lcom/wuyouwin/xserver/events/PresentConfigureNotify;->pixmapHeight:S

    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 56
    iget v1, p0, Lcom/wuyouwin/xserver/events/PresentConfigureNotify;->pixmapFlags:I

    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V

    .line 58
    .end local v0    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 39
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
