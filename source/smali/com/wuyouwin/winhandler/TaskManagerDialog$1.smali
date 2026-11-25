.class Lcom/wuyouwin/winhandler/TaskManagerDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "TaskManagerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuyouwin/winhandler/TaskManagerDialog;-><init>(Lcom/wuyouwin/XServerDisplayActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuyouwin/winhandler/TaskManagerDialog;


# direct methods
.method constructor <init>(Lcom/wuyouwin/winhandler/TaskManagerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wuyouwin/winhandler/TaskManagerDialog;

    .line 114
    iput-object p1, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$1;->this$0:Lcom/wuyouwin/winhandler/TaskManagerDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const-string v1, "voltage"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 120
    .local v1, "voltage":I
    const-string v3, "temperature"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 121
    .local v3, "temperature":I
    const-string v4, "level"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 122
    .local v4, "level":I
    const-string v5, "scale"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 124
    .local v2, "scale":I
    iget-object v5, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$1;->this$0:Lcom/wuyouwin/winhandler/TaskManagerDialog;

    invoke-static {v5}, Lcom/wuyouwin/winhandler/TaskManagerDialog;->access$100(Lcom/wuyouwin/winhandler/TaskManagerDialog;)Lcom/wuyouwin/winhandler/TaskManagerDialog$BatteryInfo;

    move-result-object v5

    int-to-float v6, v1

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Lcom/wuyouwin/winhandler/TaskManagerDialog$BatteryInfo;->access$202(Lcom/wuyouwin/winhandler/TaskManagerDialog$BatteryInfo;F)F

    .line 125
    iget-object v5, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$1;->this$0:Lcom/wuyouwin/winhandler/TaskManagerDialog;

    invoke-static {v5}, Lcom/wuyouwin/winhandler/TaskManagerDialog;->access$100(Lcom/wuyouwin/winhandler/TaskManagerDialog;)Lcom/wuyouwin/winhandler/TaskManagerDialog$BatteryInfo;

    move-result-object v5

    int-to-float v6, v3

    const/high16 v7, 0x41200000    # 10.0f

    div-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v5, v6}, Lcom/wuyouwin/winhandler/TaskManagerDialog$BatteryInfo;->access$302(Lcom/wuyouwin/winhandler/TaskManagerDialog$BatteryInfo;I)I

    .line 126
    iget-object v5, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$1;->this$0:Lcom/wuyouwin/winhandler/TaskManagerDialog;

    invoke-static {v5}, Lcom/wuyouwin/winhandler/TaskManagerDialog;->access$100(Lcom/wuyouwin/winhandler/TaskManagerDialog;)Lcom/wuyouwin/winhandler/TaskManagerDialog$BatteryInfo;

    move-result-object v5

    int-to-float v6, v4

    int-to-float v7, v2

    div-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v5, v6}, Lcom/wuyouwin/winhandler/TaskManagerDialog$BatteryInfo;->access$402(Lcom/wuyouwin/winhandler/TaskManagerDialog$BatteryInfo;I)I

    .line 128
    .end local v1    # "voltage":I
    .end local v2    # "scale":I
    .end local v3    # "temperature":I
    .end local v4    # "level":I
    :cond_0
    return-void
.end method
