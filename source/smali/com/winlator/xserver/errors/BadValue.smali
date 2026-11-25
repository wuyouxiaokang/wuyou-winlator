.class public Lcom/winlator/xserver/errors/BadValue;
.super Lcom/winlator/xserver/errors/XRequestError;
.source "BadValue.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "data"    # I

    .line 5
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/winlator/xserver/errors/XRequestError;-><init>(II)V

    .line 6
    return-void
.end method
