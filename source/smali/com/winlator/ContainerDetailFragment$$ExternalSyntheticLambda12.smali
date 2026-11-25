.class public final synthetic Lcom/winlator/ContainerDetailFragment$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/winlator/ContainerDetailFragment;

.field public final synthetic f$1:Lcom/winlator/container/Drive;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic f$4:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/ContainerDetailFragment;Lcom/winlator/container/Drive;Landroid/widget/EditText;Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/ContainerDetailFragment$$ExternalSyntheticLambda12;->f$0:Lcom/winlator/ContainerDetailFragment;

    iput-object p2, p0, Lcom/winlator/ContainerDetailFragment$$ExternalSyntheticLambda12;->f$1:Lcom/winlator/container/Drive;

    iput-object p3, p0, Lcom/winlator/ContainerDetailFragment$$ExternalSyntheticLambda12;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/winlator/ContainerDetailFragment$$ExternalSyntheticLambda12;->f$3:Landroidx/fragment/app/FragmentActivity;

    iput-object p5, p0, Lcom/winlator/ContainerDetailFragment$$ExternalSyntheticLambda12;->f$4:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/winlator/ContainerDetailFragment$$ExternalSyntheticLambda12;->f$0:Lcom/winlator/ContainerDetailFragment;

    iget-object v1, p0, Lcom/winlator/ContainerDetailFragment$$ExternalSyntheticLambda12;->f$1:Lcom/winlator/container/Drive;

    iget-object v2, p0, Lcom/winlator/ContainerDetailFragment$$ExternalSyntheticLambda12;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/winlator/ContainerDetailFragment$$ExternalSyntheticLambda12;->f$3:Landroidx/fragment/app/FragmentActivity;

    iget-object v4, p0, Lcom/winlator/ContainerDetailFragment$$ExternalSyntheticLambda12;->f$4:Landroidx/fragment/app/Fragment;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/winlator/ContainerDetailFragment;->$r8$lambda$hhac9c3D2JoYvtzfO1gUHkNXhNQ(Lcom/winlator/ContainerDetailFragment;Lcom/winlator/container/Drive;Landroid/widget/EditText;Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
