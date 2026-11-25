.class Lcom/wuyouwin/ContainersFragment$ContainersAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ContainersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/ContainersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainersAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/ContainersFragment$ContainersAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final data:Ljava/util/List;

.field final synthetic this$0:Lcom/wuyouwin/ContainersFragment;


# direct methods
.method public static synthetic $r8$lambda$0WTaT6LgpjbSiXeVTe9fkfJ9YIU(Lcom/wuyouwin/ContainersFragment$ContainersAdapter;Lcom/wuyouwin/container/Container;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->lambda$onBindViewHolder$0(Lcom/wuyouwin/container/Container;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6f0vF035nI4AcbCoyVWwN3biB6k(Lcom/wuyouwin/ContainersFragment$ContainersAdapter;Lcom/wuyouwin/container/Container;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->lambda$showListItemMenu$5(Lcom/wuyouwin/container/Container;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Do5UuKUyXi8q8VcdNmPIBgKyKbg(Lcom/wuyouwin/ContainersFragment$ContainersAdapter;Lcom/wuyouwin/container/Container;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->lambda$showListItemMenu$3(Lcom/wuyouwin/container/Container;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HjPFrdGgQl3MxmQ9QbsrvFpjQDE(Lcom/wuyouwin/ContainersFragment$ContainersAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->lambda$showListItemMenu$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$IOsZsCFitVz7J2aeDRErtjs1PEw(Lcom/wuyouwin/ContainersFragment$ContainersAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->lambda$showListItemMenu$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$lKZS9aSekRAOmBrhrojSCLhp-3s(Lcom/wuyouwin/ContainersFragment$ContainersAdapter;Lcom/wuyouwin/container/Container;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->lambda$onBindViewHolder$1(Lcom/wuyouwin/container/Container;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lT57S4FQHPOhHWdXHtJJLClrhLI(Lcom/wuyouwin/ContainersFragment$ContainersAdapter;Lcom/wuyouwin/MainActivity;Lcom/wuyouwin/container/Container;Landroid/view/MenuItem;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->lambda$showListItemMenu$6(Lcom/wuyouwin/MainActivity;Lcom/wuyouwin/container/Container;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/wuyouwin/ContainersFragment;Ljava/util/List;)V
    .locals 0

    .line 118
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/wuyouwin/container/Container;>;"
    iput-object p1, p0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->this$0:Lcom/wuyouwin/ContainersFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 119
    iput-object p2, p0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->data:Ljava/util/List;

    .line 120
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/wuyouwin/container/Container;Landroid/view/View;)V
    .locals 0
    .param p1, "item"    # Lcom/wuyouwin/container/Container;
    .param p2, "view"    # Landroid/view/View;

    .line 132
    invoke-direct {p0, p1}, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->runContainer(Lcom/wuyouwin/container/Container;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/wuyouwin/container/Container;Landroid/view/View;)V
    .locals 0
    .param p1, "item"    # Lcom/wuyouwin/container/Container;
    .param p2, "view"    # Landroid/view/View;

    .line 133
    invoke-direct {p0, p2, p1}, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->showListItemMenu(Landroid/view/View;Lcom/wuyouwin/container/Container;)V

    return-void
.end method

.method private synthetic lambda$showListItemMenu$2()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->this$0:Lcom/wuyouwin/ContainersFragment;

    invoke-static {v0}, Lcom/wuyouwin/ContainersFragment;->access$500(Lcom/wuyouwin/ContainersFragment;)Lcom/wuyouwin/core/PreloaderDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wuyouwin/core/PreloaderDialog;->close()V

    .line 160
    iget-object v0, p0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->this$0:Lcom/wuyouwin/ContainersFragment;

    invoke-static {v0}, Lcom/wuyouwin/ContainersFragment;->access$700(Lcom/wuyouwin/ContainersFragment;)V

    .line 161
    return-void
.end method

.method private synthetic lambda$showListItemMenu$3(Lcom/wuyouwin/container/Container;)V
    .locals 2
    .param p1, "container"    # Lcom/wuyouwin/container/Container;

    .line 157
    iget-object v0, p0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->this$0:Lcom/wuyouwin/ContainersFragment;

    invoke-static {v0}, Lcom/wuyouwin/ContainersFragment;->access$500(Lcom/wuyouwin/ContainersFragment;)Lcom/wuyouwin/core/PreloaderDialog;

    move-result-object v0

    const v1, 0x7f100091

    invoke-virtual {v0, v1}, Lcom/wuyouwin/core/PreloaderDialog;->show(I)V

    .line 158
    iget-object v0, p0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->this$0:Lcom/wuyouwin/ContainersFragment;

    invoke-static {v0}, Lcom/wuyouwin/ContainersFragment;->access$600(Lcom/wuyouwin/ContainersFragment;)Lcom/wuyouwin/container/ContainerManager;

    move-result-object v0

    new-instance v1, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/wuyouwin/ContainersFragment$ContainersAdapter;)V

    invoke-virtual {v0, p1, v1}, Lcom/wuyouwin/container/ContainerManager;->duplicateContainerAsync(Lcom/wuyouwin/container/Container;Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method

.method private synthetic lambda$showListItemMenu$4()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->this$0:Lcom/wuyouwin/ContainersFragment;

    invoke-static {v0}, Lcom/wuyouwin/ContainersFragment;->access$500(Lcom/wuyouwin/ContainersFragment;)Lcom/wuyouwin/core/PreloaderDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wuyouwin/core/PreloaderDialog;->close()V

    .line 169
    iget-object v0, p0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->this$0:Lcom/wuyouwin/ContainersFragment;

    invoke-static {v0}, Lcom/wuyouwin/ContainersFragment;->access$700(Lcom/wuyouwin/ContainersFragment;)V

    .line 170
    return-void
.end method

.method private synthetic lambda$showListItemMenu$5(Lcom/wuyouwin/container/Container;)V
    .locals 2
    .param p1, "container"    # Lcom/wuyouwin/container/Container;

    .line 166
    iget-object v0, p0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->this$0:Lcom/wuyouwin/ContainersFragment;

    invoke-static {v0}, Lcom/wuyouwin/ContainersFragment;->access$500(Lcom/wuyouwin/ContainersFragment;)Lcom/wuyouwin/core/PreloaderDialog;

    move-result-object v0

    const v1, 0x7f10015d

    invoke-virtual {v0, v1}, Lcom/wuyouwin/core/PreloaderDialog;->show(I)V

    .line 167
    iget-object v0, p0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->this$0:Lcom/wuyouwin/ContainersFragment;

    invoke-static {v0}, Lcom/wuyouwin/ContainersFragment;->access$600(Lcom/wuyouwin/ContainersFragment;)Lcom/wuyouwin/container/ContainerManager;

    move-result-object v0

    new-instance v1, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda6;-><init>(Lcom/wuyouwin/ContainersFragment$ContainersAdapter;)V

    invoke-virtual {v0, p1, v1}, Lcom/wuyouwin/container/ContainerManager;->removeContainerAsync(Lcom/wuyouwin/container/Container;Ljava/lang/Runnable;)V

    .line 171
    return-void
.end method

.method private synthetic lambda$showListItemMenu$6(Lcom/wuyouwin/MainActivity;Lcom/wuyouwin/container/Container;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "activity"    # Lcom/wuyouwin/MainActivity;
    .param p2, "container"    # Lcom/wuyouwin/container/Container;
    .param p3, "menuItem"    # Landroid/view/MenuItem;

    .line 148
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 165
    :sswitch_0
    iget-object v0, p0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->this$0:Lcom/wuyouwin/ContainersFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2}, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/wuyouwin/ContainersFragment$ContainersAdapter;Lcom/wuyouwin/container/Container;)V

    const v2, 0x7f100081

    invoke-static {v0, v2, v1}, Lcom/wuyouwin/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 172
    goto :goto_0

    .line 174
    :sswitch_1
    new-instance v0, Lcom/wuyouwin/contentdialog/StorageInfoDialog;

    invoke-direct {v0, p1, p2}, Lcom/wuyouwin/contentdialog/StorageInfoDialog;-><init>(Landroid/app/Activity;Lcom/wuyouwin/container/Container;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 150
    :sswitch_2
    new-instance v0, Lcom/wuyouwin/ContainerFileManagerFragment;

    iget v1, p2, Lcom/wuyouwin/container/Container;->id:I

    invoke-direct {v0, v1}, Lcom/wuyouwin/ContainerFileManagerFragment;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/wuyouwin/MainActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 151
    goto :goto_0

    .line 153
    :sswitch_3
    new-instance v0, Lcom/wuyouwin/ContainerDetailFragment;

    iget v1, p2, Lcom/wuyouwin/container/Container;->id:I

    invoke-direct {v0, v1}, Lcom/wuyouwin/ContainerDetailFragment;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/wuyouwin/MainActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 154
    goto :goto_0

    .line 156
    :sswitch_4
    iget-object v0, p0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->this$0:Lcom/wuyouwin/ContainersFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2}, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/wuyouwin/ContainersFragment$ContainersAdapter;Lcom/wuyouwin/container/Container;)V

    const v2, 0x7f10007b

    invoke-static {v0, v2, v1}, Lcom/wuyouwin/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 163
    nop

    .line 177
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901df -> :sswitch_4
        0x7f0901e0 -> :sswitch_3
        0x7f0901e3 -> :sswitch_2
        0x7f0901e5 -> :sswitch_1
        0x7f0901f1 -> :sswitch_0
    .end sparse-switch
.end method

.method private runContainer(Lcom/wuyouwin/container/Container;)V
    .locals 4
    .param p1, "container"    # Lcom/wuyouwin/container/Container;

    .line 183
    iget-object v0, p0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->this$0:Lcom/wuyouwin/ContainersFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 184
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/wuyouwin/XServerDisplayActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "container_id"

    iget v3, p1, Lcom/wuyouwin/container/Container;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 187
    return-void
.end method

.method private showListItemMenu(Landroid/view/View;Lcom/wuyouwin/container/Container;)V
    .locals 4
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "container"    # Lcom/wuyouwin/container/Container;

    .line 142
    iget-object v0, p0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->this$0:Lcom/wuyouwin/ContainersFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/MainActivity;

    .line 143
    .local v0, "activity":Lcom/wuyouwin/MainActivity;
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-direct {v1, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 144
    .local v1, "listItemMenu":Landroid/widget/PopupMenu;
    const v2, 0x7f0d0001

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 145
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/wuyouwin/ContainerDetailFragment$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/PopupMenu;Z)V

    .line 147
    :cond_0
    new-instance v2, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p2}, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/wuyouwin/ContainersFragment$ContainersAdapter;Lcom/wuyouwin/MainActivity;Lcom/wuyouwin/container/Container;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 179
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 180
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 100
    check-cast p1, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->onBindViewHolder(Lcom/wuyouwin/ContainersFragment$ContainersAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/wuyouwin/ContainersFragment$ContainersAdapter$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/wuyouwin/ContainersFragment$ContainersAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 129
    iget-object v0, p0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/container/Container;

    .line 130
    .local v0, "item":Lcom/wuyouwin/container/Container;
    invoke-static {p1}, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$ViewHolder;->access$100(Lcom/wuyouwin/ContainersFragment$ContainersAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f08009c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    invoke-static {p1}, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$ViewHolder;->access$200(Lcom/wuyouwin/ContainersFragment$ContainersAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wuyouwin/container/Container;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-static {p1}, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$ViewHolder;->access$300(Lcom/wuyouwin/ContainersFragment$ContainersAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/wuyouwin/ContainersFragment$ContainersAdapter;Lcom/wuyouwin/container/Container;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-static {p1}, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$ViewHolder;->access$400(Lcom/wuyouwin/ContainersFragment$ContainersAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/wuyouwin/ContainersFragment$ContainersAdapter;Lcom/wuyouwin/container/Container;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v1, 0x7f0900f3

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/wuyouwin/container/Container;->getScreenSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  \u00b7  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/wuyouwin/container/Container;->getGraphicsDriver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/wuyouwin/ContainersFragment$ContainersAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/wuyouwin/ContainersFragment$ContainersAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 124
    new-instance v0, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0026

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/wuyouwin/ContainersFragment$ContainersAdapter$ViewHolder;-><init>(Lcom/wuyouwin/ContainersFragment$ContainersAdapter;Landroid/view/View;Lcom/wuyouwin/ContainersFragment$1;)V

    return-object v0
.end method
