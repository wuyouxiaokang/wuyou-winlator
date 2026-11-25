.class Lcom/wuyouwin/services/ForegroundService$1;
.super Ljava/lang/Object;
.source "ForegroundService.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/services/ForegroundService;
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

    .line 149
    iput-object p1, p0, Lcom/wuyouwin/services/ForegroundService$1;->this$0:Lcom/wuyouwin/services/ForegroundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2
    .param p1, "owner"    # Landroidx/lifecycle/LifecycleOwner;

    .line 152
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/wuyouwin/services/ForegroundService;->access$002(Z)Z

    .line 153
    const-string v0, "FGService"

    const-string v1, "App came to foreground (ProcessLifecycleOwner)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/wuyouwin/services/ForegroundService$1;->this$0:Lcom/wuyouwin/services/ForegroundService;

    invoke-static {v0}, Lcom/wuyouwin/services/ForegroundService;->access$100(Landroid/content/Context;)V

    .line 155
    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2
    .param p1, "owner"    # Landroidx/lifecycle/LifecycleOwner;

    .line 159
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/wuyouwin/services/ForegroundService;->access$002(Z)Z

    .line 160
    const-string v0, "FGService"

    const-string v1, "App went to background (ProcessLifecycleOwner)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/wuyouwin/services/ForegroundService$1;->this$0:Lcom/wuyouwin/services/ForegroundService;

    invoke-static {v0}, Lcom/wuyouwin/services/ForegroundService;->access$100(Landroid/content/Context;)V

    .line 162
    return-void
.end method
