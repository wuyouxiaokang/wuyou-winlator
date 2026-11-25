.class public final Lcom/wuyou/WlKeyboardRunnable$$Lambda;
.super Ljava/lang/Object;
.source "WlKeyboardRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static wlDialogShowing:Z


# instance fields
.field private final activity:Lcom/wuyouwin/XServerDisplayActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/wuyou/WlKeyboardRunnable$$Lambda;->wlDialogShowing:Z

    return-void
.end method

.method public constructor <init>(Lcom/wuyou/WlKeyboardRunnable;Lcom/wuyouwin/XServerDisplayActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/wuyou/WlKeyboardRunnable$$Lambda;->activity:Lcom/wuyouwin/XServerDisplayActivity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-boolean v0, Lcom/wuyou/WlKeyboardRunnable$$Lambda;->wlDialogShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/wuyou/WlKeyboardRunnable$$Lambda;->activity:Lcom/wuyouwin/XServerDisplayActivity;

    invoke-static {v0}, Lcom/wuyou/WlKeyboardPrompt;->show(Lcom/wuyouwin/XServerDisplayActivity;)V

    return-void
.end method

.method public static setDialogShowing(Z)V
    .locals 0
    .param p0, "showing"    # Z

    sput-boolean p0, Lcom/wuyou/WlKeyboardRunnable$$Lambda;->wlDialogShowing:Z

    return-void
.end method
