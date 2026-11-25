.class public final synthetic Lcom/wuyouwin/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/ContainersFragment$ContainersAdapter;

.field public final synthetic f$1:Lcom/wuyouwin/container/Container;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/ContainersFragment$ContainersAdapter;Lcom/wuyouwin/container/Container;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda4;->f$0:Lcom/wuyouwin/ContainersFragment$ContainersAdapter;

    iput-object p2, p0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda4;->f$1:Lcom/wuyouwin/container/Container;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda4;->f$0:Lcom/wuyouwin/ContainersFragment$ContainersAdapter;

    iget-object v1, p0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda4;->f$1:Lcom/wuyouwin/container/Container;

    invoke-static {v0, v1}, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->$r8$lambda$6f0vF035nI4AcbCoyVWwN3biB6k(Lcom/wuyouwin/ContainersFragment$ContainersAdapter;Lcom/wuyouwin/container/Container;)V

    return-void
.end method
