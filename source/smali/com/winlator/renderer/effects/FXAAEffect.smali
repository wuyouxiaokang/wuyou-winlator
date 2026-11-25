.class public Lcom/winlator/renderer/effects/FXAAEffect;
.super Lcom/winlator/renderer/effects/Effect;
.source "FXAAEffect.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/winlator/renderer/effects/Effect;-><init>()V

    return-void
.end method


# virtual methods
.method public createMaterial()Lcom/winlator/renderer/material/ScreenMaterial;
    .locals 1

    .line 8
    new-instance v0, Lcom/winlator/renderer/effects/FXAAEffect$1;

    invoke-direct {v0, p0}, Lcom/winlator/renderer/effects/FXAAEffect$1;-><init>(Lcom/winlator/renderer/effects/FXAAEffect;)V

    return-object v0
.end method
