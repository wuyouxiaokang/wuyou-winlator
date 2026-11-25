.class Lcom/winlator/ContainersFragment$ContainersAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ContainersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/ContainersFragment$ContainersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private final imageView:Landroid/widget/ImageView;

.field private final menuButton:Landroid/widget/ImageView;

.field private final runButton:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/winlator/ContainersFragment$ContainersAdapter;

.field private final title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/winlator/ContainersFragment$ContainersAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;

    .line 109
    iput-object p1, p0, Lcom/winlator/ContainersFragment$ContainersAdapter$ViewHolder;->this$1:Lcom/winlator/ContainersFragment$ContainersAdapter;

    .line 110
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 111
    const p1, 0x7f090068

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/winlator/ContainersFragment$ContainersAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 112
    const p1, 0x7f0900f4

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/winlator/ContainersFragment$ContainersAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 113
    const p1, 0x7f09002c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/winlator/ContainersFragment$ContainersAdapter$ViewHolder;->runButton:Landroid/widget/ImageView;

    .line 114
    const p1, 0x7f09001f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/winlator/ContainersFragment$ContainersAdapter$ViewHolder;->menuButton:Landroid/widget/ImageView;

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Lcom/winlator/ContainersFragment$ContainersAdapter;Landroid/view/View;Lcom/winlator/ContainersFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/winlator/ContainersFragment$ContainersAdapter;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Lcom/winlator/ContainersFragment$1;

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/winlator/ContainersFragment$ContainersAdapter$ViewHolder;-><init>(Lcom/winlator/ContainersFragment$ContainersAdapter;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/winlator/ContainersFragment$ContainersAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/winlator/ContainersFragment$ContainersAdapter$ViewHolder;

    .line 103
    iget-object v0, p0, Lcom/winlator/ContainersFragment$ContainersAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/winlator/ContainersFragment$ContainersAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/winlator/ContainersFragment$ContainersAdapter$ViewHolder;

    .line 103
    iget-object v0, p0, Lcom/winlator/ContainersFragment$ContainersAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/winlator/ContainersFragment$ContainersAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/winlator/ContainersFragment$ContainersAdapter$ViewHolder;

    .line 103
    iget-object v0, p0, Lcom/winlator/ContainersFragment$ContainersAdapter$ViewHolder;->runButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/winlator/ContainersFragment$ContainersAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/winlator/ContainersFragment$ContainersAdapter$ViewHolder;

    .line 103
    iget-object v0, p0, Lcom/winlator/ContainersFragment$ContainersAdapter$ViewHolder;->menuButton:Landroid/widget/ImageView;

    return-object v0
.end method
