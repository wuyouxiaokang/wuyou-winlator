.class public final Lcom/wuyou/WlKeyboardPrompt$$Yes;
.super Ljava/lang/Object;
.source "WlKeyboardPrompt.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final activity:Lcom/wuyouwin/XServerDisplayActivity;


# direct methods
.method public constructor <init>(Lcom/wuyouwin/XServerDisplayActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyou/WlKeyboardPrompt$$Yes;->activity:Lcom/wuyouwin/XServerDisplayActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/wuyou/WlKeyboardPrompt;->wlShowing:Z

    iget-object v1, p0, Lcom/wuyou/WlKeyboardPrompt$$Yes;->activity:Lcom/wuyouwin/XServerDisplayActivity;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/wuyou/WlKeyboardPrompt$$ShowKb;

    iget-object v3, p0, Lcom/wuyou/WlKeyboardPrompt$$Yes;->activity:Lcom/wuyouwin/XServerDisplayActivity;

    invoke-direct {v2, v3}, Lcom/wuyou/WlKeyboardPrompt$$ShowKb;-><init>(Lcom/wuyouwin/XServerDisplayActivity;)V

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
