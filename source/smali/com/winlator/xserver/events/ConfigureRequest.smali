.class public Lcom/winlator/xserver/events/ConfigureRequest;
.super Lcom/winlator/xserver/events/Event;
.source "ConfigureRequest.java"


# instance fields
.field private final borderWidth:S

.field private final height:S

.field private final parent:Lcom/winlator/xserver/Window;

.field private final sibling:Lcom/winlator/xserver/Window;

.field private final stackMode:Lcom/winlator/xserver/Window$StackMode;

.field private final valueMask:Lcom/winlator/core/Bitmask;

.field private final width:S

.field private final window:Lcom/winlator/xserver/Window;

.field private final x:S

.field private final y:S


# direct methods
.method public constructor <init>(Lcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;SSSSSLcom/winlator/xserver/Window$StackMode;Lcom/winlator/core/Bitmask;)V
    .locals 1
    .param p1, "parent"    # Lcom/winlator/xserver/Window;
    .param p2, "window"    # Lcom/winlator/xserver/Window;
    .param p3, "sibling"    # Lcom/winlator/xserver/Window;
    .param p4, "x"    # S
    .param p5, "y"    # S
    .param p6, "width"    # S
    .param p7, "height"    # S
    .param p8, "borderWidth"    # S
    .param p9, "stackMode"    # Lcom/winlator/xserver/Window$StackMode;
    .param p10, "valueMask"    # Lcom/winlator/core/Bitmask;

    .line 23
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/winlator/xserver/events/Event;-><init>(I)V

    .line 24
    iput-object p1, p0, Lcom/winlator/xserver/events/ConfigureRequest;->parent:Lcom/winlator/xserver/Window;

    .line 25
    iput-object p2, p0, Lcom/winlator/xserver/events/ConfigureRequest;->window:Lcom/winlator/xserver/Window;

    .line 26
    iput-object p3, p0, Lcom/winlator/xserver/events/ConfigureRequest;->sibling:Lcom/winlator/xserver/Window;

    .line 27
    iput-short p4, p0, Lcom/winlator/xserver/events/ConfigureRequest;->x:S

    .line 28
    iput-short p5, p0, Lcom/winlator/xserver/events/ConfigureRequest;->y:S

    .line 29
    iput-short p6, p0, Lcom/winlator/xserver/events/ConfigureRequest;->width:S

    .line 30
    iput-short p7, p0, Lcom/winlator/xserver/events/ConfigureRequest;->height:S

    .line 31
    iput-short p8, p0, Lcom/winlator/xserver/events/ConfigureRequest;->borderWidth:S

    .line 32
    if-eqz p9, :cond_0

    move-object v0, p9

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/winlator/xserver/Window$StackMode;->ABOVE:Lcom/winlator/xserver/Window$StackMode;

    :goto_0
    iput-object v0, p0, Lcom/winlator/xserver/events/ConfigureRequest;->stackMode:Lcom/winlator/xserver/Window$StackMode;

    .line 33
    iput-object p10, p0, Lcom/winlator/xserver/events/ConfigureRequest;->valueMask:Lcom/winlator/core/Bitmask;

    .line 34
    return-void
.end method


# virtual methods
.method public send(SLcom/winlator/xconnector/XOutputStream;)V
    .locals 3
    .param p1, "sequenceNumber"    # S
    .param p2, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 38
    invoke-virtual {p2}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v0

    .line 39
    .local v0, "lock":Lcom/winlator/xconnector/XStreamLock;
    :try_start_0
    iget-byte v1, p0, Lcom/winlator/xserver/events/Event;->code:B

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 40
    iget-object v1, p0, Lcom/winlator/xserver/events/ConfigureRequest;->stackMode:Lcom/winlator/xserver/Window$StackMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 41
    invoke-virtual {p2, p1}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 42
    iget-object v1, p0, Lcom/winlator/xserver/events/ConfigureRequest;->parent:Lcom/winlator/xserver/Window;

    iget v1, v1, Lcom/winlator/xserver/XResource;->id:I

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 43
    iget-object v1, p0, Lcom/winlator/xserver/events/ConfigureRequest;->window:Lcom/winlator/xserver/Window;

    iget v1, v1, Lcom/winlator/xserver/XResource;->id:I

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 44
    iget-object v1, p0, Lcom/winlator/xserver/events/ConfigureRequest;->sibling:Lcom/winlator/xserver/Window;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/winlator/xserver/events/ConfigureRequest;->sibling:Lcom/winlator/xserver/Window;

    iget v1, v1, Lcom/winlator/xserver/XResource;->id:I

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 44
    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 45
    iget-short v1, p0, Lcom/winlator/xserver/events/ConfigureRequest;->x:S

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 46
    iget-short v1, p0, Lcom/winlator/xserver/events/ConfigureRequest;->y:S

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 47
    iget-short v1, p0, Lcom/winlator/xserver/events/ConfigureRequest;->width:S

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 48
    iget-short v1, p0, Lcom/winlator/xserver/events/ConfigureRequest;->height:S

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 49
    iget-short v1, p0, Lcom/winlator/xserver/events/ConfigureRequest;->borderWidth:S

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 50
    iget-object v1, p0, Lcom/winlator/xserver/events/ConfigureRequest;->valueMask:Lcom/winlator/core/Bitmask;

    invoke-virtual {v1}, Lcom/winlator/core/Bitmask;->getBits()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 51
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 53
    .end local v0    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_1
    return-void

    .line 38
    .restart local v0    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :goto_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lcom/winlator/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v1
.end method
