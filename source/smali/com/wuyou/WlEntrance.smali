.class public final Lcom/wuyou/WlEntrance;
.super Ljava/lang/Object;
.source "WlEntrance.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 8

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    :try_start_0
    const v0, 0x7f0c00c5

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    new-instance v1, Lcom/wuyou/WlEntrance$1;

    invoke-direct {v1, p0, v0}, Lcom/wuyou/WlEntrance$1;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
