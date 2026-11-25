.class public abstract Lcom/wuyouwin/renderer/effects/Effect;
.super Ljava/lang/Object;
.source "Effect.java"


# instance fields
.field private material:Lcom/wuyouwin/renderer/material/ScreenMaterial;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createMaterial()Lcom/wuyouwin/renderer/material/ScreenMaterial;
.end method

.method public getMaterial()Lcom/wuyouwin/renderer/material/ScreenMaterial;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/wuyouwin/renderer/effects/Effect;->material:Lcom/wuyouwin/renderer/material/ScreenMaterial;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/wuyouwin/renderer/effects/Effect;->createMaterial()Lcom/wuyouwin/renderer/material/ScreenMaterial;

    move-result-object v0

    iput-object v0, p0, Lcom/wuyouwin/renderer/effects/Effect;->material:Lcom/wuyouwin/renderer/material/ScreenMaterial;

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/renderer/effects/Effect;->material:Lcom/wuyouwin/renderer/material/ScreenMaterial;

    return-object v0
.end method
