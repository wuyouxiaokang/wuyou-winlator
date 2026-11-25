.class Lcom/wuyouwin/renderer/effects/CRTEffect$1;
.super Lcom/wuyouwin/renderer/material/ScreenMaterial;
.source "CRTEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuyouwin/renderer/effects/CRTEffect;->createMaterial()Lcom/wuyouwin/renderer/material/ScreenMaterial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuyouwin/renderer/effects/CRTEffect;


# direct methods
.method constructor <init>(Lcom/wuyouwin/renderer/effects/CRTEffect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wuyouwin/renderer/effects/CRTEffect;

    .line 8
    iput-object p1, p0, Lcom/wuyouwin/renderer/effects/CRTEffect$1;->this$0:Lcom/wuyouwin/renderer/effects/CRTEffect;

    invoke-direct {p0}, Lcom/wuyouwin/renderer/material/ScreenMaterial;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFragmentShader()Ljava/lang/String;
    .locals 3

    .line 11
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "precision highp float;"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "#define CA_AMOUNT 1.0025"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "#define SCANLINE_INTENSITY_X 0.125"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "#define SCANLINE_INTENSITY_Y 0.375"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "#define SCANLINE_SIZE 1024.0"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "uniform sampler2D screenTexture;"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "in vec2 vUV;"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "layout(location = 0) out vec4 outFragColor;"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "void main() {"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "vec4 finalColor = texture(screenTexture, vUV);"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "finalColor.rgb = vec3("

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "texture(screenTexture, (vUV - 0.5) * CA_AMOUNT + 0.5).r,"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "finalColor.g,"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "texture(screenTexture, (vUV - 0.5) / CA_AMOUNT + 0.5).b"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, ");"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "float scanlineX = abs(sin(vUV.x * SCANLINE_SIZE) * 0.5 * SCANLINE_INTENSITY_X);"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "float scanlineY = abs(sin(vUV.y * SCANLINE_SIZE) * 0.5 * SCANLINE_INTENSITY_Y);"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "outFragColor = vec4(mix(finalColor.rgb, vec3(0.0), scanlineX + scanlineY), finalColor.a);"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "}"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "\n"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
