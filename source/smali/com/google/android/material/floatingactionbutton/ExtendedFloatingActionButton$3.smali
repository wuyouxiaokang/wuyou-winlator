.class Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExtendedFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->performMotion(Lcom/google/android/material/floatingactionbutton/MotionStrategy;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cancelled:Z


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/MotionStrategy;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 648
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 659
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->cancelled:Z

    .line 660
    const/4 p1, 0x0

    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/MotionStrategy;->onAnimationCancel()V

    .line 661
    throw p1
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 665
    const/4 p1, 0x0

    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/MotionStrategy;->onAnimationEnd()V

    .line 666
    throw p1
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 653
    const/4 v0, 0x0

    invoke-interface {v0, p1}, Lcom/google/android/material/floatingactionbutton/MotionStrategy;->onAnimationStart(Landroid/animation/Animator;)V

    .line 654
    .end local p1    # "animation":Landroid/animation/Animator;
    throw v0
.end method
