.class Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;
.super Ljava/lang/Object;
.source "TaskManagerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/winhandler/TaskManagerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Panel"
.end annotation


# instance fields
.field private itemViews:[Landroid/view/View;

.field private popupMenu:Landroid/widget/PopupMenu;

.field private view:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$bDzPulNGWYgLDJI59A543eKaR54(Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;->lambda$setPopupMenuItems$0(Landroid/view/View;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wuyouwin/winhandler/TaskManagerDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/wuyouwin/winhandler/TaskManagerDialog$1;

    .line 56
    invoke-direct {p0}, Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;
    .param p1, "x1"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;->setTextAt(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 56
    invoke-direct {p0, p1}, Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;->setPopupMenuItems(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;II)V
    .locals 0
    .param p0, "x0"    # Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;->setIconAt(II)V

    return-void
.end method

.method static synthetic access$702(Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;
    .param p1, "x1"    # Landroid/view/View;

    .line 56
    iput-object p1, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;->view:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$800(Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;)[Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;

    .line 56
    iget-object v0, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;->itemViews:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$802(Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;[Landroid/view/View;)[Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;
    .param p1, "x1"    # [Landroid/view/View;

    .line 56
    iput-object p1, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;->itemViews:[Landroid/view/View;

    return-object p1
.end method

.method private synthetic lambda$setPopupMenuItems$0(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method private setIconAt(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "icon"    # I

    .line 66
    iget-object v0, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;->itemViews:[Landroid/view/View;

    aget-object v0, v0, p1

    const v1, 0x7f090068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    return-void
.end method

.method private setPopupMenuItems(Ljava/util/ArrayList;)V
    .locals 3

    .line 74
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;->popupMenu:Landroid/widget/PopupMenu;

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;->view:Landroid/view/View;

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, "menuButton":Landroid/view/View;
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;->popupMenu:Landroid/widget/PopupMenu;

    .line 77
    new-instance v1, Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel$$ExternalSyntheticLambda0;-><init>(Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .end local v0    # "menuButton":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 82
    .local v0, "menu":Landroid/view/Menu;
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 83
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "item":Ljava/lang/String;
    invoke-interface {v0, v2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 84
    .end local v2    # "item":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setTextAt(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;->itemViews:[Landroid/view/View;

    aget-object v0, v0, p1

    const v1, 0x7f0900f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$Panel;->view:Landroid/view/View;

    const v1, 0x7f0900f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method
