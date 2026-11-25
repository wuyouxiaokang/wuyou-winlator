.class Lcom/winlator/ContainerDetailFragment$2;
.super Ljava/lang/Object;
.source "ContainerDetailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/ContainerDetailFragment;->loadScreenSizeSpinner(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$llCustomScreenSize:Landroid/widget/LinearLayout;

.field final synthetic val$sScreenSize:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Spinner;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/winlator/ContainerDetailFragment$2;->val$llCustomScreenSize:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/winlator/ContainerDetailFragment$2;->val$sScreenSize:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 388
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/winlator/ContainerDetailFragment$2;->val$llCustomScreenSize:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/winlator/ContainerDetailFragment$2;->val$sScreenSize:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 389
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 392
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
