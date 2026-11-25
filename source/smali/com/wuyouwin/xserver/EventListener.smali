.class public Lcom/wuyouwin/xserver/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"


# instance fields
.field public final client:Lcom/wuyouwin/xserver/XClient;

.field public final eventMask:Lcom/wuyouwin/core/Bitmask;


# direct methods
.method public constructor <init>(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/core/Bitmask;)V
    .locals 0
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "eventMask"    # Lcom/wuyouwin/core/Bitmask;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/wuyouwin/xserver/EventListener;->client:Lcom/wuyouwin/xserver/XClient;

    .line 14
    iput-object p2, p0, Lcom/wuyouwin/xserver/EventListener;->eventMask:Lcom/wuyouwin/core/Bitmask;

    .line 15
    return-void
.end method


# virtual methods
.method public isInterestedIn(I)Z
    .locals 1
    .param p1, "eventId"    # I

    .line 18
    iget-object v0, p0, Lcom/wuyouwin/xserver/EventListener;->eventMask:Lcom/wuyouwin/core/Bitmask;

    invoke-virtual {v0, p1}, Lcom/wuyouwin/core/Bitmask;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isInterestedIn(Lcom/wuyouwin/core/Bitmask;)Z
    .locals 1
    .param p1, "mask"    # Lcom/wuyouwin/core/Bitmask;

    .line 22
    iget-object v0, p0, Lcom/wuyouwin/xserver/EventListener;->eventMask:Lcom/wuyouwin/core/Bitmask;

    invoke-virtual {v0, p1}, Lcom/wuyouwin/core/Bitmask;->intersects(Lcom/wuyouwin/core/Bitmask;)Z

    move-result v0

    return v0
.end method

.method public sendEvent(Lcom/wuyouwin/xserver/events/Event;)V
    .locals 2
    .param p1, "event"    # Lcom/wuyouwin/xserver/events/Event;

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/wuyouwin/xserver/EventListener;->client:Lcom/wuyouwin/xserver/XClient;

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/XClient;->getSequenceNumber()S

    move-result v0

    iget-object v1, p0, Lcom/wuyouwin/xserver/EventListener;->client:Lcom/wuyouwin/xserver/XClient;

    invoke-virtual {v1}, Lcom/wuyouwin/xserver/XClient;->getOutputStream()Lcom/wuyouwin/xconnector/XOutputStream;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wuyouwin/xserver/events/Event;->send(SLcom/wuyouwin/xconnector/XOutputStream;)V
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
