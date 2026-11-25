.class public final synthetic Lcom/wuyouwin/winhandler/TaskManagerDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/winhandler/TaskManagerDialog;

.field public final synthetic f$1:Lcom/wuyouwin/XServerDisplayActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/winhandler/TaskManagerDialog;Lcom/wuyouwin/XServerDisplayActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$$ExternalSyntheticLambda1;->f$0:Lcom/wuyouwin/winhandler/TaskManagerDialog;

    iput-object p2, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$$ExternalSyntheticLambda1;->f$1:Lcom/wuyouwin/XServerDisplayActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$$ExternalSyntheticLambda1;->f$0:Lcom/wuyouwin/winhandler/TaskManagerDialog;

    iget-object v1, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$$ExternalSyntheticLambda1;->f$1:Lcom/wuyouwin/XServerDisplayActivity;

    invoke-static {v0, v1, p1}, Lcom/wuyouwin/winhandler/TaskManagerDialog;->$r8$lambda$8JBwrjn27ohiGqJaIsPQmdKx7Vk(Lcom/wuyouwin/winhandler/TaskManagerDialog;Lcom/wuyouwin/XServerDisplayActivity;Landroid/content/DialogInterface;)V

    return-void
.end method
