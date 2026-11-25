.class Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ShortcutsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/ShortcutsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShortcutsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final data:Ljava/util/List;

.field final synthetic this$0:Lcom/winlator/ShortcutsFragment;


# direct methods
.method public static synthetic $r8$lambda$N--l2D15WJ5xfatR3u2r-Cu9CyM(Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/container/Shortcut;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;->lambda$showListItemMenu$3(Lcom/winlator/container/Shortcut;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WFqj21PS_mxtflvZ6yeK9xfoqK8(Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/container/Shortcut;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;->lambda$onBindViewHolder$1(Lcom/winlator/container/Shortcut;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oqB6qiAT0O2PwfNse5xbrycg-fA(Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/container/Shortcut;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;->lambda$onBindViewHolder$2(Lcom/winlator/container/Shortcut;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u--O9uEVx0MOCGLSEffPg7FzUXs(Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/container/Shortcut;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;->lambda$onBindViewHolder$0(Lcom/winlator/container/Shortcut;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$umzkim_cEomi3NUTihQ9n54xdko(Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/container/Shortcut;Landroid/content/Context;Landroid/view/MenuItem;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;->lambda$showListItemMenu$4(Lcom/winlator/container/Shortcut;Landroid/content/Context;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/winlator/ShortcutsFragment;Ljava/util/List;)V
    .locals 0

    .line 141
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/container/Shortcut;>;"
    iput-object p1, p0, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/ShortcutsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 142
    iput-object p2, p0, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;->data:Ljava/util/List;

    .line 143
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/winlator/container/Shortcut;Landroid/view/View;)V
    .locals 0
    .param p1, "item"    # Lcom/winlator/container/Shortcut;
    .param p2, "v"    # Landroid/view/View;

    .line 170
    invoke-direct {p0, p1}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;->runFromShortcut(Lcom/winlator/container/Shortcut;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/winlator/container/Shortcut;Landroid/view/View;)V
    .locals 0
    .param p1, "item"    # Lcom/winlator/container/Shortcut;
    .param p2, "v"    # Landroid/view/View;

    .line 171
    invoke-direct {p0, p1}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;->runFromShortcut(Lcom/winlator/container/Shortcut;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Lcom/winlator/container/Shortcut;Landroid/view/View;)V
    .locals 0
    .param p1, "item"    # Lcom/winlator/container/Shortcut;
    .param p2, "v"    # Landroid/view/View;

    .line 172
    invoke-direct {p0, p2, p1}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;->showListItemMenu(Landroid/view/View;Lcom/winlator/container/Shortcut;)V

    return-void
.end method

.method private synthetic lambda$showListItemMenu$3(Lcom/winlator/container/Shortcut;)V
    .locals 1
    .param p1, "shortcut"    # Lcom/winlator/container/Shortcut;

    .line 206
    invoke-virtual {p1}, Lcom/winlator/container/Shortcut;->remove()V

    .line 207
    iget-object v0, p0, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/ShortcutsFragment;

    invoke-virtual {v0}, Lcom/winlator/ShortcutsFragment;->refreshContent()V

    .line 208
    return-void
.end method

.method private synthetic lambda$showListItemMenu$4(Lcom/winlator/container/Shortcut;Landroid/content/Context;Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "shortcut"    # Lcom/winlator/container/Shortcut;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "menuItem"    # Landroid/view/MenuItem;

    .line 193
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 194
    .local v0, "itemId":I
    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 196
    :sswitch_0
    iget-object v2, p0, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/ShortcutsFragment;

    invoke-virtual {v2}, Lcom/winlator/BaseFileManagerFragment;->clearClipboard()V

    .line 197
    new-instance v2, Lcom/winlator/contentdialog/ShortcutSettingsDialog;

    iget-object v3, p0, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/ShortcutsFragment;

    invoke-direct {v2, v3, p1}, Lcom/winlator/contentdialog/ShortcutSettingsDialog;-><init>(Lcom/winlator/ShortcutsFragment;Lcom/winlator/container/Shortcut;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 198
    goto :goto_1

    .line 204
    :sswitch_1
    iget-object v2, p0, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/ShortcutsFragment;

    invoke-virtual {v2}, Lcom/winlator/BaseFileManagerFragment;->clearClipboard()V

    .line 205
    new-instance v2, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/container/Shortcut;)V

    const v3, 0x7f100083

    invoke-static {p2, v3, v2}, Lcom/winlator/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    goto :goto_1

    .line 201
    :sswitch_2
    iget-object v2, p0, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/ShortcutsFragment;

    const v3, 0x7f0901dc

    if-ne v0, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, p1, v3}, Lcom/winlator/ShortcutsFragment;->access$600(Lcom/winlator/ShortcutsFragment;Lcom/winlator/container/Shortcut;Z)V

    .line 202
    nop

    .line 211
    :goto_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901db -> :sswitch_2
        0x7f0901dc -> :sswitch_2
        0x7f0901f1 -> :sswitch_1
        0x7f0901f4 -> :sswitch_0
    .end sparse-switch
.end method

.method private runFromShortcut(Lcom/winlator/container/Shortcut;)V
    .locals 4
    .param p1, "shortcut"    # Lcom/winlator/container/Shortcut;

    .line 217
    iget-object v0, p0, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/ShortcutsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 219
    .local v0, "activity":Landroidx/appcompat/app/AppCompatActivity;
    iget-object v1, p1, Lcom/winlator/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/ShortcutsFragment;

    iget-object v1, v1, Lcom/winlator/BaseFileManagerFragment;->folderStack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v1, p0, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/ShortcutsFragment;

    invoke-virtual {v1}, Lcom/winlator/ShortcutsFragment;->refreshContent()V

    .line 223
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    .line 224
    .local v1, "actionBar":Landroidx/appcompat/app/ActionBar;
    const v2, 0x7f080091

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 225
    iget-object v2, p1, Lcom/winlator/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 226
    .end local v1    # "actionBar":Landroidx/appcompat/app/ActionBar;
    goto :goto_0

    .line 228
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/winlator/XServerDisplayActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p1, Lcom/winlator/container/Shortcut;->container:Lcom/winlator/container/Container;

    iget v2, v2, Lcom/winlator/container/Container;->id:I

    const-string v3, "container_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    iget-object v2, p1, Lcom/winlator/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "shortcut_path"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 233
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method private showListItemMenu(Landroid/view/View;Lcom/winlator/container/Shortcut;)V
    .locals 5
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "shortcut"    # Lcom/winlator/container/Shortcut;

    .line 181
    iget-object v0, p0, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/ShortcutsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 182
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-direct {v1, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 183
    .local v1, "listItemMenu":Landroid/widget/PopupMenu;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/winlator/ContainerDetailFragment$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/PopupMenu;Z)V

    .line 185
    :cond_0
    const v2, 0x7f0d0005

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 187
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 188
    .local v2, "menu":Landroid/view/Menu;
    const v3, 0x7f0901f2

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 189
    const v3, 0x7f0901d8

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 190
    const v3, 0x7f0901e5

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 192
    new-instance v3, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p2, v0}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/container/Shortcut;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 213
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 214
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 121
    check-cast p1, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;->onBindViewHolder(Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 154
    iget-object v0, p0, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/container/Shortcut;

    .line 156
    .local v0, "item":Lcom/winlator/container/Shortcut;
    iget-object v1, v0, Lcom/winlator/container/Shortcut;->icon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 157
    iget-object v1, v0, Lcom/winlator/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f080070

    goto :goto_0

    :cond_0
    const v1, 0x7f08006e

    .line 158
    .local v1, "iconResId":I
    :goto_0
    invoke-static {p1}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;->access$100(Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    .end local v1    # "iconResId":I
    goto :goto_1

    .line 160
    :cond_1
    invoke-static {p1}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;->access$100(Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, v0, Lcom/winlator/container/Shortcut;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 162
    :goto_1
    invoke-static {p1}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;->access$200(Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/winlator/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-static {p1}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;->access$300(Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/winlator/container/Shortcut;->container:Lcom/winlator/container/Container;

    invoke-virtual {v2}, Lcom/winlator/container/Container;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, v0, Lcom/winlator/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    invoke-static {p1}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;->access$400(Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0800b5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 168
    :cond_2
    invoke-static {p1}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;->access$400(Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0800cd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    :goto_2
    invoke-static {p1}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;->access$100(Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/container/Shortcut;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-static {p1}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;->access$400(Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/container/Shortcut;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-static {p1}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;->access$500(Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/container/Shortcut;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 148
    iget-object v0, p0, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/ShortcutsFragment;

    iget-object v0, v0, Lcom/winlator/BaseFileManagerFragment;->viewStyle:Lcom/winlator/BaseFileManagerFragment$ViewStyle;

    sget-object v1, Lcom/winlator/BaseFileManagerFragment$ViewStyle;->LIST:Lcom/winlator/BaseFileManagerFragment$ViewStyle;

    if-ne v0, v1, :cond_0

    const v0, 0x7f0c004c

    goto :goto_0

    :cond_0
    const v0, 0x7f0c004a

    .line 149
    .local v0, "resource":I
    :goto_0
    new-instance v1, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$ViewHolder;-><init>(Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;Landroid/view/View;Lcom/winlator/ShortcutsFragment$1;)V

    return-object v1
.end method
