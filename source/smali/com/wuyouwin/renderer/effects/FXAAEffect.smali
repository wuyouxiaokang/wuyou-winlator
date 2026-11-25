.class public Lcom/wuyouwin/renderer/effects/FXAAEffect;
.super Lcom/wuyouwin/renderer/effects/Effect;
.source "FXAAEffect.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/wuyouwin/renderer/effects/Effect;-><init>()V

    return-void
.end method


# virtual methods
.method public createMaterial()Lcom/wuyouwin/renderer/material/ScreenMaterial;
    .locals 1

    .line 8
    new-instance v0, Lcom/wuyouwin/renderer/effects/FXAAEffect$1;

    invoke-direct {v0, p0}, Lcom/wuyouwin/renderer/effects/FXAAEffect$1;-><init>(Lcom/wuyouwin/renderer/effects/FXAAEffect;)V

    return-object v0
.end method
