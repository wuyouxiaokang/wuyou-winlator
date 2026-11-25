.class public final Lcom/wuyou/WlKeyboardRunnable;
.super Ljava/lang/Object;
.source "WlKeyboardRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final activity:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/winlator/XServerDisplayActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/wuyou/WlKeyboardRunnable;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/wuyou/WlKeyboardRunnable;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/XServerDisplayActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "WUYOU"

    const-string v2, "WlKeyboardRunnable fired"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/wuyou/WlKeyboardRunnable$$Lambda;

    invoke-direct {v2, p0, v0}, Lcom/wuyou/WlKeyboardRunnable$$Lambda;-><init>(Lcom/wuyou/WlKeyboardRunnable;Lcom/winlator/XServerDisplayActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_0
    return-void
.end method
