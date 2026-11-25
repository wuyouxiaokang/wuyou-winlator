.class public Lcom/wuyouwin/widget/SeekBar;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/widget/SeekBar$OnValueChangeListener;
    }
.end annotation


# instance fields
.field private final barHeight:F

.field private final colorPrimary:I

.field private final colorSecondary:I

.field private decimalFormat:Ljava/text/DecimalFormat;

.field private glossyEffectGradient:Landroid/graphics/LinearGradient;

.field private maxValue:F

.field private minValue:F

.field private normalizedValue:F

.field private onValueChangeListener:Lcom/wuyouwin/widget/SeekBar$OnValueChangeListener;

.field private padding:F

.field private final paint:Landroid/graphics/Paint;

.field private final rect:Landroid/graphics/RectF;

.field private step:F

.field private suffix:Ljava/lang/String;

.field private final textColor:I

.field private textSize:F

.field private final thumbRadius:F

.field private final thumbSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wuyouwin/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/wuyouwin/widget/SeekBar;->paint:Landroid/graphics/Paint;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/wuyouwin/widget/SeekBar;->minValue:F

    .line 32
    const/high16 v2, 0x42c80000    # 100.0f

    iput v2, p0, Lcom/wuyouwin/widget/SeekBar;->maxValue:F

    .line 33
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/wuyouwin/widget/SeekBar;->step:F

    .line 34
    iput v0, p0, Lcom/wuyouwin/widget/SeekBar;->normalizedValue:F

    .line 36
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lcom/wuyouwin/core/UnitUtils;->dpToPx(F)F

    move-result v2

    iput v2, p0, Lcom/wuyouwin/widget/SeekBar;->textSize:F

    .line 37
    const v2, -0x8c8c8d

    iput v2, p0, Lcom/wuyouwin/widget/SeekBar;->textColor:I

    .line 38
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lcom/wuyouwin/core/UnitUtils;->dpToPx(F)F

    move-result v2

    iput v2, p0, Lcom/wuyouwin/widget/SeekBar;->barHeight:F

    .line 39
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lcom/wuyouwin/core/UnitUtils;->dpToPx(F)F

    move-result v2

    iput v2, p0, Lcom/wuyouwin/widget/SeekBar;->thumbSize:F

    .line 41
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/wuyouwin/widget/SeekBar;->rect:Landroid/graphics/RectF;

    .line 43
    const v2, -0x282829

    iput v2, p0, Lcom/wuyouwin/widget/SeekBar;->colorPrimary:I

    .line 61
    const v2, 0x7f0400c1

    invoke-static {p1, v2}, Lcom/wuyouwin/core/AppUtils;->getThemeColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/wuyouwin/widget/SeekBar;->colorSecondary:I

    .line 63
    if-eqz p2, :cond_0

    .line 64
    sget-object v2, Lcom/wuyouwin/R$styleable;->SeekBar:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 65
    .local v2, "ta":Landroid/content/res/TypedArray;
    iget v4, p0, Lcom/wuyouwin/widget/SeekBar;->minValue:F

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lcom/wuyouwin/widget/SeekBar;->minValue:F

    .line 66
    iget v4, p0, Lcom/wuyouwin/widget/SeekBar;->maxValue:F

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/wuyouwin/widget/SeekBar;->maxValue:F

    .line 67
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wuyouwin/widget/SeekBar;->suffix:Ljava/lang/String;

    .line 68
    const/4 v3, 0x4

    iget v4, p0, Lcom/wuyouwin/widget/SeekBar;->textSize:F

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/wuyouwin/widget/SeekBar;->textSize:F

    .line 70
    const/4 v3, 0x2

    iget v4, p0, Lcom/wuyouwin/widget/SeekBar;->step:F

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/wuyouwin/widget/SeekBar;->setStep(F)V

    .line 71
    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wuyouwin/widget/SeekBar;->setValue(F)V

    .line 72
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    .end local v2    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    iget v0, p0, Lcom/wuyouwin/widget/SeekBar;->thumbSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/wuyouwin/widget/SeekBar;->thumbRadius:F

    .line 76
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 77
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 78
    return-void
.end method

.method private getScreenCoord()F
    .locals 4

    .line 248
    iget v0, p0, Lcom/wuyouwin/widget/SeekBar;->thumbRadius:F

    iget v1, p0, Lcom/wuyouwin/widget/SeekBar;->normalizedValue:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/wuyouwin/widget/SeekBar;->padding:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getThumbHoleColor()I
    .locals 5

    .line 222
    iget v0, p0, Lcom/wuyouwin/widget/SeekBar;->colorSecondary:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1e

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Lcom/wuyouwin/math/Mathf;->clamp(III)I

    move-result v0

    .line 223
    .local v0, "r":I
    iget v3, p0, Lcom/wuyouwin/widget/SeekBar;->colorSecondary:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1e

    invoke-static {v3, v1, v2}, Lcom/wuyouwin/math/Mathf;->clamp(III)I

    move-result v3

    .line 224
    .local v3, "g":I
    iget v4, p0, Lcom/wuyouwin/widget/SeekBar;->colorSecondary:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1e

    invoke-static {v4, v1, v2}, Lcom/wuyouwin/math/Mathf;->clamp(III)I

    move-result v1

    .line 225
    .local v1, "b":I
    invoke-static {v0, v3, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    return v2
.end method

.method private isInThumbRange(F)Z
    .locals 2
    .param p1, "touchX"    # F

    .line 244
    invoke-direct {p0}, Lcom/wuyouwin/widget/SeekBar;->getScreenCoord()F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/wuyouwin/widget/SeekBar;->thumbRadius:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setNormalizedValue(F)V
    .locals 6
    .param p1, "touchX"    # F

    .line 252
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 253
    .local v0, "width":I
    int-to-float v1, v0

    iget v2, p0, Lcom/wuyouwin/widget/SeekBar;->padding:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    return-void

    .line 254
    :cond_0
    iget v1, p0, Lcom/wuyouwin/widget/SeekBar;->step:F

    iget v3, p0, Lcom/wuyouwin/widget/SeekBar;->maxValue:F

    iget v4, p0, Lcom/wuyouwin/widget/SeekBar;->minValue:F

    sub-float/2addr v3, v4

    div-float/2addr v1, v3

    .line 255
    .local v1, "normalizedStep":F
    iget v3, p0, Lcom/wuyouwin/widget/SeekBar;->thumbRadius:F

    sub-float v3, p1, v3

    int-to-float v4, v0

    iget v5, p0, Lcom/wuyouwin/widget/SeekBar;->padding:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    invoke-static {v3, v1}, Lcom/wuyouwin/math/Mathf;->roundTo(FF)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v2, v4}, Lcom/wuyouwin/math/Mathf;->clamp(FFF)F

    move-result v2

    iput v2, p0, Lcom/wuyouwin/widget/SeekBar;->normalizedValue:F

    .line 256
    return-void
.end method


# virtual methods
.method public getMaxValue()F
    .locals 1

    .line 126
    iget v0, p0, Lcom/wuyouwin/widget/SeekBar;->maxValue:F

    return v0
.end method

.method public getMinValue()F
    .locals 1

    .line 118
    iget v0, p0, Lcom/wuyouwin/widget/SeekBar;->minValue:F

    return v0
.end method

.method public getOnValueChangeListener()Lcom/wuyouwin/widget/SeekBar$OnValueChangeListener;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/wuyouwin/widget/SeekBar;->onValueChangeListener:Lcom/wuyouwin/widget/SeekBar$OnValueChangeListener;

    return-object v0
.end method

.method public getStep()F
    .locals 1

    .line 106
    iget v0, p0, Lcom/wuyouwin/widget/SeekBar;->step:F

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/wuyouwin/widget/SeekBar;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()F
    .locals 4

    .line 97
    iget v0, p0, Lcom/wuyouwin/widget/SeekBar;->minValue:F

    iget v1, p0, Lcom/wuyouwin/widget/SeekBar;->normalizedValue:F

    iget v2, p0, Lcom/wuyouwin/widget/SeekBar;->maxValue:F

    iget v3, p0, Lcom/wuyouwin/widget/SeekBar;->minValue:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 178
    :try_start_0
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 181
    .local v2, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 182
    .local v3, "height":I
    if-eqz v2, :cond_6

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 184
    :cond_0
    int-to-float v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    .line 185
    .local v4, "centerY":F
    iget-object v6, v1, Lcom/wuyouwin/widget/SeekBar;->paint:Landroid/graphics/Paint;

    iget v7, v1, Lcom/wuyouwin/widget/SeekBar;->textSize:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 186
    iget-object v6, v1, Lcom/wuyouwin/widget/SeekBar;->paint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 187
    iget-object v6, v1, Lcom/wuyouwin/widget/SeekBar;->paint:Landroid/graphics/Paint;

    const v7, -0x8c8c8d

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget-object v6, v1, Lcom/wuyouwin/widget/SeekBar;->paint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 190
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/wuyouwin/widget/SeekBar;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual/range {p0 .. p0}, Lcom/wuyouwin/widget/SeekBar;->getValue()F

    move-result v9

    float-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/wuyouwin/widget/SeekBar;->suffix:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, v1, Lcom/wuyouwin/widget/SeekBar;->suffix:Ljava/lang/String;

    goto :goto_0

    .line 177
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "centerY":F
    .end local p0    # "this":Lcom/wuyouwin/widget/SeekBar;
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 190
    .restart local v2    # "width":I
    .restart local v3    # "height":I
    .restart local v4    # "centerY":F
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    const-string v8, ""

    :goto_0
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 191
    .local v6, "text":Ljava/lang/String;
    iget v8, v1, Lcom/wuyouwin/widget/SeekBar;->step:F

    invoke-static {v8}, Lcom/wuyouwin/math/Mathf;->fract(F)F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    const/4 v10, 0x0

    if-gtz v8, :cond_2

    iget v8, v1, Lcom/wuyouwin/widget/SeekBar;->minValue:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    move v7, v10

    :goto_1
    const/4 v8, 0x4

    add-int/2addr v8, v7

    iget-object v7, v1, Lcom/wuyouwin/widget/SeekBar;->suffix:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, v1, Lcom/wuyouwin/widget/SeekBar;->suffix:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    goto :goto_2

    :cond_4
    move v7, v10

    :goto_2
    add-int/2addr v8, v7

    .line 192
    .local v8, "repeatCount":I
    iget-object v7, v1, Lcom/wuyouwin/widget/SeekBar;->paint:Landroid/graphics/Paint;

    const/16 v11, 0x30

    invoke-static {v11, v8}, Lcom/wuyouwin/core/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 193
    .local v7, "textWidth":F
    int-to-float v11, v2

    iget-object v12, v1, Lcom/wuyouwin/widget/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    sub-float/2addr v11, v12

    iget v12, v1, Lcom/wuyouwin/widget/SeekBar;->textSize:F

    const/high16 v13, 0x40400000    # 3.0f

    div-float/2addr v12, v13

    add-float/2addr v12, v4

    iget-object v13, v1, Lcom/wuyouwin/widget/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 194
    iget v11, v1, Lcom/wuyouwin/widget/SeekBar;->thumbSize:F

    add-float/2addr v11, v7

    iput v11, v1, Lcom/wuyouwin/widget/SeekBar;->padding:F

    .line 195
    invoke-direct/range {p0 .. p0}, Lcom/wuyouwin/widget/SeekBar;->getScreenCoord()F

    move-result v11

    .line 196
    .local v11, "screenCoord":F
    iget-object v12, v1, Lcom/wuyouwin/widget/SeekBar;->rect:Landroid/graphics/RectF;

    iget v13, v1, Lcom/wuyouwin/widget/SeekBar;->barHeight:F

    mul-float/2addr v13, v5

    sub-float v13, v4, v13

    int-to-float v14, v2

    sub-float/2addr v14, v7

    iget v15, v1, Lcom/wuyouwin/widget/SeekBar;->barHeight:F

    mul-float/2addr v15, v5

    add-float/2addr v15, v4

    invoke-virtual {v12, v9, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 198
    iget-object v9, v1, Lcom/wuyouwin/widget/SeekBar;->paint:Landroid/graphics/Paint;

    const v12, -0x282829

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    iget-object v9, v1, Lcom/wuyouwin/widget/SeekBar;->rect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    mul-float/2addr v9, v5

    .line 201
    .local v9, "cornerRadius":F
    iget-object v12, v1, Lcom/wuyouwin/widget/SeekBar;->rect:Landroid/graphics/RectF;

    iget-object v13, v1, Lcom/wuyouwin/widget/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12, v9, v9, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 202
    iget-object v12, v1, Lcom/wuyouwin/widget/SeekBar;->paint:Landroid/graphics/Paint;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 204
    iget-object v12, v1, Lcom/wuyouwin/widget/SeekBar;->rect:Landroid/graphics/RectF;

    iput v11, v12, Landroid/graphics/RectF;->right:F

    .line 205
    iget-object v12, v1, Lcom/wuyouwin/widget/SeekBar;->paint:Landroid/graphics/Paint;

    iget v14, v1, Lcom/wuyouwin/widget/SeekBar;->colorSecondary:I

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    iget-object v12, v1, Lcom/wuyouwin/widget/SeekBar;->rect:Landroid/graphics/RectF;

    iget-object v14, v1, Lcom/wuyouwin/widget/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12, v9, v9, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 208
    iget-object v12, v1, Lcom/wuyouwin/widget/SeekBar;->rect:Landroid/graphics/RectF;

    int-to-float v14, v2

    sub-float/2addr v14, v7

    iput v14, v12, Landroid/graphics/RectF;->right:F

    .line 209
    iget-object v12, v1, Lcom/wuyouwin/widget/SeekBar;->glossyEffectGradient:Landroid/graphics/LinearGradient;

    if-nez v12, :cond_5

    .line 210
    new-instance v12, Landroid/graphics/LinearGradient;

    int-to-float v15, v3

    const v14, 0x33ffffff

    filled-new-array {v14, v10}, [I

    move-result-object v19

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v12

    move/from16 v20, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v20

    move-object/from16 v20, v10

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v12, v1, Lcom/wuyouwin/widget/SeekBar;->glossyEffectGradient:Landroid/graphics/LinearGradient;

    .line 212
    :cond_5
    iget-object v10, v1, Lcom/wuyouwin/widget/SeekBar;->paint:Landroid/graphics/Paint;

    iget-object v12, v1, Lcom/wuyouwin/widget/SeekBar;->glossyEffectGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 213
    iget-object v10, v1, Lcom/wuyouwin/widget/SeekBar;->rect:Landroid/graphics/RectF;

    iget-object v12, v1, Lcom/wuyouwin/widget/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10, v9, v9, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 214
    iget-object v10, v1, Lcom/wuyouwin/widget/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 216
    iget v10, v1, Lcom/wuyouwin/widget/SeekBar;->thumbRadius:F

    iget-object v12, v1, Lcom/wuyouwin/widget/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11, v4, v10, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 217
    iget-object v10, v1, Lcom/wuyouwin/widget/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-direct/range {p0 .. p0}, Lcom/wuyouwin/widget/SeekBar;->getThumbHoleColor()I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    iget v10, v1, Lcom/wuyouwin/widget/SeekBar;->thumbRadius:F

    mul-float/2addr v10, v5

    iget-object v5, v1, Lcom/wuyouwin/widget/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11, v4, v10, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit p0

    return-void

    .line 182
    .end local v4    # "centerY":F
    .end local v6    # "text":Ljava/lang/String;
    .end local v7    # "textWidth":F
    .end local v8    # "repeatCount":I
    .end local v9    # "cornerRadius":F
    .end local v11    # "screenCoord":F
    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    .line 177
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :goto_4
    monitor-exit p0

    throw v0

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    monitor-enter p0

    .line 170
    const/high16 v0, 0x40000000    # 2.0f

    :try_start_0
    invoke-static {v0}, Lcom/wuyouwin/core/UnitUtils;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 171
    .local v0, "margin":I
    const/high16 v1, 0x435c0000    # 220.0f

    invoke-static {v1}, Lcom/wuyouwin/core/UnitUtils;->dpToPx(F)F

    move-result v1

    float-to-int v1, v1

    .line 172
    .local v1, "width":I
    iget v2, p0, Lcom/wuyouwin/widget/SeekBar;->thumbSize:F

    int-to-float v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 173
    .local v2, "height":I
    add-int v3, v1, v0

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    invoke-static {v2, p2, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 169
    .end local v0    # "margin":I
    .end local v1    # "width":I
    .end local v2    # "height":I
    .end local p0    # "this":Lcom/wuyouwin/widget/SeekBar;
    .end local p1    # "widthMeasureSpec":I
    .end local p2    # "heightMeasureSpec":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcelable;

    .line 238
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 239
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "SUPER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 240
    const-string v1, "normalizedValue"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/wuyouwin/widget/SeekBar;->normalizedValue:F

    .line 241
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 230
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 231
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "SUPER"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 232
    const-string v1, "normalizedValue"

    iget v2, p0, Lcom/wuyouwin/widget/SeekBar;->normalizedValue:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 233
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 137
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 161
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 162
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 147
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/wuyouwin/widget/SeekBar;->setNormalizedValue(F)V

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 153
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/wuyouwin/widget/SeekBar;->setNormalizedValue(F)V

    .line 155
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 157
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 158
    iget-object v0, p0, Lcom/wuyouwin/widget/SeekBar;->onValueChangeListener:Lcom/wuyouwin/widget/SeekBar$OnValueChangeListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wuyouwin/widget/SeekBar;->onValueChangeListener:Lcom/wuyouwin/widget/SeekBar$OnValueChangeListener;

    invoke-virtual {p0}, Lcom/wuyouwin/widget/SeekBar;->getValue()F

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/wuyouwin/widget/SeekBar$OnValueChangeListener;->onValueChangeListener(Lcom/wuyouwin/widget/SeekBar;F)V

    goto :goto_0

    .line 139
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/wuyouwin/widget/SeekBar;->isInThumbRange(F)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 142
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/wuyouwin/widget/SeekBar;->setNormalizedValue(F)V

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 144
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 145
    nop

    .line 165
    :cond_5
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setMaxValue(F)V
    .locals 0
    .param p1, "maxValue"    # F

    monitor-enter p0

    .line 130
    :try_start_0
    iput p1, p0, Lcom/wuyouwin/widget/SeekBar;->maxValue:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 129
    .end local p0    # "this":Lcom/wuyouwin/widget/SeekBar;
    .end local p1    # "maxValue":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMinValue(F)V
    .locals 0
    .param p1, "minValue"    # F

    monitor-enter p0

    .line 122
    :try_start_0
    iput p1, p0, Lcom/wuyouwin/widget/SeekBar;->minValue:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 121
    .end local p0    # "this":Lcom/wuyouwin/widget/SeekBar;
    .end local p1    # "minValue":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnValueChangeListener(Lcom/wuyouwin/widget/SeekBar$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangeListener"    # Lcom/wuyouwin/widget/SeekBar$OnValueChangeListener;

    .line 93
    iput-object p1, p0, Lcom/wuyouwin/widget/SeekBar;->onValueChangeListener:Lcom/wuyouwin/widget/SeekBar$OnValueChangeListener;

    .line 94
    return-void
.end method

.method public declared-synchronized setStep(F)V
    .locals 5
    .param p1, "step"    # F

    monitor-enter p0

    .line 110
    :try_start_0
    iput p1, p0, Lcom/wuyouwin/widget/SeekBar;->step:F

    .line 111
    invoke-static {p1}, Lcom/wuyouwin/math/Mathf;->fract(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 113
    .local v1, "decimalPlaces":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v1, v2, :cond_0

    const/16 v2, 0x30

    goto :goto_0

    :cond_0
    const/16 v2, 0x23

    :goto_0
    invoke-static {v2, v1}, Lcom/wuyouwin/core/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "format":Ljava/lang/String;
    new-instance v3, Ljava/text/DecimalFormat;

    invoke-direct {v3, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/wuyouwin/widget/SeekBar;->decimalFormat:Ljava/text/DecimalFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 109
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v1    # "decimalPlaces":I
    .end local v2    # "format":Ljava/lang/String;
    .end local p0    # "this":Lcom/wuyouwin/widget/SeekBar;
    .end local p1    # "step":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSuffix(Ljava/lang/String;)V
    .locals 0
    .param p1, "suffix"    # Ljava/lang/String;

    monitor-enter p0

    .line 85
    :try_start_0
    iput-object p1, p0, Lcom/wuyouwin/widget/SeekBar;->suffix:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 84
    .end local p0    # "this":Lcom/wuyouwin/widget/SeekBar;
    .end local p1    # "suffix":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setValue(F)V
    .locals 3
    .param p1, "value"    # F

    monitor-enter p0

    .line 101
    :try_start_0
    iget v0, p0, Lcom/wuyouwin/widget/SeekBar;->step:F

    invoke-static {p1, v0}, Lcom/wuyouwin/math/Mathf;->roundTo(FF)F

    move-result v0

    iget v1, p0, Lcom/wuyouwin/widget/SeekBar;->minValue:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/wuyouwin/widget/SeekBar;->maxValue:F

    iget v2, p0, Lcom/wuyouwin/widget/SeekBar;->minValue:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/wuyouwin/math/Mathf;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/wuyouwin/widget/SeekBar;->normalizedValue:F

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 100
    .end local p0    # "this":Lcom/wuyouwin/widget/SeekBar;
    .end local p1    # "value":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
