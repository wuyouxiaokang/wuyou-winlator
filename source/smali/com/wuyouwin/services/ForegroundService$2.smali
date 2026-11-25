.class Lcom/wuyouwin/services/ForegroundService$2;
.super Landroid/content/BroadcastReceiver;
.source "ForegroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuyouwin/services/ForegroundService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuyouwin/services/ForegroundService;


# direct methods
.method constructor <init>(Lcom/wuyouwin/services/ForegroundService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wuyouwin/services/ForegroundService;

    .line 229
    iput-object p1, p0, Lcom/wuyouwin/services/ForegroundService$2;->this$0:Lcom/wuyouwin/services/ForegroundService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 232
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "FGService"

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 234
    invoke-static {v3}, Lcom/wuyouwin/services/ForegroundService;->access$202(Z)Z

    .line 235
    const-string v1, "Screen turned off / device locked"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lcom/wuyouwin/services/ForegroundService$2;->this$0:Lcom/wuyouwin/services/ForegroundService;

    invoke-static {v1}, Lcom/wuyouwin/services/ForegroundService;->access$300(Lcom/wuyouwin/services/ForegroundService;)V

    goto :goto_1

    .line 237
    :cond_0
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 238
    invoke-static {v4}, Lcom/wuyouwin/services/ForegroundService;->access$202(Z)Z

    .line 239
    const-string v1, "Device unlocked (user present)"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v1, p0, Lcom/wuyouwin/services/ForegroundService$2;->this$0:Lcom/wuyouwin/services/ForegroundService;

    invoke-static {v1}, Lcom/wuyouwin/services/ForegroundService;->access$400(Lcom/wuyouwin/services/ForegroundService;)V

    goto :goto_1

    .line 241
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 243
    iget-object v1, p0, Lcom/wuyouwin/services/ForegroundService$2;->this$0:Lcom/wuyouwin/services/ForegroundService;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 244
    .local v1, "km":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/wuyouwin/services/ForegroundService;->access$202(Z)Z

    .line 246
    .end local v1    # "km":Landroid/app/KeyguardManager;
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/wuyouwin/services/ForegroundService;->access$100(Landroid/content/Context;)V

    .line 247
    return-void
.end method
