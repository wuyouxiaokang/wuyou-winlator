.class public abstract Lcom/google/android/material/appbar/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "AppBarLayout.java"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;,
        Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;,
        Lcom/google/android/material/appbar/AppBarLayout$Behavior;,
        Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    }
.end annotation


# virtual methods
.method abstract getDownNestedPreScrollRange()I
.end method

.method abstract getDownNestedScrollRange()I
.end method

.method abstract getPendingAction()I
.end method

.method abstract getTopInset()I
.end method

.method public abstract getTotalScrollRange()I
.end method

.method abstract getUpNestedPreScrollRange()I
.end method

.method abstract hasChildWithInterpolator()Z
.end method

.method abstract hasScrollableChildren()Z
.end method

.method public abstract isLiftOnScroll()Z
.end method

.method abstract onOffsetChanged(I)V
.end method

.method abstract resetPendingAction()V
.end method

.method public abstract setExpanded(Z)V
.end method

.method public abstract setExpanded(ZZ)V
.end method

.method abstract setLiftedState(Z)Z
.end method

.method abstract shouldLift(Landroid/view/View;)Z
.end method
