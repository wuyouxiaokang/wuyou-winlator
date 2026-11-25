.class public final synthetic Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/container/ContainerManager;

.field public final synthetic f$1:Lcom/wuyouwin/container/Container;

.field public final synthetic f$2:Landroid/os/Handler;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/container/ContainerManager;Lcom/wuyouwin/container/Container;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda3;->f$0:Lcom/wuyouwin/container/ContainerManager;

    iput-object p2, p0, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda3;->f$1:Lcom/wuyouwin/container/Container;

    iput-object p3, p0, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda3;->f$2:Landroid/os/Handler;

    iput-object p4, p0, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda3;->f$0:Lcom/wuyouwin/container/ContainerManager;

    iget-object v1, p0, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda3;->f$1:Lcom/wuyouwin/container/Container;

    iget-object v2, p0, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda3;->f$2:Landroid/os/Handler;

    iget-object v3, p0, Lcom/wuyouwin/container/ContainerManager$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lcom/wuyouwin/container/ContainerManager;->$r8$lambda$PhMSxlIKZ2icnyVTGBVGK3fbksU(Lcom/wuyouwin/container/ContainerManager;Lcom/wuyouwin/container/Container;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
