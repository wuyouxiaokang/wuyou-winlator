.class public Lcom/winlator/xserver/events/PresentIdleNotify;
.super Lcom/winlator/xserver/events/Event;
.source "PresentIdleNotify.java"


# instance fields
.field private final eventId:I

.field private final idleFence:I

.field private final pixmapId:I

.field private final presentExtension:Lcom/winlator/xserver/extensions/PresentExtension;

.field private final serial:I

.field private final windowId:I


# direct methods
.method public constructor <init>(Lcom/winlator/xserver/extensions/PresentExtension;ILcom/winlator/xserver/Window;Lcom/winlator/xserver/Pixmap;II)V
    .locals 1
    .param p1, "presentExtension"    # Lcom/winlator/xserver/extensions/PresentExtension;
    .param p2, "eventId"    # I
    .param p3, "window"    # Lcom/winlator/xserver/Window;
    .param p4, "pixmap"    # Lcom/winlator/xserver/Pixmap;
    .param p5, "serial"    # I
    .param p6, "idleFence"    # I

    .line 21
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lcom/winlator/xserver/events/Event;-><init>(I)V

    .line 22
    iput-object p1, p0, Lcom/winlator/xserver/events/PresentIdleNotify;->presentExtension:Lcom/winlator/xserver/extensions/PresentExtension;

    .line 23
    iput p2, p0, Lcom/winlator/xserver/events/PresentIdleNotify;->eventId:I

    .line 24
    iget v0, p3, Lcom/winlator/xserver/XResource;->id:I

    iput v0, p0, Lcom/winlator/xserver/events/PresentIdleNotify;->windowId:I

    .line 25
    iget v0, p4, Lcom/winlator/xserver/XResource;->id:I

    iput v0, p0, Lcom/winlator/xserver/events/PresentIdleNotify;->pixmapId:I

    .line 26
    iput p5, p0, Lcom/winlator/xserver/events/PresentIdleNotify;->serial:I

    .line 27
    iput p6, p0, Lcom/winlator/xserver/events/PresentIdleNotify;->idleFence:I

    .line 28
    return-void
.end method


# virtual methods
.method public send(SLcom/winlator/xconnector/XOutputStream;)V
    .locals 3
    .param p1, "sequenceNumber"    # S
    .param p2, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 32
    invoke-virtual {p2}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v0

    .line 33
    .local v0, "lock":Lcom/winlator/xconnector/XStreamLock;
    :try_start_0
    iget-byte v1, p0, Lcom/winlator/xserver/events/Event;->code:B

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 34
    iget-object v1, p0, Lcom/winlator/xserver/events/PresentIdleNotify;->presentExtension:Lcom/winlator/xserver/extensions/PresentExtension;

    invoke-virtual {v1}, Lcom/winlator/xserver/extensions/Extension;->getMajorOpcode()B

    move-result v1

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 35
    invoke-virtual {p2, p1}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 36
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 37
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 38
    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 39
    iget v1, p0, Lcom/winlator/xserver/events/PresentIdleNotify;->eventId:I

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 40
    iget v1, p0, Lcom/winlator/xserver/events/PresentIdleNotify;->windowId:I

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 41
    iget v1, p0, Lcom/winlator/xserver/events/PresentIdleNotify;->serial:I

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 42
    iget v1, p0, Lcom/winlator/xserver/events/PresentIdleNotify;->pixmapId:I

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 43
    iget v1, p0, Lcom/winlator/xserver/events/PresentIdleNotify;->idleFence:I

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 45
    .end local v0    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 32
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
