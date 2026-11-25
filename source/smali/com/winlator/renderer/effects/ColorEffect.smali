.class public Lcom/winlator/renderer/effects/ColorEffect;
.super Lcom/winlator/renderer/effects/Effect;
.source "ColorEffect.java"


# instance fields
.field private brightness:F

.field private contrast:F

.field private gamma:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/winlator/renderer/effects/Effect;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/renderer/effects/ColorEffect;->brightness:F

    .line 8
    iput v0, p0, Lcom/winlator/renderer/effects/ColorEffect;->contrast:F

    .line 9
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/winlator/renderer/effects/ColorEffect;->gamma:F

    return-void
.end method

.method static synthetic access$000(Lcom/winlator/renderer/effects/ColorEffect;)F
    .locals 1
    .param p0, "x0"    # Lcom/winlator/renderer/effects/ColorEffect;

    .line 6
    iget v0, p0, Lcom/winlator/renderer/effects/ColorEffect;->brightness:F

    return v0
.end method

.method static synthetic access$100(Lcom/winlator/renderer/effects/ColorEffect;)F
    .locals 1
    .param p0, "x0"    # Lcom/winlator/renderer/effects/ColorEffect;

    .line 6
    iget v0, p0, Lcom/winlator/renderer/effects/ColorEffect;->contrast:F

    return v0
.end method

.method static synthetic access$200(Lcom/winlator/renderer/effects/ColorEffect;)F
    .locals 1
    .param p0, "x0"    # Lcom/winlator/renderer/effects/ColorEffect;

    .line 6
    iget v0, p0, Lcom/winlator/renderer/effects/ColorEffect;->gamma:F

    return v0
.end method


# virtual methods
.method public createMaterial()Lcom/winlator/renderer/material/ScreenMaterial;
    .locals 4

    .line 13
    new-instance v0, Lcom/winlator/renderer/material/ShaderMaterial$Uniform;

    const-string v1, "brightness"

    invoke-direct {v0, v1}, Lcom/winlator/renderer/material/ShaderMaterial$Uniform;-><init>(Ljava/lang/String;)V

    .line 14
    .local v0, "brightnessUniform":Lcom/winlator/renderer/material/ShaderMaterial$Uniform;
    new-instance v1, Lcom/winlator/renderer/material/ShaderMaterial$Uniform;

    const-string v2, "contrast"

    invoke-direct {v1, v2}, Lcom/winlator/renderer/material/ShaderMaterial$Uniform;-><init>(Ljava/lang/String;)V

    .line 15
    .local v1, "contrastUniform":Lcom/winlator/renderer/material/ShaderMaterial$Uniform;
    new-instance v2, Lcom/winlator/renderer/material/ShaderMaterial$Uniform;

    const-string v3, "gamma"

    invoke-direct {v2, v3}, Lcom/winlator/renderer/material/ShaderMaterial$Uniform;-><init>(Ljava/lang/String;)V

    .line 17
    .local v2, "gammaUniform":Lcom/winlator/renderer/material/ShaderMaterial$Uniform;
    new-instance v3, Lcom/winlator/renderer/effects/ColorEffect$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/winlator/renderer/effects/ColorEffect$1;-><init>(Lcom/winlator/renderer/effects/ColorEffect;Lcom/winlator/renderer/material/ShaderMaterial$Uniform;Lcom/winlator/renderer/material/ShaderMaterial$Uniform;Lcom/winlator/renderer/material/ShaderMaterial$Uniform;)V

    return-object v3
.end method

.method public getBrightness()F
    .locals 1

    .line 56
    iget v0, p0, Lcom/winlator/renderer/effects/ColorEffect;->brightness:F

    return v0
.end method

.method public getContrast()F
    .locals 1

    .line 64
    iget v0, p0, Lcom/winlator/renderer/effects/ColorEffect;->contrast:F

    return v0
.end method

.method public getGamma()F
    .locals 1

    .line 72
    iget v0, p0, Lcom/winlator/renderer/effects/ColorEffect;->gamma:F

    return v0
.end method

.method public setBrightness(F)V
    .locals 0
    .param p1, "brightness"    # F

    .line 60
    iput p1, p0, Lcom/winlator/renderer/effects/ColorEffect;->brightness:F

    .line 61
    return-void
.end method

.method public setContrast(F)V
    .locals 0
    .param p1, "contrast"    # F

    .line 68
    iput p1, p0, Lcom/winlator/renderer/effects/ColorEffect;->contrast:F

    .line 69
    return-void
.end method

.method public setGamma(F)V
    .locals 0
    .param p1, "gamma"    # F

    .line 76
    iput p1, p0, Lcom/winlator/renderer/effects/ColorEffect;->gamma:F

    .line 77
    return-void
.end method
