.class public final synthetic Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/core/Callback;

.field public final synthetic f$1:Lcom/wuyouwin/container/Container;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/core/Callback;Lcom/wuyouwin/container/Container;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda2;->f$0:Lcom/wuyouwin/core/Callback;

    iput-object p2, p0, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda2;->f$1:Lcom/wuyouwin/container/Container;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda2;->f$0:Lcom/wuyouwin/core/Callback;

    iget-object v1, p0, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda2;->f$1:Lcom/wuyouwin/container/Container;

    invoke-static {v0, v1}, Lcom/wuyouwin/container/ContainerManager;->$r8$lambda$KfSdHGr3LLJL9zes4KvfXWlriHk(Lcom/wuyouwin/core/Callback;Lcom/wuyouwin/container/Container;)V

    return-void
.end method
