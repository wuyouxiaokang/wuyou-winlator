.class public Lcom/winlator/inputcontrols/ControlElement;
.super Ljava/lang/Object;
.source "ControlElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/inputcontrols/ControlElement$Type;,
        Lcom/winlator/inputcontrols/ControlElement$Shape;,
        Lcom/winlator/inputcontrols/ControlElement$Range;
    }
.end annotation


# instance fields
.field private bindings:[Lcom/winlator/inputcontrols/Binding;

.field private final boundingBox:Landroid/graphics/Rect;

.field private currentPointerId:I

.field private currentPosition:Landroid/graphics/PointF;

.field private iconId:B

.field private final inputControlsView:Lcom/winlator/widget/InputControlsView;

.field private interpolator:Lcom/winlator/core/CubicBezierInterpolator;

.field private opacity:F

.field private orientation:B

.field private paths:[Landroid/graphics/Path;

.field private final propertyFlags:Lcom/winlator/core/Bitmask;

.field private range:Lcom/winlator/inputcontrols/ControlElement$Range;

.field private scale:F

.field private scroller:Lcom/winlator/inputcontrols/RangeScroller;

.field private shape:Lcom/winlator/inputcontrols/ControlElement$Shape;

.field private states:[Z

.field private text:Ljava/lang/String;

.field private touchTime:Ljava/lang/Object;

.field private type:Lcom/winlator/inputcontrols/ControlElement$Type;

.field private x:S

.field private y:S


# direct methods
.method public static synthetic $r8$lambda$uYcI0pebAVB95QzMkttgfDqzX0w(Lcom/winlator/inputcontrols/ControlElement;Lcom/winlator/inputcontrols/Binding;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/inputcontrols/ControlElement;->lambda$handleRadialMenuClick$0(Lcom/winlator/inputcontrols/Binding;)V

    return-void
.end method

.method public constructor <init>(Lcom/winlator/widget/InputControlsView;)V
    .locals 4
    .param p1, "inputControlsView"    # Lcom/winlator/widget/InputControlsView;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lcom/winlator/inputcontrols/ControlElement$Type;->BUTTON:Lcom/winlator/inputcontrols/ControlElement$Type;

    iput-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    .line 80
    sget-object v0, Lcom/winlator/inputcontrols/ControlElement$Shape;->CIRCLE:Lcom/winlator/inputcontrols/ControlElement$Shape;

    iput-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->shape:Lcom/winlator/inputcontrols/ControlElement$Shape;

    .line 81
    sget-object v0, Lcom/winlator/inputcontrols/Binding;->NONE:Lcom/winlator/inputcontrols/Binding;

    sget-object v1, Lcom/winlator/inputcontrols/Binding;->NONE:Lcom/winlator/inputcontrols/Binding;

    sget-object v2, Lcom/winlator/inputcontrols/Binding;->NONE:Lcom/winlator/inputcontrols/Binding;

    sget-object v3, Lcom/winlator/inputcontrols/Binding;->NONE:Lcom/winlator/inputcontrols/Binding;

    filled-new-array {v0, v1, v2, v3}, [Lcom/winlator/inputcontrols/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    .line 82
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/winlator/inputcontrols/ControlElement;->scale:F

    .line 83
    iput v0, p0, Lcom/winlator/inputcontrols/ControlElement;->opacity:F

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/winlator/inputcontrols/ControlElement;->currentPointerId:I

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->boundingBox:Landroid/graphics/Rect;

    .line 88
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->states:[Z

    .line 89
    new-instance v0, Lcom/winlator/core/Bitmask;

    const/16 v1, 0x10

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/winlator/core/Bitmask;-><init>([I)V

    iput-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->text:Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    .line 102
    return-void
.end method

.method private computeBoundingBox()Landroid/graphics/Rect;
    .locals 8

    .line 299
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/winlator/widget/InputControlsView;->getSnappingSize()I

    move-result v0

    .line 300
    .local v0, "snappingSize":I
    const/4 v1, 0x0

    .line 301
    .local v1, "halfWidth":I
    const/4 v2, 0x0

    .line 303
    .local v2, "halfHeight":I
    sget-object v3, Lcom/winlator/inputcontrols/ControlElement$1;->$SwitchMap$com$winlator$inputcontrols$ControlElement$Type:[I

    iget-object v4, p0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 345
    :pswitch_0
    mul-int/lit8 v1, v0, 0x3

    .line 346
    mul-int/lit8 v2, v0, 0x3

    goto :goto_1

    .line 306
    :pswitch_1
    sget-object v3, Lcom/winlator/inputcontrols/ControlElement$1;->$SwitchMap$com$winlator$inputcontrols$ControlElement$Shape:[I

    iget-object v4, p0, Lcom/winlator/inputcontrols/ControlElement;->shape:Lcom/winlator/inputcontrols/ControlElement$Shape;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 317
    :pswitch_2
    mul-int/lit8 v1, v0, 0x3

    .line 318
    mul-int/lit8 v2, v0, 0x3

    goto :goto_0

    .line 313
    :pswitch_3
    int-to-float v3, v0

    const/high16 v4, 0x40200000    # 2.5f

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 314
    int-to-float v3, v0

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 315
    goto :goto_0

    .line 309
    :pswitch_4
    mul-int/lit8 v1, v0, 0x4

    .line 310
    mul-int/lit8 v2, v0, 0x2

    .line 311
    nop

    .line 321
    :goto_0
    goto :goto_1

    .line 334
    :pswitch_5
    iget-object v3, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x2

    mul-int v1, v0, v3

    .line 335
    mul-int/lit8 v2, v0, 0x2

    .line 337
    iget-byte v3, p0, Lcom/winlator/inputcontrols/ControlElement;->orientation:B

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 338
    move v3, v1

    .line 339
    .local v3, "tmp":I
    move v1, v2

    .line 340
    move v2, v3

    .line 341
    .end local v3    # "tmp":I
    goto :goto_1

    .line 329
    :pswitch_6
    mul-int/lit8 v1, v0, 0x6

    .line 330
    mul-int/lit8 v2, v0, 0x6

    .line 331
    goto :goto_1

    .line 323
    :pswitch_7
    mul-int/lit8 v1, v0, 0x7

    .line 324
    mul-int/lit8 v2, v0, 0x7

    .line 325
    nop

    .line 350
    :cond_0
    :goto_1
    int-to-float v3, v1

    iget v4, p0, Lcom/winlator/inputcontrols/ControlElement;->scale:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 351
    int-to-float v3, v2

    iget v4, p0, Lcom/winlator/inputcontrols/ControlElement;->scale:F

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 352
    iget-object v3, p0, Lcom/winlator/inputcontrols/ControlElement;->boundingBox:Landroid/graphics/Rect;

    iget-short v4, p0, Lcom/winlator/inputcontrols/ControlElement;->x:S

    sub-int/2addr v4, v1

    iget-short v5, p0, Lcom/winlator/inputcontrols/ControlElement;->y:S

    sub-int/2addr v5, v2

    iget-short v6, p0, Lcom/winlator/inputcontrols/ControlElement;->x:S

    add-int/2addr v6, v1

    iget-short v7, p0, Lcom/winlator/inputcontrols/ControlElement;->y:S

    add-int/2addr v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 353
    iget-object v3, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/winlator/core/Bitmask;->unset(I)V

    .line 354
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/winlator/inputcontrols/ControlElement;->paths:[Landroid/graphics/Path;

    .line 355
    iget-object v3, p0, Lcom/winlator/inputcontrols/ControlElement;->boundingBox:Landroid/graphics/Rect;

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private drawIcon(Landroid/graphics/Canvas;FFFFIZ)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cx"    # F
    .param p3, "cy"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "iconId"    # I
    .param p7, "automargin"    # Z

    .line 758
    move-object v0, p0

    iget-object v1, v0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v1}, Lcom/winlator/widget/InputControlsView;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 759
    .local v1, "paint":Landroid/graphics/Paint;
    iget-object v2, v0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    move/from16 v3, p6

    int-to-byte v4, v3

    invoke-virtual {v2, v4}, Lcom/winlator/widget/InputControlsView;->getIcon(B)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 760
    .local v2, "icon":Landroid/graphics/Bitmap;
    iget-object v4, v0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v4}, Lcom/winlator/widget/InputControlsView;->getDarkColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v4

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v4}, Lcom/winlator/widget/InputControlsView;->getLightColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 761
    iget-object v4, v0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v4}, Lcom/winlator/widget/InputControlsView;->getSnappingSize()I

    move-result v4

    int-to-float v4, v4

    .line 762
    .local v4, "snappingSize":F
    const/4 v5, 0x0

    if-eqz p7, :cond_3

    iget-object v6, v0, Lcom/winlator/inputcontrols/ControlElement;->shape:Lcom/winlator/inputcontrols/ControlElement$Shape;

    sget-object v7, Lcom/winlator/inputcontrols/ControlElement$Shape;->CIRCLE:Lcom/winlator/inputcontrols/ControlElement$Shape;

    if-eq v6, v7, :cond_1

    iget-object v6, v0, Lcom/winlator/inputcontrols/ControlElement;->shape:Lcom/winlator/inputcontrols/ControlElement$Shape;

    sget-object v7, Lcom/winlator/inputcontrols/ControlElement$Shape;->SQUARE:Lcom/winlator/inputcontrols/ControlElement$Shape;

    if-ne v6, v7, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_2

    :goto_1
    const/high16 v6, 0x40000000    # 2.0f

    :goto_2
    mul-float/2addr v6, v4

    iget v7, v0, Lcom/winlator/inputcontrols/ControlElement;->scale:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    goto :goto_3

    :cond_3
    move v6, v5

    .line 763
    .local v6, "margin":I
    :goto_3
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->min(FF)F

    move-result v7

    int-to-float v8, v6

    sub-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    .line 765
    .local v7, "halfSize":I
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v8, v5, v5, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v5, v8

    .line 766
    .local v5, "srcRect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    int-to-float v9, v7

    sub-float v9, p2, v9

    float-to-int v9, v9

    int-to-float v10, v7

    sub-float v10, p3, v10

    float-to-int v10, v10

    int-to-float v11, v7

    add-float/2addr v11, p2

    float-to-int v11, v11

    int-to-float v12, v7

    add-float v12, p3, v12

    float-to-int v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 767
    .local v8, "dstRect":Landroid/graphics/Rect;
    move-object v9, p1

    invoke-virtual {p1, v2, v5, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 768
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 769
    return-void
.end method

.method private getBindingTextAt(I)Ljava/lang/String;
    .locals 10
    .param p1, "index"    # I

    .line 359
    invoke-virtual {p0, p1}, Lcom/winlator/inputcontrols/ControlElement;->getBindingAt(I)Lcom/winlator/inputcontrols/Binding;

    move-result-object v0

    .line 360
    .local v0, "binding":Lcom/winlator/inputcontrols/Binding;
    invoke-virtual {v0}, Lcom/winlator/inputcontrols/Binding;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NUMPAD "

    const-string v3, "NP"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BUTTON "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x7

    if-le v2, v4, :cond_2

    .line 362
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, "parts":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .local v4, "sb":Ljava/lang/StringBuilder;
    array-length v5, v2

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_0

    aget-object v8, v2, v7

    .local v8, "part":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local v8    # "part":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 365
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/winlator/inputcontrols/Binding;->isMouse()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v3, "M"

    :cond_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 367
    .end local v2    # "parts":[Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    return-object v1
.end method

.method private getDisplayText()Ljava/lang/String;
    .locals 4

    .line 371
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->text:Ljava/lang/String;

    return-object v0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    sget-object v1, Lcom/winlator/inputcontrols/ControlElement$Type;->BUTTON:Lcom/winlator/inputcontrols/ControlElement$Type;

    if-ne v0, v1, :cond_4

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":B
    :goto_0
    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 378
    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    aget-object v2, v2, v1

    sget-object v3, Lcom/winlator/inputcontrols/Binding;->NONE:Lcom/winlator/inputcontrols/Binding;

    if-eq v2, v3, :cond_2

    .line 379
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_1
    invoke-direct {p0, v1}, Lcom/winlator/inputcontrols/ControlElement;->getBindingTextAt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_2
    add-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    goto :goto_0

    :cond_3
    nop

    .line 383
    .end local v1    # "i":B
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 386
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/winlator/inputcontrols/ControlElement;->getBindingTextAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRangeBindingForIndex(Lcom/winlator/inputcontrols/ControlElement$Range;I)Lcom/winlator/inputcontrols/Binding;
    .locals 2
    .param p0, "range"    # Lcom/winlator/inputcontrols/ControlElement$Range;
    .param p1, "index"    # I

    .line 397
    sget-object v0, Lcom/winlator/inputcontrols/ControlElement$1;->$SwitchMap$com$winlator$inputcontrols$ControlElement$Range:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "KEY_"

    packed-switch v0, :pswitch_data_0

    .line 407
    sget-object v0, Lcom/winlator/inputcontrols/Binding;->NONE:Lcom/winlator/inputcontrols/Binding;

    return-object v0

    .line 405
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY_KP_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/inputcontrols/Binding;->valueOf(Ljava/lang/String;)Lcom/winlator/inputcontrols/Binding;

    move-result-object v0

    return-object v0

    .line 403
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY_F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/inputcontrols/Binding;->valueOf(Ljava/lang/String;)Lcom/winlator/inputcontrols/Binding;

    move-result-object v0

    return-object v0

    .line 401
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/inputcontrols/Binding;->valueOf(Ljava/lang/String;)Lcom/winlator/inputcontrols/Binding;

    move-result-object v0

    return-object v0

    .line 399
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x41

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/inputcontrols/Binding;->valueOf(Ljava/lang/String;)Lcom/winlator/inputcontrols/Binding;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getRangeTextForIndex(Lcom/winlator/inputcontrols/ControlElement$Range;I)Ljava/lang/String;
    .locals 2
    .param p0, "range"    # Lcom/winlator/inputcontrols/ControlElement$Range;
    .param p1, "index"    # I

    .line 412
    sget-object v0, Lcom/winlator/inputcontrols/ControlElement$1;->$SwitchMap$com$winlator$inputcontrols$ControlElement$Range:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 422
    const-string v0, ""

    return-object v0

    .line 420
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 418
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 416
    :pswitch_2
    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 414
    :pswitch_3
    add-int/lit8 v0, p1, 0x41

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getTextSizeForWidth(Landroid/graphics/Paint;Ljava/lang/String;F)F
    .locals 3
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "desiredWidth"    # F

    .line 391
    const/16 v0, 0x30

    .line 392
    .local v0, "testTextSize":B
    const/high16 v1, 0x42400000    # 48.0f

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 393
    mul-float/2addr v1, p2

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v1, v2

    return v1
.end method

.method private handleRadialMenuClick(FF)V
    .locals 26
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1037
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v3}, Lcom/winlator/widget/InputControlsView;->getSnappingSize()I

    move-result v3

    .line 1038
    .local v3, "snappingSize":I
    iget-object v4, v0, Lcom/winlator/inputcontrols/ControlElement;->boundingBox:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    .line 1039
    .local v4, "cx":F
    iget-object v5, v0, Lcom/winlator/inputcontrols/ControlElement;->boundingBox:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    .line 1040
    .local v5, "cy":F
    iget-object v6, v0, Lcom/winlator/inputcontrols/ControlElement;->boundingBox:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    int-to-float v8, v3

    mul-float/2addr v8, v7

    add-float/2addr v6, v8

    .line 1041
    .local v6, "innerRadius":F
    iget-object v8, v0, Lcom/winlator/inputcontrols/ControlElement;->boundingBox:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v3

    iget v10, v0, Lcom/winlator/inputcontrols/ControlElement;->scale:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    .line 1042
    .local v8, "outerRadius":F
    const/4 v9, 0x0

    .line 1043
    .local v9, "startAngle":F
    sget-object v10, Lcom/winlator/inputcontrols/Binding;->NONE:Lcom/winlator/inputcontrols/Binding;

    .line 1045
    .local v10, "clickedBinding":Lcom/winlator/inputcontrols/Binding;
    const/4 v11, 0x0

    .local v11, "i":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_0
    iget-object v13, v0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    array-length v13, v13

    if-gt v11, v13, :cond_4

    .line 1046
    int-to-float v13, v11

    iget-object v14, v0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    array-length v14, v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    .line 1047
    .local v13, "t":F
    float-to-double v14, v13

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v16

    const-wide v16, 0x4012d97c7f3321d2L    # 4.71238898038469

    add-double v14, v14, v16

    double-to-float v14, v14

    .line 1049
    .local v14, "endAngle":F
    if-lez v11, :cond_3

    .line 1050
    add-float v15, v9, v14

    mul-float/2addr v15, v7

    .line 1051
    .local v15, "middleAngle":F
    add-float v16, v6, v8

    move/from16 v17, v3

    .end local v3    # "snappingSize":I
    .local v17, "snappingSize":I
    mul-float v3, v16, v7

    .line 1052
    .local v3, "touchAreaCenter":F
    move/from16 v18, v8

    .end local v8    # "outerRadius":F
    .local v18, "outerRadius":F
    float-to-double v7, v4

    move-object/from16 v19, v10

    move/from16 v20, v11

    .end local v10    # "clickedBinding":Lcom/winlator/inputcontrols/Binding;
    .end local v11    # "i":I
    .local v19, "clickedBinding":Lcom/winlator/inputcontrols/Binding;
    .local v20, "i":I
    float-to-double v10, v15

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    move/from16 v21, v12

    move/from16 v22, v13

    .end local v12    # "j":I
    .end local v13    # "t":F
    .local v21, "j":I
    .local v22, "t":F
    float-to-double v12, v3

    mul-double/2addr v10, v12

    add-double/2addr v7, v10

    double-to-int v7, v7

    int-to-short v7, v7

    int-to-float v7, v7

    .line 1053
    .local v7, "touchAreaX":F
    float-to-double v10, v5

    float-to-double v12, v15

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    float-to-double v0, v3

    mul-double/2addr v12, v0

    add-double/2addr v10, v12

    double-to-int v0, v10

    int-to-short v0, v0

    int-to-float v0, v0

    .line 1055
    .local v0, "touchAreaY":F
    float-to-double v10, v4

    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    move v8, v0

    .end local v0    # "touchAreaY":F
    .local v8, "touchAreaY":F
    float-to-double v0, v3

    mul-double/2addr v12, v0

    add-double/2addr v10, v12

    double-to-float v0, v10

    .line 1056
    .local v0, "lineAx":F
    float-to-double v10, v5

    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    move/from16 v23, v0

    .end local v0    # "lineAx":F
    .local v23, "lineAx":F
    float-to-double v0, v3

    mul-double/2addr v12, v0

    add-double/2addr v10, v12

    double-to-float v0, v10

    .line 1057
    .local v0, "lineAy":F
    float-to-double v10, v4

    float-to-double v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    move/from16 v24, v0

    .end local v0    # "lineAy":F
    .local v24, "lineAy":F
    float-to-double v0, v3

    mul-double/2addr v12, v0

    add-double/2addr v10, v12

    double-to-float v0, v10

    .line 1058
    .local v0, "lineBx":F
    float-to-double v10, v5

    float-to-double v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    move v1, v14

    move/from16 v25, v15

    .end local v14    # "endAngle":F
    .end local v15    # "middleAngle":F
    .local v1, "endAngle":F
    .local v25, "middleAngle":F
    float-to-double v14, v3

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v10, v10

    .line 1060
    .local v10, "lineBy":F
    move/from16 v11, p1

    invoke-static {v7, v8, v11, v2}, Lcom/winlator/math/Mathf;->distance(FFFF)F

    move-result v12

    move/from16 v13, v23

    move/from16 v14, v24

    .end local v23    # "lineAx":F
    .end local v24    # "lineAy":F
    .local v13, "lineAx":F
    .local v14, "lineAy":F
    invoke-static {v13, v14, v0, v10}, Lcom/winlator/math/Mathf;->distance(FFFF)F

    move-result v15

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v15, v15, v16

    cmpg-float v12, v12, v15

    if-gtz v12, :cond_2

    .line 1061
    invoke-static {v4, v5, v11, v2}, Lcom/winlator/math/Mathf;->distance(FFFF)F

    move-result v12

    cmpl-float v12, v12, v6

    if-lez v12, :cond_1

    .line 1062
    invoke-static {v4, v5, v11, v2}, Lcom/winlator/math/Mathf;->distance(FFFF)F

    move-result v12

    cmpg-float v12, v12, v18

    if-gtz v12, :cond_0

    .line 1063
    move-object/from16 v12, p0

    iget-object v15, v12, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    aget-object v15, v15, v21

    .line 1064
    .end local v19    # "clickedBinding":Lcom/winlator/inputcontrols/Binding;
    .local v15, "clickedBinding":Lcom/winlator/inputcontrols/Binding;
    move-object v10, v15

    goto :goto_3

    .line 1062
    .end local v15    # "clickedBinding":Lcom/winlator/inputcontrols/Binding;
    .restart local v19    # "clickedBinding":Lcom/winlator/inputcontrols/Binding;
    :cond_0
    move-object/from16 v12, p0

    goto :goto_1

    .line 1061
    :cond_1
    move-object/from16 v12, p0

    goto :goto_1

    .line 1060
    :cond_2
    move-object/from16 v12, p0

    .line 1066
    :goto_1
    add-int/lit8 v15, v21, 0x1

    .end local v21    # "j":I
    .local v15, "j":I
    goto :goto_2

    .line 1049
    .end local v0    # "lineBx":F
    .end local v1    # "endAngle":F
    .end local v7    # "touchAreaX":F
    .end local v15    # "j":I
    .end local v17    # "snappingSize":I
    .end local v18    # "outerRadius":F
    .end local v19    # "clickedBinding":Lcom/winlator/inputcontrols/Binding;
    .end local v20    # "i":I
    .end local v22    # "t":F
    .end local v25    # "middleAngle":F
    .local v3, "snappingSize":I
    .local v8, "outerRadius":F
    .local v10, "clickedBinding":Lcom/winlator/inputcontrols/Binding;
    .restart local v11    # "i":I
    .restart local v12    # "j":I
    .local v13, "t":F
    .local v14, "endAngle":F
    :cond_3
    move/from16 v17, v3

    move/from16 v16, v7

    move/from16 v18, v8

    move-object/from16 v19, v10

    move/from16 v20, v11

    move/from16 v21, v12

    move/from16 v22, v13

    move-object v12, v0

    move v11, v1

    move v1, v14

    .end local v3    # "snappingSize":I
    .end local v8    # "outerRadius":F
    .end local v10    # "clickedBinding":Lcom/winlator/inputcontrols/Binding;
    .end local v11    # "i":I
    .end local v12    # "j":I
    .end local v13    # "t":F
    .end local v14    # "endAngle":F
    .restart local v1    # "endAngle":F
    .restart local v17    # "snappingSize":I
    .restart local v18    # "outerRadius":F
    .restart local v19    # "clickedBinding":Lcom/winlator/inputcontrols/Binding;
    .restart local v20    # "i":I
    .restart local v21    # "j":I
    .restart local v22    # "t":F
    move/from16 v15, v21

    .line 1069
    .end local v21    # "j":I
    .restart local v15    # "j":I
    :goto_2
    move v9, v1

    .line 1045
    .end local v1    # "endAngle":F
    .end local v22    # "t":F
    add-int/lit8 v0, v20, 0x1

    move v1, v11

    move/from16 v7, v16

    move/from16 v3, v17

    move/from16 v8, v18

    move-object/from16 v10, v19

    move v11, v0

    move-object v0, v12

    move v12, v15

    .end local v20    # "i":I
    .local v0, "i":I
    goto/16 :goto_0

    .end local v0    # "i":I
    .end local v15    # "j":I
    .end local v17    # "snappingSize":I
    .end local v18    # "outerRadius":F
    .end local v19    # "clickedBinding":Lcom/winlator/inputcontrols/Binding;
    .restart local v3    # "snappingSize":I
    .restart local v8    # "outerRadius":F
    .restart local v10    # "clickedBinding":Lcom/winlator/inputcontrols/Binding;
    .restart local v11    # "i":I
    .restart local v12    # "j":I
    :cond_4
    move/from16 v17, v3

    move/from16 v18, v8

    move-object/from16 v19, v10

    move/from16 v20, v11

    move/from16 v21, v12

    move-object v12, v0

    move v11, v1

    .line 1072
    .end local v3    # "snappingSize":I
    .end local v8    # "outerRadius":F
    .end local v11    # "i":I
    .end local v12    # "j":I
    .restart local v17    # "snappingSize":I
    .restart local v18    # "outerRadius":F
    :goto_3
    sget-object v0, Lcom/winlator/inputcontrols/Binding;->NONE:Lcom/winlator/inputcontrols/Binding;

    if-eq v10, v0, :cond_5

    .line 1073
    iget-object v0, v12, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->unset(I)V

    .line 1074
    move-object v0, v10

    .line 1075
    .local v0, "finalBinding":Lcom/winlator/inputcontrols/Binding;
    iget-object v1, v12, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lcom/winlator/widget/InputControlsView;->handleInputEvent(Lcom/winlator/inputcontrols/Binding;Z)V

    .line 1076
    iget-object v1, v12, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    new-instance v3, Lcom/winlator/inputcontrols/ControlElement$$ExternalSyntheticLambda0;

    invoke-direct {v3, v12, v0}, Lcom/winlator/inputcontrols/ControlElement$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/inputcontrols/ControlElement;Lcom/winlator/inputcontrols/Binding;)V

    const-wide/16 v7, 0x1e

    invoke-virtual {v1, v3, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1078
    .end local v0    # "finalBinding":Lcom/winlator/inputcontrols/Binding;
    :cond_5
    return-void
.end method

.method private isKeepButtonPressedAfterMinTime()Z
    .locals 4

    .line 811
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/winlator/inputcontrols/ControlElement;->getBindingAt(I)Lcom/winlator/inputcontrols/Binding;

    move-result-object v1

    .line 812
    .local v1, "binding":Lcom/winlator/inputcontrols/Binding;
    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/winlator/inputcontrols/Binding;->GAMEPAD_BUTTON_L3:Lcom/winlator/inputcontrols/Binding;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/winlator/inputcontrols/Binding;->GAMEPAD_BUTTON_R3:Lcom/winlator/inputcontrols/Binding;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private synthetic lambda$handleRadialMenuClick$0(Lcom/winlator/inputcontrols/Binding;)V
    .locals 2
    .param p1, "finalBinding"    # Lcom/winlator/inputcontrols/Binding;

    .line 1076
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/winlator/widget/InputControlsView;->handleInputEvent(Lcom/winlator/inputcontrols/Binding;Z)V

    return-void
.end method

.method private reset()V
    .locals 7

    .line 105
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/winlator/inputcontrols/Binding;

    iput-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    .line 106
    sget-object v0, Lcom/winlator/inputcontrols/Binding;->NONE:Lcom/winlator/inputcontrols/Binding;

    invoke-virtual {p0, v0}, Lcom/winlator/inputcontrols/ControlElement;->setBinding(Lcom/winlator/inputcontrols/Binding;)V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->scroller:Lcom/winlator/inputcontrols/RangeScroller;

    .line 108
    const-string v1, ""

    iput-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->text:Ljava/lang/String;

    .line 110
    sget-object v1, Lcom/winlator/inputcontrols/ControlElement$1;->$SwitchMap$com$winlator$inputcontrols$ControlElement$Type:[I

    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 132
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/winlator/inputcontrols/ControlElement;->setBindingCount(I)V

    goto :goto_0

    .line 128
    :pswitch_1
    sget-object v1, Lcom/winlator/inputcontrols/ControlElement$Shape;->SQUARE:Lcom/winlator/inputcontrols/ControlElement$Shape;

    iput-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->shape:Lcom/winlator/inputcontrols/ControlElement$Shape;

    .line 129
    const-string v1, "C1"

    iput-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->text:Ljava/lang/String;

    .line 130
    goto :goto_0

    .line 125
    :pswitch_2
    new-instance v1, Lcom/winlator/inputcontrols/RangeScroller;

    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-direct {v1, v2, p0}, Lcom/winlator/inputcontrols/RangeScroller;-><init>(Lcom/winlator/widget/InputControlsView;Lcom/winlator/inputcontrols/ControlElement;)V

    iput-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->scroller:Lcom/winlator/inputcontrols/RangeScroller;

    .line 126
    goto :goto_0

    .line 119
    :pswitch_3
    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    sget-object v6, Lcom/winlator/inputcontrols/Binding;->MOUSE_MOVE_UP:Lcom/winlator/inputcontrols/Binding;

    aput-object v6, v1, v4

    .line 120
    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    sget-object v6, Lcom/winlator/inputcontrols/Binding;->MOUSE_MOVE_RIGHT:Lcom/winlator/inputcontrols/Binding;

    aput-object v6, v1, v3

    .line 121
    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    sget-object v3, Lcom/winlator/inputcontrols/Binding;->MOUSE_MOVE_DOWN:Lcom/winlator/inputcontrols/Binding;

    aput-object v3, v1, v2

    .line 122
    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    sget-object v2, Lcom/winlator/inputcontrols/Binding;->MOUSE_MOVE_LEFT:Lcom/winlator/inputcontrols/Binding;

    aput-object v2, v1, v5

    .line 123
    goto :goto_0

    .line 113
    :pswitch_4
    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    sget-object v6, Lcom/winlator/inputcontrols/Binding;->KEY_W:Lcom/winlator/inputcontrols/Binding;

    aput-object v6, v1, v4

    .line 114
    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    sget-object v6, Lcom/winlator/inputcontrols/Binding;->KEY_D:Lcom/winlator/inputcontrols/Binding;

    aput-object v6, v1, v3

    .line 115
    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    sget-object v3, Lcom/winlator/inputcontrols/Binding;->KEY_S:Lcom/winlator/inputcontrols/Binding;

    aput-object v3, v1, v2

    .line 116
    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    sget-object v2, Lcom/winlator/inputcontrols/Binding;->KEY_A:Lcom/winlator/inputcontrols/Binding;

    aput-object v2, v1, v5

    .line 117
    nop

    .line 136
    :goto_0
    iput-byte v4, p0, Lcom/winlator/inputcontrols/ControlElement;->iconId:B

    .line 137
    iput-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->range:Lcom/winlator/inputcontrols/ControlElement$Range;

    .line 138
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->set(I)V

    .line 139
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public containsPoint(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 803
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    sget-object v1, Lcom/winlator/inputcontrols/ControlElement$Type;->RADIAL_MENU:Lcom/winlator/inputcontrols/ControlElement$Type;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->boundingBox:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v1}, Lcom/winlator/widget/InputControlsView;->getSnappingSize()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/winlator/inputcontrols/ControlElement;->scale:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 805
    .local v0, "outerRadius":F
    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->boundingBox:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->boundingBox:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2, p1, p2}, Lcom/winlator/math/Mathf;->distance(FFFF)F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 807
    .end local v0    # "outerRadius":F
    :cond_1
    invoke-virtual {p0}, Lcom/winlator/inputcontrols/ControlElement;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float v2, p1, v1

    float-to-int v2, v2

    add-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 48
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 427
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v8, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/winlator/widget/InputControlsView;->getSnappingSize()I

    move-result v10

    .line 428
    .local v10, "snappingSize":I
    iget-object v0, v8, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/winlator/widget/InputControlsView;->getPaint()Landroid/graphics/Paint;

    move-result-object v11

    .line 429
    .local v11, "paint":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/inputcontrols/ControlElement;->getLightColor()I

    move-result v12

    .line 431
    .local v12, "lightColor":I
    iget-object v0, v8, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/inputcontrols/ControlElement;->getHighlightColor()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v12

    :goto_0
    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 432
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 433
    int-to-float v0, v10

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float v14, v0, v1

    .line 434
    .local v14, "strokeWidth":F
    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/inputcontrols/ControlElement;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v15

    .line 437
    .local v15, "boundingBox":Landroid/graphics/Rect;
    sget-object v0, Lcom/winlator/inputcontrols/ControlElement$1;->$SwitchMap$com$winlator$inputcontrols$ControlElement$Type:[I

    iget-object v1, v8, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/high16 v1, 0x3f400000    # 0.75f

    const/16 v16, 0x0

    const/high16 v17, 0x40000000    # 2.0f

    const/high16 v18, 0x3f000000    # 0.5f

    packed-switch v0, :pswitch_data_0

    move-object v13, v9

    move v5, v10

    move/from16 v32, v14

    move/from16 v47, v12

    move-object v12, v11

    move/from16 v11, v47

    goto/16 :goto_18

    .line 664
    :pswitch_0
    const/4 v0, 0x0

    .line 665
    .local v0, "startAngle":F
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v6, v1

    .line 666
    .local v6, "cx":F
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v5, v1

    .line 667
    .local v5, "cy":F
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v18

    int-to-float v2, v10

    mul-float v2, v2, v18

    add-float v4, v1, v2

    .line 668
    .local v4, "innerRadius":F
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v10

    iget v3, v8, Lcom/winlator/inputcontrols/ControlElement;->scale:F

    mul-float/2addr v2, v3

    add-float v3, v1, v2

    .line 669
    .local v3, "outerRadius":F
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float v2, v1, v18

    .line 670
    .local v2, "radius":F
    invoke-virtual {v11}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    .line 672
    .local v1, "oldColor":I
    iget-object v13, v8, Lcom/winlator/inputcontrols/ControlElement;->paths:[Landroid/graphics/Path;

    const-wide v20, 0x4012d97c7f3321d2L    # 4.71238898038469

    const-wide v22, 0x400921fb54442d18L    # Math.PI

    const v24, 0x3ecccccd    # 0.4f

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    if-nez v13, :cond_3

    .line 673
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    .line 674
    .local v13, "path0":Landroid/graphics/Path;
    new-instance v27, Landroid/graphics/Path;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v28, v27

    .line 675
    .local v28, "path1":Landroid/graphics/Path;
    new-instance v7, Landroid/graphics/RectF;

    move/from16 v29, v0

    .end local v0    # "startAngle":F
    .local v29, "startAngle":F
    sub-float v0, v6, v3

    move/from16 v30, v1

    .end local v1    # "oldColor":I
    .local v30, "oldColor":I
    sub-float v1, v5, v3

    move/from16 v31, v12

    .end local v12    # "lightColor":I
    .local v31, "lightColor":I
    add-float v12, v6, v3

    move/from16 v32, v14

    .end local v14    # "strokeWidth":F
    .local v32, "strokeWidth":F
    add-float v14, v5, v3

    invoke-direct {v7, v0, v1, v12, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v7

    .line 676
    .local v0, "outerOval":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    sub-float v7, v6, v4

    sub-float v12, v5, v4

    add-float v14, v6, v4

    move-object/from16 v33, v15

    .end local v15    # "boundingBox":Landroid/graphics/Rect;
    .local v33, "boundingBox":Landroid/graphics/Rect;
    add-float v15, v5, v4

    invoke-direct {v1, v7, v12, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 677
    .local v1, "innerOval":Landroid/graphics/RectF;
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    double-to-float v7, v14

    .line 678
    .local v7, "outerMargin":F
    div-float v12, v3, v4

    mul-float/2addr v12, v7

    .line 680
    .local v12, "innerMargin":F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    iget-object v15, v8, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    array-length v15, v15

    if-gt v14, v15, :cond_2

    .line 681
    int-to-float v15, v14

    iget-object v9, v8, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    array-length v9, v9

    int-to-float v9, v9

    div-float/2addr v15, v9

    .line 682
    .local v15, "t":F
    float-to-double v8, v15

    mul-double v8, v8, v22

    mul-double v8, v8, v25

    add-double v8, v8, v20

    double-to-float v8, v8

    .line 684
    .local v8, "endAngle":F
    if-lez v14, :cond_1

    .line 685
    move v9, v14

    move/from16 v34, v15

    .end local v14    # "i":I
    .end local v15    # "t":F
    .local v9, "i":I
    .local v34, "t":F
    float-to-double v14, v6

    move-object/from16 v35, v11

    .end local v11    # "paint":Landroid/graphics/Paint;
    .local v35, "paint":Landroid/graphics/Paint;
    add-float v11, v29, v12

    move/from16 v37, v9

    move/from16 v36, v10

    .end local v9    # "i":I
    .end local v10    # "snappingSize":I
    .local v36, "snappingSize":I
    .local v37, "i":I
    float-to-double v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    move-object/from16 v38, v1

    move v11, v2

    .end local v1    # "innerOval":Landroid/graphics/RectF;
    .end local v2    # "radius":F
    .local v11, "radius":F
    .local v38, "innerOval":Landroid/graphics/RectF;
    float-to-double v1, v4

    mul-double/2addr v9, v1

    add-double/2addr v14, v9

    double-to-float v1, v14

    float-to-double v9, v5

    add-float v2, v29, v12

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    move/from16 v39, v11

    move v2, v12

    .end local v11    # "radius":F
    .end local v12    # "innerMargin":F
    .local v2, "innerMargin":F
    .local v39, "radius":F
    float-to-double v11, v4

    mul-double/2addr v14, v11

    add-double/2addr v9, v14

    double-to-float v9, v9

    invoke-virtual {v13, v1, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 686
    float-to-double v9, v6

    add-float v1, v29, v7

    float-to-double v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    float-to-double v14, v3

    mul-double/2addr v11, v14

    add-double/2addr v9, v11

    double-to-float v1, v9

    float-to-double v9, v5

    add-float v11, v29, v7

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    float-to-double v14, v3

    mul-double/2addr v11, v14

    add-double/2addr v9, v11

    double-to-float v9, v9

    invoke-virtual {v13, v1, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 687
    add-float v1, v29, v7

    float-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    double-to-float v1, v9

    sub-float v9, v8, v29

    mul-float v10, v7, v17

    sub-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    double-to-float v9, v9

    invoke-virtual {v13, v0, v1, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 688
    float-to-double v9, v6

    sub-float v1, v8, v2

    float-to-double v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    float-to-double v14, v4

    mul-double/2addr v11, v14

    add-double/2addr v9, v11

    double-to-float v1, v9

    float-to-double v9, v5

    sub-float v11, v8, v2

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    float-to-double v14, v4

    mul-double/2addr v11, v14

    add-double/2addr v9, v11

    double-to-float v9, v9

    invoke-virtual {v13, v1, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 689
    sub-float v1, v8, v2

    float-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    double-to-float v1, v9

    sub-float v9, v8, v29

    mul-float v12, v2, v17

    sub-float/2addr v9, v12

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    neg-double v9, v9

    double-to-float v9, v9

    move-object/from16 v10, v38

    .end local v38    # "innerOval":Landroid/graphics/RectF;
    .local v10, "innerOval":Landroid/graphics/RectF;
    invoke-virtual {v13, v10, v1, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 691
    add-float v1, v29, v8

    mul-float v1, v1, v18

    .line 692
    .local v1, "middleAngle":F
    float-to-double v11, v6

    float-to-double v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    move/from16 v38, v3

    move/from16 v9, v39

    move/from16 v39, v2

    .end local v2    # "innerMargin":F
    .end local v3    # "outerRadius":F
    .local v9, "radius":F
    .local v38, "outerRadius":F
    .local v39, "innerMargin":F
    float-to-double v2, v9

    mul-double/2addr v14, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v14, v2

    add-double/2addr v11, v14

    double-to-float v11, v11

    .line 693
    .local v11, "endX":F
    float-to-double v14, v5

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    move-object v12, v0

    move/from16 v41, v1

    .end local v0    # "outerOval":Landroid/graphics/RectF;
    .end local v1    # "middleAngle":F
    .local v12, "outerOval":Landroid/graphics/RectF;
    .local v41, "middleAngle":F
    float-to-double v0, v9

    mul-double/2addr v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v0

    add-double/2addr v14, v2

    double-to-float v0, v14

    .line 694
    .local v0, "endY":F
    move-object/from16 v1, v28

    .end local v28    # "path1":Landroid/graphics/Path;
    .local v1, "path1":Landroid/graphics/Path;
    invoke-virtual {v1, v6, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 695
    invoke-virtual {v1, v11, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 696
    move/from16 v14, v36

    .end local v36    # "snappingSize":I
    .local v14, "snappingSize":I
    int-to-float v2, v14

    mul-float v2, v2, v24

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v11, v0, v2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_2

    .line 684
    .end local v9    # "radius":F
    .end local v34    # "t":F
    .end local v35    # "paint":Landroid/graphics/Paint;
    .end local v37    # "i":I
    .end local v38    # "outerRadius":F
    .end local v39    # "innerMargin":F
    .end local v41    # "middleAngle":F
    .local v0, "outerOval":Landroid/graphics/RectF;
    .local v1, "innerOval":Landroid/graphics/RectF;
    .local v2, "radius":F
    .restart local v3    # "outerRadius":F
    .local v10, "snappingSize":I
    .local v11, "paint":Landroid/graphics/Paint;
    .local v12, "innerMargin":F
    .local v14, "i":I
    .restart local v15    # "t":F
    .restart local v28    # "path1":Landroid/graphics/Path;
    :cond_1
    move v9, v2

    move/from16 v38, v3

    move-object/from16 v35, v11

    move/from16 v39, v12

    move/from16 v37, v14

    move/from16 v34, v15

    move-object v12, v0

    move v14, v10

    move-object v10, v1

    move-object/from16 v1, v28

    .line 699
    .end local v0    # "outerOval":Landroid/graphics/RectF;
    .end local v2    # "radius":F
    .end local v3    # "outerRadius":F
    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v15    # "t":F
    .end local v28    # "path1":Landroid/graphics/Path;
    .local v1, "path1":Landroid/graphics/Path;
    .restart local v9    # "radius":F
    .local v10, "innerOval":Landroid/graphics/RectF;
    .local v12, "outerOval":Landroid/graphics/RectF;
    .local v14, "snappingSize":I
    .restart local v34    # "t":F
    .restart local v35    # "paint":Landroid/graphics/Paint;
    .restart local v37    # "i":I
    .restart local v38    # "outerRadius":F
    .restart local v39    # "innerMargin":F
    :goto_2
    move/from16 v29, v8

    .line 680
    .end local v8    # "endAngle":F
    .end local v34    # "t":F
    add-int/lit8 v0, v37, 0x1

    move-object/from16 v8, p0

    move-object/from16 v28, v1

    move v2, v9

    move-object v1, v10

    move v10, v14

    move-object/from16 v11, v35

    move/from16 v3, v38

    move-object/from16 v9, p1

    move v14, v0

    move-object v0, v12

    move/from16 v12, v39

    .end local v37    # "i":I
    .local v0, "i":I
    goto/16 :goto_1

    .end local v9    # "radius":F
    .end local v35    # "paint":Landroid/graphics/Paint;
    .end local v38    # "outerRadius":F
    .end local v39    # "innerMargin":F
    .local v0, "outerOval":Landroid/graphics/RectF;
    .local v1, "innerOval":Landroid/graphics/RectF;
    .restart local v2    # "radius":F
    .restart local v3    # "outerRadius":F
    .local v10, "snappingSize":I
    .restart local v11    # "paint":Landroid/graphics/Paint;
    .local v12, "innerMargin":F
    .local v14, "i":I
    .restart local v28    # "path1":Landroid/graphics/Path;
    :cond_2
    move v9, v2

    move/from16 v38, v3

    move-object/from16 v35, v11

    move/from16 v39, v12

    move/from16 v37, v14

    move-object v12, v0

    move v14, v10

    move-object v10, v1

    move-object/from16 v1, v28

    .line 702
    .end local v0    # "outerOval":Landroid/graphics/RectF;
    .end local v2    # "radius":F
    .end local v3    # "outerRadius":F
    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v28    # "path1":Landroid/graphics/Path;
    .local v1, "path1":Landroid/graphics/Path;
    .restart local v9    # "radius":F
    .local v10, "innerOval":Landroid/graphics/RectF;
    .local v12, "outerOval":Landroid/graphics/RectF;
    .local v14, "snappingSize":I
    .restart local v35    # "paint":Landroid/graphics/Paint;
    .restart local v38    # "outerRadius":F
    .restart local v39    # "innerMargin":F
    filled-new-array {v13, v1}, [Landroid/graphics/Path;

    move-result-object v0

    move-object/from16 v8, p0

    iput-object v0, v8, Lcom/winlator/inputcontrols/ControlElement;->paths:[Landroid/graphics/Path;

    move/from16 v0, v29

    goto :goto_3

    .line 672
    .end local v7    # "outerMargin":F
    .end local v9    # "radius":F
    .end local v13    # "path0":Landroid/graphics/Path;
    .end local v29    # "startAngle":F
    .end local v30    # "oldColor":I
    .end local v31    # "lightColor":I
    .end local v32    # "strokeWidth":F
    .end local v33    # "boundingBox":Landroid/graphics/Rect;
    .end local v35    # "paint":Landroid/graphics/Paint;
    .end local v38    # "outerRadius":F
    .end local v39    # "innerMargin":F
    .local v0, "startAngle":F
    .local v1, "oldColor":I
    .restart local v2    # "radius":F
    .restart local v3    # "outerRadius":F
    .local v10, "snappingSize":I
    .restart local v11    # "paint":Landroid/graphics/Paint;
    .local v12, "lightColor":I
    .local v14, "strokeWidth":F
    .local v15, "boundingBox":Landroid/graphics/Rect;
    :cond_3
    move/from16 v29, v0

    move/from16 v30, v1

    move v9, v2

    move/from16 v38, v3

    move-object/from16 v35, v11

    move/from16 v31, v12

    move/from16 v32, v14

    move-object/from16 v33, v15

    move v14, v10

    .line 705
    .end local v1    # "oldColor":I
    .end local v2    # "radius":F
    .end local v3    # "outerRadius":F
    .end local v10    # "snappingSize":I
    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v12    # "lightColor":I
    .end local v15    # "boundingBox":Landroid/graphics/Rect;
    .restart local v9    # "radius":F
    .local v14, "snappingSize":I
    .restart local v30    # "oldColor":I
    .restart local v31    # "lightColor":I
    .restart local v32    # "strokeWidth":F
    .restart local v33    # "boundingBox":Landroid/graphics/Rect;
    .restart local v35    # "paint":Landroid/graphics/Paint;
    .restart local v38    # "outerRadius":F
    :goto_3
    iget-object v1, v8, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 706
    mul-int/lit8 v10, v14, 0x2

    int-to-float v1, v10

    iget v2, v8, Lcom/winlator/inputcontrols/ControlElement;->scale:F

    mul-float v10, v1, v2

    .line 707
    .local v10, "minTextSize":F
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/inputcontrols/ControlElement;->getDarkColor()I

    move-result v11

    .line 708
    .local v11, "darkColor":I
    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    move-object/from16 v12, v35

    .end local v35    # "paint":Landroid/graphics/Paint;
    .local v12, "paint":Landroid/graphics/Paint;
    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 709
    iget-object v1, v8, Lcom/winlator/inputcontrols/ControlElement;->paths:[Landroid/graphics/Path;

    aget-object v1, v1, v16

    move-object/from16 v13, p1

    invoke-virtual {v13, v1, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 710
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 712
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 713
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 714
    sub-float v3, v38, v4

    mul-float v3, v3, v18

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float v15, v3, v1

    .line 716
    .local v15, "touchAreaRadius":F
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    move/from16 v16, v0

    .end local v0    # "startAngle":F
    .local v2, "j":I
    .local v16, "startAngle":F
    :goto_4
    iget-object v0, v8, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    array-length v0, v0

    if-gt v1, v0, :cond_7

    .line 717
    int-to-float v0, v1

    iget-object v3, v8, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    array-length v3, v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 718
    .local v0, "t":F
    move/from16 v39, v9

    move/from16 v19, v10

    .end local v9    # "radius":F
    .end local v10    # "minTextSize":F
    .local v19, "minTextSize":F
    .local v39, "radius":F
    float-to-double v9, v0

    mul-double v9, v9, v22

    mul-double v9, v9, v25

    add-double v9, v9, v20

    double-to-float v3, v9

    .line 720
    .local v3, "endAngle":F
    if-lez v1, :cond_6

    .line 721
    add-float v7, v16, v3

    mul-float v7, v7, v18

    .line 722
    .local v7, "middleAngle":F
    add-float v9, v4, v38

    mul-float v9, v9, v18

    .line 723
    .local v9, "touchAreaCenter":F
    move/from16 v28, v11

    .end local v11    # "darkColor":I
    .local v28, "darkColor":I
    float-to-double v10, v6

    move/from16 v34, v0

    move/from16 v29, v1

    .end local v0    # "t":F
    .end local v1    # "i":I
    .local v29, "i":I
    .restart local v34    # "t":F
    float-to-double v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    move/from16 v36, v3

    move/from16 v35, v4

    .end local v3    # "endAngle":F
    .end local v4    # "innerRadius":F
    .local v35, "innerRadius":F
    .local v36, "endAngle":F
    float-to-double v3, v9

    mul-double/2addr v0, v3

    add-double/2addr v10, v0

    double-to-int v0, v10

    int-to-short v0, v0

    int-to-float v0, v0

    .line 724
    .local v0, "touchAreaX":F
    float-to-double v3, v5

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    move/from16 v40, v5

    move/from16 v37, v6

    .end local v5    # "cy":F
    .end local v6    # "cx":F
    .local v37, "cx":F
    .local v40, "cy":F
    float-to-double v5, v9

    mul-double/2addr v10, v5

    add-double/2addr v3, v10

    double-to-int v1, v3

    int-to-short v1, v1

    int-to-float v1, v1

    .line 726
    .local v1, "touchAreaY":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 727
    invoke-virtual {v13, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 728
    float-to-double v3, v7

    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x43b40000    # 360.0f

    rem-float/2addr v3, v4

    .line 729
    .local v3, "textAngle":F
    const/high16 v4, 0x42b40000    # 90.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_4

    const/high16 v4, 0x43870000    # 270.0f

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_4

    const/high16 v4, 0x43340000    # 180.0f

    add-float/2addr v3, v4

    .line 730
    :cond_4
    invoke-virtual {v13, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 731
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "j":I
    .local v4, "j":I
    invoke-direct {v8, v2}, Lcom/winlator/inputcontrols/ControlElement;->getBindingTextAt(I)Ljava/lang/String;

    move-result-object v2

    .line 732
    .local v2, "text":Ljava/lang/String;
    mul-float v5, v15, v17

    invoke-static {v12, v2, v5}, Lcom/winlator/inputcontrols/ControlElement;->getTextSizeForWidth(Landroid/graphics/Paint;Ljava/lang/String;F)F

    move-result v5

    move/from16 v10, v19

    .end local v19    # "minTextSize":F
    .restart local v10    # "minTextSize":F
    invoke-static {v5, v10}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 733
    iget-object v5, v8, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v5

    if-eqz v5, :cond_5

    move/from16 v5, v28

    goto :goto_5

    :cond_5
    move/from16 v5, v31

    :goto_5
    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 734
    invoke-virtual {v12}, Landroid/graphics/Paint;->descent()F

    move-result v5

    invoke-virtual {v12}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    add-float/2addr v5, v6

    mul-float v5, v5, v18

    neg-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v13, v2, v6, v5, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 735
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move v2, v4

    goto :goto_6

    .line 720
    .end local v7    # "middleAngle":F
    .end local v9    # "touchAreaCenter":F
    .end local v10    # "minTextSize":F
    .end local v28    # "darkColor":I
    .end local v29    # "i":I
    .end local v34    # "t":F
    .end local v35    # "innerRadius":F
    .end local v36    # "endAngle":F
    .end local v37    # "cx":F
    .end local v40    # "cy":F
    .local v0, "t":F
    .local v1, "i":I
    .local v2, "j":I
    .local v3, "endAngle":F
    .local v4, "innerRadius":F
    .restart local v5    # "cy":F
    .restart local v6    # "cx":F
    .restart local v11    # "darkColor":I
    .restart local v19    # "minTextSize":F
    :cond_6
    move/from16 v34, v0

    move/from16 v29, v1

    move/from16 v36, v3

    move/from16 v35, v4

    move/from16 v40, v5

    move/from16 v37, v6

    move/from16 v28, v11

    move/from16 v10, v19

    .line 738
    .end local v0    # "t":F
    .end local v1    # "i":I
    .end local v3    # "endAngle":F
    .end local v4    # "innerRadius":F
    .end local v5    # "cy":F
    .end local v6    # "cx":F
    .end local v11    # "darkColor":I
    .end local v19    # "minTextSize":F
    .restart local v10    # "minTextSize":F
    .restart local v28    # "darkColor":I
    .restart local v29    # "i":I
    .restart local v34    # "t":F
    .restart local v35    # "innerRadius":F
    .restart local v36    # "endAngle":F
    .restart local v37    # "cx":F
    .restart local v40    # "cy":F
    :goto_6
    move/from16 v16, v36

    .line 716
    .end local v34    # "t":F
    .end local v36    # "endAngle":F
    add-int/lit8 v1, v29, 0x1

    move/from16 v11, v28

    move/from16 v4, v35

    move/from16 v6, v37

    move/from16 v9, v39

    move/from16 v5, v40

    .end local v29    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_4

    .end local v28    # "darkColor":I
    .end local v35    # "innerRadius":F
    .end local v37    # "cx":F
    .end local v39    # "radius":F
    .end local v40    # "cy":F
    .restart local v4    # "innerRadius":F
    .restart local v5    # "cy":F
    .restart local v6    # "cx":F
    .local v9, "radius":F
    .restart local v11    # "darkColor":I
    :cond_7
    move/from16 v29, v1

    move/from16 v35, v4

    move/from16 v40, v5

    move/from16 v37, v6

    move/from16 v39, v9

    move/from16 v28, v11

    .line 741
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v4    # "innerRadius":F
    .end local v5    # "cy":F
    .end local v6    # "cx":F
    .end local v9    # "radius":F
    .end local v11    # "darkColor":I
    .restart local v28    # "darkColor":I
    .restart local v35    # "innerRadius":F
    .restart local v37    # "cx":F
    .restart local v39    # "radius":F
    .restart local v40    # "cy":F
    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float v4, v0, v24

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float v5, v0, v24

    const/16 v6, 0x11

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v9, v30

    .end local v30    # "oldColor":I
    .local v9, "oldColor":I
    move-object/from16 v1, p1

    move/from16 v11, v39

    .end local v39    # "radius":F
    .local v11, "radius":F
    move/from16 v2, v37

    move/from16 v17, v38

    .end local v38    # "outerRadius":F
    .local v17, "outerRadius":F
    move/from16 v3, v40

    move/from16 v18, v35

    .end local v35    # "innerRadius":F
    .local v18, "innerRadius":F
    move/from16 v42, v40

    .end local v40    # "cy":F
    .local v42, "cy":F
    move/from16 v19, v10

    move/from16 v10, v37

    .end local v37    # "cx":F
    .local v10, "cx":F
    .restart local v19    # "minTextSize":F
    invoke-direct/range {v0 .. v7}, Lcom/winlator/inputcontrols/ControlElement;->drawIcon(Landroid/graphics/Canvas;FFFFIZ)V

    .line 742
    .end local v15    # "touchAreaRadius":F
    .end local v19    # "minTextSize":F
    .end local v28    # "darkColor":I
    move/from16 v0, v16

    goto :goto_7

    .line 744
    .end local v10    # "cx":F
    .end local v11    # "radius":F
    .end local v12    # "paint":Landroid/graphics/Paint;
    .end local v16    # "startAngle":F
    .end local v17    # "outerRadius":F
    .end local v18    # "innerRadius":F
    .end local v42    # "cy":F
    .local v0, "startAngle":F
    .restart local v4    # "innerRadius":F
    .restart local v5    # "cy":F
    .restart local v6    # "cx":F
    .local v9, "radius":F
    .restart local v30    # "oldColor":I
    .local v35, "paint":Landroid/graphics/Paint;
    .restart local v38    # "outerRadius":F
    :cond_8
    move-object/from16 v13, p1

    move/from16 v18, v4

    move/from16 v42, v5

    move v10, v6

    move v11, v9

    move/from16 v9, v30

    move-object/from16 v12, v35

    move/from16 v17, v38

    .end local v4    # "innerRadius":F
    .end local v5    # "cy":F
    .end local v6    # "cx":F
    .end local v30    # "oldColor":I
    .end local v35    # "paint":Landroid/graphics/Paint;
    .end local v38    # "outerRadius":F
    .local v9, "oldColor":I
    .restart local v10    # "cx":F
    .restart local v11    # "radius":F
    .restart local v12    # "paint":Landroid/graphics/Paint;
    .restart local v17    # "outerRadius":F
    .restart local v18    # "innerRadius":F
    .restart local v42    # "cy":F
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 745
    invoke-virtual {v12, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 746
    iget-object v1, v8, Lcom/winlator/inputcontrols/ControlElement;->paths:[Landroid/graphics/Path;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v13, v1, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 749
    :goto_7
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 750
    invoke-virtual {v12, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 751
    move/from16 v1, v42

    .end local v42    # "cy":F
    .local v1, "cy":F
    invoke-virtual {v13, v10, v1, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 752
    move v5, v14

    move/from16 v11, v31

    move-object/from16 v15, v33

    goto/16 :goto_18

    .line 440
    .end local v0    # "startAngle":F
    .end local v1    # "cy":F
    .end local v9    # "oldColor":I
    .end local v17    # "outerRadius":F
    .end local v18    # "innerRadius":F
    .end local v31    # "lightColor":I
    .end local v32    # "strokeWidth":F
    .end local v33    # "boundingBox":Landroid/graphics/Rect;
    .local v10, "snappingSize":I
    .local v11, "paint":Landroid/graphics/Paint;
    .local v12, "lightColor":I
    .local v14, "strokeWidth":F
    .local v15, "boundingBox":Landroid/graphics/Rect;
    :pswitch_1
    move-object v13, v9

    move/from16 v31, v12

    move/from16 v32, v14

    move-object/from16 v33, v15

    move v14, v10

    move-object v12, v11

    .end local v10    # "snappingSize":I
    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v15    # "boundingBox":Landroid/graphics/Rect;
    .local v12, "paint":Landroid/graphics/Paint;
    .local v14, "snappingSize":I
    .restart local v31    # "lightColor":I
    .restart local v32    # "strokeWidth":F
    .restart local v33    # "boundingBox":Landroid/graphics/Rect;
    iget-object v0, v8, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 442
    :cond_9
    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v9, v0

    .line 443
    .local v9, "cx":F
    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v10, v0

    .line 445
    .local v10, "cy":F
    sget-object v0, Lcom/winlator/inputcontrols/ControlElement$1;->$SwitchMap$com$winlator$inputcontrols$ControlElement$Shape:[I

    iget-object v2, v8, Lcom/winlator/inputcontrols/ControlElement;->shape:Lcom/winlator/inputcontrols/ControlElement$Shape;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    move v11, v7

    move-object/from16 v15, v33

    goto :goto_8

    .line 447
    :pswitch_2
    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v18

    invoke-virtual {v13, v9, v10, v0, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 448
    move v11, v7

    move-object/from16 v15, v33

    goto :goto_8

    .line 458
    :pswitch_3
    int-to-float v0, v14

    mul-float/2addr v0, v1

    iget v1, v8, Lcom/winlator/inputcontrols/ControlElement;->scale:F

    mul-float v11, v0, v1

    .line 459
    .local v11, "radius":F
    move-object/from16 v15, v33

    .end local v33    # "boundingBox":Landroid/graphics/Rect;
    .restart local v15    # "boundingBox":Landroid/graphics/Rect;
    iget v0, v15, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v15, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v15, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object/from16 v0, p1

    move v5, v11

    move v6, v11

    move/from16 v16, v11

    move v11, v7

    .end local v11    # "radius":F
    .local v16, "radius":F
    move-object v7, v12

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 460
    goto :goto_8

    .line 453
    .end local v15    # "boundingBox":Landroid/graphics/Rect;
    .end local v16    # "radius":F
    .restart local v33    # "boundingBox":Landroid/graphics/Rect;
    :pswitch_4
    move v11, v7

    move-object/from16 v15, v33

    .end local v33    # "boundingBox":Landroid/graphics/Rect;
    .restart local v15    # "boundingBox":Landroid/graphics/Rect;
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float v16, v0, v18

    .line 454
    .restart local v16    # "radius":F
    iget v0, v15, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v15, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v15, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object/from16 v0, p1

    move/from16 v5, v16

    move/from16 v6, v16

    move-object v7, v12

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 455
    goto :goto_8

    .line 450
    .end local v15    # "boundingBox":Landroid/graphics/Rect;
    .end local v16    # "radius":F
    .restart local v33    # "boundingBox":Landroid/graphics/Rect;
    :pswitch_5
    move v11, v7

    move-object/from16 v15, v33

    .end local v33    # "boundingBox":Landroid/graphics/Rect;
    .restart local v15    # "boundingBox":Landroid/graphics/Rect;
    invoke-virtual {v13, v15, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 451
    nop

    .line 464
    :goto_8
    iget-byte v0, v8, Lcom/winlator/inputcontrols/ControlElement;->iconId:B

    if-lez v0, :cond_a

    .line 465
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v5, v0

    iget-byte v6, v8, Lcom/winlator/inputcontrols/ControlElement;->iconId:B

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move v3, v10

    invoke-direct/range {v0 .. v7}, Lcom/winlator/inputcontrols/ControlElement;->drawIcon(Landroid/graphics/Canvas;FFFFIZ)V

    move v5, v14

    move/from16 v11, v31

    goto/16 :goto_18

    .line 468
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/winlator/inputcontrols/ControlElement;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float v2, v32, v17

    sub-float/2addr v1, v2

    invoke-static {v12, v0, v1}, Lcom/winlator/inputcontrols/ControlElement;->getTextSizeForWidth(Landroid/graphics/Paint;Ljava/lang/String;F)F

    move-result v1

    mul-int/lit8 v2, v14, 0x2

    int-to-float v2, v2

    iget v3, v8, Lcom/winlator/inputcontrols/ControlElement;->scale:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 470
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 471
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 472
    iget-object v1, v8, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    invoke-virtual {v1, v11}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/inputcontrols/ControlElement;->getDarkColor()I

    move-result v1

    goto :goto_9

    :cond_b
    move/from16 v1, v31

    :goto_9
    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 473
    iget-short v1, v8, Lcom/winlator/inputcontrols/ControlElement;->x:S

    int-to-float v1, v1

    iget-short v2, v8, Lcom/winlator/inputcontrols/ControlElement;->y:S

    int-to-float v2, v2

    invoke-virtual {v12}, Landroid/graphics/Paint;->descent()F

    move-result v3

    invoke-virtual {v12}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    mul-float v3, v3, v18

    sub-float/2addr v2, v3

    invoke-virtual {v13, v0, v1, v2, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 475
    .end local v0    # "text":Ljava/lang/String;
    move v5, v14

    move/from16 v11, v31

    goto/16 :goto_18

    .line 520
    .end local v9    # "cx":F
    .end local v31    # "lightColor":I
    .end local v32    # "strokeWidth":F
    .local v10, "snappingSize":I
    .local v11, "paint":Landroid/graphics/Paint;
    .local v12, "lightColor":I
    .local v14, "strokeWidth":F
    :pswitch_6
    move-object v13, v9

    move/from16 v31, v12

    move/from16 v32, v14

    move v14, v10

    move-object v12, v11

    const/4 v11, 0x2

    .end local v10    # "snappingSize":I
    .end local v11    # "paint":Landroid/graphics/Paint;
    .local v12, "paint":Landroid/graphics/Paint;
    .local v14, "snappingSize":I
    .restart local v31    # "lightColor":I
    .restart local v32    # "strokeWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/inputcontrols/ControlElement;->getRange()Lcom/winlator/inputcontrols/ControlElement$Range;

    move-result-object v9

    .line 521
    .local v9, "range":Lcom/winlator/inputcontrols/ControlElement$Range;
    invoke-virtual {v12}, Landroid/graphics/Paint;->getColor()I

    move-result v10

    .line 522
    .local v10, "oldColor":I
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/inputcontrols/ControlElement;->getDarkColor()I

    move-result v20

    .line 524
    .local v20, "darkColor":I
    int-to-float v0, v14

    mul-float/2addr v0, v1

    iget v1, v8, Lcom/winlator/inputcontrols/ControlElement;->scale:F

    mul-float v29, v0, v1

    .line 525
    .local v29, "radius":F
    iget-object v0, v8, Lcom/winlator/inputcontrols/ControlElement;->scroller:Lcom/winlator/inputcontrols/RangeScroller;

    invoke-virtual {v0}, Lcom/winlator/inputcontrols/RangeScroller;->getElementSize()F

    move-result v30

    .line 526
    .local v30, "elementSize":F
    mul-int/lit8 v0, v14, 0x2

    int-to-float v0, v0

    iget v1, v8, Lcom/winlator/inputcontrols/ControlElement;->scale:F

    mul-float v7, v0, v1

    .line 527
    .local v7, "minTextSize":F
    iget-object v0, v8, Lcom/winlator/inputcontrols/ControlElement;->scroller:Lcom/winlator/inputcontrols/RangeScroller;

    invoke-virtual {v0}, Lcom/winlator/inputcontrols/RangeScroller;->getScrollOffset()F

    move-result v33

    .line 528
    .local v33, "scrollOffset":F
    iget-object v0, v8, Lcom/winlator/inputcontrols/ControlElement;->scroller:Lcom/winlator/inputcontrols/RangeScroller;

    invoke-virtual {v0}, Lcom/winlator/inputcontrols/RangeScroller;->getRangeIndex()[B

    move-result-object v34

    .line 529
    .local v34, "rangeIndex":[B
    iget-object v0, v8, Lcom/winlator/inputcontrols/ControlElement;->scroller:Lcom/winlator/inputcontrols/RangeScroller;

    invoke-virtual {v0}, Lcom/winlator/inputcontrols/RangeScroller;->getBinding()Lcom/winlator/inputcontrols/Binding;

    move-result-object v6

    .line 531
    .local v6, "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    const/16 v35, 0x0

    .line 533
    .local v35, "wasPressed":Z
    iget-byte v0, v8, Lcom/winlator/inputcontrols/ControlElement;->orientation:B

    if-nez v0, :cond_14

    .line 534
    iget v0, v15, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float v1, v32, v18

    add-float v36, v0, v1

    .line 535
    .local v36, "lineTop":F
    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float v1, v32, v18

    sub-float v37, v0, v1

    .line 536
    .local v37, "lineBottom":F
    iget v0, v15, Landroid/graphics/Rect;->left:I

    int-to-float v5, v0

    .line 537
    .local v5, "startX":F
    iget v0, v15, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v15, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object/from16 v0, p1

    move v1, v5

    move/from16 v38, v5

    .end local v5    # "startX":F
    .local v38, "startX":F
    move/from16 v5, v29

    move-object/from16 v43, v6

    .end local v6    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .local v43, "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    move/from16 v6, v29

    move/from16 v44, v7

    .end local v7    # "minTextSize":F
    .local v44, "minTextSize":F
    move-object v7, v12

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 539
    iget-object v0, v8, Lcom/winlator/inputcontrols/ControlElement;->paths:[Landroid/graphics/Path;

    if-nez v0, :cond_c

    .line 540
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    .line 541
    .local v21, "path":Landroid/graphics/Path;
    iget v0, v15, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, v15, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sget-object v28, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v22, v38

    move/from16 v23, v0

    move/from16 v24, v1

    move/from16 v25, v2

    move/from16 v26, v29

    move/from16 v27, v29

    invoke-virtual/range {v21 .. v28}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 542
    filled-new-array/range {v21 .. v21}, [Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, v8, Lcom/winlator/inputcontrols/ControlElement;->paths:[Landroid/graphics/Path;

    .line 545
    .end local v21    # "path":Landroid/graphics/Path;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 546
    iget-object v0, v8, Lcom/winlator/inputcontrols/ControlElement;->paths:[Landroid/graphics/Path;

    aget-object v0, v0, v16

    invoke-virtual {v13, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 547
    rem-float v0, v33, v30

    sub-float v5, v38, v0

    .line 549
    .end local v38    # "startX":F
    .restart local v5    # "startX":F
    aget-byte v0, v34, v16

    move v6, v0

    move v7, v5

    .end local v5    # "startX":F
    .local v6, "i":B
    .local v7, "startX":F
    :goto_a
    const/4 v0, 0x1

    aget-byte v1, v34, v0

    if-ge v6, v1, :cond_13

    .line 550
    iget-byte v0, v9, Lcom/winlator/inputcontrols/ControlElement$Range;->max:B

    rem-int v5, v6, v0

    .line 551
    .local v5, "index":I
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 552
    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 553
    iget-object v0, v8, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    invoke-virtual {v0, v11}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v9, v5}, Lcom/winlator/inputcontrols/ControlElement;->getRangeBindingForIndex(Lcom/winlator/inputcontrols/ControlElement$Range;I)Lcom/winlator/inputcontrols/Binding;

    move-result-object v0

    move-object/from16 v4, v43

    .end local v43    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .local v4, "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    if-ne v4, v0, :cond_e

    const/4 v2, 0x1

    goto :goto_b

    .end local v4    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .restart local v43    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    :cond_d
    move-object/from16 v4, v43

    .end local v43    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .restart local v4    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    :cond_e
    move/from16 v2, v16

    :goto_b
    move/from16 v21, v2

    .line 555
    .local v21, "pressed":Z
    iget v0, v15, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpl-float v0, v7, v0

    if-lez v0, :cond_f

    iget v0, v15, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpg-float v0, v7, v0

    if-gez v0, :cond_f

    if-nez v21, :cond_f

    if-nez v35, :cond_f

    .line 556
    move-object/from16 v0, p1

    move v1, v7

    move/from16 v2, v36

    move v3, v7

    move-object/from16 v45, v4

    .end local v4    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .local v45, "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    move/from16 v4, v37

    move v11, v5

    .end local v5    # "index":I
    .local v11, "index":I
    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_c

    .line 555
    .end local v11    # "index":I
    .end local v45    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .restart local v4    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .restart local v5    # "index":I
    :cond_f
    move-object/from16 v45, v4

    move v11, v5

    .line 558
    .end local v4    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .end local v5    # "index":I
    .restart local v11    # "index":I
    .restart local v45    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    :goto_c
    invoke-static {v9, v11}, Lcom/winlator/inputcontrols/ControlElement;->getRangeTextForIndex(Lcom/winlator/inputcontrols/ControlElement$Range;I)Ljava/lang/String;

    move-result-object v5

    .line 560
    .local v5, "text":Ljava/lang/String;
    iget v0, v15, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpg-float v0, v7, v0

    if-gez v0, :cond_12

    add-float v0, v7, v30

    iget v1, v15, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    .line 561
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 563
    if-eqz v21, :cond_10

    .line 564
    move/from16 v4, v31

    .end local v31    # "lightColor":I
    .local v4, "lightColor":I
    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 565
    add-float v3, v7, v30

    move-object/from16 v0, p1

    move v1, v7

    move/from16 v2, v36

    move/from16 v22, v11

    move v11, v4

    .end local v4    # "lightColor":I
    .local v11, "lightColor":I
    .local v22, "index":I
    move/from16 v4, v37

    move/from16 v31, v14

    move-object v14, v5

    .end local v5    # "text":Ljava/lang/String;
    .local v14, "text":Ljava/lang/String;
    .local v31, "snappingSize":I
    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_d

    .line 563
    .end local v22    # "index":I
    .restart local v5    # "text":Ljava/lang/String;
    .local v11, "index":I
    .local v14, "snappingSize":I
    .local v31, "lightColor":I
    :cond_10
    move/from16 v22, v11

    move/from16 v11, v31

    move/from16 v31, v14

    move-object v14, v5

    .line 568
    .end local v5    # "text":Ljava/lang/String;
    .local v11, "lightColor":I
    .local v14, "text":Ljava/lang/String;
    .restart local v22    # "index":I
    .local v31, "snappingSize":I
    :goto_d
    if-eqz v21, :cond_11

    move/from16 v4, v20

    goto :goto_e

    :cond_11
    move v4, v11

    :goto_e
    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 569
    mul-float v0, v32, v17

    sub-float v0, v30, v0

    invoke-static {v12, v14, v0}, Lcom/winlator/inputcontrols/ControlElement;->getTextSizeForWidth(Landroid/graphics/Paint;Ljava/lang/String;F)F

    move-result v0

    move/from16 v5, v44

    .end local v44    # "minTextSize":F
    .local v5, "minTextSize":F
    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 570
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 571
    mul-float v0, v30, v18

    add-float/2addr v0, v7

    iget-short v1, v8, Lcom/winlator/inputcontrols/ControlElement;->y:S

    int-to-float v1, v1

    invoke-virtual {v12}, Landroid/graphics/Paint;->descent()F

    move-result v2

    invoke-virtual {v12}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v2, v3

    mul-float v2, v2, v18

    sub-float/2addr v1, v2

    invoke-virtual {v13, v14, v0, v1, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_f

    .line 560
    .end local v22    # "index":I
    .local v5, "text":Ljava/lang/String;
    .local v11, "index":I
    .local v14, "snappingSize":I
    .local v31, "lightColor":I
    .restart local v44    # "minTextSize":F
    :cond_12
    move/from16 v22, v11

    move/from16 v11, v31

    move/from16 v31, v14

    move-object v14, v5

    move/from16 v5, v44

    .line 574
    .end local v44    # "minTextSize":F
    .local v5, "minTextSize":F
    .local v11, "lightColor":I
    .local v14, "text":Ljava/lang/String;
    .restart local v22    # "index":I
    .local v31, "snappingSize":I
    :goto_f
    add-float v7, v7, v30

    .line 575
    move/from16 v35, v21

    .line 549
    .end local v14    # "text":Ljava/lang/String;
    .end local v21    # "pressed":Z
    .end local v22    # "index":I
    add-int/lit8 v0, v6, 0x1

    int-to-byte v6, v0

    move/from16 v44, v5

    move/from16 v14, v31

    move-object/from16 v43, v45

    move/from16 v31, v11

    const/4 v11, 0x2

    goto/16 :goto_a

    .end local v5    # "minTextSize":F
    .end local v11    # "lightColor":I
    .end local v45    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .local v14, "snappingSize":I
    .local v31, "lightColor":I
    .restart local v43    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .restart local v44    # "minTextSize":F
    :cond_13
    move/from16 v11, v31

    move-object/from16 v45, v43

    move/from16 v5, v44

    move/from16 v31, v14

    .line 578
    .end local v6    # "i":B
    .end local v14    # "snappingSize":I
    .end local v43    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .end local v44    # "minTextSize":F
    .restart local v5    # "minTextSize":F
    .restart local v11    # "lightColor":I
    .local v31, "snappingSize":I
    .restart local v45    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 579
    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 580
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 581
    .end local v7    # "startX":F
    .end local v36    # "lineTop":F
    .end local v37    # "lineBottom":F
    move/from16 v5, v31

    goto/16 :goto_18

    .line 583
    .end local v5    # "minTextSize":F
    .end local v11    # "lightColor":I
    .end local v45    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .local v6, "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .local v7, "minTextSize":F
    .restart local v14    # "snappingSize":I
    .local v31, "lightColor":I
    :cond_14
    move-object/from16 v45, v6

    move v5, v7

    move/from16 v11, v31

    move/from16 v31, v14

    .end local v6    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .end local v7    # "minTextSize":F
    .end local v14    # "snappingSize":I
    .restart local v5    # "minTextSize":F
    .restart local v11    # "lightColor":I
    .local v31, "snappingSize":I
    .restart local v45    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    iget v0, v15, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float v14, v32, v18

    add-float/2addr v14, v0

    .line 584
    .local v14, "lineLeft":F
    iget v0, v15, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float v1, v32, v18

    sub-float v36, v0, v1

    .line 585
    .local v36, "lineRight":F
    iget v0, v15, Landroid/graphics/Rect;->top:I

    int-to-float v7, v0

    .line 586
    .local v7, "startY":F
    iget v0, v15, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v15, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object/from16 v0, p1

    move v2, v7

    move v6, v5

    .end local v5    # "minTextSize":F
    .local v6, "minTextSize":F
    move/from16 v5, v29

    move/from16 v46, v6

    .end local v6    # "minTextSize":F
    .local v46, "minTextSize":F
    move/from16 v6, v29

    move/from16 v37, v7

    .end local v7    # "startY":F
    .local v37, "startY":F
    move-object v7, v12

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 588
    iget-object v0, v8, Lcom/winlator/inputcontrols/ControlElement;->paths:[Landroid/graphics/Path;

    if-nez v0, :cond_15

    .line 589
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    .line 590
    .local v21, "path":Landroid/graphics/Path;
    iget v0, v15, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, v15, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sget-object v28, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v22, v0

    move/from16 v23, v37

    move/from16 v24, v1

    move/from16 v25, v2

    move/from16 v26, v29

    move/from16 v27, v29

    invoke-virtual/range {v21 .. v28}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 591
    filled-new-array/range {v21 .. v21}, [Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, v8, Lcom/winlator/inputcontrols/ControlElement;->paths:[Landroid/graphics/Path;

    .line 594
    .end local v21    # "path":Landroid/graphics/Path;
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 595
    iget-object v0, v8, Lcom/winlator/inputcontrols/ControlElement;->paths:[Landroid/graphics/Path;

    aget-object v0, v0, v16

    invoke-virtual {v13, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 596
    rem-float v0, v33, v30

    sub-float v7, v37, v0

    .line 598
    .end local v37    # "startY":F
    .restart local v7    # "startY":F
    aget-byte v0, v34, v16

    move v6, v0

    .local v6, "i":B
    :goto_10
    const/16 v19, 0x1

    aget-byte v0, v34, v19

    if-ge v6, v0, :cond_1c

    .line 599
    iget-byte v0, v9, Lcom/winlator/inputcontrols/ControlElement$Range;->max:B

    rem-int v5, v6, v0

    .line 600
    .local v5, "index":I
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 601
    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 602
    iget-object v0, v8, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {v9, v5}, Lcom/winlator/inputcontrols/ControlElement;->getRangeBindingForIndex(Lcom/winlator/inputcontrols/ControlElement$Range;I)Lcom/winlator/inputcontrols/Binding;

    move-result-object v0

    move-object/from16 v3, v45

    .end local v45    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .local v3, "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    if-ne v3, v0, :cond_17

    move/from16 v2, v19

    goto :goto_11

    .end local v3    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .restart local v45    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    :cond_16
    move-object/from16 v3, v45

    .end local v45    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .restart local v3    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    :cond_17
    move/from16 v2, v16

    :goto_11
    move/from16 v21, v2

    .line 604
    .local v21, "pressed":Z
    iget v0, v15, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpl-float v0, v7, v0

    if-lez v0, :cond_18

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpg-float v0, v7, v0

    if-gez v0, :cond_18

    if-nez v21, :cond_18

    if-nez v35, :cond_18

    .line 605
    move-object/from16 v0, p1

    move v1, v14

    move v2, v7

    move-object/from16 v22, v3

    .end local v3    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .local v22, "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    move/from16 v3, v36

    move/from16 v23, v4

    move v4, v7

    move/from16 v24, v10

    move v10, v5

    .end local v5    # "index":I
    .local v10, "index":I
    .local v24, "oldColor":I
    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_12

    .line 604
    .end local v22    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .end local v24    # "oldColor":I
    .restart local v3    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .restart local v5    # "index":I
    .local v10, "oldColor":I
    :cond_18
    move-object/from16 v22, v3

    move/from16 v23, v4

    move/from16 v24, v10

    move v10, v5

    .line 607
    .end local v3    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .end local v5    # "index":I
    .local v10, "index":I
    .restart local v22    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .restart local v24    # "oldColor":I
    :goto_12
    invoke-static {v9, v10}, Lcom/winlator/inputcontrols/ControlElement;->getRangeTextForIndex(Lcom/winlator/inputcontrols/ControlElement$Range;I)Ljava/lang/String;

    move-result-object v5

    .line 609
    .local v5, "text":Ljava/lang/String;
    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpg-float v0, v7, v0

    if-gez v0, :cond_1b

    add-float v0, v7, v30

    iget v1, v15, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1b

    .line 610
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 612
    if-eqz v21, :cond_19

    .line 613
    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 614
    add-float v4, v7, v30

    move-object/from16 v0, p1

    move v1, v14

    move v2, v7

    move/from16 v3, v36

    move-object/from16 v25, v9

    move-object v9, v5

    .end local v5    # "text":Ljava/lang/String;
    .local v9, "text":Ljava/lang/String;
    .local v25, "range":Lcom/winlator/inputcontrols/ControlElement$Range;
    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_13

    .line 612
    .end local v25    # "range":Lcom/winlator/inputcontrols/ControlElement$Range;
    .restart local v5    # "text":Ljava/lang/String;
    .local v9, "range":Lcom/winlator/inputcontrols/ControlElement$Range;
    :cond_19
    move-object/from16 v25, v9

    move-object v9, v5

    .line 617
    .end local v5    # "text":Ljava/lang/String;
    .local v9, "text":Ljava/lang/String;
    .restart local v25    # "range":Lcom/winlator/inputcontrols/ControlElement$Range;
    :goto_13
    if-eqz v21, :cond_1a

    move/from16 v4, v20

    goto :goto_14

    :cond_1a
    move v4, v11

    :goto_14
    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 618
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float v1, v32, v17

    sub-float/2addr v0, v1

    invoke-static {v12, v9, v0}, Lcom/winlator/inputcontrols/ControlElement;->getTextSizeForWidth(Landroid/graphics/Paint;Ljava/lang/String;F)F

    move-result v0

    move/from16 v1, v46

    .end local v46    # "minTextSize":F
    .local v1, "minTextSize":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 619
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 620
    iget-short v0, v8, Lcom/winlator/inputcontrols/ControlElement;->x:S

    int-to-float v0, v0

    mul-float v2, v30, v18

    add-float/2addr v2, v7

    invoke-virtual {v12}, Landroid/graphics/Paint;->descent()F

    move-result v3

    invoke-virtual {v12}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    mul-float v3, v3, v18

    sub-float/2addr v2, v3

    invoke-virtual {v13, v9, v0, v2, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_15

    .line 609
    .end local v1    # "minTextSize":F
    .end local v25    # "range":Lcom/winlator/inputcontrols/ControlElement$Range;
    .restart local v5    # "text":Ljava/lang/String;
    .local v9, "range":Lcom/winlator/inputcontrols/ControlElement$Range;
    .restart local v46    # "minTextSize":F
    :cond_1b
    move-object/from16 v25, v9

    move/from16 v1, v46

    move-object v9, v5

    .line 623
    .end local v5    # "text":Ljava/lang/String;
    .end local v46    # "minTextSize":F
    .restart local v1    # "minTextSize":F
    .local v9, "text":Ljava/lang/String;
    .restart local v25    # "range":Lcom/winlator/inputcontrols/ControlElement$Range;
    :goto_15
    add-float v7, v7, v30

    .line 624
    move/from16 v35, v21

    .line 598
    .end local v9    # "text":Ljava/lang/String;
    .end local v10    # "index":I
    .end local v21    # "pressed":Z
    add-int/lit8 v0, v6, 0x1

    int-to-byte v6, v0

    move/from16 v46, v1

    move-object/from16 v45, v22

    move/from16 v10, v24

    move-object/from16 v9, v25

    goto/16 :goto_10

    .end local v1    # "minTextSize":F
    .end local v22    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .end local v24    # "oldColor":I
    .end local v25    # "range":Lcom/winlator/inputcontrols/ControlElement$Range;
    .local v9, "range":Lcom/winlator/inputcontrols/ControlElement$Range;
    .local v10, "oldColor":I
    .restart local v45    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .restart local v46    # "minTextSize":F
    :cond_1c
    move-object/from16 v25, v9

    move/from16 v24, v10

    move-object/from16 v22, v45

    move/from16 v1, v46

    .line 627
    .end local v6    # "i":B
    .end local v9    # "range":Lcom/winlator/inputcontrols/ControlElement$Range;
    .end local v10    # "oldColor":I
    .end local v45    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .end local v46    # "minTextSize":F
    .restart local v1    # "minTextSize":F
    .restart local v22    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .restart local v24    # "oldColor":I
    .restart local v25    # "range":Lcom/winlator/inputcontrols/ControlElement$Range;
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 628
    move/from16 v0, v24

    .end local v24    # "oldColor":I
    .local v0, "oldColor":I
    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 629
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 631
    .end local v7    # "startY":F
    .end local v14    # "lineLeft":F
    .end local v36    # "lineRight":F
    move/from16 v5, v31

    goto/16 :goto_18

    .line 653
    .end local v0    # "oldColor":I
    .end local v1    # "minTextSize":F
    .end local v20    # "darkColor":I
    .end local v22    # "selectedBinding":Lcom/winlator/inputcontrols/Binding;
    .end local v25    # "range":Lcom/winlator/inputcontrols/ControlElement$Range;
    .end local v29    # "radius":F
    .end local v30    # "elementSize":F
    .end local v31    # "snappingSize":I
    .end local v32    # "strokeWidth":F
    .end local v33    # "scrollOffset":F
    .end local v34    # "rangeIndex":[B
    .end local v35    # "wasPressed":Z
    .local v10, "snappingSize":I
    .local v11, "paint":Landroid/graphics/Paint;
    .local v12, "lightColor":I
    .local v14, "strokeWidth":F
    :pswitch_7
    move-object v13, v9

    move/from16 v31, v10

    move/from16 v32, v14

    move/from16 v47, v12

    move-object v12, v11

    move/from16 v11, v47

    .end local v10    # "snappingSize":I
    .end local v14    # "strokeWidth":F
    .local v11, "lightColor":I
    .local v12, "paint":Landroid/graphics/Paint;
    .restart local v31    # "snappingSize":I
    .restart local v32    # "strokeWidth":F
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e19999a    # 0.15f

    mul-float v9, v0, v1

    .line 654
    .local v9, "radius":F
    iget v0, v15, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v15, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v15, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object/from16 v0, p1

    move v5, v9

    move v6, v9

    move-object v7, v12

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 655
    const/high16 v0, 0x40200000    # 2.5f

    mul-float v14, v32, v0

    .line 656
    .local v14, "offset":F
    mul-float v10, v32, v17

    .line 657
    .local v10, "innerStrokeWidth":F
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float v17, v17, v14

    sub-float v16, v0, v17

    .line 658
    .local v16, "innerHeight":F
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v16, v0

    mul-float/2addr v0, v9

    mul-float v1, v10, v18

    mul-float v2, v32, v18

    add-float/2addr v1, v2

    sub-float v9, v0, v1

    .line 659
    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 660
    iget v0, v15, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float v1, v0, v14

    iget v0, v15, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float v2, v0, v14

    iget v0, v15, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float v3, v0, v14

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float v4, v0, v14

    move-object/from16 v0, p1

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 661
    move/from16 v5, v31

    goto/16 :goto_18

    .line 634
    .end local v9    # "radius":F
    .end local v16    # "innerHeight":F
    .end local v31    # "snappingSize":I
    .end local v32    # "strokeWidth":F
    .local v10, "snappingSize":I
    .local v11, "paint":Landroid/graphics/Paint;
    .local v12, "lightColor":I
    .local v14, "strokeWidth":F
    :pswitch_8
    move-object v13, v9

    move/from16 v31, v10

    move/from16 v32, v14

    move/from16 v47, v12

    move-object v12, v11

    move/from16 v11, v47

    .end local v10    # "snappingSize":I
    .end local v14    # "strokeWidth":F
    .local v11, "lightColor":I
    .local v12, "paint":Landroid/graphics/Paint;
    .restart local v31    # "snappingSize":I
    .restart local v32    # "strokeWidth":F
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 635
    .local v0, "cx":I
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 636
    .local v1, "cy":I
    invoke-virtual {v12}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 637
    .local v2, "oldColor":I
    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v18

    invoke-virtual {v13, v3, v4, v5, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 639
    iget-object v3, v8, Lcom/winlator/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    if-eqz v3, :cond_1d

    iget-object v3, v8, Lcom/winlator/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    goto :goto_16

    :cond_1d
    int-to-float v3, v0

    .line 640
    .local v3, "thumbstickX":F
    :goto_16
    iget-object v4, v8, Lcom/winlator/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    if-eqz v4, :cond_1e

    iget-object v4, v8, Lcom/winlator/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    goto :goto_17

    :cond_1e
    int-to-float v4, v1

    .line 642
    .local v4, "thumbstickY":F
    :goto_17
    move/from16 v5, v31

    .end local v31    # "snappingSize":I
    .local v5, "snappingSize":I
    int-to-float v6, v5

    const/high16 v7, 0x40600000    # 3.5f

    mul-float/2addr v6, v7

    iget v7, v8, Lcom/winlator/inputcontrols/ControlElement;->scale:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-short v6, v6

    .line 643
    .local v6, "thumbRadius":S
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 644
    const/16 v7, 0x32

    invoke-static {v11, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    invoke-virtual {v12, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 645
    int-to-float v7, v6

    invoke-virtual {v13, v3, v4, v7, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 647
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 648
    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 649
    int-to-float v7, v6

    mul-float v14, v32, v18

    add-float/2addr v7, v14

    invoke-virtual {v13, v3, v4, v7, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 650
    goto/16 :goto_18

    .line 478
    .end local v0    # "cx":I
    .end local v1    # "cy":I
    .end local v2    # "oldColor":I
    .end local v3    # "thumbstickX":F
    .end local v4    # "thumbstickY":F
    .end local v5    # "snappingSize":I
    .end local v6    # "thumbRadius":S
    .end local v32    # "strokeWidth":F
    .restart local v10    # "snappingSize":I
    .local v11, "paint":Landroid/graphics/Paint;
    .local v12, "lightColor":I
    .restart local v14    # "strokeWidth":F
    :pswitch_9
    move-object v13, v9

    move v5, v10

    move/from16 v32, v14

    move/from16 v47, v12

    move-object v12, v11

    move/from16 v11, v47

    .end local v10    # "snappingSize":I
    .end local v14    # "strokeWidth":F
    .restart local v5    # "snappingSize":I
    .local v11, "lightColor":I
    .local v12, "paint":Landroid/graphics/Paint;
    .restart local v32    # "strokeWidth":F
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    .line 479
    .local v0, "cx":F
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    .line 480
    .local v1, "cy":F
    mul-int/lit8 v10, v5, 0x2

    int-to-float v2, v10

    iget v3, v8, Lcom/winlator/inputcontrols/ControlElement;->scale:F

    mul-float/2addr v2, v3

    .line 481
    .local v2, "offsetX":F
    mul-int/lit8 v10, v5, 0x3

    int-to-float v3, v10

    iget v4, v8, Lcom/winlator/inputcontrols/ControlElement;->scale:F

    mul-float/2addr v3, v4

    .line 482
    .local v3, "offsetY":F
    int-to-float v4, v5

    iget v6, v8, Lcom/winlator/inputcontrols/ControlElement;->scale:F

    mul-float/2addr v4, v6

    .line 484
    .local v4, "start":F
    iget-object v6, v8, Lcom/winlator/inputcontrols/ControlElement;->paths:[Landroid/graphics/Path;

    if-nez v6, :cond_1f

    .line 485
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 486
    .local v6, "path":Landroid/graphics/Path;
    sub-float v7, v1, v4

    invoke-virtual {v6, v0, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 487
    sub-float v7, v0, v2

    sub-float v9, v1, v3

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 488
    sub-float v7, v0, v2

    iget v9, v15, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 489
    add-float v7, v0, v2

    iget v9, v15, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 490
    add-float v7, v0, v2

    sub-float v9, v1, v3

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 491
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 493
    sub-float v7, v0, v4

    invoke-virtual {v6, v7, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 494
    sub-float v7, v0, v3

    sub-float v9, v1, v2

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 495
    iget v7, v15, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float v9, v1, v2

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 496
    iget v7, v15, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    add-float v9, v1, v2

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 497
    sub-float v7, v0, v3

    add-float v9, v1, v2

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 498
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 500
    add-float v7, v1, v4

    invoke-virtual {v6, v0, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 501
    sub-float v7, v0, v2

    add-float v9, v1, v3

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 502
    sub-float v7, v0, v2

    iget v9, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 503
    add-float v7, v0, v2

    iget v9, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 504
    add-float v7, v0, v2

    add-float v9, v1, v3

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 505
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 507
    add-float v7, v0, v4

    invoke-virtual {v6, v7, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 508
    add-float v7, v0, v3

    sub-float v9, v1, v2

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 509
    iget v7, v15, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float v9, v1, v2

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 510
    iget v7, v15, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    add-float v9, v1, v2

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 511
    add-float v7, v0, v3

    add-float v9, v1, v2

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 512
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 513
    filled-new-array {v6}, [Landroid/graphics/Path;

    move-result-object v7

    iput-object v7, v8, Lcom/winlator/inputcontrols/ControlElement;->paths:[Landroid/graphics/Path;

    .line 516
    .end local v6    # "path":Landroid/graphics/Path;
    :cond_1f
    iget-object v6, v8, Lcom/winlator/inputcontrols/ControlElement;->paths:[Landroid/graphics/Path;

    aget-object v6, v6, v16

    invoke-virtual {v13, v6, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 517
    nop

    .line 755
    .end local v0    # "cx":F
    .end local v1    # "cy":F
    .end local v2    # "offsetX":F
    .end local v3    # "offsetY":F
    .end local v4    # "start":F
    :goto_18
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getBindingAt(I)Lcom/winlator/inputcontrols/Binding;
    .locals 1
    .param p1, "index"    # I

    .line 215
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/winlator/inputcontrols/Binding;->NONE:Lcom/winlator/inputcontrols/Binding;

    :goto_0
    return-object v0
.end method

.method public getBindingCount()B
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    array-length v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public getBoundingBox()Landroid/graphics/Rect;
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/winlator/inputcontrols/ControlElement;->computeBoundingBox()Landroid/graphics/Rect;

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->boundingBox:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDarkColor()I
    .locals 3

    .line 1086
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/winlator/widget/InputControlsView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f0ccccd    # 0.55f

    iget v1, p0, Lcom/winlator/inputcontrols/ControlElement;->opacity:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/winlator/inputcontrols/ControlElement;->opacity:F

    .line 1087
    .local v0, "opacity":F
    :goto_0
    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v1}, Lcom/winlator/widget/InputControlsView;->getOverlayOpacity()F

    move-result v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x16

    const/16 p0, 0x20

    const/16 p1, 0x2e

    invoke-static {v1, v2, p0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    return v1
.end method

.method public getFirstBindingIndex()B
    .locals 3

    .line 155
    const/4 v0, 0x0

    .local v0, "i":B
    :goto_0
    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    aget-object v1, v1, v0

    sget-object v2, Lcom/winlator/inputcontrols/Binding;->NONE:Lcom/winlator/inputcontrols/Binding;

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_0

    .line 156
    .end local v0    # "i":B
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getHighlightColor()I
    .locals 4

    .line 1091
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/winlator/widget/InputControlsView;->getOverlayOpacity()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x77

    const/16 v2, 0xbd

    const/4 v3, 0x2

    invoke-static {v0, v3, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public getIconId()B
    .locals 1

    .line 286
    iget-byte v0, p0, Lcom/winlator/inputcontrols/ControlElement;->iconId:B

    return v0
.end method

.method public getLastBindingIndex()B
    .locals 4

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "last":B
    const/4 v1, 0x0

    .local v1, "i":B
    :goto_0
    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    aget-object v2, v2, v1

    sget-object v3, Lcom/winlator/inputcontrols/Binding;->NONE:Lcom/winlator/inputcontrols/Binding;

    if-eq v2, v3, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    goto :goto_0

    .line 162
    .end local v1    # "i":B
    :cond_1
    return v0
.end method

.method public getLightColor()I
    .locals 3

    .line 1081
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/winlator/widget/InputControlsView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f0ccccd    # 0.55f

    iget v1, p0, Lcom/winlator/inputcontrols/ControlElement;->opacity:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/winlator/inputcontrols/ControlElement;->opacity:F

    .line 1082
    .local v0, "opacity":F
    :goto_0
    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v1}, Lcom/winlator/widget/InputControlsView;->getOverlayOpacity()F

    move-result v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_1

    move v1, v2

    :cond_1
    const/16 v2, 0x2e

    const/16 p0, 0x3a

    const/16 p1, 0x48

    invoke-static {v1, v2, p0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    return v1
.end method

.method public getOpacity()F
    .locals 1

    .line 243
    iget v0, p0, Lcom/winlator/inputcontrols/ControlElement;->opacity:F

    return v0
.end method

.method public getOrientation()B
    .locals 1

    .line 190
    iget-byte v0, p0, Lcom/winlator/inputcontrols/ControlElement;->orientation:B

    return v0
.end method

.method public getRange()Lcom/winlator/inputcontrols/ControlElement$Range;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->range:Lcom/winlator/inputcontrols/ControlElement$Range;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->range:Lcom/winlator/inputcontrols/ControlElement$Range;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/winlator/inputcontrols/ControlElement$Range;->FROM_A_TO_Z:Lcom/winlator/inputcontrols/ControlElement$Range;

    :goto_0
    return-object v0
.end method

.method public getScale()F
    .locals 1

    .line 234
    iget v0, p0, Lcom/winlator/inputcontrols/ControlElement;->scale:F

    return v0
.end method

.method public getShape()Lcom/winlator/inputcontrols/ControlElement$Shape;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->shape:Lcom/winlator/inputcontrols/ControlElement$Shape;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/winlator/inputcontrols/ControlElement$Type;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    return-object v0
.end method

.method public getX()S
    .locals 1

    .line 251
    iget-short v0, p0, Lcom/winlator/inputcontrols/ControlElement;->x:S

    return v0
.end method

.method public getY()S
    .locals 1

    .line 260
    iget-short v0, p0, Lcom/winlator/inputcontrols/ControlElement;->y:S

    return v0
.end method

.method public handleTouchDown(IFF)Z
    .locals 8
    .param p1, "pointerId"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 816
    iget v0, p0, Lcom/winlator/inputcontrols/ControlElement;->currentPointerId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_d

    invoke-virtual {p0, p2, p3}, Lcom/winlator/inputcontrols/ControlElement;->containsPoint(FF)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 817
    iput p1, p0, Lcom/winlator/inputcontrols/ControlElement;->currentPointerId:I

    .line 818
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    sget-object v1, Lcom/winlator/inputcontrols/ControlElement$Type;->BUTTON:Lcom/winlator/inputcontrols/ControlElement$Type;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v1, :cond_4

    .line 819
    invoke-direct {p0}, Lcom/winlator/inputcontrols/ControlElement;->isKeepButtonPressedAfterMinTime()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->touchTime:Ljava/lang/Object;

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    invoke-virtual {v0, v4}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    invoke-virtual {v0, v1, v4}, Lcom/winlator/widget/InputControlsView;->handleInputEvent([Lcom/winlator/inputcontrols/Binding;Z)V

    .line 821
    :cond_2
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/winlator/widget/InputControlsView;->getTouchpadView()Lcom/winlator/widget/TouchpadView;

    move-result-object v0

    invoke-virtual {v0, p2, p3, v2}, Lcom/winlator/widget/TouchpadView;->mouseMove(FFI)V

    .line 823
    :cond_3
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    invoke-virtual {v0, v3}, Lcom/winlator/core/Bitmask;->set(I)V

    .line 824
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 825
    return v4

    .line 827
    :cond_4
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    sget-object v1, Lcom/winlator/inputcontrols/ControlElement$Type;->RANGE_BUTTON:Lcom/winlator/inputcontrols/ControlElement$Type;

    if-ne v0, v1, :cond_5

    .line 828
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->scroller:Lcom/winlator/inputcontrols/RangeScroller;

    invoke-virtual {v0, p2, p3}, Lcom/winlator/inputcontrols/RangeScroller;->handleTouchDown(FF)V

    .line 829
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    invoke-virtual {v0, v3}, Lcom/winlator/core/Bitmask;->set(I)V

    .line 830
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 831
    return v4

    .line 833
    :cond_5
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    sget-object v1, Lcom/winlator/inputcontrols/ControlElement$Type;->MIDI_KEY:Lcom/winlator/inputcontrols/ControlElement$Type;

    if-ne v0, v1, :cond_7

    .line 834
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/winlator/widget/InputControlsView;->getXServer()Lcom/winlator/xserver/XServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/xserver/XServer;->getWinHandler()Lcom/winlator/winhandler/WinHandler;

    move-result-object v0

    .line 835
    .local v0, "winHandler":Lcom/winlator/winhandler/WinHandler;
    if-eqz v0, :cond_6

    .line 836
    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->text:Ljava/lang/String;

    invoke-static {v1}, Lcom/winlator/winhandler/MIDIHandler;->parseNoteNumber(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    int-to-byte v1, v1

    .line 837
    .local v1, "note":B
    invoke-virtual {v0}, Lcom/winlator/winhandler/WinHandler;->getMIDIhandler()Lcom/winlator/winhandler/MIDIHandler;

    move-result-object v5

    const/16 v6, -0x70

    const/16 v7, 0x7f

    invoke-virtual {v5, v6, v2, v1, v7}, Lcom/winlator/winhandler/MIDIHandler;->sendShortMsg(BBBB)Z

    .line 838
    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    invoke-virtual {v2, v3}, Lcom/winlator/core/Bitmask;->set(I)V

    .line 839
    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 841
    .end local v1    # "note":B
    :cond_6
    return v4

    .line 843
    .end local v0    # "winHandler":Lcom/winlator/winhandler/WinHandler;
    :cond_7
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    sget-object v1, Lcom/winlator/inputcontrols/ControlElement$Type;->RADIAL_MENU:Lcom/winlator/inputcontrols/ControlElement$Type;

    if-ne v0, v1, :cond_a

    .line 844
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 845
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->boundingBox:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->boundingBox:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2, p2, p3}, Lcom/winlator/math/Mathf;->distance(FFFF)F

    move-result v0

    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->boundingBox:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_9

    .line 846
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->unset(I)V

    goto :goto_0

    .line 849
    :cond_8
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->set(I)V

    .line 850
    :cond_9
    :goto_0
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 851
    return v4

    .line 854
    :cond_a
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    sget-object v1, Lcom/winlator/inputcontrols/ControlElement$Type;->TRACKPAD:Lcom/winlator/inputcontrols/ControlElement$Type;

    if-ne v0, v1, :cond_c

    .line 855
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    .line 856
    :cond_b
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    .line 858
    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Lcom/winlator/inputcontrols/ControlElement;->handleTouchMove(IFF)Z

    move-result v0

    return v0

    .line 861
    :cond_d
    return v2
.end method

.method public handleTouchMove(IFF)Z
    .locals 23
    .param p1, "pointerId"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 865
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget v7, v0, Lcom/winlator/inputcontrols/ControlElement;->currentPointerId:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v1, v7, :cond_2d

    iget-object v7, v0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    sget-object v10, Lcom/winlator/inputcontrols/ControlElement$Type;->D_PAD:Lcom/winlator/inputcontrols/ControlElement$Type;

    if-eq v7, v10, :cond_0

    iget-object v7, v0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    sget-object v10, Lcom/winlator/inputcontrols/ControlElement$Type;->STICK:Lcom/winlator/inputcontrols/ControlElement$Type;

    if-eq v7, v10, :cond_0

    iget-object v7, v0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    sget-object v10, Lcom/winlator/inputcontrols/ControlElement$Type;->TRACKPAD:Lcom/winlator/inputcontrols/ControlElement$Type;

    if-ne v7, v10, :cond_2d

    .line 867
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/inputcontrols/ControlElement;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v7

    .line 868
    .local v7, "boundingBox":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    .line 869
    .local v10, "radius":F
    iget-object v11, v0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v11}, Lcom/winlator/widget/InputControlsView;->getTouchpadView()Lcom/winlator/widget/TouchpadView;

    move-result-object v11

    .line 871
    .local v11, "touchpadView":Lcom/winlator/widget/TouchpadView;
    iget-object v12, v0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    sget-object v13, Lcom/winlator/inputcontrols/ControlElement$Type;->TRACKPAD:Lcom/winlator/inputcontrols/ControlElement$Type;

    if-ne v12, v13, :cond_2

    .line 872
    iget-object v12, v0, Lcom/winlator/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    if-nez v12, :cond_1

    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12}, Landroid/graphics/PointF;-><init>()V

    iput-object v12, v0, Lcom/winlator/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    .line 873
    :cond_1
    iget-object v12, v0, Lcom/winlator/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    iget-object v13, v0, Lcom/winlator/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, v12, v13, v2, v3}, Lcom/winlator/widget/TouchpadView;->computeDeltaPoint(FFFF)[F

    move-result-object v12

    .line 874
    .local v12, "deltaPoint":[F
    aget v13, v12, v8

    .line 875
    .local v13, "deltaX":F
    aget v16, v12, v9

    .line 876
    .local v16, "deltaY":F
    iget-object v5, v0, Lcom/winlator/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    invoke-virtual {v5, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 877
    .end local v12    # "deltaPoint":[F
    move/from16 v15, v16

    goto :goto_1

    .line 879
    .end local v13    # "deltaX":F
    .end local v16    # "deltaY":F
    :cond_2
    iget v5, v7, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    .line 880
    .local v5, "localX":F
    iget v12, v7, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    sub-float v12, v3, v12

    .line 881
    .local v12, "localY":F
    sub-float v13, v5, v10

    .line 882
    .local v13, "offsetX":F
    sub-float v6, v12, v10

    .line 884
    .local v6, "offsetY":F
    sub-float v9, v10, v5

    sub-float v8, v10, v12

    invoke-static {v9, v8}, Lcom/winlator/math/Mathf;->lengthSq(FF)F

    move-result v8

    .line 885
    .local v8, "distance":F
    mul-float v9, v10, v10

    cmpl-float v9, v8, v9

    if-lez v9, :cond_3

    .line 886
    move/from16 v18, v5

    .end local v5    # "localX":F
    .local v18, "localX":F
    float-to-double v4, v6

    float-to-double v14, v13

    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 887
    .local v4, "angle":F
    float-to-double v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    move/from16 v19, v6

    .end local v6    # "offsetY":F
    .local v19, "offsetY":F
    float-to-double v5, v10

    mul-double/2addr v14, v5

    double-to-float v13, v14

    .line 888
    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    float-to-double v14, v10

    mul-double/2addr v5, v14

    double-to-float v6, v5

    .end local v19    # "offsetY":F
    .restart local v6    # "offsetY":F
    goto :goto_0

    .line 885
    .end local v4    # "angle":F
    .end local v18    # "localX":F
    .restart local v5    # "localX":F
    :cond_3
    move/from16 v18, v5

    move/from16 v19, v6

    .line 891
    .end local v5    # "localX":F
    .restart local v18    # "localX":F
    :goto_0
    div-float v4, v13, v10

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v4, v5, v14}, Lcom/winlator/math/Mathf;->clamp(FFF)F

    move-result v4

    .line 892
    .local v4, "deltaX":F
    div-float v15, v6, v10

    invoke-static {v15, v5, v14}, Lcom/winlator/math/Mathf;->clamp(FFF)F

    move-result v15

    move v13, v4

    .line 895
    .end local v4    # "deltaX":F
    .end local v6    # "offsetY":F
    .end local v8    # "distance":F
    .end local v12    # "localY":F
    .end local v18    # "localX":F
    .local v13, "deltaX":F
    .local v15, "deltaY":F
    :goto_1
    iget-object v4, v0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    sget-object v5, Lcom/winlator/inputcontrols/ControlElement$Type;->STICK:Lcom/winlator/inputcontrols/ControlElement$Type;

    const/high16 v6, 0x40400000    # 3.0f

    if-ne v4, v5, :cond_10

    .line 896
    iget-object v4, v0, Lcom/winlator/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    if-nez v4, :cond_4

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v4, v0, Lcom/winlator/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    .line 897
    :cond_4
    iget-object v4, v0, Lcom/winlator/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    iget v5, v7, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float v8, v13, v10

    add-float/2addr v5, v8

    add-float/2addr v5, v10

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 898
    iget-object v4, v0, Lcom/winlator/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    iget v5, v7, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float v8, v15, v10

    add-float/2addr v5, v8

    add-float/2addr v5, v10

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 899
    const v4, -0x41e66666    # -0.15f

    cmpg-float v5, v15, v4

    if-gtz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    const v8, 0x3e19999a    # 0.15f

    cmpl-float v12, v13, v8

    if-ltz v12, :cond_6

    const/4 v12, 0x1

    goto :goto_3

    :cond_6
    const/4 v12, 0x0

    :goto_3
    cmpl-float v8, v15, v8

    if-ltz v8, :cond_7

    const/4 v8, 0x1

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    :goto_4
    cmpg-float v4, v13, v4

    if-gtz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    :goto_5
    const/4 v9, 0x4

    new-array v14, v9, [Z

    const/16 v17, 0x0

    aput-boolean v5, v14, v17

    const/4 v5, 0x1

    aput-boolean v12, v14, v5

    const/4 v12, 0x2

    aput-boolean v8, v14, v12

    const/4 v8, 0x3

    aput-boolean v4, v14, v8

    move-object v4, v14

    .line 901
    .local v4, "states":[Z
    const/4 v12, 0x0

    .local v12, "i":B
    :goto_6
    if-ge v12, v9, :cond_f

    .line 902
    if-eq v12, v5, :cond_9

    if-ne v12, v8, :cond_a

    :cond_9
    goto :goto_7

    :cond_a
    move v5, v15

    goto :goto_8

    :goto_7
    move v5, v13

    .line 903
    .local v5, "value":F
    :goto_8
    invoke-virtual {v0, v12}, Lcom/winlator/inputcontrols/ControlElement;->getBindingAt(I)Lcom/winlator/inputcontrols/Binding;

    move-result-object v8

    .line 904
    .local v8, "binding":Lcom/winlator/inputcontrols/Binding;
    invoke-virtual {v8}, Lcom/winlator/inputcontrols/Binding;->isGamepad()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 905
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const v18, 0x3c23d70a    # 0.01f

    sub-float v14, v14, v18

    const/4 v9, 0x0

    invoke-static {v9, v14}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v5}, Lcom/winlator/math/Mathf;->sign(F)B

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v9, v14

    mul-float/2addr v9, v6

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v14, -0x40800000    # -1.0f

    invoke-static {v9, v14, v6}, Lcom/winlator/math/Mathf;->clamp(FFF)F

    move-result v5

    .line 906
    iget-object v6, v0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9, v5}, Lcom/winlator/widget/InputControlsView;->handleInputEvent(Lcom/winlator/inputcontrols/Binding;ZF)V

    .line 907
    iget-object v6, v0, Lcom/winlator/inputcontrols/ControlElement;->states:[Z

    aput-boolean v9, v6, v12

    goto :goto_b

    .line 910
    :cond_b
    invoke-virtual {v8}, Lcom/winlator/inputcontrols/Binding;->isMouseMove()Z

    move-result v6

    if-eqz v6, :cond_e

    aget-boolean v6, v4, v12

    if-nez v6, :cond_c

    const/4 v6, 0x2

    add-int/lit8 v9, v12, 0x2

    const/4 v6, 0x4

    rem-int/lit8 v14, v9, 0x4

    aget-boolean v6, v4, v14

    if-eqz v6, :cond_d

    :cond_c
    goto :goto_9

    :cond_d
    const/4 v6, 0x0

    goto :goto_a

    :goto_9
    const/4 v6, 0x1

    goto :goto_a

    :cond_e
    aget-boolean v6, v4, v12

    .line 911
    .local v6, "state":Z
    :goto_a
    iget-object v14, v0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v14, v8, v6, v5}, Lcom/winlator/widget/InputControlsView;->handleInputEvent(Lcom/winlator/inputcontrols/Binding;ZF)V

    .line 912
    iget-object v14, v0, Lcom/winlator/inputcontrols/ControlElement;->states:[Z

    aput-boolean v6, v14, v12

    .line 901
    .end local v5    # "value":F
    .end local v6    # "state":Z
    .end local v8    # "binding":Lcom/winlator/inputcontrols/Binding;
    :goto_b
    const/4 v5, 0x1

    add-int/lit8 v6, v12, 0x1

    int-to-byte v12, v6

    const/4 v5, 0x1

    const/high16 v6, 0x40400000    # 3.0f

    const/4 v8, 0x3

    const/4 v9, 0x4

    goto :goto_6

    :cond_f
    nop

    .line 916
    .end local v12    # "i":B
    iget-object v5, v0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 917
    .end local v4    # "states":[Z
    move-object/from16 v20, v7

    move/from16 v21, v10

    move-object/from16 v22, v11

    const/4 v5, 0x1

    goto/16 :goto_20

    .line 918
    :cond_10
    iget-object v4, v0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    sget-object v5, Lcom/winlator/inputcontrols/ControlElement$Type;->TRACKPAD:Lcom/winlator/inputcontrols/ControlElement$Type;

    if-ne v4, v5, :cond_22

    .line 919
    const v4, -0x40b33333    # -0.8f

    cmpg-float v5, v15, v4

    if-gtz v5, :cond_11

    const/4 v5, 0x1

    goto :goto_c

    :cond_11
    const/4 v5, 0x0

    :goto_c
    const v6, 0x3f4ccccd    # 0.8f

    cmpl-float v8, v13, v6

    if-ltz v8, :cond_12

    const/4 v8, 0x1

    goto :goto_d

    :cond_12
    const/4 v8, 0x0

    :goto_d
    cmpl-float v6, v15, v6

    if-ltz v6, :cond_13

    const/4 v6, 0x1

    goto :goto_e

    :cond_13
    const/4 v6, 0x0

    :goto_e
    cmpg-float v4, v13, v4

    if-gtz v4, :cond_14

    const/4 v4, 0x1

    goto :goto_f

    :cond_14
    const/4 v4, 0x0

    :goto_f
    const/4 v9, 0x4

    new-array v12, v9, [Z

    const/4 v14, 0x0

    aput-boolean v5, v12, v14

    const/4 v5, 0x1

    aput-boolean v8, v12, v5

    const/4 v5, 0x2

    aput-boolean v6, v12, v5

    const/4 v5, 0x3

    aput-boolean v4, v12, v5

    move-object v4, v12

    .line 920
    .restart local v4    # "states":[Z
    const/4 v5, 0x0

    .line 921
    .local v5, "cursorDx":I
    const/4 v6, 0x0

    .line 923
    .local v6, "cursorDy":I
    const/4 v8, 0x0

    .local v8, "i":B
    :goto_10
    const/4 v9, 0x4

    if-ge v8, v9, :cond_1f

    .line 924
    const/4 v12, 0x1

    if-eq v8, v12, :cond_15

    const/4 v12, 0x3

    if-ne v8, v12, :cond_16

    :cond_15
    goto :goto_11

    :cond_16
    move v12, v15

    goto :goto_12

    :goto_11
    move v12, v13

    .line 925
    .local v12, "value":F
    :goto_12
    invoke-virtual {v0, v8}, Lcom/winlator/inputcontrols/ControlElement;->getBindingAt(I)Lcom/winlator/inputcontrols/Binding;

    move-result-object v14

    .line 926
    .local v14, "binding":Lcom/winlator/inputcontrols/Binding;
    invoke-virtual {v14}, Lcom/winlator/inputcontrols/Binding;->isGamepad()Z

    move-result v16

    if-eqz v16, :cond_19

    .line 927
    iget-object v9, v0, Lcom/winlator/inputcontrols/ControlElement;->interpolator:Lcom/winlator/core/CubicBezierInterpolator;

    if-nez v9, :cond_17

    new-instance v9, Lcom/winlator/core/CubicBezierInterpolator;

    invoke-direct {v9}, Lcom/winlator/core/CubicBezierInterpolator;-><init>()V

    iput-object v9, v0, Lcom/winlator/inputcontrols/ControlElement;->interpolator:Lcom/winlator/core/CubicBezierInterpolator;

    .line 928
    :cond_17
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v16, 0x40800000    # 4.0f

    cmpl-float v9, v9, v16

    if-lez v9, :cond_18

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v12, v9

    goto :goto_13

    :cond_18
    const/high16 v9, 0x40400000    # 3.0f

    .line 929
    :goto_13
    iget-object v9, v0, Lcom/winlator/inputcontrols/ControlElement;->interpolator:Lcom/winlator/core/CubicBezierInterpolator;

    move-object/from16 v20, v7

    .end local v7    # "boundingBox":Landroid/graphics/Rect;
    .local v20, "boundingBox":Landroid/graphics/Rect;
    const v7, 0x3d99999a    # 0.075f

    move/from16 v21, v10

    .end local v10    # "radius":F
    .local v21, "radius":F
    const v10, 0x3ee66666    # 0.45f

    move-object/from16 v22, v11

    .end local v11    # "touchpadView":Lcom/winlator/widget/TouchpadView;
    .local v22, "touchpadView":Lcom/winlator/widget/TouchpadView;
    const v11, 0x3f733333    # 0.95f

    invoke-virtual {v9, v7, v11, v10, v11}, Lcom/winlator/core/CubicBezierInterpolator;->set(FFFF)V

    .line 930
    iget-object v7, v0, Lcom/winlator/inputcontrols/ControlElement;->interpolator:Lcom/winlator/core/CubicBezierInterpolator;

    const/high16 v9, 0x41a00000    # 20.0f

    div-float v9, v12, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-virtual {v7, v9}, Lcom/winlator/core/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v7

    .line 931
    .local v7, "interpolatedValue":F
    iget-object v9, v0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-static {v12}, Lcom/winlator/math/Mathf;->sign(F)B

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v7

    move/from16 v16, v7

    const/high16 v7, -0x40800000    # -1.0f

    .end local v7    # "interpolatedValue":F
    .local v16, "interpolatedValue":F
    invoke-static {v11, v7, v10}, Lcom/winlator/math/Mathf;->clamp(FFF)F

    move-result v11

    const/4 v7, 0x1

    invoke-virtual {v9, v14, v7, v11}, Lcom/winlator/widget/InputControlsView;->handleInputEvent(Lcom/winlator/inputcontrols/Binding;ZF)V

    .line 932
    iget-object v9, v0, Lcom/winlator/inputcontrols/ControlElement;->states:[Z

    aput-boolean v7, v9, v8

    .line 933
    .end local v16    # "interpolatedValue":F
    goto :goto_16

    .line 935
    .end local v20    # "boundingBox":Landroid/graphics/Rect;
    .end local v21    # "radius":F
    .end local v22    # "touchpadView":Lcom/winlator/widget/TouchpadView;
    .local v7, "boundingBox":Landroid/graphics/Rect;
    .restart local v10    # "radius":F
    .restart local v11    # "touchpadView":Lcom/winlator/widget/TouchpadView;
    :cond_19
    move-object/from16 v20, v7

    move/from16 v21, v10

    move-object/from16 v22, v11

    const/high16 v10, 0x3f800000    # 1.0f

    .end local v7    # "boundingBox":Landroid/graphics/Rect;
    .end local v10    # "radius":F
    .end local v11    # "touchpadView":Lcom/winlator/widget/TouchpadView;
    .restart local v20    # "boundingBox":Landroid/graphics/Rect;
    .restart local v21    # "radius":F
    .restart local v22    # "touchpadView":Lcom/winlator/widget/TouchpadView;
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v9, 0x40c00000    # 6.0f

    cmpl-float v7, v7, v9

    if-lez v7, :cond_1a

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float/2addr v12, v7

    .line 936
    :cond_1a
    sget-object v7, Lcom/winlator/inputcontrols/Binding;->MOUSE_MOVE_LEFT:Lcom/winlator/inputcontrols/Binding;

    if-eq v14, v7, :cond_1b

    sget-object v7, Lcom/winlator/inputcontrols/Binding;->MOUSE_MOVE_RIGHT:Lcom/winlator/inputcontrols/Binding;

    if-ne v14, v7, :cond_1c

    :cond_1b
    goto :goto_15

    .line 939
    :cond_1c
    sget-object v7, Lcom/winlator/inputcontrols/Binding;->MOUSE_MOVE_UP:Lcom/winlator/inputcontrols/Binding;

    if-eq v14, v7, :cond_1d

    sget-object v7, Lcom/winlator/inputcontrols/Binding;->MOUSE_MOVE_DOWN:Lcom/winlator/inputcontrols/Binding;

    if-ne v14, v7, :cond_1e

    :cond_1d
    goto :goto_14

    .line 943
    :cond_1e
    iget-object v7, v0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    aget-boolean v9, v4, v8

    invoke-virtual {v7, v14, v9, v12}, Lcom/winlator/widget/InputControlsView;->handleInputEvent(Lcom/winlator/inputcontrols/Binding;ZF)V

    .line 944
    iget-object v7, v0, Lcom/winlator/inputcontrols/ControlElement;->states:[Z

    aget-boolean v9, v4, v8

    aput-boolean v9, v7, v8

    goto :goto_16

    .line 940
    :goto_14
    invoke-static {v12}, Lcom/winlator/math/Mathf;->roundPoint(F)I

    move-result v6

    goto :goto_16

    .line 937
    :goto_15
    invoke-static {v12}, Lcom/winlator/math/Mathf;->roundPoint(F)I

    move-result v5

    .line 923
    .end local v12    # "value":F
    .end local v14    # "binding":Lcom/winlator/inputcontrols/Binding;
    :goto_16
    const/4 v7, 0x1

    add-int/lit8 v9, v8, 0x1

    int-to-byte v8, v9

    move-object/from16 v7, v20

    move/from16 v10, v21

    move-object/from16 v11, v22

    goto/16 :goto_10

    .end local v20    # "boundingBox":Landroid/graphics/Rect;
    .end local v21    # "radius":F
    .end local v22    # "touchpadView":Lcom/winlator/widget/TouchpadView;
    .restart local v7    # "boundingBox":Landroid/graphics/Rect;
    .restart local v10    # "radius":F
    .restart local v11    # "touchpadView":Lcom/winlator/widget/TouchpadView;
    :cond_1f
    move-object/from16 v20, v7

    move/from16 v21, v10

    move-object/from16 v22, v11

    .line 949
    .end local v7    # "boundingBox":Landroid/graphics/Rect;
    .end local v8    # "i":B
    .end local v10    # "radius":F
    .end local v11    # "touchpadView":Lcom/winlator/widget/TouchpadView;
    .restart local v20    # "boundingBox":Landroid/graphics/Rect;
    .restart local v21    # "radius":F
    .restart local v22    # "touchpadView":Lcom/winlator/widget/TouchpadView;
    if-nez v5, :cond_20

    if-eqz v6, :cond_21

    :cond_20
    iget-object v7, v0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v7}, Lcom/winlator/widget/InputControlsView;->getXServer()Lcom/winlator/xserver/XServer;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/winlator/xserver/XServer;->injectPointerMoveDelta(II)V

    .line 950
    .end local v4    # "states":[Z
    .end local v5    # "cursorDx":I
    .end local v6    # "cursorDy":I
    :cond_21
    const/4 v5, 0x1

    goto/16 :goto_20

    .line 952
    .end local v20    # "boundingBox":Landroid/graphics/Rect;
    .end local v21    # "radius":F
    .end local v22    # "touchpadView":Lcom/winlator/widget/TouchpadView;
    .restart local v7    # "boundingBox":Landroid/graphics/Rect;
    .restart local v10    # "radius":F
    .restart local v11    # "touchpadView":Lcom/winlator/widget/TouchpadView;
    :cond_22
    move-object/from16 v20, v7

    move/from16 v21, v10

    move-object/from16 v22, v11

    .end local v7    # "boundingBox":Landroid/graphics/Rect;
    .end local v10    # "radius":F
    .end local v11    # "touchpadView":Lcom/winlator/widget/TouchpadView;
    .restart local v20    # "boundingBox":Landroid/graphics/Rect;
    .restart local v21    # "radius":F
    .restart local v22    # "touchpadView":Lcom/winlator/widget/TouchpadView;
    const v4, -0x41666666    # -0.3f

    cmpg-float v5, v15, v4

    if-gtz v5, :cond_23

    const/4 v5, 0x1

    goto :goto_17

    :cond_23
    const/4 v5, 0x0

    :goto_17
    const v6, 0x3e99999a    # 0.3f

    cmpl-float v7, v13, v6

    if-ltz v7, :cond_24

    const/4 v7, 0x1

    goto :goto_18

    :cond_24
    const/4 v7, 0x0

    :goto_18
    cmpl-float v6, v15, v6

    if-ltz v6, :cond_25

    const/4 v6, 0x1

    goto :goto_19

    :cond_25
    const/4 v6, 0x0

    :goto_19
    cmpg-float v4, v13, v4

    if-gtz v4, :cond_26

    const/4 v4, 0x1

    goto :goto_1a

    :cond_26
    const/4 v4, 0x0

    :goto_1a
    const/4 v8, 0x4

    new-array v9, v8, [Z

    const/4 v10, 0x0

    aput-boolean v5, v9, v10

    const/4 v5, 0x1

    aput-boolean v7, v9, v5

    const/4 v7, 0x2

    aput-boolean v6, v9, v7

    const/4 v6, 0x3

    aput-boolean v4, v9, v6

    move-object v4, v9

    .line 954
    .restart local v4    # "states":[Z
    const/4 v7, 0x0

    .local v7, "i":B
    :goto_1b
    if-ge v7, v8, :cond_2c

    .line 955
    if-eq v7, v5, :cond_27

    if-ne v7, v6, :cond_28

    :cond_27
    goto :goto_1c

    :cond_28
    move v5, v15

    goto :goto_1d

    :goto_1c
    move v5, v13

    .line 956
    .local v5, "value":F
    :goto_1d
    invoke-virtual {v0, v7}, Lcom/winlator/inputcontrols/ControlElement;->getBindingAt(I)Lcom/winlator/inputcontrols/Binding;

    move-result-object v8

    .line 957
    .local v8, "binding":Lcom/winlator/inputcontrols/Binding;
    invoke-virtual {v8}, Lcom/winlator/inputcontrols/Binding;->isMouseMove()Z

    move-result v10

    if-eqz v10, :cond_2b

    aget-boolean v10, v4, v7

    if-nez v10, :cond_2a

    const/4 v10, 0x2

    add-int/lit8 v11, v7, 0x2

    const/4 v9, 0x4

    rem-int/2addr v11, v9

    aget-boolean v10, v4, v11

    if-eqz v10, :cond_29

    goto :goto_1e

    :cond_29
    const/4 v10, 0x0

    goto :goto_1f

    :cond_2a
    const/4 v9, 0x4

    :goto_1e
    const/4 v10, 0x1

    goto :goto_1f

    :cond_2b
    const/4 v9, 0x4

    aget-boolean v10, v4, v7

    .line 958
    .local v10, "state":Z
    :goto_1f
    iget-object v11, v0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v11, v8, v10, v5}, Lcom/winlator/widget/InputControlsView;->handleInputEvent(Lcom/winlator/inputcontrols/Binding;ZF)V

    .line 959
    iget-object v11, v0, Lcom/winlator/inputcontrols/ControlElement;->states:[Z

    aput-boolean v10, v11, v7

    .line 954
    .end local v5    # "value":F
    .end local v8    # "binding":Lcom/winlator/inputcontrols/Binding;
    .end local v10    # "state":Z
    const/4 v5, 0x1

    add-int/lit8 v8, v7, 0x1

    int-to-byte v7, v8

    move v8, v9

    goto :goto_1b

    .line 963
    .end local v4    # "states":[Z
    .end local v7    # "i":B
    :cond_2c
    :goto_20
    return v5

    .line 965
    .end local v13    # "deltaX":F
    .end local v15    # "deltaY":F
    .end local v20    # "boundingBox":Landroid/graphics/Rect;
    .end local v21    # "radius":F
    .end local v22    # "touchpadView":Lcom/winlator/widget/TouchpadView;
    :cond_2d
    iget v4, v0, Lcom/winlator/inputcontrols/ControlElement;->currentPointerId:I

    if-ne v1, v4, :cond_2f

    iget-object v4, v0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    sget-object v5, Lcom/winlator/inputcontrols/ControlElement$Type;->RANGE_BUTTON:Lcom/winlator/inputcontrols/ControlElement$Type;

    if-ne v4, v5, :cond_2f

    .line 966
    iget-object v4, v0, Lcom/winlator/inputcontrols/ControlElement;->scroller:Lcom/winlator/inputcontrols/RangeScroller;

    invoke-virtual {v4, v2, v3}, Lcom/winlator/inputcontrols/RangeScroller;->handleTouchMove(FF)V

    .line 967
    iget-object v4, v0, Lcom/winlator/inputcontrols/ControlElement;->scroller:Lcom/winlator/inputcontrols/RangeScroller;

    invoke-virtual {v4}, Lcom/winlator/inputcontrols/RangeScroller;->isScrolling()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 968
    iget-object v4, v0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/winlator/core/Bitmask;->unset(I)V

    .line 969
    iget-object v4, v0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 971
    :cond_2e
    const/4 v4, 0x1

    return v4

    .line 973
    :cond_2f
    iget v4, v0, Lcom/winlator/inputcontrols/ControlElement;->currentPointerId:I

    if-ne v1, v4, :cond_30

    iget-object v4, v0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    sget-object v5, Lcom/winlator/inputcontrols/ControlElement$Type;->BUTTON:Lcom/winlator/inputcontrols/ControlElement$Type;

    if-ne v4, v5, :cond_30

    iget-object v4, v0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 974
    iget-object v4, v0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v4}, Lcom/winlator/widget/InputControlsView;->getTouchpadView()Lcom/winlator/widget/TouchpadView;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v2, v3, v5}, Lcom/winlator/widget/TouchpadView;->mouseMove(FFI)V

    .line 975
    const/4 v4, 0x1

    return v4

    .line 977
    :cond_30
    const/4 v4, 0x0

    return v4
.end method

.method public handleTouchUp(IFF)Z
    .locals 11
    .param p1, "pointerId"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 981
    iget v0, p0, Lcom/winlator/inputcontrols/ControlElement;->currentPointerId:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_13

    .line 982
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/winlator/inputcontrols/ControlElement$Type;->BUTTON:Lcom/winlator/inputcontrols/ControlElement$Type;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v0, v2, :cond_8

    .line 983
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    invoke-virtual {v0, v5}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v0

    .line 984
    .local v0, "selected":Z
    invoke-direct {p0}, Lcom/winlator/inputcontrols/ControlElement;->isKeepButtonPressedAfterMinTime()Z

    move-result v2

    const/16 v6, 0x8

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->touchTime:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 985
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->touchTime:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x12c

    cmp-long v2, v7, v9

    if-lez v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v0, v2

    .line 986
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    iget-object v7, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    invoke-virtual {v2, v7, v1}, Lcom/winlator/widget/InputControlsView;->handleInputEvent([Lcom/winlator/inputcontrols/Binding;Z)V

    .line 987
    :cond_1
    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    invoke-virtual {v2, v5, v0}, Lcom/winlator/core/Bitmask;->set(IZ)V

    .line 988
    iput-object v3, p0, Lcom/winlator/inputcontrols/ControlElement;->touchTime:Ljava/lang/Object;

    goto :goto_1

    .line 990
    :cond_2
    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    invoke-virtual {v2, v6}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    invoke-virtual {v2, v5}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 991
    :cond_3
    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    iget-object v3, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    invoke-virtual {v2, v3, v1}, Lcom/winlator/widget/InputControlsView;->handleInputEvent([Lcom/winlator/inputcontrols/Binding;Z)V

    .line 994
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    invoke-virtual {v2, v6}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    if-nez v0, :cond_5

    move v1, v5

    :cond_5
    invoke-virtual {v2, v5, v1}, Lcom/winlator/core/Bitmask;->set(IZ)V

    .line 995
    :cond_6
    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v1}, Lcom/winlator/widget/InputControlsView;->getTouchpadView()Lcom/winlator/widget/TouchpadView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v5}, Lcom/winlator/widget/TouchpadView;->mouseMove(FFI)V

    .line 997
    :cond_7
    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    invoke-virtual {v1, v4}, Lcom/winlator/core/Bitmask;->unset(I)V

    .line 998
    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 999
    .end local v0    # "selected":Z
    goto/16 :goto_4

    .line 1000
    :cond_8
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/winlator/inputcontrols/ControlElement$Type;->MIDI_KEY:Lcom/winlator/inputcontrols/ControlElement$Type;

    if-ne v0, v2, :cond_a

    .line 1001
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/winlator/widget/InputControlsView;->getXServer()Lcom/winlator/xserver/XServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/xserver/XServer;->getWinHandler()Lcom/winlator/winhandler/WinHandler;

    move-result-object v0

    .line 1002
    .local v0, "winHandler":Lcom/winlator/winhandler/WinHandler;
    if-eqz v0, :cond_9

    .line 1003
    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/winlator/winhandler/MIDIHandler;->parseNoteNumber(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    int-to-byte v2, v2

    .line 1004
    .local v2, "note":B
    invoke-virtual {v0}, Lcom/winlator/winhandler/WinHandler;->getMIDIhandler()Lcom/winlator/winhandler/MIDIHandler;

    move-result-object v3

    const/16 v6, -0x80

    const/16 v7, 0x7f

    invoke-virtual {v3, v6, v1, v2, v7}, Lcom/winlator/winhandler/MIDIHandler;->sendShortMsg(BBBB)Z

    .line 1005
    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    invoke-virtual {v1, v4}, Lcom/winlator/core/Bitmask;->unset(I)V

    .line 1006
    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1008
    .end local v0    # "winHandler":Lcom/winlator/winhandler/WinHandler;
    .end local v2    # "note":B
    :cond_9
    goto/16 :goto_4

    .line 1009
    :cond_a
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/winlator/inputcontrols/ControlElement$Type;->RADIAL_MENU:Lcom/winlator/inputcontrols/ControlElement$Type;

    if-ne v0, v2, :cond_c

    .line 1010
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p2, p3}, Lcom/winlator/inputcontrols/ControlElement;->handleRadialMenuClick(FF)V

    .line 1011
    :cond_b
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_4

    .line 1013
    :cond_c
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/winlator/inputcontrols/ControlElement$Type;->RANGE_BUTTON:Lcom/winlator/inputcontrols/ControlElement$Type;

    if-eq v0, v2, :cond_d

    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/winlator/inputcontrols/ControlElement$Type;->D_PAD:Lcom/winlator/inputcontrols/ControlElement$Type;

    if-eq v0, v2, :cond_d

    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/winlator/inputcontrols/ControlElement$Type;->STICK:Lcom/winlator/inputcontrols/ControlElement$Type;

    if-eq v0, v2, :cond_d

    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/winlator/inputcontrols/ControlElement$Type;->TRACKPAD:Lcom/winlator/inputcontrols/ControlElement$Type;

    if-ne v0, v2, :cond_12

    .line 1014
    :cond_d
    const/4 v0, 0x0

    .local v0, "i":B
    :goto_2
    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->states:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_f

    .line 1015
    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->states:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {p0, v0}, Lcom/winlator/inputcontrols/ControlElement;->getBindingAt(I)Lcom/winlator/inputcontrols/Binding;

    move-result-object v6

    invoke-virtual {v2, v6, v1}, Lcom/winlator/widget/InputControlsView;->handleInputEvent(Lcom/winlator/inputcontrols/Binding;Z)V

    .line 1016
    :cond_e
    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->states:[Z

    aput-boolean v1, v2, v0

    .line 1014
    add-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    goto :goto_2

    :cond_f
    nop

    .line 1019
    .end local v0    # "i":B
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    sget-object v1, Lcom/winlator/inputcontrols/ControlElement$Type;->RANGE_BUTTON:Lcom/winlator/inputcontrols/ControlElement$Type;

    if-ne v0, v1, :cond_10

    .line 1020
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->scroller:Lcom/winlator/inputcontrols/RangeScroller;

    invoke-virtual {v0}, Lcom/winlator/inputcontrols/RangeScroller;->handleTouchUp()V

    .line 1021
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    invoke-virtual {v0, v4}, Lcom/winlator/core/Bitmask;->unset(I)V

    .line 1022
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_3

    .line 1024
    :cond_10
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    sget-object v1, Lcom/winlator/inputcontrols/ControlElement$Type;->STICK:Lcom/winlator/inputcontrols/ControlElement$Type;

    if-ne v0, v1, :cond_11

    .line 1025
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1028
    :cond_11
    :goto_3
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    if-eqz v0, :cond_12

    iput-object v3, p0, Lcom/winlator/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    .line 1030
    :cond_12
    :goto_4
    const/4 v0, -0x1

    iput v0, p0, Lcom/winlator/inputcontrols/ControlElement;->currentPointerId:I

    .line 1031
    return v5

    .line 1033
    :cond_13
    return v1
.end method

.method public isMouseMoveMode()Z
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isToggleSwitch()Z
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public setBinding(Lcom/winlator/inputcontrols/Binding;)V
    .locals 1
    .param p1, "binding"    # Lcom/winlator/inputcontrols/Binding;

    .line 230
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 231
    return-void
.end method

.method public setBindingAt(ILcom/winlator/inputcontrols/Binding;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "binding"    # Lcom/winlator/inputcontrols/Binding;

    .line 219
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    array-length v0, v0

    .line 221
    .local v0, "oldLength":I
    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/winlator/inputcontrols/Binding;

    iput-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    .line 222
    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    array-length v2, v2

    sget-object v3, Lcom/winlator/inputcontrols/Binding;->NONE:Lcom/winlator/inputcontrols/Binding;

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 223
    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->states:[Z

    .line 224
    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/winlator/core/Bitmask;->set(I)V

    .line 226
    .end local v0    # "oldLength":I
    :cond_0
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    aput-object p2, v0, p1

    .line 227
    return-void
.end method

.method public setBindingCount(I)V
    .locals 2
    .param p1, "bindingCount"    # I

    .line 166
    new-array v0, p1, [Lcom/winlator/inputcontrols/Binding;

    iput-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    .line 167
    sget-object v0, Lcom/winlator/inputcontrols/Binding;->NONE:Lcom/winlator/inputcontrols/Binding;

    invoke-virtual {p0, v0}, Lcom/winlator/inputcontrols/ControlElement;->setBinding(Lcom/winlator/inputcontrols/Binding;)V

    .line 168
    new-array v0, p1, [Z

    iput-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->states:[Z

    .line 169
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->set(I)V

    .line 170
    return-void
.end method

.method public setIconId(I)V
    .locals 1
    .param p1, "iconId"    # I

    .line 290
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/winlator/inputcontrols/ControlElement;->iconId:B

    .line 291
    return-void
.end method

.method public setMouseMoveMode(Z)V
    .locals 2
    .param p1, "mouseMoveMode"    # Z

    .line 211
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p1}, Lcom/winlator/core/Bitmask;->set(IZ)V

    .line 212
    return-void
.end method

.method public setOpacity(F)V
    .locals 0
    .param p1, "opacity"    # F

    .line 247
    iput p1, p0, Lcom/winlator/inputcontrols/ControlElement;->opacity:F

    .line 248
    return-void
.end method

.method public setOrientation(B)V
    .locals 2
    .param p1, "orientation"    # B

    .line 194
    iput-byte p1, p0, Lcom/winlator/inputcontrols/ControlElement;->orientation:B

    .line 195
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->set(I)V

    .line 196
    return-void
.end method

.method public setRange(Lcom/winlator/inputcontrols/ControlElement$Range;)V
    .locals 0
    .param p1, "range"    # Lcom/winlator/inputcontrols/ControlElement$Range;

    .line 186
    iput-object p1, p0, Lcom/winlator/inputcontrols/ControlElement;->range:Lcom/winlator/inputcontrols/ControlElement$Range;

    .line 187
    return-void
.end method

.method public setScale(F)V
    .locals 2
    .param p1, "scale"    # F

    .line 238
    iput p1, p0, Lcom/winlator/inputcontrols/ControlElement;->scale:F

    .line 239
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->set(I)V

    .line 240
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .line 273
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    sget-object v1, Lcom/winlator/inputcontrols/ControlElement$Type;->RADIAL_MENU:Lcom/winlator/inputcontrols/ControlElement$Type;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/winlator/core/Bitmask;->set(IZ)V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/winlator/core/Bitmask;->set(IZ)V

    .line 275
    return-void
.end method

.method public setShape(Lcom/winlator/inputcontrols/ControlElement$Shape;)V
    .locals 2
    .param p1, "shape"    # Lcom/winlator/inputcontrols/ControlElement$Shape;

    .line 177
    iput-object p1, p0, Lcom/winlator/inputcontrols/ControlElement;->shape:Lcom/winlator/inputcontrols/ControlElement$Shape;

    .line 178
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->set(I)V

    .line 179
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 282
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->text:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public setToggleSwitch(Z)V
    .locals 2
    .param p1, "toggleSwitch"    # Z

    .line 203
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/winlator/core/Bitmask;->set(IZ)V

    .line 204
    return-void
.end method

.method public setType(Lcom/winlator/inputcontrols/ControlElement$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/winlator/inputcontrols/ControlElement$Type;

    .line 146
    iput-object p1, p0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    .line 147
    invoke-direct {p0}, Lcom/winlator/inputcontrols/ControlElement;->reset()V

    .line 148
    return-void
.end method

.method public setX(I)V
    .locals 2
    .param p1, "x"    # I

    .line 255
    int-to-short v0, p1

    iput-short v0, p0, Lcom/winlator/inputcontrols/ControlElement;->x:S

    .line 256
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->set(I)V

    .line 257
    return-void
.end method

.method public setY(I)V
    .locals 2
    .param p1, "y"    # I

    .line 264
    int-to-short v0, p1

    iput-short v0, p0, Lcom/winlator/inputcontrols/ControlElement;->y:S

    .line 265
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->set(I)V

    .line 266
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 7

    .line 773
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 774
    .local v0, "elementJSONObject":Lorg/json/JSONObject;
    const-string v1, "type"

    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 775
    const-string v1, "shape"

    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->shape:Lcom/winlator/inputcontrols/ControlElement$Shape;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 777
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 778
    .local v1, "bindingsJSONArray":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->bindings:[Lcom/winlator/inputcontrols/Binding;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .local v5, "binding":Lcom/winlator/inputcontrols/Binding;
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .end local v5    # "binding":Lcom/winlator/inputcontrols/Binding;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 797
    .end local v0    # "elementJSONObject":Lorg/json/JSONObject;
    .end local v1    # "bindingsJSONArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 780
    .restart local v0    # "elementJSONObject":Lorg/json/JSONObject;
    .restart local v1    # "bindingsJSONArray":Lorg/json/JSONArray;
    :cond_0
    const-string v2, "bindings"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 781
    const-string v2, "scale"

    iget v3, p0, Lcom/winlator/inputcontrols/ControlElement;->scale:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 782
    iget v2, p0, Lcom/winlator/inputcontrols/ControlElement;->opacity:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    const-string v2, "opacity"

    iget v3, p0, Lcom/winlator/inputcontrols/ControlElement;->opacity:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 783
    :cond_1
    const-string v2, "x"

    iget-short v3, p0, Lcom/winlator/inputcontrols/ControlElement;->x:S

    int-to-float v3, v3

    iget-object v4, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v4}, Lcom/winlator/widget/InputControlsView;->getMaxWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 784
    const-string v2, "y"

    iget-short v3, p0, Lcom/winlator/inputcontrols/ControlElement;->y:S

    int-to-float v3, v3

    iget-object v4, p0, Lcom/winlator/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v4}, Lcom/winlator/widget/InputControlsView;->getMaxHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 785
    const-string v2, "toggleSwitch"

    iget-object v3, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 786
    const-string v2, "text"

    iget-object v3, p0, Lcom/winlator/inputcontrols/ControlElement;->text:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 787
    const-string v2, "iconId"

    iget-byte v3, p0, Lcom/winlator/inputcontrols/ControlElement;->iconId:B

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 789
    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->type:Lcom/winlator/inputcontrols/ControlElement$Type;

    sget-object v3, Lcom/winlator/inputcontrols/ControlElement$Type;->RANGE_BUTTON:Lcom/winlator/inputcontrols/ControlElement$Type;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->range:Lcom/winlator/inputcontrols/ControlElement$Range;

    if-eqz v2, :cond_2

    .line 790
    const-string v2, "range"

    iget-object v3, p0, Lcom/winlator/inputcontrols/ControlElement;->range:Lcom/winlator/inputcontrols/ControlElement$Range;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 791
    iget-byte v2, p0, Lcom/winlator/inputcontrols/ControlElement;->orientation:B

    if-eqz v2, :cond_2

    const-string v2, "orientation"

    iget-byte v3, p0, Lcom/winlator/inputcontrols/ControlElement;->orientation:B

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 793
    :cond_2
    iget-object v2, p0, Lcom/winlator/inputcontrols/ControlElement;->propertyFlags:Lcom/winlator/core/Bitmask;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "mouseMoveMode"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    :cond_3
    return-object v0

    .line 797
    .end local v0    # "elementJSONObject":Lorg/json/JSONObject;
    .end local v1    # "bindingsJSONArray":Lorg/json/JSONArray;
    :goto_1
    nop

    .line 798
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    return-object v1
.end method
