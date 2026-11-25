.class public final synthetic Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/container/ContainerManager;

.field public final synthetic f$1:Lorg/json/JSONObject;

.field public final synthetic f$2:Landroid/os/Handler;

.field public final synthetic f$3:Lcom/wuyouwin/core/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/container/ContainerManager;Lorg/json/JSONObject;Landroid/os/Handler;Lcom/wuyouwin/core/Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda1;->f$0:Lcom/wuyouwin/container/ContainerManager;

    iput-object p2, p0, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda1;->f$1:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda1;->f$2:Landroid/os/Handler;

    iput-object p4, p0, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda1;->f$3:Lcom/wuyouwin/core/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda1;->f$0:Lcom/wuyouwin/container/ContainerManager;

    iget-object v1, p0, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda1;->f$1:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda1;->f$2:Landroid/os/Handler;

    iget-object v3, p0, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda1;->f$3:Lcom/wuyouwin/core/Callback;

    invoke-static {v0, v1, v2, v3}, Lcom/wuyouwin/container/ContainerManager;->$r8$lambda$k_hKl_-UMBY2tokeBQn_71eQ2RY(Lcom/wuyouwin/container/ContainerManager;Lorg/json/JSONObject;Landroid/os/Handler;Lcom/wuyouwin/core/Callback;)V

    return-void
.end method
