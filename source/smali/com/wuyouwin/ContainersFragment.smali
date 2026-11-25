.class public Lcom/wuyouwin/ContainersFragment;
.super Landroidx/fragment/app/Fragment;
.source "ContainersFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/ContainersFragment$ContainersAdapter;
    }
.end annotation


# instance fields
.field private emptyTextView:Landroid/widget/TextView;

.field private manager:Lcom/wuyouwin/container/ContainerManager;

.field private preloaderDialog:Lcom/wuyouwin/core/PreloaderDialog;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/wuyouwin/ContainersFragment;)Lcom/wuyouwin/core/PreloaderDialog;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/ContainersFragment;

    .line 39
    iget-object v0, p0, Lcom/wuyouwin/ContainersFragment;->preloaderDialog:Lcom/wuyouwin/core/PreloaderDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/wuyouwin/ContainersFragment;)Lcom/wuyouwin/container/ContainerManager;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/ContainersFragment;

    .line 39
    iget-object v0, p0, Lcom/wuyouwin/ContainersFragment;->manager:Lcom/wuyouwin/container/ContainerManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/wuyouwin/ContainersFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wuyouwin/ContainersFragment;

    .line 39
    invoke-direct {p0}, Lcom/wuyouwin/ContainersFragment;->loadContainersList()V

    return-void
.end method

.method private loadContainersList()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/wuyouwin/ContainersFragment;->manager:Lcom/wuyouwin/container/ContainerManager;

    invoke-virtual {v0}, Lcom/wuyouwin/container/ContainerManager;->getContainers()Ljava/util/ArrayList;

    move-result-object v0

    .line 77
    .local v0, "containers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wuyouwin/container/Container;>;"
    iget-object v1, p0, Lcom/wuyouwin/ContainersFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;

    invoke-direct {v2, p0, v0}, Lcom/wuyouwin/ContainersFragment$ContainersAdapter;-><init>(Lcom/wuyouwin/ContainersFragment;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-static {v1}, Lcom/wuyouwin/core/WlListAnimator;->play(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wuyouwin/ContainersFragment;->emptyTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 47
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 49
    new-instance v0, Lcom/wuyouwin/core/PreloaderDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wuyouwin/core/PreloaderDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wuyouwin/ContainersFragment;->preloaderDialog:Lcom/wuyouwin/core/PreloaderDialog;

    .line 50
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuInflater"    # Landroid/view/MenuInflater;

    .line 83
    const v0, 0x7f0d0002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 84
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 63
    const v0, 0x7f0c0028

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 64
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const v1, 0x7f0900a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/wuyouwin/ContainersFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    iget-object v1, p0, Lcom/wuyouwin/ContainersFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 66
    .local v1, "context":Landroid/content/Context;
    const v2, 0x7f0900eb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/wuyouwin/ContainersFragment;->emptyTextView:Landroid/widget/TextView;

    .line 67
    iget-object v2, p0, Lcom/wuyouwin/ContainersFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 69
    new-instance v2, Landroidx/recyclerview/widget/DividerItemDecoration;

    iget-object v3, p0, Lcom/wuyouwin/ContainersFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 70
    .local v2, "itemDecoration":Landroidx/recyclerview/widget/DividerItemDecoration;
    const v3, 0x7f0800d8

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/DividerItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    .line 72
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0901d7

    if-ne v0, v1, :cond_1

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wuyouwin/xenvironment/RootFS;->find(Landroid/content/Context;)Lcom/wuyouwin/xenvironment/RootFS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wuyouwin/xenvironment/RootFS;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 91
    .local v0, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 92
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lcom/wuyouwin/ContainerDetailFragment;

    invoke-direct {v2}, Lcom/wuyouwin/ContainerDetailFragment;-><init>()V

    .line 93
    const v3, 0x7f09005e

    invoke-virtual {v1, v3, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 95
    const/4 v1, 0x1

    return v1

    .line 97
    .end local v0    # "fragmentManager":Landroidx/fragment/app/FragmentManager;
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 54
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    new-instance v0, Lcom/wuyouwin/container/ContainerManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wuyouwin/container/ContainerManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wuyouwin/ContainersFragment;->manager:Lcom/wuyouwin/container/ContainerManager;

    .line 56
    invoke-direct {p0}, Lcom/wuyouwin/ContainersFragment;->loadContainersList()V

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f100059

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 58
    return-void
.end method
