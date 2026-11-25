.class public Lcom/winlator/widget/SimplePianoKeyboard;
.super Landroid/view/View;
.source "SimplePianoKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/widget/SimplePianoKeyboard$OnKeyListener;
    }
.end annotation


# instance fields
.field private final SHARP_KEY_SCALE:F

.field private octaves:I

.field private onKeyListener:Lcom/winlator/widget/SimplePianoKeyboard$OnKeyListener;

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final pressedKeys:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/winlator/widget/SimplePianoKeyboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/winlator/widget/SimplePianoKeyboard;->SHARP_KEY_SCALE:F

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/winlator/widget/SimplePianoKeyboard;->paint:Landroid/graphics/Paint;

    .line 20
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/winlator/widget/SimplePianoKeyboard;->path:Landroid/graphics/Path;

    .line 21
    iput v1, p0, Lcom/winlator/widget/SimplePianoKeyboard;->octaves:I

    .line 23
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/winlator/widget/SimplePianoKeyboard;->pressedKeys:Landroid/util/ArraySet;

    .line 40
    return-void
.end method

.method private keyIndexFromTouchPoint(FF)B
    .locals 12
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 120
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 122
    .local v1, "height":I
    int-to-float v2, v0

    iget v3, p0, Lcom/winlator/widget/SimplePianoKeyboard;->octaves:I

    const/4 v4, 0x7

    mul-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 123
    .local v2, "keyWidth":F
    const v3, 0x3f19999a    # 0.6f

    mul-float v5, v2, v3

    .line 124
    .local v5, "sharpKeyWidth":F
    int-to-float v6, v1

    mul-float/2addr v6, v3

    .line 126
    .local v6, "sharpKeyBottom":F
    const/4 v3, 0x0

    .line 127
    .local v3, "offsetX":F
    const/4 v7, 0x0

    .line 128
    .local v7, "index":B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v9, p0, Lcom/winlator/widget/SimplePianoKeyboard;->octaves:I

    if-ge v8, v9, :cond_4

    .line 129
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v4, :cond_3

    .line 130
    const/4 v10, 0x3

    if-eq v9, v10, :cond_1

    if-eqz v9, :cond_1

    .line 131
    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v11, v5, v10

    sub-float v11, v3, v11

    cmpl-float v11, p1, v11

    if-ltz v11, :cond_0

    mul-float/2addr v10, v5

    add-float/2addr v10, v3

    cmpg-float v10, p1, v10

    if-gtz v10, :cond_0

    cmpg-float v10, p2, v6

    if-gtz v10, :cond_0

    .line 132
    return v7

    .line 134
    :cond_0
    add-int/lit8 v10, v7, 0x1

    int-to-byte v7, v10

    .line 137
    :cond_1
    cmpl-float v10, p1, v3

    if-ltz v10, :cond_2

    add-float v10, v3, v2

    cmpg-float v10, p1, v10

    if-gtz v10, :cond_2

    return v7

    .line 138
    :cond_2
    add-int/lit8 v10, v7, 0x1

    int-to-byte v7, v10

    .line 139
    add-float/2addr v3, v2

    .line 129
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 128
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .end local v9    # "j":I
    :cond_4
    nop

    .line 143
    .end local v8    # "i":I
    const/4 v4, -0x1

    return v4
.end method


# virtual methods
.method public getOctaves()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/winlator/widget/SimplePianoKeyboard;->octaves:I

    return v0
.end method

.method public getOnKeyListener()Lcom/winlator/widget/SimplePianoKeyboard$OnKeyListener;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/winlator/widget/SimplePianoKeyboard;->onKeyListener:Lcom/winlator/widget/SimplePianoKeyboard$OnKeyListener;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 30
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 60
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 63
    .local v6, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 64
    .local v7, "height":I
    if-eqz v6, :cond_0

    if-nez v7, :cond_1

    :cond_0
    goto/16 :goto_6

    .line 66
    :cond_1
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v8}, Lcom/winlator/core/UnitUtils;->dpToPx(F)F

    move-result v8

    .line 67
    .local v8, "strokeWidth":F
    int-to-float v9, v6

    iget v10, v0, Lcom/winlator/widget/SimplePianoKeyboard;->octaves:I

    mul-int/2addr v10, v3

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 68
    .local v9, "keyWidth":F
    const v10, 0x3f19999a    # 0.6f

    mul-float v11, v9, v10

    .line 69
    .local v11, "sharpKeyWidth":F
    int-to-float v12, v7

    mul-float/2addr v12, v10

    .line 70
    .local v12, "sharpKeyBottom":F
    iget-object v10, v0, Lcom/winlator/widget/SimplePianoKeyboard;->paint:Landroid/graphics/Paint;

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    const/high16 v10, 0x40c00000    # 6.0f

    invoke-static {v10}, Lcom/winlator/core/UnitUtils;->dpToPx(F)F

    move-result v10

    .line 72
    .local v10, "radius":F
    const/16 v13, 0x8

    new-array v13, v13, [F

    const/4 v14, 0x0

    aput v4, v13, v14

    aput v4, v13, v5

    const/4 v14, 0x2

    aput v4, v13, v14

    aput v4, v13, v2

    const/4 v4, 0x4

    aput v10, v13, v4

    const/4 v4, 0x5

    aput v10, v13, v4

    const/4 v4, 0x6

    aput v10, v13, v4

    aput v10, v13, v3

    move-object/from16 v25, v13

    .line 74
    .local v25, "bottomRadius":[F
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v13, v8, v4

    .line 75
    .local v13, "offsetX":F
    mul-float v27, v8, v4

    .line 76
    .local v27, "startY":F
    int-to-float v14, v7

    mul-float v15, v8, v4

    sub-float v28, v14, v15

    .line 77
    .local v28, "endY":F
    const/4 v14, 0x0

    .line 79
    .local v14, "index":B
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    iget v4, v0, Lcom/winlator/widget/SimplePianoKeyboard;->octaves:I

    if-ge v15, v4, :cond_8

    .line 80
    const/4 v4, 0x0

    move/from16 v29, v13

    .end local v13    # "offsetX":F
    .local v4, "j":I
    .local v29, "offsetX":F
    :goto_1
    if-ge v4, v3, :cond_7

    .line 81
    const/4 v13, 0x0

    .line 82
    .local v13, "sharpKeyPressed":Z
    if-eq v4, v2, :cond_2

    if-eqz v4, :cond_2

    .line 83
    iget-object v3, v0, Lcom/winlator/widget/SimplePianoKeyboard;->pressedKeys:Landroid/util/ArraySet;

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v13

    .line 84
    add-int/lit8 v2, v14, 0x1

    int-to-byte v14, v2

    move v2, v13

    goto :goto_2

    .line 87
    :cond_2
    move v2, v13

    .end local v13    # "sharpKeyPressed":Z
    .local v2, "sharpKeyPressed":Z
    :goto_2
    iget-object v3, v0, Lcom/winlator/widget/SimplePianoKeyboard;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 88
    iget-object v3, v0, Lcom/winlator/widget/SimplePianoKeyboard;->path:Landroid/graphics/Path;

    add-float v23, v29, v9

    sget-object v26, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v20, v3

    move/from16 v21, v29

    move/from16 v22, v27

    move/from16 v24, v28

    invoke-virtual/range {v20 .. v26}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 90
    iget-object v3, v0, Lcom/winlator/widget/SimplePianoKeyboard;->paint:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    iget-object v3, v0, Lcom/winlator/widget/SimplePianoKeyboard;->paint:Landroid/graphics/Paint;

    iget-object v13, v0, Lcom/winlator/widget/SimplePianoKeyboard;->pressedKeys:Landroid/util/ArraySet;

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, -0x3f3f40

    goto :goto_3

    :cond_3
    const/4 v5, -0x1

    :goto_3
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object v3, v0, Lcom/winlator/widget/SimplePianoKeyboard;->path:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/winlator/widget/SimplePianoKeyboard;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 94
    iget-object v3, v0, Lcom/winlator/widget/SimplePianoKeyboard;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    iget-object v3, v0, Lcom/winlator/widget/SimplePianoKeyboard;->paint:Landroid/graphics/Paint;

    const/high16 v5, -0x1000000

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v3, v0, Lcom/winlator/widget/SimplePianoKeyboard;->path:Landroid/graphics/Path;

    iget-object v13, v0, Lcom/winlator/widget/SimplePianoKeyboard;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 97
    const/4 v3, 0x1

    add-int/lit8 v13, v14, 0x1

    int-to-byte v3, v13

    .line 99
    .end local v14    # "index":B
    .local v3, "index":B
    const/4 v14, 0x3

    if-eq v4, v14, :cond_5

    if-eqz v4, :cond_5

    .line 100
    iget-object v13, v0, Lcom/winlator/widget/SimplePianoKeyboard;->path:Landroid/graphics/Path;

    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    .line 101
    iget-object v13, v0, Lcom/winlator/widget/SimplePianoKeyboard;->path:Landroid/graphics/Path;

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v17, v11, v16

    sub-float v17, v29, v17

    mul-float v18, v11, v16

    add-float v16, v29, v18

    sget-object v19, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v21, v14

    move/from16 v14, v17

    move/from16 v22, v15

    .end local v15    # "i":I
    .local v22, "i":I
    move/from16 v15, v27

    move/from16 v17, v12

    move-object/from16 v18, v25

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 102
    iget-object v13, v0, Lcom/winlator/widget/SimplePianoKeyboard;->paint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v13, v0, Lcom/winlator/widget/SimplePianoKeyboard;->paint:Landroid/graphics/Paint;

    if-eqz v2, :cond_4

    const v14, -0x9f9fa0

    goto :goto_4

    :cond_4
    move v14, v5

    :goto_4
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v13, v0, Lcom/winlator/widget/SimplePianoKeyboard;->path:Landroid/graphics/Path;

    iget-object v14, v0, Lcom/winlator/widget/SimplePianoKeyboard;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 106
    if-eqz v2, :cond_6

    .line 107
    iget-object v13, v0, Lcom/winlator/widget/SimplePianoKeyboard;->paint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    iget-object v13, v0, Lcom/winlator/widget/SimplePianoKeyboard;->paint:Landroid/graphics/Paint;

    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v5, v0, Lcom/winlator/widget/SimplePianoKeyboard;->path:Landroid/graphics/Path;

    iget-object v13, v0, Lcom/winlator/widget/SimplePianoKeyboard;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 99
    .end local v22    # "i":I
    .restart local v15    # "i":I
    :cond_5
    move/from16 v21, v14

    move/from16 v22, v15

    .line 113
    .end local v15    # "i":I
    .restart local v22    # "i":I
    :cond_6
    :goto_5
    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v13, v8, v5

    sub-float v13, v9, v13

    add-float v29, v29, v13

    .line 80
    const/4 v15, 0x1

    add-int/2addr v4, v15

    move v14, v3

    move v5, v15

    move/from16 v2, v21

    move/from16 v15, v22

    const/4 v3, 0x7

    goto/16 :goto_1

    .line 79
    .end local v2    # "sharpKeyPressed":Z
    .end local v3    # "index":B
    .end local v22    # "i":I
    .restart local v14    # "index":B
    .restart local v15    # "i":I
    :cond_7
    move/from16 v21, v2

    move/from16 v22, v15

    move v15, v5

    const/high16 v5, 0x3f000000    # 0.5f

    .end local v15    # "i":I
    .restart local v22    # "i":I
    add-int/lit8 v2, v22, 0x1

    move v4, v5

    move v5, v15

    move/from16 v13, v29

    const/4 v3, 0x7

    move v15, v2

    move/from16 v2, v21

    .end local v22    # "i":I
    .local v2, "i":I
    goto/16 :goto_0

    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v29    # "offsetX":F
    .local v13, "offsetX":F
    .restart local v15    # "i":I
    :cond_8
    nop

    .line 116
    .end local v15    # "i":I
    return-void

    .line 64
    .end local v8    # "strokeWidth":F
    .end local v9    # "keyWidth":F
    .end local v10    # "radius":F
    .end local v11    # "sharpKeyWidth":F
    .end local v12    # "sharpKeyBottom":F
    .end local v13    # "offsetX":F
    .end local v14    # "index":B
    .end local v25    # "bottomRadius":[F
    .end local v27    # "startY":F
    .end local v28    # "endY":F
    :goto_6
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 149
    .local v0, "action":I
    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/winlator/widget/SimplePianoKeyboard;->keyIndexFromTouchPoint(FF)B

    move-result v2

    .line 151
    .local v2, "index":B
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 152
    iget-object v3, p0, Lcom/winlator/widget/SimplePianoKeyboard;->onKeyListener:Lcom/winlator/widget/SimplePianoKeyboard$OnKeyListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/winlator/widget/SimplePianoKeyboard;->onKeyListener:Lcom/winlator/widget/SimplePianoKeyboard$OnKeyListener;

    invoke-interface {v3, v2}, Lcom/winlator/widget/SimplePianoKeyboard$OnKeyListener;->onKeyDown(I)V

    .line 153
    :cond_0
    iget-object v3, p0, Lcom/winlator/widget/SimplePianoKeyboard;->pressedKeys:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 155
    return v1

    .line 151
    :cond_1
    nop

    .line 157
    .end local v2    # "index":B
    goto :goto_1

    .line 158
    :cond_2
    if-ne v0, v1, :cond_4

    .line 159
    iget-object v2, p0, Lcom/winlator/widget/SimplePianoKeyboard;->onKeyListener:Lcom/winlator/widget/SimplePianoKeyboard$OnKeyListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/winlator/widget/SimplePianoKeyboard;->pressedKeys:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .local v3, "index":I
    iget-object v4, p0, Lcom/winlator/widget/SimplePianoKeyboard;->onKeyListener:Lcom/winlator/widget/SimplePianoKeyboard$OnKeyListener;

    invoke-interface {v4, v3}, Lcom/winlator/widget/SimplePianoKeyboard$OnKeyListener;->onKeyUp(I)V

    .end local v3    # "index":I
    goto :goto_0

    .line 160
    :cond_3
    iget-object v2, p0, Lcom/winlator/widget/SimplePianoKeyboard;->pressedKeys:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 162
    return v1

    .line 165
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public setOctaves(I)V
    .locals 0
    .param p1, "octaves"    # I

    .line 47
    iput p1, p0, Lcom/winlator/widget/SimplePianoKeyboard;->octaves:I

    .line 48
    return-void
.end method

.method public setOnKeyListener(Lcom/winlator/widget/SimplePianoKeyboard$OnKeyListener;)V
    .locals 0
    .param p1, "onKeyListener"    # Lcom/winlator/widget/SimplePianoKeyboard$OnKeyListener;

    .line 55
    iput-object p1, p0, Lcom/winlator/widget/SimplePianoKeyboard;->onKeyListener:Lcom/winlator/widget/SimplePianoKeyboard$OnKeyListener;

    .line 56
    return-void
.end method
