.class public final Lcom/wuyou/WlKbButtonListener;
.super Ljava/lang/Object;
.source "WlKbButtonListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static wlExpanded:Z


# instance fields
.field private final activity:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/wuyou/WlKbButtonListener;->wlExpanded:Z

    return-void
.end method

.method public constructor <init>(Lcom/wuyouwin/XServerDisplayActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/wuyou/WlKbButtonListener;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/wuyou/WlKbButtonListener;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/XServerDisplayActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/wuyou/WlKbButtonListener;->wlExpanded:Z

    if-eqz v1, :cond_expand

    const/4 v1, 0x0

    sput-boolean v1, Lcom/wuyou/WlKbButtonListener;->wlExpanded:Z

    if-eqz p1, :cond_a

    const-string v2, "⌨"

    invoke-virtual {p1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_a
    invoke-virtual {v0}, Lcom/wuyouwin/XServerDisplayActivity;->wlShowKeyboard()V

    return-void

    :cond_expand
    const/4 v1, 0x1

    sput-boolean v1, Lcom/wuyou/WlKbButtonListener;->wlExpanded:Z

    if-eqz p1, :cond_b

    const-string v2, "调出键盘"

    invoke-virtual {p1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method
