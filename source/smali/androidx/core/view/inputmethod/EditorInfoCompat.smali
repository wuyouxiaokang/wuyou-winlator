.class public abstract Landroidx/core/view/inputmethod/EditorInfoCompat;
.super Ljava/lang/Object;
.source "EditorInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/inputmethod/EditorInfoCompat$Api30Impl;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroidx/core/view/inputmethod/EditorInfoCompat;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method private static isCutOnSurrogate(Ljava/lang/CharSequence;II)Z
    .locals 1
    .param p0, "sourceText"    # Ljava/lang/CharSequence;
    .param p1, "cutPosition"    # I
    .param p2, "policy"    # I

    .line 461
    packed-switch p2, :pswitch_data_0

    .line 467
    const/4 v0, 0x0

    return v0

    .line 465
    :pswitch_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    return v0

    .line 463
    :pswitch_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isPasswordInputType(I)Z
    .locals 2
    .param p0, "inputType"    # I

    .line 472
    and-int/lit16 v0, p0, 0xfff

    .line 474
    .local v0, "variation":I
    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static setContentMimeTypes(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V
    .locals 0
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p1, "contentMimeTypes"    # [Ljava/lang/String;

    .line 160
    nop

    .line 161
    iput-object p1, p0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    .line 169
    return-void
.end method

.method public static setInitialSurroundingSubText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V
    .locals 6
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p1, "subText"    # Ljava/lang/CharSequence;
    .param p2, "subTextStart"    # I

    .line 237
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 239
    invoke-static {p0, p1, p2}, Landroidx/core/view/inputmethod/EditorInfoCompat$Api30Impl;->setInitialSurroundingSubText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V

    .line 240
    return-void

    .line 244
    :cond_0
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le v0, v1, :cond_1

    .line 245
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    sub-int/2addr v0, p2

    goto :goto_0

    .line 246
    :cond_1
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    sub-int/2addr v0, p2

    :goto_0
    nop

    .line 247
    .local v0, "subTextSelStart":I
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le v1, v2, :cond_2

    .line 248
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    sub-int/2addr v1, p2

    goto :goto_1

    .line 249
    :cond_2
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    sub-int/2addr v1, p2

    :goto_1
    nop

    .line 251
    .local v1, "subTextSelEnd":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 253
    .local v2, "subTextLength":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ltz p2, :cond_3

    if-ltz v0, :cond_3

    if-le v1, v2, :cond_4

    :cond_3
    goto :goto_2

    .line 259
    :cond_4
    iget v5, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v5}, Landroidx/core/view/inputmethod/EditorInfoCompat;->isPasswordInputType(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 260
    invoke-static {p0, v3, v4, v4}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 261
    return-void

    .line 264
    :cond_5
    const/16 v3, 0x800

    if-gt v2, v3, :cond_6

    .line 265
    invoke-static {p0, p1, v0, v1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 266
    return-void

    .line 269
    :cond_6
    invoke-static {p0, p1, v0, v1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->trimLongSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 270
    return-void

    .line 254
    :goto_2
    invoke-static {p0, v3, v4, v4}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 255
    return-void
.end method

.method public static setInitialSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p1, "sourceText"    # Ljava/lang/CharSequence;

    .line 214
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 215
    invoke-static {p0, p1, v2}, Landroidx/core/view/inputmethod/EditorInfoCompat$Api30Impl;->setInitialSurroundingSubText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 217
    :cond_0
    invoke-static {p0, p1, v2}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setInitialSurroundingSubText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V

    .line 219
    :goto_0
    return-void
.end method

.method private static setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V
    .locals 3
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p1, "surroundingText"    # Ljava/lang/CharSequence;
    .param p2, "selectionHead"    # I
    .param p3, "selectionEnd"    # I

    .line 485
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 486
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 489
    :cond_0
    if-eqz p1, :cond_1

    .line 490
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 491
    .local v0, "surroundingTextCopy":Ljava/lang/CharSequence;
    :goto_0
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v2, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 492
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v2, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD"

    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 493
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v2, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END"

    invoke-virtual {v1, v2, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 494
    return-void
.end method

.method private static trimLongSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V
    .locals 16
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p1, "subText"    # Ljava/lang/CharSequence;
    .param p2, "selStart"    # I
    .param p3, "selEnd"    # I

    .line 291
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x1

    sub-int v4, v2, v1

    .line 293
    .local v4, "sourceSelLength":I
    const/16 v5, 0x400

    const/4 v6, 0x0

    if-le v4, v5, :cond_0

    .line 294
    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v4

    .line 297
    .local v5, "newSelLength":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v7, v2

    .line 298
    .local v7, "subTextAfterCursorLength":I
    rsub-int v8, v5, 0x800

    .line 299
    .local v8, "maxLengthMinusSelection":I
    const-wide v9, 0x3fe999999999999aL    # 0.8

    int-to-double v11, v8

    mul-double/2addr v11, v9

    double-to-int v9, v11

    .line 300
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 301
    .local v9, "possibleMaxBeforeCursorLength":I
    sub-int v10, v8, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 303
    .local v10, "newAfterCursorLength":I
    sub-int v11, v8, v10

    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 307
    .local v11, "newBeforeCursorLength":I
    sub-int v12, v1, v11

    .line 310
    .local v12, "newBeforeCursorHead":I
    sub-int v13, v1, v11

    invoke-static {v0, v13, v6}, Landroidx/core/view/inputmethod/EditorInfoCompat;->isCutOnSurrogate(Ljava/lang/CharSequence;II)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 312
    add-int/2addr v12, v3

    .line 313
    sub-int/2addr v11, v3

    .line 315
    :cond_1
    add-int v13, v2, v10

    sub-int/2addr v13, v3

    invoke-static {v0, v13, v3}, Landroidx/core/view/inputmethod/EditorInfoCompat;->isCutOnSurrogate(Ljava/lang/CharSequence;II)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 317
    sub-int/2addr v10, v3

    .line 321
    :cond_2
    add-int v13, v11, v5

    add-int/2addr v13, v10

    .line 323
    .local v13, "newTextLength":I
    if-eq v5, v4, :cond_3

    .line 324
    add-int v14, v12, v11

    invoke-interface {v0, v12, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    .line 326
    .local v14, "beforeCursor":Ljava/lang/CharSequence;
    add-int v15, v2, v10

    invoke-interface {v0, v2, v15}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    .line 329
    .local v15, "afterCursor":Ljava/lang/CharSequence;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v14, v3, v6

    const/4 v6, 0x1

    aput-object v15, v3, v6

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 330
    .end local v14    # "beforeCursor":Ljava/lang/CharSequence;
    .end local v15    # "afterCursor":Ljava/lang/CharSequence;
    .local v3, "newInitialSurroundingText":Ljava/lang/CharSequence;
    goto :goto_1

    .line 331
    .end local v3    # "newInitialSurroundingText":Ljava/lang/CharSequence;
    :cond_3
    add-int v3, v12, v13

    .line 332
    invoke-interface {v0, v12, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 337
    .restart local v3    # "newInitialSurroundingText":Ljava/lang/CharSequence;
    :goto_1
    const/4 v6, 0x0

    .line 338
    .end local v12    # "newBeforeCursorHead":I
    .local v6, "newBeforeCursorHead":I
    add-int v12, v6, v11

    .line 339
    .local v12, "newSelHead":I
    add-int v14, v12, v5

    move-object/from16 v15, p0

    invoke-static {v15, v3, v12, v14}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 341
    return-void
.end method
