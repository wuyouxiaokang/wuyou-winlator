.class public Lcom/wuyouwin/xserver/errors/BadAlloc;
.super Lcom/wuyouwin/xserver/errors/XRequestError;
.source "BadAlloc.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/wuyouwin/xserver/errors/XRequestError;-><init>(II)V

    .line 6
    return-void
.end method
