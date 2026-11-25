.class final Lcom/wuyou/BootSplash$1$1;
.super Ljava/lang/Object;
.source "BootSplash.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/wuyou/BootSplash$1;

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/wuyou/BootSplash$1;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/wuyou/BootSplash$1$1;->this$0:Lcom/wuyou/BootSplash$1;

    iput-object p2, p0, Lcom/wuyou/BootSplash$1$1;->val$target:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/wuyou/BootSplash$1$1;->val$target:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
