.class public abstract Lcom/wuyouwin/BaseFileManagerFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFileManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;,
        Lcom/wuyouwin/BaseFileManagerFragment$Clipboard;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/Fragment;"
    }
.end annotation


# instance fields
.field protected clipboard:Lcom/wuyouwin/BaseFileManagerFragment$Clipboard;

.field protected emptyTextView:Landroid/widget/TextView;

.field protected final folderStack:Ljava/util/Stack;

.field protected itemDecoration:Landroidx/recyclerview/widget/DividerItemDecoration;

.field protected manager:Lcom/wuyouwin/container/ContainerManager;

.field protected pasteButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field protected preferences:Landroid/content/SharedPreferences;

.field protected preloaderDialog:Lcom/wuyouwin/core/PreloaderDialog;

.field protected recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field protected viewStyle:Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

.field protected viewStyleNeedsUpdate:Z


# direct methods
.method public static synthetic $r8$lambda$4A3b1u3bOMclvglfftf3Ql3CTmw(Lcom/wuyouwin/BaseFileManagerFragment;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/wuyouwin/BaseFileManagerFragment;->lambda$pasteFiles$2(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bn-VVApSJviZs3OQsnBKBYDrfgc(Lcom/wuyouwin/BaseFileManagerFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/wuyouwin/BaseFileManagerFragment;->lambda$pasteFiles$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$R0dmLze6gpbln9oBSvZYa6BSXsY(Lcom/wuyouwin/BaseFileManagerFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/wuyouwin/BaseFileManagerFragment;->lambda$removeFile$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$_VBMP7x6qHlu584nJseC2XDWJJE(Lcom/wuyouwin/BaseFileManagerFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/wuyouwin/BaseFileManagerFragment;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fYRSqDeNjUtkRU4aBvZqQ9bPbZU(Lcom/wuyouwin/BaseFileManagerFragment;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/wuyouwin/BaseFileManagerFragment;->lambda$removeFile$4(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    .local p0, "this":Lcom/wuyouwin/BaseFileManagerFragment;, "Lcom/wuyouwin/BaseFileManagerFragment<TT;>;"
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 43
    sget-object v0, Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;->GRID:Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    iput-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->viewStyle:Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->viewStyleNeedsUpdate:Z

    .line 49
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 81
    .local p0, "this":Lcom/wuyouwin/BaseFileManagerFragment;, "Lcom/wuyouwin/BaseFileManagerFragment<TT;>;"
    invoke-virtual {p0}, Lcom/wuyouwin/BaseFileManagerFragment;->pasteFiles()V

    return-void
.end method

.method private synthetic lambda$pasteFiles$1()V
    .locals 1

    .line 176
    .local p0, "this":Lcom/wuyouwin/BaseFileManagerFragment;, "Lcom/wuyouwin/BaseFileManagerFragment<TT;>;"
    invoke-virtual {p0}, Lcom/wuyouwin/BaseFileManagerFragment;->clearClipboard()V

    .line 177
    invoke-virtual {p0}, Lcom/wuyouwin/BaseFileManagerFragment;->refreshContent()V

    .line 178
    iget-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->preloaderDialog:Lcom/wuyouwin/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/wuyouwin/core/PreloaderDialog;->close()V

    .line 179
    return-void
.end method

.method private synthetic lambda$pasteFiles$2(Landroidx/fragment/app/FragmentActivity;)V
    .locals 7
    .param p1, "activity"    # Landroidx/fragment/app/FragmentActivity;

    .line 168
    .local p0, "this":Lcom/wuyouwin/BaseFileManagerFragment;, "Lcom/wuyouwin/BaseFileManagerFragment<TT;>;"
    iget-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->clipboard:Lcom/wuyouwin/BaseFileManagerFragment$Clipboard;

    iget-object v0, v0, Lcom/wuyouwin/BaseFileManagerFragment$Clipboard;->files:[Ljava/io/File;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 169
    .local v3, "originFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 170
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/wuyouwin/BaseFileManagerFragment;->clipboard:Lcom/wuyouwin/BaseFileManagerFragment$Clipboard;

    iget-object v5, v5, Lcom/wuyouwin/BaseFileManagerFragment$Clipboard;->targetDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    .local v4, "targetFile":Ljava/io/File;
    invoke-static {v3, v4}, Lcom/wuyouwin/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/wuyouwin/BaseFileManagerFragment;->clipboard:Lcom/wuyouwin/BaseFileManagerFragment$Clipboard;

    iget-boolean v5, v5, Lcom/wuyouwin/BaseFileManagerFragment$Clipboard;->cutMode:Z

    if-eqz v5, :cond_0

    invoke-static {v3}, Lcom/wuyouwin/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 168
    .end local v3    # "originFile":Ljava/io/File;
    .end local v4    # "targetFile":Ljava/io/File;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_1
    new-instance v0, Lcom/wuyouwin/BaseFileManagerFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/wuyouwin/BaseFileManagerFragment$$ExternalSyntheticLambda2;-><init>(Lcom/wuyouwin/BaseFileManagerFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method private synthetic lambda$removeFile$3()V
    .locals 1

    .line 189
    .local p0, "this":Lcom/wuyouwin/BaseFileManagerFragment;, "Lcom/wuyouwin/BaseFileManagerFragment<TT;>;"
    invoke-virtual {p0}, Lcom/wuyouwin/BaseFileManagerFragment;->clearClipboard()V

    .line 190
    invoke-virtual {p0}, Lcom/wuyouwin/BaseFileManagerFragment;->refreshContent()V

    .line 191
    iget-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->preloaderDialog:Lcom/wuyouwin/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/wuyouwin/core/PreloaderDialog;->close()V

    .line 192
    return-void
.end method

.method private synthetic lambda$removeFile$4(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 186
    .local p0, "this":Lcom/wuyouwin/BaseFileManagerFragment;, "Lcom/wuyouwin/BaseFileManagerFragment<TT;>;"
    invoke-static {p1}, Lcom/wuyouwin/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 188
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/wuyouwin/BaseFileManagerFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/wuyouwin/BaseFileManagerFragment$$ExternalSyntheticLambda4;-><init>(Lcom/wuyouwin/BaseFileManagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 193
    return-void
.end method


# virtual methods
.method public clearClipboard()V
    .locals 2

    .line 197
    .local p0, "this":Lcom/wuyouwin/BaseFileManagerFragment;, "Lcom/wuyouwin/BaseFileManagerFragment<TT;>;"
    iget-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->clipboard:Lcom/wuyouwin/BaseFileManagerFragment$Clipboard;

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->clipboard:Lcom/wuyouwin/BaseFileManagerFragment$Clipboard;

    .line 199
    iget-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->pasteButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 201
    :cond_0
    return-void
.end method

.method protected abstract getHomeTitle()Ljava/lang/String;
.end method

.method public onBackPressed()Z
    .locals 1

    .line 105
    .local p0, "this":Lcom/wuyouwin/BaseFileManagerFragment;, "Lcom/wuyouwin/BaseFileManagerFragment<TT;>;"
    invoke-virtual {p0}, Lcom/wuyouwin/BaseFileManagerFragment;->clearClipboard()V

    .line 106
    invoke-virtual {p0}, Lcom/wuyouwin/BaseFileManagerFragment;->onOptionsMenuClicked()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 64
    .local p0, "this":Lcom/wuyouwin/BaseFileManagerFragment;, "Lcom/wuyouwin/BaseFileManagerFragment<TT;>;"
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 68
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/wuyouwin/core/PreloaderDialog;

    invoke-direct {v1, v0}, Lcom/wuyouwin/core/PreloaderDialog;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/wuyouwin/BaseFileManagerFragment;->preloaderDialog:Lcom/wuyouwin/core/PreloaderDialog;

    .line 69
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/wuyouwin/BaseFileManagerFragment;->preferences:Landroid/content/SharedPreferences;

    .line 70
    new-instance v1, Lcom/wuyouwin/container/ContainerManager;

    invoke-direct {v1, v0}, Lcom/wuyouwin/container/ContainerManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wuyouwin/BaseFileManagerFragment;->manager:Lcom/wuyouwin/container/ContainerManager;

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 76
    .local p0, "this":Lcom/wuyouwin/BaseFileManagerFragment;, "Lcom/wuyouwin/BaseFileManagerFragment<TT;>;"
    const v0, 0x7f0c0021

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0900a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/wuyouwin/BaseFileManagerFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    const v1, 0x7f0900eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/wuyouwin/BaseFileManagerFragment;->emptyTextView:Landroid/widget/TextView;

    .line 80
    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v1, p0, Lcom/wuyouwin/BaseFileManagerFragment;->pasteButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 81
    iget-object v1, p0, Lcom/wuyouwin/BaseFileManagerFragment;->pasteButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v2, Lcom/wuyouwin/BaseFileManagerFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/wuyouwin/BaseFileManagerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/wuyouwin/BaseFileManagerFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v1, p0, Lcom/wuyouwin/BaseFileManagerFragment;->itemDecoration:Landroidx/recyclerview/widget/DividerItemDecoration;

    if-nez v1, :cond_0

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 85
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroidx/recyclerview/widget/DividerItemDecoration;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/wuyouwin/BaseFileManagerFragment;->itemDecoration:Landroidx/recyclerview/widget/DividerItemDecoration;

    .line 86
    iget-object v2, p0, Lcom/wuyouwin/BaseFileManagerFragment;->itemDecoration:Landroidx/recyclerview/widget/DividerItemDecoration;

    const v3, 0x7f0800d8

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/DividerItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    return-object v0
.end method

.method public onOptionsMenuClicked()Z
    .locals 2

    .line 110
    .local p0, "this":Lcom/wuyouwin/BaseFileManagerFragment;, "Lcom/wuyouwin/BaseFileManagerFragment<TT;>;"
    iget-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 112
    invoke-virtual {p0}, Lcom/wuyouwin/BaseFileManagerFragment;->refreshContent()V

    .line 114
    iget-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 116
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    const v1, 0x7f080095

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 117
    invoke-virtual {p0}, Lcom/wuyouwin/BaseFileManagerFragment;->getHomeTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    .end local v0    # "actionBar":Landroidx/appcompat/app/ActionBar;
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 121
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onOrientationChanged()V
    .locals 1

    .line 125
    .local p0, "this":Lcom/wuyouwin/BaseFileManagerFragment;, "Lcom/wuyouwin/BaseFileManagerFragment<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->viewStyleNeedsUpdate:Z

    .line 126
    invoke-virtual {p0}, Lcom/wuyouwin/BaseFileManagerFragment;->refreshContent()V

    .line 127
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 93
    .local p0, "this":Lcom/wuyouwin/BaseFileManagerFragment;, "Lcom/wuyouwin/BaseFileManagerFragment<TT;>;"
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wuyouwin/BaseFileManagerFragment;->getHomeTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p0}, Lcom/wuyouwin/BaseFileManagerFragment;->refreshContent()V

    .line 96
    return-void
.end method

.method protected pasteFiles()V
    .locals 8

    .line 155
    .local p0, "this":Lcom/wuyouwin/BaseFileManagerFragment;, "Lcom/wuyouwin/BaseFileManagerFragment<TT;>;"
    iget-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->clipboard:Lcom/wuyouwin/BaseFileManagerFragment$Clipboard;

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 158
    .local v0, "activity":Landroidx/fragment/app/FragmentActivity;
    iget-object v1, p0, Lcom/wuyouwin/BaseFileManagerFragment;->clipboard:Lcom/wuyouwin/BaseFileManagerFragment$Clipboard;

    iget-object v1, v1, Lcom/wuyouwin/BaseFileManagerFragment$Clipboard;->files:[Ljava/io/File;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 159
    .local v4, "file":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/wuyouwin/BaseFileManagerFragment;->clipboard:Lcom/wuyouwin/BaseFileManagerFragment$Clipboard;

    iget-object v6, v6, Lcom/wuyouwin/BaseFileManagerFragment$Clipboard;->targetDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    .local v5, "targetFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 161
    const v1, 0x7f100184

    invoke-static {v0, v1}, Lcom/wuyouwin/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 162
    return-void

    .line 160
    :cond_1
    nop

    .line 158
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "targetFile":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    :cond_2
    iget-object v1, p0, Lcom/wuyouwin/BaseFileManagerFragment;->preloaderDialog:Lcom/wuyouwin/core/PreloaderDialog;

    const v2, 0x7f10005f

    invoke-virtual {v1, v2}, Lcom/wuyouwin/core/PreloaderDialog;->show(I)V

    .line 167
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/wuyouwin/BaseFileManagerFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/wuyouwin/BaseFileManagerFragment$$ExternalSyntheticLambda1;-><init>(Lcom/wuyouwin/BaseFileManagerFragment;Landroidx/fragment/app/FragmentActivity;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method

.method public refreshContent()V
    .locals 4

    .line 139
    .local p0, "this":Lcom/wuyouwin/BaseFileManagerFragment;, "Lcom/wuyouwin/BaseFileManagerFragment<TT;>;"
    iget-boolean v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->viewStyleNeedsUpdate:Z

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 141
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/wuyouwin/BaseFileManagerFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/wuyouwin/BaseFileManagerFragment;->itemDecoration:Landroidx/recyclerview/widget/DividerItemDecoration;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 142
    iget-object v1, p0, Lcom/wuyouwin/BaseFileManagerFragment;->viewStyle:Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    sget-object v2, Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;->LIST:Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    if-ne v1, v2, :cond_0

    .line 143
    iget-object v1, p0, Lcom/wuyouwin/BaseFileManagerFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 144
    iget-object v1, p0, Lcom/wuyouwin/BaseFileManagerFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/wuyouwin/BaseFileManagerFragment;->itemDecoration:Landroidx/recyclerview/widget/DividerItemDecoration;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/wuyouwin/BaseFileManagerFragment;->viewStyle:Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    sget-object v2, Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;->GRID:Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    if-ne v1, v2, :cond_1

    .line 147
    invoke-static {}, Lcom/wuyouwin/core/AppUtils;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {v2}, Lcom/wuyouwin/core/UnitUtils;->dpToPx(F)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 148
    .local v1, "spanCount":I
    iget-object v2, p0, Lcom/wuyouwin/BaseFileManagerFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v3, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 150
    .end local v1    # "spanCount":I
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/wuyouwin/BaseFileManagerFragment;->viewStyleNeedsUpdate:Z

    .line 152
    .end local v0    # "context":Landroid/content/Context;
    :cond_2
    return-void
.end method

.method public refreshViewStyleMenuItem(Landroid/view/MenuItem;)V
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 130
    .local p0, "this":Lcom/wuyouwin/BaseFileManagerFragment;, "Lcom/wuyouwin/BaseFileManagerFragment<TT;>;"
    iget-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->viewStyle:Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    sget-object v1, Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;->LIST:Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    if-ne v0, v1, :cond_0

    .line 131
    const v0, 0x7f080092

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->viewStyle:Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    sget-object v1, Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;->GRID:Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    if-ne v0, v1, :cond_1

    .line 134
    const v0, 0x7f080094

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 136
    :cond_1
    :goto_0
    return-void
.end method

.method protected removeFile(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 184
    .local p0, "this":Lcom/wuyouwin/BaseFileManagerFragment;, "Lcom/wuyouwin/BaseFileManagerFragment<TT;>;"
    iget-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->preloaderDialog:Lcom/wuyouwin/core/PreloaderDialog;

    const v1, 0x7f10015e

    invoke-virtual {v0, v1}, Lcom/wuyouwin/core/PreloaderDialog;->show(I)V

    .line 185
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/wuyouwin/BaseFileManagerFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/wuyouwin/BaseFileManagerFragment$$ExternalSyntheticLambda3;-><init>(Lcom/wuyouwin/BaseFileManagerFragment;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method public setViewStyle(Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;)V
    .locals 1
    .param p1, "viewStyle"    # Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    .line 99
    .local p0, "this":Lcom/wuyouwin/BaseFileManagerFragment;, "Lcom/wuyouwin/BaseFileManagerFragment<TT;>;"
    iput-object p1, p0, Lcom/wuyouwin/BaseFileManagerFragment;->viewStyle:Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->viewStyleNeedsUpdate:Z

    .line 101
    invoke-virtual {p0}, Lcom/wuyouwin/BaseFileManagerFragment;->refreshContent()V

    .line 102
    return-void
.end method
