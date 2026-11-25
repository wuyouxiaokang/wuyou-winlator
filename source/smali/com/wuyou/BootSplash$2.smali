.class final Lcom/wuyou/BootSplash$2;
.super Ljava/lang/Object;
.source "BootSplash.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$overlay:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/wuyou/BootSplash$2;->val$overlay:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/wuyou/BootSplash$2;->val$overlay:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
