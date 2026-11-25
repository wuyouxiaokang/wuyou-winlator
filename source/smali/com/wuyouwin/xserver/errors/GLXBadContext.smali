.class public Lcom/wuyouwin/xserver/errors/GLXBadContext;
.super Lcom/wuyouwin/xserver/errors/XRequestError;
.source "GLXBadContext.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    const/16 v0, -0x80

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/wuyouwin/xserver/errors/XRequestError;-><init>(II)V

    .line 6
    return-void
.end method
