.class public Lcom/wuyouwin/renderer/material/ScreenMaterial;
.super Lcom/wuyouwin/renderer/material/ShaderMaterial;
.source "ScreenMaterial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/renderer/material/ScreenMaterial$Uniforms;
    }
.end annotation


# instance fields
.field public final uniforms:Lcom/wuyouwin/renderer/material/ScreenMaterial$Uniforms;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/wuyouwin/renderer/material/ShaderMaterial;-><init>()V

    .line 4
    new-instance v0, Lcom/wuyouwin/renderer/material/ScreenMaterial$Uniforms;

    invoke-direct {v0}, Lcom/wuyouwin/renderer/material/ScreenMaterial$Uniforms;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/renderer/material/ScreenMaterial;->uniforms:Lcom/wuyouwin/renderer/material/ScreenMaterial$Uniforms;

    return-void
.end method


# virtual methods
.method protected getFragmentShader()Ljava/lang/String;
    .locals 3

    .line 28
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "precision mediump float;"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "uniform sampler2D screenTexture;"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "in vec2 vUV;"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "layout(location = 0) out vec4 outFragColor;"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "void main() {"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "outFragColor = texture(screenTexture, vUV);"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "}"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "\n"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getVertexShader()Ljava/lang/String;
    .locals 3

    .line 14
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "in vec2 position;"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "out vec2 vUV;"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "uniform bool flipY;"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "void main() {"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "vUV = vec2(position.x, flipY ? (1.0 - position.y) : position.y);"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "gl_Position = vec4(2.0 * position.x - 1.0, 2.0 * position.y - 1.0, 0.0, 1.0);"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "}"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "\n"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
