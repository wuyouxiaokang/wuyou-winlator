.class public Lcom/winlator/renderer/EffectComposer;
.super Ljava/lang/Object;
.source "EffectComposer.java"


# instance fields
.field private final effects:Ljava/util/ArrayList;

.field private readBuffer:Lcom/winlator/renderer/RenderTarget;

.field private final renderer:Lcom/winlator/renderer/GLRenderer;

.field private writeBuffer:Lcom/winlator/renderer/RenderTarget;


# direct methods
.method public constructor <init>(Lcom/winlator/renderer/GLRenderer;)V
    .locals 1
    .param p1, "renderer"    # Lcom/winlator/renderer/GLRenderer;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/renderer/EffectComposer;->readBuffer:Lcom/winlator/renderer/RenderTarget;

    .line 13
    iput-object v0, p0, Lcom/winlator/renderer/EffectComposer;->writeBuffer:Lcom/winlator/renderer/RenderTarget;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winlator/renderer/EffectComposer;->effects:Ljava/util/ArrayList;

    .line 17
    iput-object p1, p0, Lcom/winlator/renderer/EffectComposer;->renderer:Lcom/winlator/renderer/GLRenderer;

    .line 18
    return-void
.end method

.method private initBuffers()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/winlator/renderer/EffectComposer;->readBuffer:Lcom/winlator/renderer/RenderTarget;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/winlator/renderer/RenderTarget;

    invoke-direct {v0}, Lcom/winlator/renderer/RenderTarget;-><init>()V

    iput-object v0, p0, Lcom/winlator/renderer/EffectComposer;->readBuffer:Lcom/winlator/renderer/RenderTarget;

    .line 65
    iget-object v0, p0, Lcom/winlator/renderer/EffectComposer;->readBuffer:Lcom/winlator/renderer/RenderTarget;

    iget-object v1, p0, Lcom/winlator/renderer/EffectComposer;->renderer:Lcom/winlator/renderer/GLRenderer;

    iget-short v1, v1, Lcom/winlator/renderer/GLRenderer;->surfaceWidth:S

    iget-object v2, p0, Lcom/winlator/renderer/EffectComposer;->renderer:Lcom/winlator/renderer/GLRenderer;

    iget-short v2, v2, Lcom/winlator/renderer/GLRenderer;->surfaceHeight:S

    invoke-virtual {v0, v1, v2}, Lcom/winlator/renderer/RenderTarget;->allocateFramebuffer(II)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/winlator/renderer/EffectComposer;->writeBuffer:Lcom/winlator/renderer/RenderTarget;

    if-nez v0, :cond_1

    .line 69
    new-instance v0, Lcom/winlator/renderer/RenderTarget;

    invoke-direct {v0}, Lcom/winlator/renderer/RenderTarget;-><init>()V

    iput-object v0, p0, Lcom/winlator/renderer/EffectComposer;->writeBuffer:Lcom/winlator/renderer/RenderTarget;

    .line 70
    iget-object v0, p0, Lcom/winlator/renderer/EffectComposer;->writeBuffer:Lcom/winlator/renderer/RenderTarget;

    iget-object v1, p0, Lcom/winlator/renderer/EffectComposer;->renderer:Lcom/winlator/renderer/GLRenderer;

    iget-short v1, v1, Lcom/winlator/renderer/GLRenderer;->surfaceWidth:S

    iget-object v2, p0, Lcom/winlator/renderer/EffectComposer;->renderer:Lcom/winlator/renderer/GLRenderer;

    iget-short v2, v2, Lcom/winlator/renderer/GLRenderer;->surfaceHeight:S

    invoke-virtual {v0, v1, v2}, Lcom/winlator/renderer/RenderTarget;->allocateFramebuffer(II)V

    .line 72
    :cond_1
    return-void
.end method

.method private renderEffect(Lcom/winlator/renderer/effects/Effect;)V
    .locals 5
    .param p1, "effect"    # Lcom/winlator/renderer/effects/Effect;

    .line 48
    invoke-virtual {p1}, Lcom/winlator/renderer/effects/Effect;->getMaterial()Lcom/winlator/renderer/material/ScreenMaterial;

    move-result-object v0

    .line 49
    .local v0, "material":Lcom/winlator/renderer/material/ScreenMaterial;
    invoke-virtual {v0}, Lcom/winlator/renderer/material/ShaderMaterial;->use()V

    .line 50
    iget-object v1, p0, Lcom/winlator/renderer/EffectComposer;->renderer:Lcom/winlator/renderer/GLRenderer;

    iget-object v1, v1, Lcom/winlator/renderer/GLRenderer;->quadVertices:Lcom/winlator/renderer/VertexAttribute;

    iget v2, v0, Lcom/winlator/renderer/material/ShaderMaterial;->programId:I

    invoke-virtual {v1, v2}, Lcom/winlator/renderer/VertexAttribute;->bind(I)V

    .line 52
    iget-object v1, v0, Lcom/winlator/renderer/material/ScreenMaterial;->uniforms:Lcom/winlator/renderer/material/ScreenMaterial$Uniforms;

    iget-object v1, v1, Lcom/winlator/renderer/material/ScreenMaterial$Uniforms;->resolution:Lcom/winlator/renderer/material/ShaderMaterial$Uniform;

    iget-object v2, p0, Lcom/winlator/renderer/EffectComposer;->renderer:Lcom/winlator/renderer/GLRenderer;

    iget-short v2, v2, Lcom/winlator/renderer/GLRenderer;->surfaceWidth:S

    int-to-float v2, v2

    iget-object v3, p0, Lcom/winlator/renderer/EffectComposer;->renderer:Lcom/winlator/renderer/GLRenderer;

    iget-short v3, v3, Lcom/winlator/renderer/GLRenderer;->surfaceHeight:S

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/renderer/material/ShaderMaterial;->setUniformVec2(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;FF)V

    .line 55
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 56
    iget-object v1, p0, Lcom/winlator/renderer/EffectComposer;->readBuffer:Lcom/winlator/renderer/RenderTarget;

    invoke-virtual {v1}, Lcom/winlator/renderer/Texture;->getTextureId()I

    move-result v1

    const/16 v2, 0xde1

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 57
    iget-object v1, v0, Lcom/winlator/renderer/material/ScreenMaterial;->uniforms:Lcom/winlator/renderer/material/ScreenMaterial$Uniforms;

    iget-object v1, v1, Lcom/winlator/renderer/material/ScreenMaterial$Uniforms;->screenTexture:Lcom/winlator/renderer/material/ShaderMaterial$Uniform;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/winlator/renderer/material/ShaderMaterial;->setUniformInt(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;I)V

    .line 58
    iget-object v1, p0, Lcom/winlator/renderer/EffectComposer;->renderer:Lcom/winlator/renderer/GLRenderer;

    iget-object v1, v1, Lcom/winlator/renderer/GLRenderer;->quadVertices:Lcom/winlator/renderer/VertexAttribute;

    invoke-virtual {v1}, Lcom/winlator/renderer/VertexAttribute;->count()I

    move-result v1

    const/4 v4, 0x5

    invoke-static {v4, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 59
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 60
    return-void
.end method

.method private swapBuffers()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/winlator/renderer/EffectComposer;->writeBuffer:Lcom/winlator/renderer/RenderTarget;

    .line 43
    .local v0, "tmp":Lcom/winlator/renderer/RenderTarget;
    iget-object v1, p0, Lcom/winlator/renderer/EffectComposer;->readBuffer:Lcom/winlator/renderer/RenderTarget;

    iput-object v1, p0, Lcom/winlator/renderer/EffectComposer;->writeBuffer:Lcom/winlator/renderer/RenderTarget;

    .line 44
    iput-object v0, p0, Lcom/winlator/renderer/EffectComposer;->readBuffer:Lcom/winlator/renderer/RenderTarget;

    .line 45
    return-void
.end method


# virtual methods
.method public declared-synchronized addEffect(Lcom/winlator/renderer/effects/Effect;)V
    .locals 1
    .param p1, "effect"    # Lcom/winlator/renderer/effects/Effect;

    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/winlator/renderer/EffectComposer;->effects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/winlator/renderer/EffectComposer;->effects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    .end local p0    # "this":Lcom/winlator/renderer/EffectComposer;
    .end local p1    # "effect":Lcom/winlator/renderer/effects/Effect;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 22
    .restart local p1    # "effect":Lcom/winlator/renderer/effects/Effect;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/winlator/renderer/EffectComposer;->renderer:Lcom/winlator/renderer/GLRenderer;

    iget-object v0, v0, Lcom/winlator/renderer/GLRenderer;->xServerView:Lcom/winlator/widget/XServerView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    .line 20
    .end local p1    # "effect":Lcom/winlator/renderer/effects/Effect;
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getEffect(Ljava/lang/Class;)Lcom/winlator/renderer/effects/Effect;
    .locals 3

    .local p1, "effectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/winlator/renderer/EffectComposer;->effects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/renderer/effects/Effect;

    .line 32
    .local v1, "effect":Lcom/winlator/renderer/effects/Effect;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    monitor-exit p0

    return-object v1

    .line 33
    .end local v1    # "effect":Lcom/winlator/renderer/effects/Effect;
    :cond_0
    goto :goto_0

    .line 30
    .end local p0    # "this":Lcom/winlator/renderer/EffectComposer;
    .end local p1    # "effectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 34
    .restart local p1    # "effectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 30
    .end local p1    # "effectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized hasEffects()Z
    .locals 1

    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/winlator/renderer/EffectComposer;->effects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/winlator/renderer/EffectComposer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeEffect(Lcom/winlator/renderer/effects/Effect;)V
    .locals 1
    .param p1, "effect"    # Lcom/winlator/renderer/effects/Effect;

    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/winlator/renderer/EffectComposer;->effects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lcom/winlator/renderer/EffectComposer;->renderer:Lcom/winlator/renderer/GLRenderer;

    iget-object v0, v0, Lcom/winlator/renderer/GLRenderer;->xServerView:Lcom/winlator/widget/XServerView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    .line 25
    .end local p0    # "this":Lcom/winlator/renderer/EffectComposer;
    .end local p1    # "effect":Lcom/winlator/renderer/effects/Effect;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized render()V
    .locals 8

    monitor-enter p0

    .line 75
    :try_start_0
    invoke-direct {p0}, Lcom/winlator/renderer/EffectComposer;->initBuffers()V

    .line 77
    invoke-virtual {p0}, Lcom/winlator/renderer/EffectComposer;->hasEffects()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/renderer/EffectComposer;->readBuffer:Lcom/winlator/renderer/RenderTarget;

    invoke-virtual {v0}, Lcom/winlator/renderer/RenderTarget;->getFramebuffer()I

    move-result v0

    goto :goto_0

    .line 74
    .end local p0    # "this":Lcom/winlator/renderer/EffectComposer;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 77
    :cond_0
    move v0, v1

    :goto_0
    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 78
    iget-object v0, p0, Lcom/winlator/renderer/EffectComposer;->renderer:Lcom/winlator/renderer/GLRenderer;

    invoke-virtual {v0}, Lcom/winlator/renderer/GLRenderer;->drawFrame()V

    .line 80
    iget-object v0, p0, Lcom/winlator/renderer/EffectComposer;->effects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/winlator/renderer/effects/Effect;

    .line 81
    .local v3, "effect":Lcom/winlator/renderer/effects/Effect;
    iget-object v4, p0, Lcom/winlator/renderer/EffectComposer;->effects:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/winlator/renderer/EffectComposer;->effects:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_1

    move v4, v6

    goto :goto_2

    :cond_1
    move v4, v1

    .line 83
    .local v4, "renderToScreen":Z
    :goto_2
    if-nez v4, :cond_2

    iget-object v5, p0, Lcom/winlator/renderer/EffectComposer;->writeBuffer:Lcom/winlator/renderer/RenderTarget;

    invoke-virtual {v5}, Lcom/winlator/renderer/RenderTarget;->getFramebuffer()I

    move-result v5

    goto :goto_3

    :cond_2
    move v5, v1

    :goto_3
    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 84
    iget-object v5, p0, Lcom/winlator/renderer/EffectComposer;->renderer:Lcom/winlator/renderer/GLRenderer;

    iget-short v5, v5, Lcom/winlator/renderer/GLRenderer;->surfaceWidth:S

    iget-object v7, p0, Lcom/winlator/renderer/EffectComposer;->renderer:Lcom/winlator/renderer/GLRenderer;

    iget-short v7, v7, Lcom/winlator/renderer/GLRenderer;->surfaceHeight:S

    invoke-static {v1, v1, v5, v7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 85
    iget-object v5, p0, Lcom/winlator/renderer/EffectComposer;->renderer:Lcom/winlator/renderer/GLRenderer;

    iput-boolean v6, v5, Lcom/winlator/renderer/GLRenderer;->viewportNeedsUpdate:Z

    .line 86
    const/16 v5, 0x4000

    invoke-static {v5}, Landroid/opengl/GLES20;->glClear(I)V

    .line 88
    invoke-direct {p0, v3}, Lcom/winlator/renderer/EffectComposer;->renderEffect(Lcom/winlator/renderer/effects/Effect;)V

    .line 89
    invoke-direct {p0}, Lcom/winlator/renderer/EffectComposer;->swapBuffers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .end local v3    # "effect":Lcom/winlator/renderer/effects/Effect;
    .end local v4    # "renderToScreen":Z
    goto :goto_1

    .line 91
    :cond_3
    monitor-exit p0

    return-void

    .line 74
    :goto_4
    monitor-exit p0

    throw v0
.end method
