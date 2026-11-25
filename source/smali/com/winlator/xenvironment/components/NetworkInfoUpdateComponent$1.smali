.class Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkInfoUpdateComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;

.field final synthetic val$networkHelper:Lcom/winlator/core/NetworkHelper;


# direct methods
.method constructor <init>(Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;Lcom/winlator/core/NetworkHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;

    .line 26
    iput-object p1, p0, Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent$1;->this$0:Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;

    iput-object p2, p0, Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent$1;->val$networkHelper:Lcom/winlator/core/NetworkHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 29
    iget-object v0, p0, Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent$1;->this$0:Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;

    iget-object v1, p0, Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent$1;->val$networkHelper:Lcom/winlator/core/NetworkHelper;

    invoke-virtual {v1}, Lcom/winlator/core/NetworkHelper;->getIFAddresses()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;->access$000(Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;Ljava/util/List;)V

    .line 30
    iget-object v0, p0, Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent$1;->this$0:Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;

    iget-object v1, p0, Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent$1;->val$networkHelper:Lcom/winlator/core/NetworkHelper;

    invoke-virtual {v1}, Lcom/winlator/core/NetworkHelper;->getIPv4Address()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;->access$100(Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;Ljava/lang/String;)V

    .line 31
    return-void
.end method
