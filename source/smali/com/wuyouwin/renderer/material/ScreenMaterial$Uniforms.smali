.class public Lcom/wuyouwin/renderer/material/ScreenMaterial$Uniforms;
.super Ljava/lang/Object;
.source "ScreenMaterial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/renderer/material/ScreenMaterial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uniforms"
.end annotation


# instance fields
.field public final flipY:Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

.field public final resolution:Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

.field public final screenTexture:Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

    const-string v1, "resolution"

    invoke-direct {v0, v1}, Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wuyouwin/renderer/material/ScreenMaterial$Uniforms;->resolution:Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

    .line 8
    new-instance v0, Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

    const-string v1, "screenTexture"

    invoke-direct {v0, v1}, Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wuyouwin/renderer/material/ScreenMaterial$Uniforms;->screenTexture:Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

    .line 9
    new-instance v0, Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

    const-string v1, "flipY"

    invoke-direct {v0, v1}, Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wuyouwin/renderer/material/ScreenMaterial$Uniforms;->flipY:Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

    return-void
.end method
