.class Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ContainerFileManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/ContainerFileManagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileInfoAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final data:Ljava/util/List;

.field final synthetic this$0:Lcom/wuyouwin/ContainerFileManagerFragment;


# direct methods
.method public static synthetic $r8$lambda$1FtwkdXAZB4zYRdZDt0h4oH64Eg(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;Lcom/wuyouwin/container/FileInfo;Landroid/content/Context;Landroid/view/MenuItem;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->lambda$showListItemMenu$5(Lcom/wuyouwin/container/FileInfo;Landroid/content/Context;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$AYMT3f3Ac8BWzsmi0cwzmpBM6Ug(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;Lcom/wuyouwin/container/FileInfo;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->lambda$showListItemMenu$4(Lcom/wuyouwin/container/FileInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ap6aVi2vmYHxhT3dff55m9l2-HI(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;Lcom/wuyouwin/container/FileInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->lambda$showListItemMenu$3(Lcom/wuyouwin/container/FileInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BbGThBqCd2HX4re-B6ZAUO9Hdns(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;Lcom/wuyouwin/container/FileInfo;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->lambda$onBindViewHolder$2(Lcom/wuyouwin/container/FileInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eH5YYdY3wMvu63XZFmqiaLa_uak(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;Lcom/wuyouwin/container/FileInfo;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->lambda$onBindViewHolder$0(Lcom/wuyouwin/container/FileInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iBfpRWkmWa3zL_z-5wuHi9dWInM(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;Lcom/wuyouwin/container/FileInfo;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->lambda$onBindViewHolder$1(Lcom/wuyouwin/container/FileInfo;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/wuyouwin/ContainerFileManagerFragment;Ljava/util/List;)V
    .locals 0

    .line 263
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/wuyouwin/container/FileInfo;>;"
    iput-object p1, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->this$0:Lcom/wuyouwin/ContainerFileManagerFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 264
    iput-object p2, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->data:Ljava/util/List;

    .line 265
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/wuyouwin/container/FileInfo;Landroid/view/View;)V
    .locals 0
    .param p1, "item"    # Lcom/wuyouwin/container/FileInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 314
    invoke-direct {p0, p1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->openFile(Lcom/wuyouwin/container/FileInfo;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/wuyouwin/container/FileInfo;Landroid/view/View;)V
    .locals 0
    .param p1, "item"    # Lcom/wuyouwin/container/FileInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 315
    invoke-direct {p0, p1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->openFile(Lcom/wuyouwin/container/FileInfo;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Lcom/wuyouwin/container/FileInfo;Landroid/view/View;)V
    .locals 0
    .param p1, "item"    # Lcom/wuyouwin/container/FileInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 316
    invoke-direct {p0, p2, p1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->showListItemMenu(Landroid/view/View;Lcom/wuyouwin/container/FileInfo;)V

    return-void
.end method

.method private synthetic lambda$showListItemMenu$3(Lcom/wuyouwin/container/FileInfo;)V
    .locals 2
    .param p1, "file"    # Lcom/wuyouwin/container/FileInfo;

    .line 353
    iget-object v0, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->this$0:Lcom/wuyouwin/ContainerFileManagerFragment;

    invoke-virtual {p1}, Lcom/wuyouwin/container/FileInfo;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wuyouwin/BaseFileManagerFragment;->removeFile(Ljava/io/File;)V

    return-void
.end method

.method private synthetic lambda$showListItemMenu$4(Lcom/wuyouwin/container/FileInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Lcom/wuyouwin/container/FileInfo;
    .param p2, "newName"    # Ljava/lang/String;

    .line 358
    invoke-virtual {p1, p2}, Lcom/wuyouwin/container/FileInfo;->renameTo(Ljava/lang/String;)Z

    .line 359
    iget-object v0, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->this$0:Lcom/wuyouwin/ContainerFileManagerFragment;

    invoke-virtual {v0}, Lcom/wuyouwin/ContainerFileManagerFragment;->refreshContent()V

    .line 360
    return-void
.end method

.method private synthetic lambda$showListItemMenu$5(Lcom/wuyouwin/container/FileInfo;Landroid/content/Context;Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "file"    # Lcom/wuyouwin/container/FileInfo;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "menuItem"    # Landroid/view/MenuItem;

    .line 345
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 346
    .local v0, "itemId":I
    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 356
    :sswitch_0
    iget-object v2, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->this$0:Lcom/wuyouwin/ContainerFileManagerFragment;

    invoke-virtual {v2}, Lcom/wuyouwin/BaseFileManagerFragment;->clearClipboard()V

    .line 357
    iget-object v2, p1, Lcom/wuyouwin/container/FileInfo;->name:Ljava/lang/String;

    new-instance v3, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;Lcom/wuyouwin/container/FileInfo;)V

    const v4, 0x7f100160

    invoke-static {p2, v4, v2, v3}, Lcom/wuyouwin/contentdialog/ContentDialog;->prompt(Landroid/content/Context;ILjava/lang/String;Lcom/wuyouwin/core/Callback;)V

    .line 361
    goto :goto_1

    .line 352
    :sswitch_1
    iget-object v2, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->this$0:Lcom/wuyouwin/ContainerFileManagerFragment;

    invoke-virtual {v2}, Lcom/wuyouwin/BaseFileManagerFragment;->clearClipboard()V

    .line 353
    new-instance v2, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;Lcom/wuyouwin/container/FileInfo;)V

    const v3, 0x7f100083

    invoke-static {p2, v3, v2}, Lcom/wuyouwin/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 354
    goto :goto_1

    .line 366
    :sswitch_2
    new-instance v2, Lcom/wuyouwin/contentdialog/FileInfoDialog;

    iget-object v3, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->this$0:Lcom/wuyouwin/ContainerFileManagerFragment;

    invoke-static {v3}, Lcom/wuyouwin/ContainerFileManagerFragment;->access$700(Lcom/wuyouwin/ContainerFileManagerFragment;)Lcom/wuyouwin/container/Container;

    move-result-object v3

    invoke-direct {v2, p2, p1, v3}, Lcom/wuyouwin/contentdialog/FileInfoDialog;-><init>(Landroid/content/Context;Lcom/wuyouwin/container/FileInfo;Lcom/wuyouwin/container/Container;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 349
    :sswitch_3
    iget-object v2, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->this$0:Lcom/wuyouwin/ContainerFileManagerFragment;

    const v3, 0x7f0901dc

    if-ne v0, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, p1, v3}, Lcom/wuyouwin/ContainerFileManagerFragment;->access$800(Lcom/wuyouwin/ContainerFileManagerFragment;Lcom/wuyouwin/container/FileInfo;Z)V

    .line 350
    goto :goto_1

    .line 363
    :sswitch_4
    iget-object v2, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->this$0:Lcom/wuyouwin/ContainerFileManagerFragment;

    invoke-static {v2, p1}, Lcom/wuyouwin/ContainerFileManagerFragment;->access$900(Lcom/wuyouwin/ContainerFileManagerFragment;Lcom/wuyouwin/container/FileInfo;)V

    .line 364
    nop

    .line 369
    :goto_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901d8 -> :sswitch_4
        0x7f0901db -> :sswitch_3
        0x7f0901dc -> :sswitch_3
        0x7f0901e5 -> :sswitch_2
        0x7f0901f1 -> :sswitch_1
        0x7f0901f2 -> :sswitch_0
    .end sparse-switch
.end method

.method private openFile(Lcom/wuyouwin/container/FileInfo;)V
    .locals 6
    .param p1, "file"    # Lcom/wuyouwin/container/FileInfo;

    .line 375
    iget-object v0, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->this$0:Lcom/wuyouwin/ContainerFileManagerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 376
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Lcom/wuyouwin/container/FileInfo;->getLinkinfo()Lcom/wuyouwin/win32/MSLink$LinkInfo;

    move-result-object v1

    .line 377
    .local v1, "linkInfo":Lcom/wuyouwin/win32/MSLink$LinkInfo;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/wuyouwin/win32/MSLink$LinkInfo;->isDirectory:Z

    if-nez v4, :cond_1

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_0
    iget-object v4, p1, Lcom/wuyouwin/container/FileInfo;->type:Lcom/wuyouwin/container/FileInfo$Type;

    sget-object v5, Lcom/wuyouwin/container/FileInfo$Type;->FILE:Lcom/wuyouwin/container/FileInfo$Type;

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 379
    .local v2, "isFile":Z
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 380
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/wuyouwin/XServerDisplayActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 381
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->this$0:Lcom/wuyouwin/ContainerFileManagerFragment;

    invoke-static {v4}, Lcom/wuyouwin/ContainerFileManagerFragment;->access$700(Lcom/wuyouwin/ContainerFileManagerFragment;)Lcom/wuyouwin/container/Container;

    move-result-object v4

    iget v4, v4, Lcom/wuyouwin/container/Container;->id:I

    const-string v5, "container_id"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    const-string v4, "exec_path"

    iget-object v5, p1, Lcom/wuyouwin/container/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 384
    .end local v3    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 386
    :cond_2
    iget-object v3, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->this$0:Lcom/wuyouwin/ContainerFileManagerFragment;

    iget-object v3, v3, Lcom/wuyouwin/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v3, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object v3, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->this$0:Lcom/wuyouwin/ContainerFileManagerFragment;

    invoke-virtual {v3}, Lcom/wuyouwin/ContainerFileManagerFragment;->refreshContent()V

    .line 389
    :goto_2
    return-void
.end method

.method private showListItemMenu(Landroid/view/View;Lcom/wuyouwin/container/FileInfo;)V
    .locals 7
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "file"    # Lcom/wuyouwin/container/FileInfo;

    .line 325
    iget-object v0, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->this$0:Lcom/wuyouwin/ContainerFileManagerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 326
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-direct {v1, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 327
    .local v1, "listItemMenu":Landroid/widget/PopupMenu;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/wuyouwin/ContainerDetailFragment$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/PopupMenu;Z)V

    .line 329
    :cond_0
    const v2, 0x7f0d0005

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 331
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 332
    .local v2, "menu":Landroid/view/Menu;
    const v3, 0x7f0901f4

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 334
    iget-object v3, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->this$0:Lcom/wuyouwin/ContainerFileManagerFragment;

    iget-object v3, v3, Lcom/wuyouwin/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    const v5, 0x7f0901d8

    if-eqz v3, :cond_1

    .line 335
    const v3, 0x7f0901dc

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 336
    const v3, 0x7f0901f1

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 337
    const v3, 0x7f0901f2

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 338
    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 340
    :cond_1
    iget-object v3, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->this$0:Lcom/wuyouwin/ContainerFileManagerFragment;

    iget-object v3, v3, Lcom/wuyouwin/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wuyouwin/container/FileInfo;

    iget-object v3, v3, Lcom/wuyouwin/container/FileInfo;->name:Ljava/lang/String;

    const-string v6, "Favorites"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 341
    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 344
    :cond_2
    :goto_0
    new-instance v3, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p2, v0}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;Lcom/wuyouwin/container/FileInfo;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 371
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 372
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 243
    check-cast p1, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->onBindViewHolder(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;I)V
    .locals 8
    .param p1, "holder"    # Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 276
    iget-object v0, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->this$0:Lcom/wuyouwin/ContainerFileManagerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 277
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/container/FileInfo;

    .line 279
    .local v1, "item":Lcom/wuyouwin/container/FileInfo;
    iget-object v2, v1, Lcom/wuyouwin/container/FileInfo;->type:Lcom/wuyouwin/container/FileInfo$Type;

    .line 280
    .local v2, "type":Lcom/wuyouwin/container/FileInfo$Type;
    iget-object v3, v1, Lcom/wuyouwin/container/FileInfo;->type:Lcom/wuyouwin/container/FileInfo$Type;

    sget-object v4, Lcom/wuyouwin/container/FileInfo$Type;->DRIVE:Lcom/wuyouwin/container/FileInfo$Type;

    if-ne v3, v4, :cond_0

    .line 281
    iget-object v3, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->this$0:Lcom/wuyouwin/ContainerFileManagerFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10008d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "driveText":Ljava/lang/String;
    invoke-static {p1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->access$100(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/wuyouwin/container/FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    .end local v3    # "driveText":Ljava/lang/String;
    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {v1}, Lcom/wuyouwin/container/FileInfo;->getLinkinfo()Lcom/wuyouwin/win32/MSLink$LinkInfo;

    move-result-object v3

    .line 286
    .local v3, "linkInfo":Lcom/wuyouwin/win32/MSLink$LinkInfo;
    if-eqz v3, :cond_1

    iget-boolean v4, v3, Lcom/wuyouwin/win32/MSLink$LinkInfo;->isDirectory:Z

    if-eqz v4, :cond_1

    sget-object v2, Lcom/wuyouwin/container/FileInfo$Type;->DIRECTORY:Lcom/wuyouwin/container/FileInfo$Type;

    .line 287
    :cond_1
    invoke-static {p1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->access$100(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/wuyouwin/container/FileInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    .end local v3    # "linkInfo":Lcom/wuyouwin/win32/MSLink$LinkInfo;
    :goto_0
    invoke-static {p1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->access$200(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 291
    invoke-static {p1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->access$300(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f0800b5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 293
    sget-object v3, Lcom/wuyouwin/container/FileInfo$Type;->DIRECTORY:Lcom/wuyouwin/container/FileInfo$Type;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->this$0:Lcom/wuyouwin/ContainerFileManagerFragment;

    iget-object v3, v3, Lcom/wuyouwin/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 294
    invoke-static {p1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->access$200(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/wuyouwin/container/FileInfo;->getItemCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f1000db

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    invoke-static {p1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->access$200(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 297
    :cond_2
    sget-object v3, Lcom/wuyouwin/container/FileInfo$Type;->FILE:Lcom/wuyouwin/container/FileInfo$Type;

    if-ne v2, v3, :cond_3

    .line 298
    invoke-static {p1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->access$300(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    const v5, 0x7f0800cd

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 299
    invoke-static {p1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->access$200(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/wuyouwin/container/FileInfo;->getSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/wuyouwin/core/StringUtils;->formatBytes(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    invoke-static {p1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->access$200(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 303
    :cond_3
    :goto_1
    sget-object v3, Lcom/wuyouwin/container/FileInfo$Type;->FILE:Lcom/wuyouwin/container/FileInfo$Type;

    if-ne v2, v3, :cond_5

    .line 304
    invoke-static {p1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->access$400(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f08006c

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 305
    invoke-static {p1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->access$400(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wuyouwin/ContainerFileManagerFragment$LoadIconTask;

    .line 306
    .local v3, "loadIconTask":Lcom/wuyouwin/ContainerFileManagerFragment$LoadIconTask;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/wuyouwin/ContainerFileManagerFragment$LoadIconTask;->cancel()V

    .line 308
    :cond_4
    new-instance v4, Lcom/wuyouwin/ContainerFileManagerFragment$LoadIconTask;

    iget-object v5, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->this$0:Lcom/wuyouwin/ContainerFileManagerFragment;

    invoke-static {p1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->access$400(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/wuyouwin/ContainerFileManagerFragment$LoadIconTask;-><init>(Lcom/wuyouwin/ContainerFileManagerFragment;Landroid/widget/ImageView;Lcom/wuyouwin/ContainerFileManagerFragment$1;)V

    move-object v3, v4

    .line 309
    invoke-virtual {v3, v1}, Lcom/wuyouwin/ContainerFileManagerFragment$LoadIconTask;->loadAsync(Lcom/wuyouwin/container/FileInfo;)V

    .line 310
    invoke-static {p1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->access$400(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 311
    .end local v3    # "loadIconTask":Lcom/wuyouwin/ContainerFileManagerFragment$LoadIconTask;
    goto :goto_2

    .line 312
    :cond_5
    invoke-static {p1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->access$400(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->this$0:Lcom/wuyouwin/ContainerFileManagerFragment;

    invoke-virtual {v4, v1}, Lcom/wuyouwin/ContainerFileManagerFragment;->getIconForFile(Lcom/wuyouwin/container/FileInfo;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 314
    :goto_2
    invoke-static {p1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->access$400(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    new-instance v4, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;Lcom/wuyouwin/container/FileInfo;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    invoke-static {p1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->access$300(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    new-instance v4, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;Lcom/wuyouwin/container/FileInfo;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    invoke-static {p1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->access$600(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    new-instance v4, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v1}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;Lcom/wuyouwin/container/FileInfo;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 243
    invoke-virtual {p0, p1, p2}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 270
    iget-object v0, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;->this$0:Lcom/wuyouwin/ContainerFileManagerFragment;

    iget-object v0, v0, Lcom/wuyouwin/BaseFileManagerFragment;->viewStyle:Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    sget-object v1, Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;->LIST:Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    if-ne v0, v1, :cond_0

    const v0, 0x7f0c004c

    goto :goto_0

    :cond_0
    const v0, 0x7f0c004a

    .line 271
    .local v0, "resource":I
    :goto_0
    new-instance v1, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;-><init>(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;Landroid/view/View;Lcom/wuyouwin/ContainerFileManagerFragment$1;)V

    return-object v1
.end method
