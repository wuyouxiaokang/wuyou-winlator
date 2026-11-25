.class public abstract Landroidx/core/widget/CheckedTextViewCompat;
.super Ljava/lang/Object;
.source "CheckedTextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/CheckedTextViewCompat$Api16Impl;,
        Landroidx/core/widget/CheckedTextViewCompat$Api21Impl;
    }
.end annotation


# direct methods
.method public static getCheckMarkDrawable(Landroid/widget/CheckedTextView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "textView"    # Landroid/widget/CheckedTextView;

    .line 121
    nop

    .line 122
    invoke-static {p0}, Landroidx/core/widget/CheckedTextViewCompat$Api16Impl;->getCheckMarkDrawable(Landroid/widget/CheckedTextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static setCheckMarkTintList(Landroid/widget/CheckedTextView;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p0, "textView"    # Landroid/widget/CheckedTextView;
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 56
    nop

    .line 57
    invoke-static {p0, p1}, Landroidx/core/widget/CheckedTextViewCompat$Api21Impl;->setCheckMarkTintList(Landroid/widget/CheckedTextView;Landroid/content/res/ColorStateList;)V

    .line 61
    return-void
.end method

.method public static setCheckMarkTintMode(Landroid/widget/CheckedTextView;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p0, "textView"    # Landroid/widget/CheckedTextView;
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 91
    nop

    .line 92
    invoke-static {p0, p1}, Landroidx/core/widget/CheckedTextViewCompat$Api21Impl;->setCheckMarkTintMode(Landroid/widget/CheckedTextView;Landroid/graphics/PorterDuff$Mode;)V

    .line 96
    return-void
.end method
