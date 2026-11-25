.class public abstract Lcom/winlator/xserver/events/PointerWindowEvent;
.super Lcom/winlator/xserver/events/Event;
.source "PointerWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/xserver/events/PointerWindowEvent$Detail;,
        Lcom/winlator/xserver/events/PointerWindowEvent$Mode;
    }
.end annotation


# instance fields
.field private final child:Lcom/winlator/xserver/Window;

.field private final detail:Lcom/winlator/xserver/events/PointerWindowEvent$Detail;

.field private final event:Lcom/winlator/xserver/Window;

.field private final eventX:S

.field private final eventY:S

.field private final mode:Lcom/winlator/xserver/events/PointerWindowEvent$Mode;

.field private final root:Lcom/winlator/xserver/Window;

.field private final rootX:S

.field private final rootY:S

.field private final sameScreenAndFocus:Z

.field private final state:Lcom/winlator/core/Bitmask;

.field private final timestamp:I


# direct methods
.method public constructor <init>(ILcom/winlator/xserver/events/PointerWindowEvent$Detail;Lcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;SSSSLcom/winlator/core/Bitmask;Lcom/winlator/xserver/events/PointerWindowEvent$Mode;Z)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "detail"    # Lcom/winlator/xserver/events/PointerWindowEvent$Detail;
    .param p3, "root"    # Lcom/winlator/xserver/Window;
    .param p4, "event"    # Lcom/winlator/xserver/Window;
    .param p5, "child"    # Lcom/winlator/xserver/Window;
    .param p6, "rootX"    # S
    .param p7, "rootY"    # S
    .param p8, "eventX"    # S
    .param p9, "eventY"    # S
    .param p10, "state"    # Lcom/winlator/core/Bitmask;
    .param p11, "mode"    # Lcom/winlator/xserver/events/PointerWindowEvent$Mode;
    .param p12, "sameScreenAndFocus"    # Z

    .line 27
    invoke-direct {p0, p1}, Lcom/winlator/xserver/events/Event;-><init>(I)V

    .line 28
    iput-object p2, p0, Lcom/winlator/xserver/events/PointerWindowEvent;->detail:Lcom/winlator/xserver/events/PointerWindowEvent$Detail;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/winlator/xserver/events/PointerWindowEvent;->timestamp:I

    .line 30
    iput-object p3, p0, Lcom/winlator/xserver/events/PointerWindowEvent;->root:Lcom/winlator/xserver/Window;

    .line 31
    iput-object p4, p0, Lcom/winlator/xserver/events/PointerWindowEvent;->event:Lcom/winlator/xserver/Window;

    .line 32
    iput-object p5, p0, Lcom/winlator/xserver/events/PointerWindowEvent;->child:Lcom/winlator/xserver/Window;

    .line 33
    iput-short p6, p0, Lcom/winlator/xserver/events/PointerWindowEvent;->rootX:S

    .line 34
    iput-short p7, p0, Lcom/winlator/xserver/events/PointerWindowEvent;->rootY:S

    .line 35
    iput-short p8, p0, Lcom/winlator/xserver/events/PointerWindowEvent;->eventX:S

    .line 36
    iput-short p9, p0, Lcom/winlator/xserver/events/PointerWindowEvent;->eventY:S

    .line 37
    iput-object p10, p0, Lcom/winlator/xserver/events/PointerWindowEvent;->state:Lcom/winlator/core/Bitmask;

    .line 38
    iput-object p11, p0, Lcom/winlator/xserver/events/PointerWindowEvent;->mode:Lcom/winlator/xserver/events/PointerWindowEvent$Mode;

    .line 39
    iput-boolean p12, p0, Lcom/winlator/xserver/events/PointerWindowEvent;->sameScreenAndFocus:Z

    .line 40
    return-void
.end method


# virtual methods
.method public send(SLcom/winlator/xconnector/XOutputStream;)V
    .locals 3
    .param p1, "sequenceNumber"    # S
    .param p2, "outputStream"    # Lcom/winlator/xconnector/XOutputStream;

    .line 44
    invoke-virtual {p2}, Lcom/winlator/xconnector/XOutputStream;->lock()Lcom/winlator/xconnector/XStreamLock;

    move-result-object v0

    .line 45
    .local v0, "lock":Lcom/winlator/xconnector/XStreamLock;
    :try_start_0
    iget-byte v1, p0, Lcom/winlator/xserver/events/Event;->code:B

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 46
    iget-object v1, p0, Lcom/winlator/xserver/events/PointerWindowEvent;->detail:Lcom/winlator/xserver/events/PointerWindowEvent$Detail;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 47
    invoke-virtual {p2, p1}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 48
    iget v1, p0, Lcom/winlator/xserver/events/PointerWindowEvent;->timestamp:I

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 49
    iget-object v1, p0, Lcom/winlator/xserver/events/PointerWindowEvent;->root:Lcom/winlator/xserver/Window;

    iget v1, v1, Lcom/winlator/xserver/XResource;->id:I

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 50
    iget-object v1, p0, Lcom/winlator/xserver/events/PointerWindowEvent;->event:Lcom/winlator/xserver/Window;

    iget v1, v1, Lcom/winlator/xserver/XResource;->id:I

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 51
    iget-object v1, p0, Lcom/winlator/xserver/events/PointerWindowEvent;->child:Lcom/winlator/xserver/Window;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/winlator/xserver/events/PointerWindowEvent;->child:Lcom/winlator/xserver/Window;

    iget v1, v1, Lcom/winlator/xserver/XResource;->id:I

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 51
    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeInt(I)V

    .line 52
    iget-short v1, p0, Lcom/winlator/xserver/events/PointerWindowEvent;->rootX:S

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 53
    iget-short v1, p0, Lcom/winlator/xserver/events/PointerWindowEvent;->rootY:S

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 54
    iget-short v1, p0, Lcom/winlator/xserver/events/PointerWindowEvent;->eventX:S

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 55
    iget-short v1, p0, Lcom/winlator/xserver/events/PointerWindowEvent;->eventY:S

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 56
    iget-object v1, p0, Lcom/winlator/xserver/events/PointerWindowEvent;->state:Lcom/winlator/core/Bitmask;

    invoke-virtual {v1}, Lcom/winlator/core/Bitmask;->getBits()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeShort(S)V

    .line 57
    iget-object v1, p0, Lcom/winlator/xserver/events/PointerWindowEvent;->mode:Lcom/winlator/xserver/events/PointerWindowEvent$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V

    .line 58
    iget-boolean v1, p0, Lcom/winlator/xserver/events/PointerWindowEvent;->sameScreenAndFocus:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    int-to-byte v1, v2

    invoke-virtual {p2, v1}, Lcom/winlator/xconnector/XOutputStream;->writeByte(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/winlator/xconnector/XStreamLock;->close()V

    .line 60
    .end local v0    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :cond_2
    return-void

    .line 44
    .restart local v0    # "lock":Lcom/winlator/xconnector/XStreamLock;
    :goto_1
    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Lcom/winlator/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v1
.end method
