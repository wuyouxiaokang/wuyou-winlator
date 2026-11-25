.class public Lcom/wuyouwin/xserver/errors/BadSHMSegment;
.super Lcom/wuyouwin/xserver/errors/XRequestError;
.source "BadSHMSegment.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .line 5
    const/16 v0, -0x80

    invoke-direct {p0, v0, p1}, Lcom/wuyouwin/xserver/errors/XRequestError;-><init>(II)V

    .line 6
    return-void
.end method
