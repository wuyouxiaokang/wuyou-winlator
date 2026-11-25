.class Lcom/wuyouwin/renderer/effects/ColorEffect$1;
.super Lcom/wuyouwin/renderer/material/ScreenMaterial;
.source "ColorEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuyouwin/renderer/effects/ColorEffect;->createMaterial()Lcom/wuyouwin/renderer/material/ScreenMaterial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuyouwin/renderer/effects/ColorEffect;

.field final synthetic val$brightnessUniform:Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

.field final synthetic val$contrastUniform:Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

.field final synthetic val$gammaUniform:Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;


# direct methods
.method constructor <init>(Lcom/wuyouwin/renderer/effects/ColorEffect;Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wuyouwin/renderer/effects/ColorEffect;

    .line 17
    iput-object p1, p0, Lcom/wuyouwin/renderer/effects/ColorEffect$1;->this$0:Lcom/wuyouwin/renderer/effects/ColorEffect;

    iput-object p2, p0, Lcom/wuyouwin/renderer/effects/ColorEffect$1;->val$brightnessUniform:Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

    iput-object p3, p0, Lcom/wuyouwin/renderer/effects/ColorEffect$1;->val$contrastUniform:Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

    iput-object p4, p0, Lcom/wuyouwin/renderer/effects/ColorEffect$1;->val$gammaUniform:Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

    invoke-direct {p0}, Lcom/wuyouwin/renderer/material/ScreenMaterial;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFragmentShader()Ljava/lang/String;
    .locals 3

    .line 20
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "precision highp float;"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "uniform sampler2D screenTexture;"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "uniform float brightness;"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "uniform float contrast;"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "uniform float gamma;"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "in vec2 vUV;"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "layout(location = 0) out vec4 outFragColor;"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "void main() {"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "vec4 texelColor = texture(screenTexture, vUV);"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "vec3 color = texelColor.rgb;"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "color = clamp(color + brightness, 0.0, 1.0);"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "color = (color - 0.5) * clamp(contrast + 1.0, 0.5, 2.0) + 0.5;"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "color = pow(color, vec3(1.0 / gamma));"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "outFragColor = vec4(color, texelColor.a);"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "}"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "\n"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public use()V
    .locals 2

    .line 46
    invoke-super {p0}, Lcom/wuyouwin/renderer/material/ShaderMaterial;->use()V

    .line 48
    iget-object v0, p0, Lcom/wuyouwin/renderer/effects/ColorEffect$1;->val$brightnessUniform:Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

    iget-object v1, p0, Lcom/wuyouwin/renderer/effects/ColorEffect$1;->this$0:Lcom/wuyouwin/renderer/effects/ColorEffect;

    invoke-static {v1}, Lcom/wuyouwin/renderer/effects/ColorEffect;->access$000(Lcom/wuyouwin/renderer/effects/ColorEffect;)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/wuyouwin/renderer/material/ShaderMaterial;->setUniformFloat(Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;F)V

    .line 49
    iget-object v0, p0, Lcom/wuyouwin/renderer/effects/ColorEffect$1;->val$contrastUniform:Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

    iget-object v1, p0, Lcom/wuyouwin/renderer/effects/ColorEffect$1;->this$0:Lcom/wuyouwin/renderer/effects/ColorEffect;

    invoke-static {v1}, Lcom/wuyouwin/renderer/effects/ColorEffect;->access$100(Lcom/wuyouwin/renderer/effects/ColorEffect;)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/wuyouwin/renderer/material/ShaderMaterial;->setUniformFloat(Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;F)V

    .line 50
    iget-object v0, p0, Lcom/wuyouwin/renderer/effects/ColorEffect$1;->val$gammaUniform:Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;

    iget-object v1, p0, Lcom/wuyouwin/renderer/effects/ColorEffect$1;->this$0:Lcom/wuyouwin/renderer/effects/ColorEffect;

    invoke-static {v1}, Lcom/wuyouwin/renderer/effects/ColorEffect;->access$200(Lcom/wuyouwin/renderer/effects/ColorEffect;)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/wuyouwin/renderer/material/ShaderMaterial;->setUniformFloat(Lcom/wuyouwin/renderer/material/ShaderMaterial$Uniform;F)V

    .line 51
    return-void
.end method
