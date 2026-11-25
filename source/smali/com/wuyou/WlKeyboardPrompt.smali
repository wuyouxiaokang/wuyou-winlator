.class public final Lcom/wuyou/WlKeyboardPrompt;
.super Ljava/lang/Object;
.source "WlKeyboardPrompt.java"


# static fields
.field static wlShowing:Z

.field static wlDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/wuyou/WlKeyboardPrompt;->wlShowing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismiss()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/wuyou/WlKeyboardPrompt;->wlShowing:Z

    sget-object v1, Lcom/wuyou/WlKeyboardPrompt;->wlDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/wuyou/WlKeyboardPrompt;->wlDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public static show(Lcom/winlator/XServerDisplayActivity;)V
    .locals 6
    .param p0, "activity"    # Lcom/winlator/XServerDisplayActivity;

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/wuyou/WlKeyboardPrompt;->wlShowing:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/wuyou/WlKeyboardPrompt;->wlShowing:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "虚拟键盘"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "检测到输入状态，是否弹出虚拟键盘？"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/wuyou/WlKeyboardPrompt$$Yes;

    invoke-direct {v1, p0}, Lcom/wuyou/WlKeyboardPrompt$$Yes;-><init>(Lcom/winlator/XServerDisplayActivity;)V

    const-string v2, "调出键盘"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/wuyou/WlKeyboardPrompt$$No;

    invoke-direct {v1}, Lcom/wuyou/WlKeyboardPrompt$$No;-><init>()V

    const-string v2, "取消"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/wuyou/WlKeyboardPrompt$$Cancel;

    invoke-direct {v1}, Lcom/wuyou/WlKeyboardPrompt$$Cancel;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/wuyou/WlKeyboardPrompt;->wlDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
