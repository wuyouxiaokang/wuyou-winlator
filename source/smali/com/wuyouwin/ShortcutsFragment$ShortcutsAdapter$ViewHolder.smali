.class Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ShortcutsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter;
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

.field final synthetic this$1:Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter;

.field private final title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;

    .line 131
    iput-object p1, p0, Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter$ViewHolder;->this$1:Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter;

    .line 132
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 133
    const p1, 0x7f090068

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 134
    const p1, 0x7f0900f4

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 135
    const p1, 0x7f0900f3

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 136
    const p1, 0x7f09002c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter$ViewHolder;->runButton:Landroid/widget/ImageView;

    .line 137
    const p1, 0x7f09001f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter$ViewHolder;->menuButton:Landroid/widget/ImageView;

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter;Landroid/view/View;Lcom/wuyouwin/ShortcutsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Lcom/wuyouwin/ShortcutsFragment$1;

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter$ViewHolder;-><init>(Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter$ViewHolder;

    .line 124
    iget-object v0, p0, Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter$ViewHolder;

    .line 124
    iget-object v0, p0, Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter$ViewHolder;

    .line 124
    iget-object v0, p0, Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter$ViewHolder;

    .line 124
    iget-object v0, p0, Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter$ViewHolder;->runButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter$ViewHolder;

    .line 124
    iget-object v0, p0, Lcom/wuyouwin/ShortcutsFragment$ShortcutsAdapter$ViewHolder;->menuButton:Landroid/widget/ImageView;

    return-object v0
.end method
