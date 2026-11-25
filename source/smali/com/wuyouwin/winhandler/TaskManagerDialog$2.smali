.class Lcom/wuyouwin/winhandler/TaskManagerDialog$2;
.super Ljava/util/TimerTask;
.source "TaskManagerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuyouwin/winhandler/TaskManagerDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuyouwin/winhandler/TaskManagerDialog;


# direct methods
.method public static synthetic $r8$lambda$GZXG1lbagKhht0N6CRhM37aqhoM(Lcom/wuyouwin/winhandler/TaskManagerDialog;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/wuyouwin/winhandler/TaskManagerDialog$2;->lambda$run$0(Lcom/wuyouwin/winhandler/TaskManagerDialog;)V

    return-void
.end method

.method constructor <init>(Lcom/wuyouwin/winhandler/TaskManagerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wuyouwin/winhandler/TaskManagerDialog;

    .line 232
    iput-object p1, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$2;->this$0:Lcom/wuyouwin/winhandler/TaskManagerDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private static synthetic lambda$run$0(Lcom/wuyouwin/winhandler/TaskManagerDialog;)V
    .locals 0
    .param p0, "rec$"    # Lcom/wuyouwin/winhandler/TaskManagerDialog;

    .line 235
    invoke-static {p0}, Lcom/wuyouwin/winhandler/TaskManagerDialog;->access$1000(Lcom/wuyouwin/winhandler/TaskManagerDialog;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$2;->this$0:Lcom/wuyouwin/winhandler/TaskManagerDialog;

    invoke-static {v0}, Lcom/wuyouwin/winhandler/TaskManagerDialog;->access$900(Lcom/wuyouwin/winhandler/TaskManagerDialog;)Lcom/wuyouwin/XServerDisplayActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$2;->this$0:Lcom/wuyouwin/winhandler/TaskManagerDialog;

    new-instance v2, Lcom/wuyouwin/winhandler/TaskManagerDialog$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/wuyouwin/winhandler/TaskManagerDialog$2$$ExternalSyntheticLambda0;-><init>(Lcom/wuyouwin/winhandler/TaskManagerDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method
