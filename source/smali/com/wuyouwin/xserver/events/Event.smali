.class public abstract Lcom/wuyouwin/xserver/events/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field protected final code:B


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "code"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/wuyouwin/xserver/events/Event;->code:B

    .line 38
    return-void
.end method


# virtual methods
.method public abstract send(SLcom/wuyouwin/xconnector/XOutputStream;)V
.end method
