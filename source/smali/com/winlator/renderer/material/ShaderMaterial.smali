.class public abstract Lcom/winlator/renderer/material/ShaderMaterial;
.super Ljava/lang/Object;
.source "ShaderMaterial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/renderer/material/ShaderMaterial$Uniform;
    }
.end annotation


# instance fields
.field public programId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static compileShaders(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "vertexShader"    # Ljava/lang/String;
    .param p1, "fragmentShader"    # Ljava/lang/String;

    .line 20
    const-string v0, "void main() {"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 21
    .local v0, "beginIndex":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "vec2 applyXForm(vec2 p, float xform[6]) {\nreturn vec2(xform[0] * p.x + xform[2] * p.y + xform[4], xform[1] * p.x + xform[3] * p.y + xform[5]);\n}\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#version 300 es\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 30
    .local v1, "programId":I
    const/4 v3, 0x1

    new-array v3, v3, [I

    .line 32
    .local v3, "compiled":[I
    const v4, 0x8b31

    invoke-static {v4}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v4

    .line 33
    .local v4, "vertexShaderId":I
    invoke-static {v4, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 34
    invoke-static {v4}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 36
    const v5, 0x8b81

    invoke-static {v4, v5, v3, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 37
    aget v6, v3, v2

    if-eqz v6, :cond_1

    .line 40
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 42
    const v6, 0x8b30

    invoke-static {v6}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v6

    .line 43
    .local v6, "fragmentShaderId":I
    invoke-static {v6, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 44
    invoke-static {v6}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 46
    invoke-static {v6, v5, v3, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 47
    aget v2, v3, v2

    if-eqz v2, :cond_0

    .line 50
    invoke-static {v1, v6}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 52
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 54
    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 55
    invoke-static {v6}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 56
    return v1

    .line 48
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not compile fragment shader: \n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 38
    .end local v6    # "fragmentShaderId":I
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not compile vertex shader: \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getUniformLocation(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;)I
    .locals 2
    .param p1, "uniform"    # Lcom/winlator/renderer/material/ShaderMaterial$Uniform;

    .line 73
    iget v0, p1, Lcom/winlator/renderer/material/ShaderMaterial$Uniform;->location:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/winlator/renderer/material/ShaderMaterial$Uniform;->location:I

    return v0

    .line 74
    :cond_0
    iget v0, p0, Lcom/winlator/renderer/material/ShaderMaterial;->programId:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/winlator/renderer/material/ShaderMaterial;->programId:I

    iget-object v1, p1, Lcom/winlator/renderer/material/ShaderMaterial$Uniform;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    :cond_1
    move v0, v1

    .line 75
    .local v0, "location":I
    iput v0, p1, Lcom/winlator/renderer/material/ShaderMaterial$Uniform;->location:I

    .line 76
    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 80
    iget v0, p0, Lcom/winlator/renderer/material/ShaderMaterial;->programId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/renderer/material/ShaderMaterial;->programId:I

    .line 82
    return-void
.end method

.method protected abstract getFragmentShader()Ljava/lang/String;
.end method

.method protected abstract getVertexShader()Ljava/lang/String;
.end method

.method public setUniformBool(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;Z)V
    .locals 0
    .param p1, "uniform"    # Lcom/winlator/renderer/material/ShaderMaterial$Uniform;
    .param p2, "value"    # Z

    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/winlator/renderer/material/ShaderMaterial;->setUniformInt(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;I)V

    .line 106
    return-void
.end method

.method public setUniformColor(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;I)V
    .locals 5
    .param p1, "uniform"    # Lcom/winlator/renderer/material/ShaderMaterial$Uniform;
    .param p2, "color"    # I

    .line 85
    invoke-direct {p0, p1}, Lcom/winlator/renderer/material/ShaderMaterial;->getUniformLocation(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;)I

    move-result v0

    .line 86
    .local v0, "location":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3b808081

    mul-float/2addr v1, v2

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v0, v1, v3, v4}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 87
    :cond_0
    return-void
.end method

.method public setUniformFloat(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;F)V
    .locals 2
    .param p1, "uniform"    # Lcom/winlator/renderer/material/ShaderMaterial$Uniform;
    .param p2, "value"    # F

    .line 90
    invoke-direct {p0, p1}, Lcom/winlator/renderer/material/ShaderMaterial;->getUniformLocation(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;)I

    move-result v0

    .line 91
    .local v0, "location":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 92
    :cond_0
    return-void
.end method

.method public setUniformFloatArray(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;[F)V
    .locals 3
    .param p1, "uniform"    # Lcom/winlator/renderer/material/ShaderMaterial$Uniform;
    .param p2, "values"    # [F

    .line 95
    invoke-direct {p0, p1}, Lcom/winlator/renderer/material/ShaderMaterial;->getUniformLocation(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;)I

    move-result v0

    .line 96
    .local v0, "location":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 97
    :cond_0
    return-void
.end method

.method public setUniformInt(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;I)V
    .locals 2
    .param p1, "uniform"    # Lcom/winlator/renderer/material/ShaderMaterial$Uniform;
    .param p2, "value"    # I

    .line 100
    invoke-direct {p0, p1}, Lcom/winlator/renderer/material/ShaderMaterial;->getUniformLocation(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;)I

    move-result v0

    .line 101
    .local v0, "location":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 102
    :cond_0
    return-void
.end method

.method public setUniformVec2(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;FF)V
    .locals 2
    .param p1, "uniform"    # Lcom/winlator/renderer/material/ShaderMaterial$Uniform;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 109
    invoke-direct {p0, p1}, Lcom/winlator/renderer/material/ShaderMaterial;->getUniformLocation(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;)I

    move-result v0

    .line 110
    .local v0, "location":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {v0, p2, p3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 111
    :cond_0
    return-void
.end method

.method public use()V
    .locals 2

    .line 68
    iget v0, p0, Lcom/winlator/renderer/material/ShaderMaterial;->programId:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/winlator/renderer/material/ShaderMaterial;->getVertexShader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/winlator/renderer/material/ShaderMaterial;->getFragmentShader()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/winlator/renderer/material/ShaderMaterial;->compileShaders(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/winlator/renderer/material/ShaderMaterial;->programId:I

    .line 69
    :cond_0
    iget v0, p0, Lcom/winlator/renderer/material/ShaderMaterial;->programId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 70
    return-void
.end method
