.class public Lcom/wuyouwin/ContainerFileManagerFragment;
.super Lcom/wuyouwin/BaseFileManagerFragment;
.source "ContainerFileManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;,
        Lcom/wuyouwin/ContainerFileManagerFragment$LoadIconTask;
    }
.end annotation


# instance fields
.field private container:Lcom/wuyouwin/container/Container;

.field private final containerId:I

.field private startPath:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$25MSDdlv35Uj05Oq6vZh-miSfmI(Lcom/wuyouwin/ContainerFileManagerFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/wuyouwin/ContainerFileManagerFragment;->lambda$createFolder$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "containerId"    # I

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wuyouwin/ContainerFileManagerFragment;-><init>(ILjava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "containerId"    # I
    .param p2, "startPath"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Lcom/wuyouwin/BaseFileManagerFragment;-><init>()V

    .line 55
    iput p1, p0, Lcom/wuyouwin/ContainerFileManagerFragment;->containerId:I

    .line 56
    iput-object p2, p0, Lcom/wuyouwin/ContainerFileManagerFragment;->startPath:Ljava/lang/String;

    .line 57
    return-void
.end method

.method static synthetic access$700(Lcom/wuyouwin/ContainerFileManagerFragment;)Lcom/wuyouwin/container/Container;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/ContainerFileManagerFragment;

    .line 45
    iget-object v0, p0, Lcom/wuyouwin/ContainerFileManagerFragment;->container:Lcom/wuyouwin/container/Container;

    return-object v0
.end method

.method static synthetic access$800(Lcom/wuyouwin/ContainerFileManagerFragment;Lcom/wuyouwin/container/FileInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/wuyouwin/ContainerFileManagerFragment;
    .param p1, "x1"    # Lcom/wuyouwin/container/FileInfo;
    .param p2, "x2"    # Z

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/ContainerFileManagerFragment;->instantiateClipboard(Lcom/wuyouwin/container/FileInfo;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/wuyouwin/ContainerFileManagerFragment;Lcom/wuyouwin/container/FileInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/wuyouwin/ContainerFileManagerFragment;
    .param p1, "x1"    # Lcom/wuyouwin/container/FileInfo;

    .line 45
    invoke-direct {p0, p1}, Lcom/wuyouwin/ContainerFileManagerFragment;->addFavorite(Lcom/wuyouwin/container/FileInfo;)V

    return-void
.end method

.method private addFavorite(Lcom/wuyouwin/container/FileInfo;)V
    .locals 6
    .param p1, "file"    # Lcom/wuyouwin/container/FileInfo;

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/wuyouwin/ContainerFileManagerFragment;->container:Lcom/wuyouwin/container/Container;

    invoke-virtual {v2}, Lcom/wuyouwin/container/Container;->getUserDir()Ljava/io/File;

    move-result-object v2

    const v3, 0x7f1000b2

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    .local v1, "favoritesDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/wuyouwin/container/FileInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/wuyouwin/core/FileUtils;->getBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".lnk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    .local v2, "targetFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 117
    new-instance v3, Lcom/wuyouwin/win32/MSLink$LinkInfo;

    invoke-direct {v3}, Lcom/wuyouwin/win32/MSLink$LinkInfo;-><init>()V

    .line 118
    .local v3, "linkInfo":Lcom/wuyouwin/win32/MSLink$LinkInfo;
    iget-object v4, p1, Lcom/wuyouwin/container/FileInfo;->path:Ljava/lang/String;

    iget-object v5, p0, Lcom/wuyouwin/ContainerFileManagerFragment;->container:Lcom/wuyouwin/container/Container;

    invoke-static {v4, v5}, Lcom/wuyouwin/core/WineUtils;->unixToDOSPath(Ljava/lang/String;Lcom/wuyouwin/container/Container;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/wuyouwin/win32/MSLink$LinkInfo;->targetPath:Ljava/lang/String;

    .line 119
    iget-object v4, p1, Lcom/wuyouwin/container/FileInfo;->type:Lcom/wuyouwin/container/FileInfo$Type;

    sget-object v5, Lcom/wuyouwin/container/FileInfo$Type;->DIRECTORY:Lcom/wuyouwin/container/FileInfo$Type;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v3, Lcom/wuyouwin/win32/MSLink$LinkInfo;->isDirectory:Z

    .line 120
    invoke-static {v3, v2}, Lcom/wuyouwin/win32/MSLink;->createFile(Lcom/wuyouwin/win32/MSLink$LinkInfo;Ljava/io/File;)Z

    move-result v4

    .line 121
    .local v4, "success":Z
    if-eqz v4, :cond_1

    const v5, 0x7f1000b8

    invoke-static {v0, v5}, Lcom/wuyouwin/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 123
    .end local v3    # "linkInfo":Lcom/wuyouwin/win32/MSLink$LinkInfo;
    .end local v4    # "success":Z
    :cond_1
    return-void
.end method

.method private createFolder()V
    .locals 4

    .line 90
    invoke-virtual {p0}, Lcom/wuyouwin/BaseFileManagerFragment;->clearClipboard()V

    .line 91
    iget-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/wuyouwin/ContainerFileManagerFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/wuyouwin/ContainerFileManagerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/wuyouwin/ContainerFileManagerFragment;)V

    const v2, 0x7f10012e

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/wuyouwin/contentdialog/ContentDialog;->prompt(Landroid/content/Context;ILjava/lang/String;Lcom/wuyouwin/core/Callback;)V

    .line 103
    return-void
.end method

.method private getCurrentWorkingPath()Ljava/lang/String;
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/wuyouwin/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    const-string v3, "\\"

    if-ge v1, v2, :cond_1

    .line 182
    if-lez v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/wuyouwin/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wuyouwin/container/FileInfo;

    invoke-virtual {v2}, Lcom/wuyouwin/container/FileInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 186
    .end local v1    # "i":I
    iget-object v1, p0, Lcom/wuyouwin/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 189
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    const-string v0, ""

    return-object v0
.end method

.method private instantiateClipboard(Lcom/wuyouwin/container/FileInfo;Z)V
    .locals 3
    .param p1, "file"    # Lcom/wuyouwin/container/FileInfo;
    .param p2, "cutMode"    # Z

    .line 106
    invoke-virtual {p0}, Lcom/wuyouwin/BaseFileManagerFragment;->clearClipboard()V

    .line 107
    new-instance v0, Lcom/wuyouwin/BaseFileManagerFragment$Clipboard;

    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/wuyouwin/container/FileInfo;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    filled-new-array {v1}, [Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/wuyouwin/BaseFileManagerFragment$Clipboard;-><init>([Ljava/io/File;Z)V

    iput-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->clipboard:Lcom/wuyouwin/BaseFileManagerFragment$Clipboard;

    .line 108
    iget-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->pasteButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 109
    return-void
.end method

.method private synthetic lambda$createFolder$0(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wuyouwin/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/container/FileInfo;

    invoke-virtual {v1}, Lcom/wuyouwin/container/FileInfo;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100184

    invoke-static {v1, v2}, Lcom/wuyouwin/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 100
    invoke-virtual {p0}, Lcom/wuyouwin/ContainerFileManagerFragment;->refreshContent()V

    .line 102
    :goto_0
    return-void
.end method

.method private setCurrentWorkingPath(Ljava/lang/String;)V
    .locals 9
    .param p1, "dosPath"    # Ljava/lang/String;

    .line 159
    invoke-static {p1}, Lcom/wuyouwin/core/StringUtils;->removeEndSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 160
    const-string v0, "\\\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "names":[Ljava/lang/String;
    const-string v1, ""

    .line 163
    .local v1, "basePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/wuyouwin/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->clear()V

    .line 164
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 165
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/wuyouwin/ContainerFileManagerFragment;->container:Lcom/wuyouwin/container/Container;

    invoke-static {v5, v6}, Lcom/wuyouwin/core/WineUtils;->dosToUnixPath(Ljava/lang/String;Lcom/wuyouwin/container/Container;)Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "[A-Za-z]:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 168
    iget-object v5, p0, Lcom/wuyouwin/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    new-instance v6, Lcom/wuyouwin/container/FileInfo;

    iget-object v7, p0, Lcom/wuyouwin/ContainerFileManagerFragment;->container:Lcom/wuyouwin/container/Container;

    sget-object v8, Lcom/wuyouwin/container/FileInfo$Type;->DRIVE:Lcom/wuyouwin/container/FileInfo$Type;

    invoke-direct {v6, v7, v4, p1, v8}, Lcom/wuyouwin/container/FileInfo;-><init>(Lcom/wuyouwin/container/Container;Ljava/lang/String;Ljava/lang/String;Lcom/wuyouwin/container/FileInfo$Type;)V

    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 170
    :cond_0
    iget-object v5, p0, Lcom/wuyouwin/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    new-instance v6, Lcom/wuyouwin/container/FileInfo;

    iget-object v7, p0, Lcom/wuyouwin/ContainerFileManagerFragment;->container:Lcom/wuyouwin/container/Container;

    sget-object v8, Lcom/wuyouwin/container/FileInfo$Type;->DIRECTORY:Lcom/wuyouwin/container/FileInfo$Type;

    invoke-direct {v6, v7, p1, v8}, Lcom/wuyouwin/container/FileInfo;-><init>(Lcom/wuyouwin/container/Container;Ljava/lang/String;Lcom/wuyouwin/container/FileInfo$Type;)V

    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    :cond_2
    invoke-direct {p0}, Lcom/wuyouwin/ContainerFileManagerFragment;->updateActionBarTitle()V

    .line 176
    return-void
.end method

.method private updateActionBarTitle()V
    .locals 3

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 194
    .local v0, "activity":Landroidx/appcompat/app/AppCompatActivity;
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    .line 196
    .local v1, "actionBar":Landroidx/appcompat/app/ActionBar;
    iget-object v2, p0, Lcom/wuyouwin/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    const v2, 0x7f080091

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 198
    invoke-direct {p0}, Lcom/wuyouwin/ContainerFileManagerFragment;->getCurrentWorkingPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 201
    :cond_0
    const v2, 0x7f080095

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 202
    invoke-virtual {p0}, Lcom/wuyouwin/ContainerFileManagerFragment;->getHomeTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 204
    :goto_0
    return-void
.end method


# virtual methods
.method protected getHomeTitle()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/wuyouwin/ContainerFileManagerFragment;->container:Lcom/wuyouwin/container/Container;

    invoke-virtual {v0}, Lcom/wuyouwin/container/Container;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconForFile(Lcom/wuyouwin/container/FileInfo;)Ljava/lang/Object;
    .locals 6
    .param p1, "file"    # Lcom/wuyouwin/container/FileInfo;

    .line 393
    iget-object v0, p1, Lcom/wuyouwin/container/FileInfo;->type:Lcom/wuyouwin/container/FileInfo$Type;

    sget-object v1, Lcom/wuyouwin/container/FileInfo$Type;->DIRECTORY:Lcom/wuyouwin/container/FileInfo$Type;

    const v2, 0x7f080070

    .line 401
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 393
    if-ne v0, v1, :cond_2

    .line 394
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 395
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p1, Lcom/wuyouwin/container/FileInfo;->path:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xuser/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f100088

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    const v1, 0x7f080071

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 398
    :cond_0
    iget-object v1, p1, Lcom/wuyouwin/container/FileInfo;->path:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f1000b2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    const v1, 0x7f080072

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 401
    :cond_1
    return-object v2

    .line 403
    .end local v0    # "context":Landroid/content/Context;
    :cond_2
    iget-object v0, p1, Lcom/wuyouwin/container/FileInfo;->type:Lcom/wuyouwin/container/FileInfo$Type;

    sget-object v1, Lcom/wuyouwin/container/FileInfo$Type;->DRIVE:Lcom/wuyouwin/container/FileInfo$Type;

    if-ne v0, v1, :cond_3

    .line 404
    const v0, 0x7f08006b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 407
    :cond_3
    iget-object v0, p1, Lcom/wuyouwin/container/FileInfo;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/wuyouwin/core/FileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_4
    goto :goto_0

    :sswitch_0
    const-string v1, "lnk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v1, "ico"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "exe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "dll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "bat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const v3, 0x7f08006f

    packed-switch v1, :pswitch_data_0

    goto :goto_4

    .line 425
    :pswitch_0
    invoke-virtual {p1}, Lcom/wuyouwin/container/FileInfo;->getLinkinfo()Lcom/wuyouwin/win32/MSLink$LinkInfo;

    move-result-object v1

    .line 426
    .local v1, "linkInfo":Lcom/wuyouwin/win32/MSLink$LinkInfo;
    if-eqz v1, :cond_8

    .line 427
    iget-boolean v3, v1, Lcom/wuyouwin/win32/MSLink$LinkInfo;->isDirectory:Z

    if-eqz v3, :cond_5

    .line 428
    return-object v2

    .line 431
    :cond_5
    iget-object v2, v1, Lcom/wuyouwin/win32/MSLink$LinkInfo;->iconLocation:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/wuyouwin/win32/MSLink$LinkInfo;->iconLocation:Ljava/lang/String;

    goto :goto_2

    :cond_6
    iget-object v2, v1, Lcom/wuyouwin/win32/MSLink$LinkInfo;->targetPath:Ljava/lang/String;

    .line 432
    .local v2, "targetPath":Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/wuyouwin/ContainerFileManagerFragment;->container:Lcom/wuyouwin/container/Container;

    invoke-static {v2, v3}, Lcom/wuyouwin/core/WineUtils;->dosToUnixPath(Ljava/lang/String;Lcom/wuyouwin/container/Container;)Ljava/lang/String;

    move-result-object v2

    .line 435
    const-string v3, ".ico"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 436
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/wuyouwin/win32/MSIcon;->decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 438
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_7
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/wuyouwin/win32/MSLink$LinkInfo;->iconIndex:I

    invoke-static {v3, v4}, Lcom/wuyouwin/win32/PEParser;->extractIcon(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 439
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    :goto_3
    if-eqz v3, :cond_8

    return-object v3

    .line 442
    .end local v2    # "targetPath":Ljava/lang/String;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_8
    const v2, 0x7f08006e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 423
    .end local v1    # "linkInfo":Lcom/wuyouwin/win32/MSLink$LinkInfo;
    :pswitch_1
    const v1, 0x7f08006d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 418
    :pswitch_2
    invoke-virtual {p1}, Lcom/wuyouwin/container/FileInfo;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/wuyouwin/win32/MSIcon;->decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 419
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_9

    return-object v1

    .line 446
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_9
    :goto_4
    const v1, 0x7f08006c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 415
    :pswitch_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 411
    :pswitch_4
    invoke-virtual {p1}, Lcom/wuyouwin/container/FileInfo;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/wuyouwin/win32/PEParser;->extractIcon(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 412
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_a

    move-object v2, v1

    goto :goto_5

    :cond_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_5
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x17c15 -> :sswitch_4
        0x184e4 -> :sswitch_3
        0x18a12 -> :sswitch_2
        0x19695 -> :sswitch_1
        0x1a329 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 61
    invoke-super {p0, p1}, Lcom/wuyouwin/BaseFileManagerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    iget-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->manager:Lcom/wuyouwin/container/ContainerManager;

    iget v1, p0, Lcom/wuyouwin/ContainerFileManagerFragment;->containerId:I

    invoke-virtual {v0, v1}, Lcom/wuyouwin/container/ContainerManager;->getContainerById(I)Lcom/wuyouwin/container/Container;

    move-result-object v0

    iput-object v0, p0, Lcom/wuyouwin/ContainerFileManagerFragment;->container:Lcom/wuyouwin/container/Container;

    .line 64
    iget-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "container_file_manager_view_style"

    const-string v2, "GRID"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;->valueOf(Ljava/lang/String;)Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->viewStyle:Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    .line 66
    iget-object v0, p0, Lcom/wuyouwin/ContainerFileManagerFragment;->startPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/wuyouwin/ContainerFileManagerFragment;->startPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/wuyouwin/ContainerFileManagerFragment;->container:Lcom/wuyouwin/container/Container;

    invoke-static {v0, v1}, Lcom/wuyouwin/core/WineUtils;->unixToDOSPath(Ljava/lang/String;Lcom/wuyouwin/container/Container;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wuyouwin/ContainerFileManagerFragment;->setCurrentWorkingPath(Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wuyouwin/ContainerFileManagerFragment;->startPath:Ljava/lang/String;

    .line 70
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuInflater"    # Landroid/view/MenuInflater;

    .line 85
    const/high16 v0, 0x7f0d0000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 86
    const v0, 0x7f0901f9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wuyouwin/BaseFileManagerFragment;->refreshViewStyleMenuItem(Landroid/view/MenuItem;)V

    .line 87
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 139
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 140
    .local v0, "itemId":I
    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 154
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 146
    :sswitch_0
    iget-object v2, p0, Lcom/wuyouwin/BaseFileManagerFragment;->viewStyle:Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    sget-object v3, Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;->GRID:Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;->LIST:Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;->GRID:Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    :goto_0
    invoke-virtual {p0, v2}, Lcom/wuyouwin/BaseFileManagerFragment;->setViewStyle(Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;)V

    .line 147
    iget-object v2, p0, Lcom/wuyouwin/BaseFileManagerFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/wuyouwin/BaseFileManagerFragment;->viewStyle:Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "container_file_manager_view_style"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 148
    invoke-virtual {p0, p1}, Lcom/wuyouwin/BaseFileManagerFragment;->refreshViewStyleMenuItem(Landroid/view/MenuItem;)V

    .line 149
    return v1

    .line 151
    :sswitch_1
    invoke-direct {p0}, Lcom/wuyouwin/ContainerFileManagerFragment;->createFolder()V

    .line 152
    return v1

    .line 142
    :sswitch_2
    iget-object v2, p0, Lcom/wuyouwin/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->clear()V

    .line 143
    invoke-virtual {p0}, Lcom/wuyouwin/ContainerFileManagerFragment;->refreshContent()V

    .line 144
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901e4 -> :sswitch_2
        0x7f0901ec -> :sswitch_1
        0x7f0901f9 -> :sswitch_0
    .end sparse-switch
.end method

.method protected pasteFiles()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/wuyouwin/BaseFileManagerFragment;->clearClipboard()V

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1001b0

    invoke-static {v0, v1}, Lcom/wuyouwin/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 130
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->clipboard:Lcom/wuyouwin/BaseFileManagerFragment$Clipboard;

    iget-object v1, p0, Lcom/wuyouwin/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/container/FileInfo;

    invoke-virtual {v1}, Lcom/wuyouwin/container/FileInfo;->toFile()Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Lcom/wuyouwin/BaseFileManagerFragment$Clipboard;->targetDir:Ljava/io/File;

    .line 134
    invoke-super {p0}, Lcom/wuyouwin/BaseFileManagerFragment;->pasteFiles()V

    .line 135
    return-void
.end method

.method public refreshContent()V
    .locals 4

    .line 74
    invoke-super {p0}, Lcom/wuyouwin/BaseFileManagerFragment;->refreshContent()V

    .line 76
    iget-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/container/FileInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 77
    .local v0, "parent":Lcom/wuyouwin/container/FileInfo;
    :goto_0
    iget-object v1, p0, Lcom/wuyouwin/BaseFileManagerFragment;->manager:Lcom/wuyouwin/container/ContainerManager;

    iget-object v2, p0, Lcom/wuyouwin/ContainerFileManagerFragment;->container:Lcom/wuyouwin/container/Container;

    invoke-virtual {v1, v2, v0}, Lcom/wuyouwin/container/ContainerManager;->loadFiles(Lcom/wuyouwin/container/Container;Lcom/wuyouwin/container/FileInfo;)Ljava/util/ArrayList;

    move-result-object v1

    .line 78
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wuyouwin/container/FileInfo;>;"
    iget-object v2, p0, Lcom/wuyouwin/BaseFileManagerFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;

    invoke-direct {v3, p0, v1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;-><init>(Lcom/wuyouwin/ContainerFileManagerFragment;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 79
    iget-object v2, p0, Lcom/wuyouwin/BaseFileManagerFragment;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 80
    invoke-direct {p0}, Lcom/wuyouwin/ContainerFileManagerFragment;->updateActionBarTitle()V

    .line 81
    return-void
.end method
