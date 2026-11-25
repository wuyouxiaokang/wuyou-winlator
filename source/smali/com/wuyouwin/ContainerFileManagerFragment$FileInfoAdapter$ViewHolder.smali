.class Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ContainerFileManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private final imageView:Landroid/widget/ImageView;

.field private final menuButton:Landroid/widget/ImageView;

.field private final runButton:Landroid/widget/ImageView;

.field private final subtitle:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;

.field private final title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;

    .line 253
    iput-object p1, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->this$1:Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;

    .line 254
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 255
    const p1, 0x7f090068

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 256
    const p1, 0x7f0900f4

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 257
    const p1, 0x7f0900f3

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 258
    const p1, 0x7f09002c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->runButton:Landroid/widget/ImageView;

    .line 259
    const p1, 0x7f09001f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->menuButton:Landroid/widget/ImageView;

    .line 260
    return-void
.end method

.method synthetic constructor <init>(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;Landroid/view/View;Lcom/wuyouwin/ContainerFileManagerFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Lcom/wuyouwin/ContainerFileManagerFragment$1;

    .line 246
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;-><init>(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;

    .line 246
    iget-object v0, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;

    .line 246
    iget-object v0, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;

    .line 246
    iget-object v0, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->runButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;

    .line 246
    iget-object v0, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;

    .line 246
    iget-object v0, p0, Lcom/wuyouwin/ContainerFileManagerFragment$FileInfoAdapter$ViewHolder;->menuButton:Landroid/widget/ImageView;

    return-object v0
.end method
