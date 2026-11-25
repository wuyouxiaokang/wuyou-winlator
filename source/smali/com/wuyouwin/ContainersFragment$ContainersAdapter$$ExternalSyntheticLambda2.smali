.class public final synthetic Lcom/wuyouwin/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/ContainersFragment$ContainersAdapter;

.field public final synthetic f$1:Lcom/wuyouwin/MainActivity;

.field public final synthetic f$2:Lcom/wuyouwin/container/Container;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/ContainersFragment$ContainersAdapter;Lcom/wuyouwin/MainActivity;Lcom/wuyouwin/container/Container;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/wuyouwin/ContainersFragment$ContainersAdapter;

    iput-object p2, p0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/wuyouwin/MainActivity;

    iput-object p3, p0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda2;->f$2:Lcom/wuyouwin/container/Container;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/wuyouwin/ContainersFragment$ContainersAdapter;

    iget-object v1, p0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/wuyouwin/MainActivity;

    iget-object v2, p0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda2;->f$2:Lcom/wuyouwin/container/Container;

    invoke-static {v0, v1, v2, p1}, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->$r8$lambda$lT57S4FQHPOhHWdXHtJJLClrhLI(Lcom/wuyouwin/ContainersFragment$ContainersAdapter;Lcom/wuyouwin/MainActivity;Lcom/wuyouwin/container/Container;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
