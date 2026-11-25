.class public Lcom/winlator/renderer/RenderTarget;
.super Lcom/winlator/renderer/Texture;
.source "RenderTarget.java"


# instance fields
.field private framebuffer:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/winlator/renderer/Texture;-><init>(Lcom/winlator/xserver/Drawable;)V

    .line 10
    return-void
.end method

.method private generateFramebuffer()V
    .locals 3

    .line 13
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 14
    .local v1, "framebuffers":[I
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 15
    aget v0, v1, v2

    iput v0, p0, Lcom/winlator/renderer/RenderTarget;->framebuffer:I

    .line 16
    return-void
.end method


# virtual methods
.method public allocateFramebuffer(II)V
    .locals 12
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 19
    iget v0, p0, Lcom/winlator/renderer/RenderTarget;->framebuffer:I

    if-eqz v0, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/winlator/renderer/RenderTarget;->generateFramebuffer()V

    .line 21
    invoke-virtual {p0}, Lcom/winlator/renderer/Texture;->generateTextureId()V

    .line 23
    iget v0, p0, Lcom/winlator/renderer/RenderTarget;->framebuffer:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 24
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 25
    iget v0, p0, Lcom/winlator/renderer/Texture;->textureId:I

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 26
    iget v5, p0, Lcom/winlator/renderer/Texture;->format:I

    iget v9, p0, Lcom/winlator/renderer/Texture;->format:I

    const/16 v10, 0x1401

    const/4 v11, 0x0

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/4 v8, 0x0

    move v6, p1

    move v7, p2

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 27
    invoke-virtual {p0}, Lcom/winlator/renderer/Texture;->setTextureParameters()V

    .line 28
    const v0, 0x8ce0

    iget v3, p0, Lcom/winlator/renderer/Texture;->textureId:I

    invoke-static {v1, v0, v2, v3, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 29
    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 31
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 32
    return-void
.end method

.method public getFramebuffer()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/winlator/renderer/RenderTarget;->framebuffer:I

    return v0
.end method
