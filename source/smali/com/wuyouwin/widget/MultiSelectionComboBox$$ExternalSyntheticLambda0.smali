.class public final synthetic Lcom/wuyouwin/widget/MultiSelectionComboBox$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/widget/MultiSelectionComboBox;

.field public final synthetic f$1:Landroid/widget/ArrayAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/widget/MultiSelectionComboBox;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox$$ExternalSyntheticLambda0;->f$0:Lcom/wuyouwin/widget/MultiSelectionComboBox;

    iput-object p2, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox$$ExternalSyntheticLambda0;->f$1:Landroid/widget/ArrayAdapter;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox$$ExternalSyntheticLambda0;->f$0:Lcom/wuyouwin/widget/MultiSelectionComboBox;

    iget-object v1, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox$$ExternalSyntheticLambda0;->f$1:Landroid/widget/ArrayAdapter;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/wuyouwin/widget/MultiSelectionComboBox;->$r8$lambda$l_PQ6kXm-mdeQ0P6O2UZS8A3wQY(Lcom/wuyouwin/widget/MultiSelectionComboBox;Landroid/widget/ArrayAdapter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
