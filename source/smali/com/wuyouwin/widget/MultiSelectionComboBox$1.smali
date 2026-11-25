.class Lcom/wuyouwin/widget/MultiSelectionComboBox$1;
.super Landroid/widget/ArrayAdapter;
.source "MultiSelectionComboBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuyouwin/widget/MultiSelectionComboBox;->performClick()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuyouwin/widget/MultiSelectionComboBox;


# direct methods
.method constructor <init>(Lcom/wuyouwin/widget/MultiSelectionComboBox;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wuyouwin/widget/MultiSelectionComboBox;
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # [Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox$1;->this$0:Lcom/wuyouwin/widget/MultiSelectionComboBox;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 98
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 99
    .local v0, "checkedTextView":Landroid/widget/CheckedTextView;
    iget-object v1, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox$1;->this$0:Lcom/wuyouwin/widget/MultiSelectionComboBox;

    invoke-static {v1}, Lcom/wuyouwin/widget/MultiSelectionComboBox;->access$100(Lcom/wuyouwin/widget/MultiSelectionComboBox;)Landroid/util/ArraySet;

    move-result-object v1

    iget-object v2, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox$1;->this$0:Lcom/wuyouwin/widget/MultiSelectionComboBox;

    invoke-static {v2}, Lcom/wuyouwin/widget/MultiSelectionComboBox;->access$000(Lcom/wuyouwin/widget/MultiSelectionComboBox;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 100
    iget-object v1, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox$1;->this$0:Lcom/wuyouwin/widget/MultiSelectionComboBox;

    invoke-static {v1}, Lcom/wuyouwin/widget/MultiSelectionComboBox;->access$200(Lcom/wuyouwin/widget/MultiSelectionComboBox;)V

    .line 101
    return-object v0
.end method
