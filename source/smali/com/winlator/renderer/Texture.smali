.class public Lcom/winlator/renderer/Texture;
.super Ljava/lang/Object;
.source "Texture.java"


# instance fields
.field private flipY:Z

.field protected format:I

.field protected magFilter:I

.field protected minFilter:I

.field protected needsUpdate:Z

.field protected owner:Lcom/winlator/xserver/Drawable;

.field protected textureId:I

.field protected wrapS:I

.field protected wrapT:I


# direct methods
.method public constructor <init>(Lcom/winlator/xserver/Drawable;)V
    .locals 2
    .param p1, "owner"    # Lcom/winlator/xserver/Drawable;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/renderer/Texture;->textureId:I

    .line 13
    const v1, 0x812f

    iput v1, p0, Lcom/winlator/renderer/Texture;->wrapS:I

    .line 14
    iput v1, p0, Lcom/winlator/renderer/Texture;->wrapT:I

    .line 15
    const/16 v1, 0x2601

    iput v1, p0, Lcom/winlator/renderer/Texture;->magFilter:I

    .line 16
    iput v1, p0, Lcom/winlator/renderer/Texture;->minFilter:I

    .line 17
    const v1, 0x80e1

    iput v1, p0, Lcom/winlator/renderer/Texture;->format:I

    .line 18
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/winlator/renderer/Texture;->needsUpdate:Z

    .line 19
    iput-boolean v0, p0, Lcom/winlator/renderer/Texture;->flipY:Z

    .line 23
    iput-object p1, p0, Lcom/winlator/renderer/Texture;->owner:Lcom/winlator/xserver/Drawable;

    .line 24
    return-void
.end method


# virtual methods
.method public allocateTexture(SSLjava/nio/ByteBuffer;)V
    .locals 11
    .param p1, "width"    # S
    .param p2, "height"    # S
    .param p3, "data"    # Ljava/nio/ByteBuffer;

    .line 40
    invoke-virtual {p0}, Lcom/winlator/renderer/Texture;->generateTextureId()V

    .line 42
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 43
    const/16 v0, 0xcf5

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 44
    iget v0, p0, Lcom/winlator/renderer/Texture;->textureId:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 46
    if-eqz p3, :cond_0

    .line 47
    iget v4, p0, Lcom/winlator/renderer/Texture;->format:I

    iget v8, p0, Lcom/winlator/renderer/Texture;->format:I

    const/16 v9, 0x1401

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v7, 0x0

    move v5, p1

    move v6, p2

    move-object v10, p3

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/renderer/Texture;->setTextureParameters()V

    .line 51
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 52
    return-void
.end method

.method public copyFromReadBuffer(SS)V
    .locals 10
    .param p1, "width"    # S
    .param p2, "height"    # S

    .line 153
    invoke-virtual {p0}, Lcom/winlator/renderer/Texture;->isAllocated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/winlator/renderer/Texture;->allocateTexture(SSLjava/nio/ByteBuffer;)V

    .line 154
    :cond_0
    iget v0, p0, Lcom/winlator/renderer/Texture;->textureId:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 155
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    const/4 v5, 0x0

    move v7, p1

    move v8, p2

    invoke-static/range {v2 .. v9}, Landroid/opengl/GLES20;->glCopyTexImage2D(IIIIIIII)V

    .line 156
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 157
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 158
    return-void
.end method

.method public copyFromSource(Lcom/winlator/renderer/Texture;)V
    .locals 20
    .param p1, "source"    # Lcom/winlator/renderer/Texture;

    .line 142
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/winlator/renderer/Texture;->isAllocated()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/winlator/renderer/Texture;->owner:Lcom/winlator/xserver/Drawable;

    iget-short v2, v2, Lcom/winlator/xserver/Drawable;->width:S

    iget-object v4, v1, Lcom/winlator/renderer/Texture;->owner:Lcom/winlator/xserver/Drawable;

    iget-short v4, v4, Lcom/winlator/xserver/Drawable;->height:S

    invoke-virtual {v1, v2, v4, v3}, Lcom/winlator/renderer/Texture;->allocateTexture(SSLjava/nio/ByteBuffer;)V

    .line 143
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/renderer/Texture;->isAllocated()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/winlator/renderer/Texture;->owner:Lcom/winlator/xserver/Drawable;

    iget-short v2, v2, Lcom/winlator/xserver/Drawable;->width:S

    iget-object v4, v1, Lcom/winlator/renderer/Texture;->owner:Lcom/winlator/xserver/Drawable;

    iget-short v4, v4, Lcom/winlator/xserver/Drawable;->height:S

    invoke-virtual {v0, v2, v4, v3}, Lcom/winlator/renderer/Texture;->allocateTexture(SSLjava/nio/ByteBuffer;)V

    .line 144
    :cond_1
    iget v5, v1, Lcom/winlator/renderer/Texture;->textureId:I

    iget v11, v0, Lcom/winlator/renderer/Texture;->textureId:I

    iget-object v2, v1, Lcom/winlator/renderer/Texture;->owner:Lcom/winlator/xserver/Drawable;

    iget-short v2, v2, Lcom/winlator/xserver/Drawable;->width:S

    iget-object v3, v1, Lcom/winlator/renderer/Texture;->owner:Lcom/winlator/xserver/Drawable;

    iget-short v3, v3, Lcom/winlator/xserver/Drawable;->height:S

    const/16 v19, 0x1

    const/16 v6, 0xde1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v12, 0xde1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-static/range {v5 .. v19}, Landroid/opengl/GLES32;->glCopyImageSubData(IIIIIIIIIIIIIII)V

    .line 149
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 150
    return-void
.end method

.method public destroy()V
    .locals 3

    .line 161
    iget v0, p0, Lcom/winlator/renderer/Texture;->textureId:I

    if-lez v0, :cond_0

    .line 162
    iget v0, p0, Lcom/winlator/renderer/Texture;->textureId:I

    filled-new-array {v0}, [I

    move-result-object v0

    .line 163
    .local v0, "textureIds":[I
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 164
    iput v2, p0, Lcom/winlator/renderer/Texture;->textureId:I

    .line 166
    .end local v0    # "textureIds":[I
    :cond_0
    return-void
.end method

.method protected generateTextureId()V
    .locals 3

    .line 27
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 28
    .local v1, "textureIds":[I
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 29
    aget v0, v1, v2

    iput v0, p0, Lcom/winlator/renderer/Texture;->textureId:I

    .line 30
    return-void
.end method

.method public getOwner()Lcom/winlator/xserver/Drawable;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/winlator/renderer/Texture;->owner:Lcom/winlator/xserver/Drawable;

    return-object v0
.end method

.method public getTextureId()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/winlator/renderer/Texture;->textureId:I

    return v0
.end method

.method public isAllocated()Z
    .locals 1

    .line 134
    iget v0, p0, Lcom/winlator/renderer/Texture;->textureId:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFlipY()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/winlator/renderer/Texture;->flipY:Z

    return v0
.end method

.method public setFlipY(Z)V
    .locals 0
    .param p1, "flipY"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/winlator/renderer/Texture;->flipY:Z

    .line 68
    return-void
.end method

.method public setNeedsUpdate(Z)V
    .locals 0
    .param p1, "needsUpdate"    # Z

    .line 115
    iput-boolean p1, p0, Lcom/winlator/renderer/Texture;->needsUpdate:Z

    .line 116
    return-void
.end method

.method public setOwner(Lcom/winlator/xserver/Drawable;)V
    .locals 0
    .param p1, "owner"    # Lcom/winlator/xserver/Drawable;

    .line 59
    iput-object p1, p0, Lcom/winlator/renderer/Texture;->owner:Lcom/winlator/xserver/Drawable;

    .line 60
    return-void
.end method

.method protected setTextureParameters()V
    .locals 3

    .line 33
    const/16 v0, 0x2802

    iget v1, p0, Lcom/winlator/renderer/Texture;->wrapS:I

    const/16 v2, 0xde1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 34
    const/16 v0, 0x2803

    iget v1, p0, Lcom/winlator/renderer/Texture;->wrapT:I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 35
    const/16 v0, 0x2800

    iget v1, p0, Lcom/winlator/renderer/Texture;->magFilter:I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 36
    const/16 v0, 0x2801

    iget v1, p0, Lcom/winlator/renderer/Texture;->minFilter:I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 37
    return-void
.end method

.method public updateFromDrawable()V
    .locals 11

    .line 119
    iget-object v0, p0, Lcom/winlator/renderer/Texture;->owner:Lcom/winlator/xserver/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/renderer/Texture;->owner:Lcom/winlator/xserver/Drawable;

    invoke-virtual {v0}, Lcom/winlator/xserver/Drawable;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_1

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/winlator/renderer/Texture;->owner:Lcom/winlator/xserver/Drawable;

    invoke-virtual {v0}, Lcom/winlator/xserver/Drawable;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 122
    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lcom/winlator/renderer/Texture;->isAllocated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 123
    iget-object v1, p0, Lcom/winlator/renderer/Texture;->owner:Lcom/winlator/xserver/Drawable;

    iget-short v1, v1, Lcom/winlator/xserver/Drawable;->width:S

    iget-object v2, p0, Lcom/winlator/renderer/Texture;->owner:Lcom/winlator/xserver/Drawable;

    iget-short v2, v2, Lcom/winlator/xserver/Drawable;->height:S

    invoke-virtual {p0, v1, v2, v0}, Lcom/winlator/renderer/Texture;->allocateTexture(SSLjava/nio/ByteBuffer;)V

    goto :goto_0

    .line 125
    :cond_2
    iget-boolean v1, p0, Lcom/winlator/renderer/Texture;->needsUpdate:Z

    if-eqz v1, :cond_3

    .line 126
    iget v1, p0, Lcom/winlator/renderer/Texture;->textureId:I

    const/16 v10, 0xde1

    invoke-static {v10, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 127
    iget-object v1, p0, Lcom/winlator/renderer/Texture;->owner:Lcom/winlator/xserver/Drawable;

    iget-short v5, v1, Lcom/winlator/xserver/Drawable;->width:S

    iget-object v1, p0, Lcom/winlator/renderer/Texture;->owner:Lcom/winlator/xserver/Drawable;

    iget-short v6, v1, Lcom/winlator/xserver/Drawable;->height:S

    iget v7, p0, Lcom/winlator/renderer/Texture;->format:I

    const/16 v8, 0x1401

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v9, v0

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 128
    const/4 v1, 0x0

    invoke-static {v10, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 129
    iput-boolean v1, p0, Lcom/winlator/renderer/Texture;->needsUpdate:Z

    .line 131
    :cond_3
    :goto_0
    return-void

    .line 119
    .end local v0    # "data":Ljava/nio/ByteBuffer;
    :goto_1
    return-void
.end method
