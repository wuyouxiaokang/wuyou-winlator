.class Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ExternalControllerBindingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private final binding:Landroid/widget/Spinner;

.field private final bindingType:Landroid/widget/Spinner;

.field private final removeButton:Landroid/widget/ImageButton;

.field final synthetic this$1:Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

.field private final title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;

    .line 172
    iput-object p1, p0, Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->this$1:Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    .line 173
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 174
    const p1, 0x7f0900f4

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 175
    const p1, 0x7f0900b1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->bindingType:Landroid/widget/Spinner;

    .line 176
    const p1, 0x7f0900b0

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->binding:Landroid/widget/Spinner;

    .line 177
    const p1, 0x7f090025

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->removeButton:Landroid/widget/ImageButton;

    .line 178
    return-void
.end method

.method synthetic constructor <init>(Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Landroid/view/View;Lcom/wuyouwin/ExternalControllerBindingsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Lcom/wuyouwin/ExternalControllerBindingsActivity$1;

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;-><init>(Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    .line 166
    iget-object v0, p0, Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    .line 166
    iget-object v0, p0, Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->removeButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    .line 166
    iget-object v0, p0, Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->bindingType:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$700(Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    .line 166
    iget-object v0, p0, Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->binding:Landroid/widget/Spinner;

    return-object v0
.end method
