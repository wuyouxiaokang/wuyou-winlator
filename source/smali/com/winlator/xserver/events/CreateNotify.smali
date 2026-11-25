.class public Lcom/winlator/xserver/events/CreateNotify;
.super Lcom/winlator/xserver/events/Event;
.source "CreateNotify.java"


# instance fields
.field private final parent:Lcom/winlator/xserver/Window;

.field private final window:Lcom/winlator/xserver/Window;


# direct methods
.method public constructor <init>(Lcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;)V
    .locals 1
    .param p1, "parent"    # Lcom/winlator/xserver/Window;
    .param p2, "window"    # Lcom/winlator/xserver/Window;

    .line 14
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/winlator/xserver/events/Event;-><init>(I)V

    .line 15
    iput-object p1, p0, Lcom/winlator/xserver/events/CreateNotify;->parent:Lcom/winlator/xserver/Window;

    .line 16
    iput-object p2, p0, Lcom/winlator/xserver/events/CreateNotify;->window:Lcom/winlator/xserver/Window;

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
    iget-object v2, p0, Lcom/winlator/xserver/events/CreateNotify;->parent:Lcom/winlator/xserver/Window;

    iget v2, v2, Lcom/winlator/xserver/XResource;->id:I

    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 26
    iget-object v2, p0, Lcom/winlator/xserver/events/CreateNotify;->window:Lcom/winlator/xserver/Window;

    iget v2, v2, Lcom/winlator/xserver/XResource;->id:I

    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 27
    iget-object v2, p0, Lcom/winlator/xserver/events/CreateNotify;->window:Lcom/winlator/xserver/Window;

    invoke-virtual {v2}, Lcom/winlator/xserver/Window;->getX()S

    move-result v2

    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 28
    iget-object v2, p0, Lcom/winlator/xserver/events/CreateNotify;->window:Lcom/winlator/xserver/Window;

    invoke-virtual {v2}, Lcom/winlator/xserver/Window;->getY()S

    move-result v2

    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 29
    iget-object v2, p0, Lcom/winlator/xserver/events/CreateNotify;->window:Lcom/winlator/xserver/Window;

    invoke-virtual {v2}, Lcom/winlator/xserver/Window;->getWidth()S

    move-result v2

    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 30
    iget-object v2, p0, Lcom/winlator/xserver/events/CreateNotify;->window:Lcom/winlator/xserver/Window;

    invoke-virtual {v2}, Lcom/winlator/xserver/Window;->getHeight()S

    move-result v2

    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 31
    iget-object v2, p0, Lcom/winlator/xserver/events/CreateNotify;->window:Lcom/winlator/xserver/Window;

    invoke-virtual {v2}, Lcom/winlator/xserver/Window;->getBorderWidth()S

    move-result v2

    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 32
    iget-object v2, p0, Lcom/winlator/xserver/events/CreateNotify;->window:Lcom/winlator/xserver/Window;

    iget-object v2, v2, Lcom/winlator/xserver/Window;->attributes:Lcom/winlator/xserver/WindowAttributes;

    invoke-virtual {v2}, Lcom/winlator/xserver/WindowAttributes;->isOverrideRedirect()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 33
    const/16 v1, 0x9

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 35
    .end local v0    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_1
    return-void

    .line 21
    .restart local v0    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lcom/winlator/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method
