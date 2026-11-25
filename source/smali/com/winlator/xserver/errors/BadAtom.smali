.class public Lcom/winlator/xserver/errors/BadAtom;
.super Lcom/winlator/xserver/errors/XRequestError;
.source "BadAtom.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .line 5
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/winlator/xserver/errors/XRequestError;-><init>(II)V

    .line 6
    return-void
.end method
