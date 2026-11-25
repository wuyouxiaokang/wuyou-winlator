.class public Lcom/wuyouwin/xserver/Drawable;
.super Lcom/wuyouwin/xserver/XResource;
.source "Drawable.java"


# instance fields
.field private data:Ljava/nio/ByteBuffer;

.field public final height:S

.field private offscreenStorage:Z

.field private onDestroyListener:Lcom/wuyouwin/core/Callback;

.field private onDrawListener:Ljava/lang/Runnable;

.field public final renderLock:Ljava/lang/Object;

.field private texture:Lcom/wuyouwin/renderer/Texture;

.field private useSharedData:Z

.field public final visual:Lcom/wuyouwin/xserver/Visual;

.field public final width:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-string v0, "winlator"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(IIILcom/wuyouwin/xserver/Visual;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "visual"    # Lcom/wuyouwin/xserver/Visual;

    .line 32
    invoke-direct {p0, p1}, Lcom/wuyouwin/xserver/XResource;-><init>(I)V

    .line 19
    new-instance v0, Lcom/wuyouwin/renderer/Texture;

    invoke-direct {v0, p0}, Lcom/wuyouwin/renderer/Texture;-><init>(Lcom/wuyouwin/xserver/Drawable;)V

    iput-object v0, p0, Lcom/wuyouwin/xserver/Drawable;->texture:Lcom/wuyouwin/renderer/Texture;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wuyouwin/xserver/Drawable;->offscreenStorage:Z

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/xserver/Drawable;->renderLock:Ljava/lang/Object;

    .line 33
    int-to-short v0, p2

    iput-short v0, p0, Lcom/wuyouwin/xserver/Drawable;->width:S

    .line 34
    int-to-short v0, p3

    iput-short v0, p0, Lcom/wuyouwin/xserver/Drawable;->height:S

    .line 35
    iput-object p4, p0, Lcom/wuyouwin/xserver/Drawable;->visual:Lcom/wuyouwin/xserver/Visual;

    .line 36
    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    .line 37
    return-void
.end method

.method private static native copyArea(SSSSSSSSLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
.end method

.method private static native copyAreaOp(SSSSSSSSLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V
.end method

.method private static native drawAlphaMaskedBitmap(BBBBBBLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
.end method

.method private static native drawBitmap(SSLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
.end method

.method private static native drawLine(SSSSISSLjava/nio/ByteBuffer;)V
.end method

.method private static native fillRect(SSSSISLjava/nio/ByteBuffer;)V
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/wuyouwin/xserver/Drawable;
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 40
    new-instance v0, Lcom/wuyouwin/xserver/Drawable;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/wuyouwin/xserver/Drawable;-><init>(IIILcom/wuyouwin/xserver/Visual;)V

    .line 41
    .local v0, "drawable":Lcom/wuyouwin/xserver/Drawable;
    iget-object v1, v0, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    invoke-static {p0, v1}, Lcom/wuyouwin/xserver/Drawable;->fromBitmap(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;)V

    .line 42
    return-object v0
.end method

.method private static native fromBitmap(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;)V
.end method

.method private getStride()S
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/wuyouwin/xserver/Drawable;->texture:Lcom/wuyouwin/renderer/Texture;

    instance-of v0, v0, Lcom/wuyouwin/renderer/GPUImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/xserver/Drawable;->texture:Lcom/wuyouwin/renderer/Texture;

    check-cast v0, Lcom/wuyouwin/renderer/GPUImage;

    invoke-virtual {v0}, Lcom/wuyouwin/renderer/GPUImage;->getStride()S

    move-result v0

    goto :goto_0

    :cond_0
    iget-short v0, p0, Lcom/wuyouwin/xserver/Drawable;->width:S

    :goto_0
    return v0
.end method


# virtual methods
.method public copyArea(SSSSSSLcom/wuyouwin/xserver/Drawable;)V
    .locals 9
    .param p1, "srcX"    # S
    .param p2, "srcY"    # S
    .param p3, "dstX"    # S
    .param p4, "dstY"    # S
    .param p5, "width"    # S
    .param p6, "height"    # S
    .param p7, "drawable"    # Lcom/wuyouwin/xserver/Drawable;

    .line 129
    sget-object v8, Lcom/wuyouwin/xserver/GraphicsContext$Function;->COPY:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/wuyouwin/xserver/Drawable;->copyArea(SSSSSSLcom/wuyouwin/xserver/Drawable;Lcom/wuyouwin/xserver/GraphicsContext$Function;)V

    .line 130
    return-void
.end method

.method public copyArea(SSSSSSLcom/wuyouwin/xserver/Drawable;Lcom/wuyouwin/xserver/GraphicsContext$Function;)V
    .locals 18
    .param p1, "srcX"    # S
    .param p2, "srcY"    # S
    .param p3, "dstX"    # S
    .param p4, "dstY"    # S
    .param p5, "width"    # S
    .param p6, "height"    # S
    .param p7, "drawable"    # Lcom/wuyouwin/xserver/Drawable;
    .param p8, "gcFunction"    # Lcom/wuyouwin/xserver/GraphicsContext$Function;

    .line 133
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    iget-object v2, v0, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_0

    move/from16 v4, p3

    move/from16 v5, p4

    goto/16 :goto_3

    .line 135
    :cond_0
    iget-short v2, v0, Lcom/wuyouwin/xserver/Drawable;->width:S

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    move/from16 v4, p3

    invoke-static {v4, v3, v2}, Lcom/wuyouwin/math/Mathf;->clamp(III)I

    move-result v2

    int-to-short v2, v2

    .line 136
    .end local p3    # "dstX":S
    .local v2, "dstX":S
    iget-short v4, v0, Lcom/wuyouwin/xserver/Drawable;->height:S

    add-int/lit8 v4, v4, -0x1

    move/from16 v5, p4

    invoke-static {v5, v3, v4}, Lcom/wuyouwin/math/Mathf;->clamp(III)I

    move-result v3

    int-to-short v3, v3

    .line 137
    .end local p4    # "dstY":S
    .local v3, "dstY":S
    add-int v4, v2, p5

    iget-short v5, v0, Lcom/wuyouwin/xserver/Drawable;->width:S

    if-le v4, v5, :cond_1

    iget-short v4, v0, Lcom/wuyouwin/xserver/Drawable;->width:S

    sub-int/2addr v4, v2

    int-to-short v4, v4

    move v15, v4

    .end local p5    # "width":S
    .local v4, "width":S
    goto :goto_0

    .end local v4    # "width":S
    .restart local p5    # "width":S
    :cond_1
    move/from16 v15, p5

    .line 138
    .end local p5    # "width":S
    .local v15, "width":S
    :goto_0
    add-int v4, v3, p6

    iget-short v5, v0, Lcom/wuyouwin/xserver/Drawable;->height:S

    if-le v4, v5, :cond_2

    iget-short v4, v0, Lcom/wuyouwin/xserver/Drawable;->height:S

    sub-int/2addr v4, v3

    int-to-short v4, v4

    move/from16 v16, v4

    .end local p6    # "height":S
    .local v4, "height":S
    goto :goto_1

    .end local v4    # "height":S
    .restart local p6    # "height":S
    :cond_2
    move/from16 v16, p6

    .line 140
    .end local p6    # "height":S
    .local v16, "height":S
    :goto_1
    sget-object v4, Lcom/wuyouwin/xserver/GraphicsContext$Function;->COPY:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    move-object/from16 v14, p8

    if-ne v14, v4, :cond_3

    .line 141
    invoke-direct/range {p7 .. p7}, Lcom/wuyouwin/xserver/Drawable;->getStride()S

    move-result v10

    invoke-direct/range {p0 .. p0}, Lcom/wuyouwin/xserver/Drawable;->getStride()S

    move-result v11

    iget-object v12, v1, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    iget-object v13, v0, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    move/from16 v4, p1

    move/from16 v5, p2

    move v6, v2

    move v7, v3

    move v8, v15

    move/from16 v9, v16

    invoke-static/range {v4 .. v13}, Lcom/wuyouwin/xserver/Drawable;->copyArea(SSSSSSSSLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    goto :goto_2

    .line 143
    :cond_3
    invoke-direct/range {p7 .. p7}, Lcom/wuyouwin/xserver/Drawable;->getStride()S

    move-result v10

    invoke-direct/range {p0 .. p0}, Lcom/wuyouwin/xserver/Drawable;->getStride()S

    move-result v11

    iget-object v12, v1, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    iget-object v13, v0, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    move/from16 v4, p1

    move/from16 v5, p2

    move v6, v2

    move v7, v3

    move v8, v15

    move/from16 v9, v16

    move/from16 v14, v17

    invoke-static/range {v4 .. v14}, Lcom/wuyouwin/xserver/Drawable;->copyAreaOp(SSSSSSSSLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    .line 145
    :goto_2
    iget-object v4, v0, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 146
    iget-object v4, v1, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/wuyouwin/xserver/Drawable;->forceUpdate()V

    .line 149
    return-void

    .line 133
    .end local v2    # "dstX":S
    .end local v3    # "dstY":S
    .end local v15    # "width":S
    .end local v16    # "height":S
    .restart local p3    # "dstX":S
    .restart local p4    # "dstY":S
    .restart local p5    # "width":S
    .restart local p6    # "height":S
    :cond_4
    move/from16 v4, p3

    move/from16 v5, p4

    :goto_3
    return-void
.end method

.method public drawAlphaMaskedBitmap(BBBBBBLcom/wuyouwin/xserver/Drawable;Lcom/wuyouwin/xserver/Drawable;)V
    .locals 13
    .param p1, "foreRed"    # B
    .param p2, "foreGreen"    # B
    .param p3, "foreBlue"    # B
    .param p4, "backRed"    # B
    .param p5, "backGreen"    # B
    .param p6, "backBlue"    # B
    .param p7, "srcDrawable"    # Lcom/wuyouwin/xserver/Drawable;
    .param p8, "maskDrawable"    # Lcom/wuyouwin/xserver/Drawable;

    .line 187
    move-object v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    iget-object v3, v0, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_1

    :cond_0
    goto :goto_0

    .line 188
    :cond_1
    iget-object v10, v1, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    iget-object v11, v2, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    iget-object v12, v0, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v4 .. v12}, Lcom/wuyouwin/xserver/Drawable;->drawAlphaMaskedBitmap(BBBBBBLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 189
    iget-object v3, v0, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 191
    invoke-virtual {p0}, Lcom/wuyouwin/xserver/Drawable;->forceUpdate()V

    .line 192
    return-void

    .line 187
    :goto_0
    return-void
.end method

.method public drawImage(SSSSSSBLjava/nio/ByteBuffer;SS)V
    .locals 18
    .param p1, "srcX"    # S
    .param p2, "srcY"    # S
    .param p3, "dstX"    # S
    .param p4, "dstY"    # S
    .param p5, "width"    # S
    .param p6, "height"    # S
    .param p7, "depth"    # B
    .param p8, "data"    # Ljava/nio/ByteBuffer;
    .param p9, "totalWidth"    # S
    .param p10, "totalHeight"    # S

    .line 92
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    iget-object v4, v0, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_0

    return-void

    .line 94
    :cond_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 95
    iget-object v4, v0, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    move-object/from16 v15, p8

    invoke-static {v1, v2, v15, v4}, Lcom/wuyouwin/xserver/Drawable;->drawBitmap(SSLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 97
    :cond_1
    move-object/from16 v15, p8

    const/16 v5, 0x18

    if-eq v3, v5, :cond_2

    const/16 v5, 0x20

    if-ne v3, v5, :cond_3

    :cond_2
    goto :goto_1

    .line 106
    :cond_3
    :goto_0
    move/from16 v17, p3

    move/from16 v4, p4

    goto :goto_2

    .line 98
    :goto_1
    iget-short v5, v0, Lcom/wuyouwin/xserver/Drawable;->width:S

    sub-int/2addr v5, v4

    const/4 v6, 0x0

    move/from16 v7, p3

    invoke-static {v7, v6, v5}, Lcom/wuyouwin/math/Mathf;->clamp(III)I

    move-result v5

    int-to-short v14, v5

    .line 99
    .end local p3    # "dstX":S
    .local v14, "dstX":S
    iget-short v5, v0, Lcom/wuyouwin/xserver/Drawable;->height:S

    sub-int/2addr v5, v4

    move/from16 v4, p4

    invoke-static {v4, v6, v5}, Lcom/wuyouwin/math/Mathf;->clamp(III)I

    move-result v5

    int-to-short v4, v5

    .line 100
    .end local p4    # "dstY":S
    .local v4, "dstY":S
    add-int v5, v14, v1

    iget-short v6, v0, Lcom/wuyouwin/xserver/Drawable;->width:S

    if-le v5, v6, :cond_4

    iget-short v5, v0, Lcom/wuyouwin/xserver/Drawable;->width:S

    sub-int/2addr v5, v14

    int-to-short v1, v5

    .line 101
    .end local p5    # "width":S
    .local v1, "width":S
    :cond_4
    add-int v5, v4, v2

    iget-short v6, v0, Lcom/wuyouwin/xserver/Drawable;->height:S

    if-le v5, v6, :cond_5

    iget-short v5, v0, Lcom/wuyouwin/xserver/Drawable;->height:S

    sub-int/2addr v5, v4

    int-to-short v2, v5

    .line 103
    .end local p6    # "height":S
    .local v2, "height":S
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/wuyouwin/xserver/Drawable;->getStride()S

    move-result v12

    iget-object v13, v0, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    move/from16 v5, p1

    move/from16 v6, p2

    move v7, v14

    move v8, v4

    move v9, v1

    move v10, v2

    move/from16 v11, p9

    move-object/from16 v16, v13

    move-object/from16 v13, p8

    move/from16 v17, v14

    .end local v14    # "dstX":S
    .local v17, "dstX":S
    move-object/from16 v14, v16

    invoke-static/range {v5 .. v14}, Lcom/wuyouwin/xserver/Drawable;->copyArea(SSSSSSSSLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 106
    :goto_2
    iget-object v5, v0, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 107
    invoke-virtual/range {p8 .. p8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/wuyouwin/xserver/Drawable;->forceUpdate()V

    .line 110
    return-void
.end method

.method public drawLine(IIIIII)V
    .locals 8
    .param p1, "x0"    # I
    .param p2, "y0"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I
    .param p5, "color"    # I
    .param p6, "lineWidth"    # I

    .line 174
    iget-object v0, p0, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    iget-short v0, p0, Lcom/wuyouwin/xserver/Drawable;->width:S

    sub-int/2addr v0, p6

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/wuyouwin/math/Mathf;->clamp(III)I

    move-result p1

    .line 176
    iget-short v0, p0, Lcom/wuyouwin/xserver/Drawable;->height:S

    sub-int/2addr v0, p6

    invoke-static {p2, v1, v0}, Lcom/wuyouwin/math/Mathf;->clamp(III)I

    move-result p2

    .line 177
    iget-short v0, p0, Lcom/wuyouwin/xserver/Drawable;->width:S

    sub-int/2addr v0, p6

    invoke-static {p3, v1, v0}, Lcom/wuyouwin/math/Mathf;->clamp(III)I

    move-result p3

    .line 178
    iget-short v0, p0, Lcom/wuyouwin/xserver/Drawable;->height:S

    sub-int/2addr v0, p6

    invoke-static {p4, v1, v0}, Lcom/wuyouwin/math/Mathf;->clamp(III)I

    move-result p4

    .line 180
    int-to-short v0, p1

    int-to-short v1, p2

    int-to-short v2, p3

    int-to-short v3, p4

    int-to-short v5, p6

    invoke-direct {p0}, Lcom/wuyouwin/xserver/Drawable;->getStride()S

    move-result v6

    iget-object v7, p0, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    move v4, p5

    invoke-static/range {v0 .. v7}, Lcom/wuyouwin/xserver/Drawable;->drawLine(SSSSISSLjava/nio/ByteBuffer;)V

    .line 182
    iget-object v0, p0, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 183
    invoke-virtual {p0}, Lcom/wuyouwin/xserver/Drawable;->forceUpdate()V

    .line 184
    return-void
.end method

.method public varargs drawLines(II[S)V
    .locals 9
    .param p1, "color"    # I
    .param p2, "lineWidth"    # I
    .param p3, "points"    # [S

    .line 168
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 169
    add-int/lit8 v1, v0, -0x2

    aget-short v3, p3, v1

    add-int/lit8 v1, v0, -0x1

    aget-short v4, p3, v1

    add-int/lit8 v1, v0, 0x0

    aget-short v5, p3, v1

    add-int/lit8 v1, v0, 0x1

    aget-short v6, p3, v1

    int-to-short v8, p2

    move-object v2, p0

    move v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/wuyouwin/xserver/Drawable;->drawLine(IIIIII)V

    .line 168
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    nop

    .line 171
    .end local v0    # "i":I
    return-void
.end method

.method public fillColor(I)V
    .locals 6
    .param p1, "color"    # I

    .line 152
    iget-short v3, p0, Lcom/wuyouwin/xserver/Drawable;->width:S

    iget-short v4, p0, Lcom/wuyouwin/xserver/Drawable;->height:S

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/wuyouwin/xserver/Drawable;->fillRect(IIIII)V

    .line 153
    return-void
.end method

.method public fillRect(IIIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "color"    # I

    .line 156
    iget-object v0, p0, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-short v0, p0, Lcom/wuyouwin/xserver/Drawable;->width:S

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/wuyouwin/math/Mathf;->clamp(III)I

    move-result v0

    int-to-short p1, v0

    .line 158
    iget-short v0, p0, Lcom/wuyouwin/xserver/Drawable;->height:S

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v1, v0}, Lcom/wuyouwin/math/Mathf;->clamp(III)I

    move-result v0

    int-to-short p2, v0

    .line 159
    add-int v0, p1, p3

    iget-short v1, p0, Lcom/wuyouwin/xserver/Drawable;->width:S

    if-le v0, v1, :cond_1

    iget-short v0, p0, Lcom/wuyouwin/xserver/Drawable;->width:S

    sub-int/2addr v0, p1

    int-to-short p3, v0

    .line 160
    :cond_1
    add-int v0, p2, p4

    iget-short v1, p0, Lcom/wuyouwin/xserver/Drawable;->height:S

    if-le v0, v1, :cond_2

    iget-short v0, p0, Lcom/wuyouwin/xserver/Drawable;->height:S

    sub-int/2addr v0, p2

    int-to-short p4, v0

    .line 162
    :cond_2
    int-to-short v0, p1

    int-to-short v1, p2

    int-to-short v2, p3

    int-to-short v3, p4

    invoke-direct {p0}, Lcom/wuyouwin/xserver/Drawable;->getStride()S

    move-result v5

    iget-object v6, p0, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    move v4, p5

    invoke-static/range {v0 .. v6}, Lcom/wuyouwin/xserver/Drawable;->fillRect(SSSSISLjava/nio/ByteBuffer;)V

    .line 163
    iget-object v0, p0, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 164
    invoke-virtual {p0}, Lcom/wuyouwin/xserver/Drawable;->forceUpdate()V

    .line 165
    return-void
.end method

.method public forceUpdate()V
    .locals 2

    .line 195
    iget-boolean v0, p0, Lcom/wuyouwin/xserver/Drawable;->offscreenStorage:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wuyouwin/xserver/Drawable;->useSharedData:Z

    if-eqz v0, :cond_1

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/xserver/Drawable;->texture:Lcom/wuyouwin/renderer/Texture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wuyouwin/renderer/Texture;->setNeedsUpdate(Z)V

    .line 197
    iget-object v0, p0, Lcom/wuyouwin/xserver/Drawable;->onDrawListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wuyouwin/xserver/Drawable;->onDrawListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 199
    :cond_1
    return-void
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getImage(SSSS)Ljava/nio/ByteBuffer;
    .locals 16
    .param p1, "x"    # S
    .param p2, "y"    # S
    .param p3, "width"    # S
    .param p4, "height"    # S

    .line 113
    move-object/from16 v0, p0

    mul-int v1, p3, p4

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 114
    .local v1, "dstData":Ljava/nio/ByteBuffer;
    iget-object v2, v0, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_0

    return-object v1

    .line 116
    :cond_0
    iget-short v2, v0, Lcom/wuyouwin/xserver/Drawable;->width:S

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    move/from16 v4, p1

    invoke-static {v4, v3, v2}, Lcom/wuyouwin/math/Mathf;->clamp(III)I

    move-result v2

    int-to-short v2, v2

    .line 117
    .end local p1    # "x":S
    .local v2, "x":S
    iget-short v4, v0, Lcom/wuyouwin/xserver/Drawable;->height:S

    add-int/lit8 v4, v4, -0x1

    move/from16 v5, p2

    invoke-static {v5, v3, v4}, Lcom/wuyouwin/math/Mathf;->clamp(III)I

    move-result v3

    int-to-short v13, v3

    .line 118
    .end local p2    # "y":S
    .local v13, "y":S
    add-int v3, v2, p3

    iget-short v4, v0, Lcom/wuyouwin/xserver/Drawable;->width:S

    if-le v3, v4, :cond_1

    iget-short v3, v0, Lcom/wuyouwin/xserver/Drawable;->width:S

    sub-int/2addr v3, v2

    int-to-short v3, v3

    move v14, v3

    .end local p3    # "width":S
    .local v3, "width":S
    goto :goto_0

    .end local v3    # "width":S
    .restart local p3    # "width":S
    :cond_1
    move/from16 v14, p3

    .line 119
    .end local p3    # "width":S
    .local v14, "width":S
    :goto_0
    add-int v3, v13, p4

    iget-short v4, v0, Lcom/wuyouwin/xserver/Drawable;->height:S

    if-le v3, v4, :cond_2

    iget-short v3, v0, Lcom/wuyouwin/xserver/Drawable;->height:S

    sub-int/2addr v3, v13

    int-to-short v3, v3

    move v15, v3

    .end local p4    # "height":S
    .local v3, "height":S
    goto :goto_1

    .end local v3    # "height":S
    .restart local p4    # "height":S
    :cond_2
    move/from16 v15, p4

    .line 121
    .end local p4    # "height":S
    .local v15, "height":S
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/wuyouwin/xserver/Drawable;->getStride()S

    move-result v9

    iget-object v11, v0, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, v2

    move v4, v13

    move v7, v14

    move v8, v15

    move v10, v14

    move-object v12, v1

    invoke-static/range {v3 .. v12}, Lcom/wuyouwin/xserver/Drawable;->copyArea(SSSSSSSSLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 123
    iget-object v3, v0, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 124
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 125
    return-object v1
.end method

.method public getOnDestroyListener()Lcom/wuyouwin/core/Callback;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/wuyouwin/xserver/Drawable;->onDestroyListener:Lcom/wuyouwin/core/Callback;

    return-object v0
.end method

.method public getOnDrawListener()Ljava/lang/Runnable;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/wuyouwin/xserver/Drawable;->onDrawListener:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getTexture()Lcom/wuyouwin/renderer/Texture;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/wuyouwin/xserver/Drawable;->texture:Lcom/wuyouwin/renderer/Texture;

    return-object v0
.end method

.method public isOffscreenStorage()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/wuyouwin/xserver/Drawable;->offscreenStorage:Z

    return v0
.end method

.method public isUseSharedData()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lcom/wuyouwin/xserver/Drawable;->useSharedData:Z

    return v0
.end method

.method public setData(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 68
    iput-object p1, p0, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    .line 69
    return-void
.end method

.method public setOffscreenStorage(Z)V
    .locals 0
    .param p1, "offscreenStorage"    # Z

    .line 50
    iput-boolean p1, p0, Lcom/wuyouwin/xserver/Drawable;->offscreenStorage:Z

    .line 51
    return-void
.end method

.method public setOnDestroyListener(Lcom/wuyouwin/core/Callback;)V
    .locals 0

    .line 88
    .local p1, "onDestroyListener":Lcom/wuyouwin/core/Callback;, "Lcom/wuyouwin/core/Callback<Lcom/wuyouwin/xserver/Drawable;>;"
    iput-object p1, p0, Lcom/wuyouwin/xserver/Drawable;->onDestroyListener:Lcom/wuyouwin/core/Callback;

    .line 89
    return-void
.end method

.method public setOnDrawListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onDrawListener"    # Ljava/lang/Runnable;

    .line 80
    iput-object p1, p0, Lcom/wuyouwin/xserver/Drawable;->onDrawListener:Ljava/lang/Runnable;

    .line 81
    return-void
.end method

.method public setTexture(Lcom/wuyouwin/renderer/Texture;)V
    .locals 1
    .param p1, "texture"    # Lcom/wuyouwin/renderer/Texture;

    .line 58
    instance-of v0, p1, Lcom/wuyouwin/renderer/GPUImage;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/wuyouwin/renderer/GPUImage;

    invoke-virtual {v0}, Lcom/wuyouwin/renderer/GPUImage;->getVirtualData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/wuyouwin/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/wuyouwin/xserver/Drawable;->texture:Lcom/wuyouwin/renderer/Texture;

    .line 60
    return-void
.end method

.method public setUseSharedData(Z)V
    .locals 0
    .param p1, "useSharedData"    # Z

    .line 206
    iput-boolean p1, p0, Lcom/wuyouwin/xserver/Drawable;->useSharedData:Z

    .line 207
    return-void
.end method
