.class public Lcom/winlator/xserver/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"


# instance fields
.field public final client:Lcom/winlator/xserver/XClient;

.field public final eventMask:Lcom/winlator/core/Bitmask;


# direct methods
.method public constructor <init>(Lcom/winlator/xserver/XClient;Lcom/winlator/core/Bitmask;)V
    .locals 0
    .param p1, "client"    # Lcom/winlator/xserver/XClient;
    .param p2, "eventMask"    # Lcom/winlator/core/Bitmask;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/winlator/xserver/EventListener;->client:Lcom/winlator/xserver/XClient;

    .line 14
    iput-object p2, p0, Lcom/winlator/xserver/EventListener;->eventMask:Lcom/winlator/core/Bitmask;

    .line 15
    return-void
.end method


# virtual methods
.method public isInterestedIn(I)Z
    .locals 1
    .param p1, "eventId"    # I

    .line 18
    iget-object v0, p0, Lcom/winlator/xserver/EventListener;->eventMask:Lcom/winlator/core/Bitmask;

    invoke-virtual {v0, p1}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isInterestedIn(Lcom/winlator/core/Bitmask;)Z
    .locals 1
    .param p1, "mask"    # Lcom/winlator/core/Bitmask;

    .line 22
    iget-object v0, p0, Lcom/winlator/xserver/EventListener;->eventMask:Lcom/winlator/core/Bitmask;

    invoke-virtual {v0, p1}, Lcom/winlator/core/Bitmask;->intersects(Lcom/winlator/core/Bitmask;)Z

    move-result v0

    return v0
.end method

.method public sendEvent(Lcom/winlator/xserver/events/Event;)V
    .locals 2
    .param p1, "event"    # Lcom/winlator/xserver/events/Event;

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/winlator/xserver/EventListener;->client:Lcom/winlator/xserver/XClient;

    invoke-virtual {v0}, Lcom/winlator/xserver/XClient;->getSequenceNumber()S

    move-result v0

    iget-object v1, p0, Lcom/winlator/xserver/EventListener;->client:Lcom/winlator/xserver/XClient;

    invoke-virtual {v1}, Lcom/winlator/xserver/XClient;->getOutputStream()Lcom/winlator/xconnector/XOutputStream;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/winlator/xserver/events/Event;->send(SLcom/winlator/xconnector/XOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
