.class public Lcom/winlator/renderer/material/WindowMaterial;
.super Lcom/winlator/renderer/material/ShaderMaterial;
.source "WindowMaterial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/renderer/material/WindowMaterial$Uniforms;
    }
.end annotation


# instance fields
.field public final uniforms:Lcom/winlator/renderer/material/WindowMaterial$Uniforms;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/winlator/renderer/material/ShaderMaterial;-><init>()V

    .line 4
    new-instance v0, Lcom/winlator/renderer/material/WindowMaterial$Uniforms;

    invoke-direct {v0}, Lcom/winlator/renderer/material/WindowMaterial$Uniforms;-><init>()V

    iput-object v0, p0, Lcom/winlator/renderer/material/WindowMaterial;->uniforms:Lcom/winlator/renderer/material/WindowMaterial$Uniforms;

    return-void
.end method


# virtual methods
.method protected getFragmentShader()Ljava/lang/String;
    .locals 3

    .line 34
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "precision mediump float;"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "uniform sampler2D windowTexture;"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "uniform float noAlpha;"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "in vec2 vUV;"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "layout(location = 0) out vec4 outFragColor;"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "void main() {"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "vec4 texelColor = texture(windowTexture, vUV);"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "outFragColor = vec4(texelColor.rgb, max(texelColor.a, noAlpha));"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "}"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "\n"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getVertexShader()Ljava/lang/String;
    .locals 3

    .line 16
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "uniform float xform[6];"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "uniform vec2 viewSize;"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "uniform bool flipY;"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "in vec2 position;"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "out vec2 vUV;"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "void main() {"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "vUV = vec2(position.x, flipY ? (1.0 - position.y) : position.y);"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "vec2 transformedPos = applyXForm(position, xform);"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "gl_Position = vec4(2.0 * transformedPos.x / viewSize.x - 1.0, 1.0 - 2.0 * transformedPos.y / viewSize.y, 0.0, 1.0);"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "}"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "\n"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
