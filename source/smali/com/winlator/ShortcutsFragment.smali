.class public Lcom/winlator/ShortcutsFragment;
.super Lcom/winlator/BaseFileManagerFragment;
.source "ShortcutsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/winlator/BaseFileManagerFragment<",
        "Lcom/winlator/container/Shortcut;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$jc4crj36e6GLIoxaakbj0F7LxZM(Lcom/winlator/ShortcutsFragment;Lcom/winlator/container/Container;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/ShortcutsFragment;->lambda$createFolder$0(Lcom/winlator/container/Container;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/winlator/BaseFileManagerFragment;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lcom/winlator/ShortcutsFragment;Lcom/winlator/container/Shortcut;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/winlator/ShortcutsFragment;
    .param p1, "x1"    # Lcom/winlator/container/Shortcut;
    .param p2, "x2"    # Z

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/winlator/ShortcutsFragment;->instantiateClipboard(Lcom/winlator/container/Shortcut;Z)V

    return-void
.end method

.method private createFolder()V
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/winlator/BaseFileManagerFragment;->clearClipboard()V

    .line 59
    iget-object v0, p0, Lcom/winlator/BaseFileManagerFragment;->manager:Lcom/winlator/container/ContainerManager;

    invoke-virtual {v0}, Lcom/winlator/container/ContainerManager;->getContainers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 60
    :cond_0
    new-instance v0, Lcom/winlator/contentdialog/CreateFolderDialog;

    iget-object v1, p0, Lcom/winlator/BaseFileManagerFragment;->manager:Lcom/winlator/container/ContainerManager;

    invoke-direct {v0, v1}, Lcom/winlator/contentdialog/CreateFolderDialog;-><init>(Lcom/winlator/container/ContainerManager;)V

    .line 61
    .local v0, "createFolderDialog":Lcom/winlator/contentdialog/CreateFolderDialog;
    new-instance v1, Lcom/winlator/ShortcutsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/winlator/ShortcutsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/ShortcutsFragment;)V

    invoke-virtual {v0, v1}, Lcom/winlator/contentdialog/CreateFolderDialog;->setOnCreateFolderListener(Lcom/winlator/contentdialog/CreateFolderDialog$OnCreateFolderListener;)V

    .line 73
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 74
    return-void
.end method

.method private instantiateClipboard(Lcom/winlator/container/Shortcut;Z)V
    .locals 5
    .param p1, "shortcut"    # Lcom/winlator/container/Shortcut;
    .param p2, "cutMode"    # Z

    .line 89
    invoke-virtual {p0}, Lcom/winlator/BaseFileManagerFragment;->clearClipboard()V

    .line 90
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/winlator/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    iget-object v2, p1, Lcom/winlator/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    filled-new-array {v0}, [Ljava/io/File;

    move-result-object v0

    .line 91
    .local v0, "files":[Ljava/io/File;
    iget-object v1, p1, Lcom/winlator/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/winlator/container/Shortcut;->isLinkPath()Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    invoke-virtual {p1}, Lcom/winlator/container/Shortcut;->getLinkFile()Ljava/io/File;

    move-result-object v1

    .line 93
    .local v1, "linkFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    filled-new-array {v2}, [Ljava/io/File;

    move-result-object v2

    filled-new-array {v0, v2}, [[Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/winlator/core/ArrayUtils;->concat([[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Ljava/io/File;

    .line 96
    .end local v1    # "linkFile":Ljava/io/File;
    :cond_0
    new-instance v1, Lcom/winlator/BaseFileManagerFragment$Clipboard;

    invoke-direct {v1, v0, p2}, Lcom/winlator/BaseFileManagerFragment$Clipboard;-><init>([Ljava/io/File;Z)V

    iput-object v1, p0, Lcom/winlator/BaseFileManagerFragment;->clipboard:Lcom/winlator/BaseFileManagerFragment$Clipboard;

    .line 97
    iget-object v1, p0, Lcom/winlator/BaseFileManagerFragment;->pasteButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 98
    return-void
.end method

.method private synthetic lambda$createFolder$0(Lcom/winlator/container/Container;Ljava/lang/String;)V
    .locals 5
    .param p1, "container"    # Lcom/winlator/container/Container;
    .param p2, "name"    # Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/winlator/container/Container;->getUserDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "Desktop"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .local v0, "desktopDir":Ljava/io/File;
    iget-object v1, p0, Lcom/winlator/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/winlator/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/container/Shortcut;

    iget-object v1, v1, Lcom/winlator/container/Shortcut;->file:Ljava/io/File;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 64
    .local v1, "parent":Ljava/io/File;
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100184

    invoke-static {v3, v4}, Lcom/winlator/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 70
    invoke-virtual {p0}, Lcom/winlator/ShortcutsFragment;->refreshContent()V

    .line 72
    :goto_1
    return-void
.end method


# virtual methods
.method protected getHomeTitle()Ljava/lang/String;
    .locals 1

    .line 118
    const v0, 0x7f10016e

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 37
    invoke-super {p0, p1}, Lcom/winlator/BaseFileManagerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    iget-object v0, p0, Lcom/winlator/BaseFileManagerFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "shortcuts_view_style"

    const-string v2, "GRID"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/BaseFileManagerFragment$ViewStyle;->valueOf(Ljava/lang/String;)Lcom/winlator/BaseFileManagerFragment$ViewStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/BaseFileManagerFragment;->viewStyle:Lcom/winlator/BaseFileManagerFragment$ViewStyle;

    .line 39
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuInflater"    # Landroid/view/MenuInflater;

    .line 53
    const v0, 0x7f0d0009

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 54
    const v0, 0x7f0901f9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/winlator/BaseFileManagerFragment;->refreshViewStyleMenuItem(Landroid/view/MenuItem;)V

    .line 55
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 103
    .local v0, "itemId":I
    const v1, 0x7f0901f9

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/winlator/BaseFileManagerFragment;->viewStyle:Lcom/winlator/BaseFileManagerFragment$ViewStyle;

    sget-object v3, Lcom/winlator/BaseFileManagerFragment$ViewStyle;->GRID:Lcom/winlator/BaseFileManagerFragment$ViewStyle;

    if-ne v1, v3, :cond_0

    sget-object v1, Lcom/winlator/BaseFileManagerFragment$ViewStyle;->LIST:Lcom/winlator/BaseFileManagerFragment$ViewStyle;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/winlator/BaseFileManagerFragment$ViewStyle;->GRID:Lcom/winlator/BaseFileManagerFragment$ViewStyle;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/winlator/BaseFileManagerFragment;->setViewStyle(Lcom/winlator/BaseFileManagerFragment$ViewStyle;)V

    .line 105
    iget-object v1, p0, Lcom/winlator/BaseFileManagerFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v3, p0, Lcom/winlator/BaseFileManagerFragment;->viewStyle:Lcom/winlator/BaseFileManagerFragment$ViewStyle;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "shortcuts_view_style"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    invoke-virtual {p0, p1}, Lcom/winlator/BaseFileManagerFragment;->refreshViewStyleMenuItem(Landroid/view/MenuItem;)V

    .line 107
    return v2

    .line 109
    :cond_1
    const v1, 0x7f0901ec

    if-ne v0, v1, :cond_2

    .line 110
    invoke-direct {p0}, Lcom/winlator/ShortcutsFragment;->createFolder()V

    .line 111
    return v2

    .line 113
    :cond_2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method protected pasteFiles()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/winlator/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/winlator/BaseFileManagerFragment;->clearClipboard()V

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1001b0

    invoke-static {v0, v1}, Lcom/winlator/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 81
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/winlator/BaseFileManagerFragment;->clipboard:Lcom/winlator/BaseFileManagerFragment$Clipboard;

    iget-object v1, p0, Lcom/winlator/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/container/Shortcut;

    iget-object v1, v1, Lcom/winlator/container/Shortcut;->file:Ljava/io/File;

    iput-object v1, v0, Lcom/winlator/BaseFileManagerFragment$Clipboard;->targetDir:Ljava/io/File;

    .line 85
    invoke-super {p0}, Lcom/winlator/BaseFileManagerFragment;->pasteFiles()V

    .line 86
    return-void
.end method

.method public refreshContent()V
    .locals 4

    .line 43
    invoke-super {p0}, Lcom/winlator/BaseFileManagerFragment;->refreshContent()V

    .line 45
    iget-object v0, p0, Lcom/winlator/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/winlator/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/container/Shortcut;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 46
    .local v0, "selectedFolder":Lcom/winlator/container/Shortcut;
    :goto_0
    iget-object v1, p0, Lcom/winlator/BaseFileManagerFragment;->manager:Lcom/winlator/container/ContainerManager;

    invoke-virtual {v1, v0}, Lcom/winlator/container/ContainerManager;->loadShortcuts(Lcom/winlator/container/Shortcut;)Ljava/util/ArrayList;

    move-result-object v1

    .line 47
    .local v1, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/container/Shortcut;>;"
    iget-object v2, p0, Lcom/winlator/BaseFileManagerFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;

    invoke-direct {v3, p0, v1}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;-><init>(Lcom/winlator/ShortcutsFragment;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 48
    iget-object v2, p0, Lcom/winlator/BaseFileManagerFragment;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 49
    return-void
.end method
