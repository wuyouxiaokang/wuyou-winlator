.class public Lcom/wuyouwin/renderer/material/WindowMaterial$Uniforms;
.super Ljava/lang/Object;
.source "WindowMaterial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/renderer/material/WindowMaterial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uniforms"
.end annotation


# instance fields
.field public final flipY:Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

.field public final noAlpha:Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

.field public final texture:Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

.field public final viewSize:Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

.field public final xform:Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

    const-string v1, "xform"

    invoke-direct {v0, v1}, Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wuyouwin/renderer/material/WindowMaterial$Uniforms;->xform:Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

    .line 8
    new-instance v0, Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

    const-string v1, "viewSize"

    invoke-direct {v0, v1}, Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wuyouwin/renderer/material/WindowMaterial$Uniforms;->viewSize:Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

    .line 9
    new-instance v0, Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

    const-string v1, "texture"

    invoke-direct {v0, v1}, Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wuyouwin/renderer/material/WindowMaterial$Uniforms;->texture:Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

    .line 10
    new-instance v0, Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

    const-string v1, "noAlpha"

    invoke-direct {v0, v1}, Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wuyouwin/renderer/material/WindowMaterial$Uniforms;->noAlpha:Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

    .line 11
    new-instance v0, Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

    const-string v1, "flipY"

    invoke-direct {v0, v1}, Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wuyouwin/renderer/material/WindowMaterial$Uniforms;->flipY:Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

    return-void
.end method
