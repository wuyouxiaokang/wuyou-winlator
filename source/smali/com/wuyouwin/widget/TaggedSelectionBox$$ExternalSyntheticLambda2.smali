.class public final synthetic Lcom/wuyouwin/widget/TaggedSelectionBox$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/widget/TaggedSelectionBox;

.field public final synthetic f$1:Landroidx/appcompat/widget/ListPopupWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/widget/TaggedSelectionBox;Landroidx/appcompat/widget/ListPopupWindow;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/widget/TaggedSelectionBox$$ExternalSyntheticLambda2;->f$0:Lcom/wuyouwin/widget/TaggedSelectionBox;

    iput-object p2, p0, Lcom/wuyouwin/widget/TaggedSelectionBox$$ExternalSyntheticLambda2;->f$1:Landroidx/appcompat/widget/ListPopupWindow;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/widget/TaggedSelectionBox$$ExternalSyntheticLambda2;->f$0:Lcom/wuyouwin/widget/TaggedSelectionBox;

    iget-object v1, p0, Lcom/wuyouwin/widget/TaggedSelectionBox$$ExternalSyntheticLambda2;->f$1:Landroidx/appcompat/widget/ListPopupWindow;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/wuyouwin/widget/TaggedSelectionBox;->$r8$lambda$Xklp26bLbOJ7t2Dw8SCN8Y9JH4Y(Lcom/wuyouwin/widget/TaggedSelectionBox;Landroidx/appcompat/widget/ListPopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
