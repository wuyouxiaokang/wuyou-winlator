.class public Lcom/wuyouwin/widget/MultiSelectionComboBox;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "MultiSelectionComboBox.java"


# instance fields
.field private displayText:Ljava/lang/String;

.field private items:[Ljava/lang/String;

.field private popupWindowWidth:I

.field private final selectedItemSet:Landroid/util/ArraySet;


# direct methods
.method public static synthetic $r8$lambda$l_PQ6kXm-mdeQ0P6O2UZS8A3wQY(Lcom/wuyouwin/widget/MultiSelectionComboBox;Landroid/widget/ArrayAdapter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/wuyouwin/widget/MultiSelectionComboBox;->lambda$performClick$0(Landroid/widget/ArrayAdapter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wuyouwin/widget/MultiSelectionComboBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->selectedItemSet:Landroid/util/ArraySet;

    .line 26
    const/16 v0, 0x104

    iput v0, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->popupWindowWidth:I

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/wuyouwin/widget/MultiSelectionComboBox;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/widget/MultiSelectionComboBox;

    .line 22
    iget-object v0, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->items:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wuyouwin/widget/MultiSelectionComboBox;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/widget/MultiSelectionComboBox;

    .line 22
    iget-object v0, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->selectedItemSet:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wuyouwin/widget/MultiSelectionComboBox;)V
    .locals 0
    .param p0, "x0"    # Lcom/wuyouwin/widget/MultiSelectionComboBox;

    .line 22
    invoke-direct {p0}, Lcom/wuyouwin/widget/MultiSelectionComboBox;->updateDisplayText()V

    return-void
.end method

.method private synthetic lambda$performClick$0(Landroid/widget/ArrayAdapter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ArrayAdapter;
    .param p2, "parent"    # Landroid/widget/AdapterView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # I
    .param p5, "id"    # J

    .line 111
    iget-object v0, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->items:[Ljava/lang/String;

    aget-object v0, v0, p4

    .line 112
    .local v0, "item":Ljava/lang/String;
    iget-object v1, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->selectedItemSet:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->selectedItemSet:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->selectedItemSet:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 116
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 117
    return-void
.end method

.method private updateDisplayText()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->displayText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->displayText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->items:[Ljava/lang/String;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "itemCount":Ljava/lang/String;
    iget-object v1, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->selectedItemSet:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "selectedItemCount":Ljava/lang/String;
    iget-object v2, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->displayText:Ljava/lang/String;

    const-string v3, "%d"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .end local v0    # "itemCount":Ljava/lang/String;
    .end local v1    # "selectedItemCount":Ljava/lang/String;
    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/wuyouwin/widget/MultiSelectionComboBox;->getSelectedItemsAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    return-void
.end method


# virtual methods
.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->displayText:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()[Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->items:[Ljava/lang/String;

    return-object v0
.end method

.method public getPopupWindowWidth()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->popupWindowWidth:I

    return v0
.end method

.method public getSelectedItems()[Ljava/lang/String;
    .locals 7

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "selectedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->items:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .local v5, "item":Ljava/lang/String;
    iget-object v6, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->selectedItemSet:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v5    # "item":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 82
    :cond_1
    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public getSelectedItemsAsString()Ljava/lang/String;
    .locals 7

    .line 86
    const-string v0, ""

    .line 87
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->items:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .local v4, "item":Ljava/lang/String;
    iget-object v5, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->selectedItemSet:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ","

    goto :goto_1

    :cond_0
    const-string v6, ""

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v4    # "item":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    :cond_2
    return-object v0
.end method

.method public performClick()Z
    .locals 5

    .line 93
    iget-object v0, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->items:[Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->items:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 94
    :cond_1
    new-instance v0, Lcom/wuyouwin/widget/MultiSelectionComboBox$1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c00a2

    iget-object v4, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->items:[Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/wuyouwin/widget/MultiSelectionComboBox$1;-><init>(Lcom/wuyouwin/widget/MultiSelectionComboBox;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 105
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v2, Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 106
    .local v2, "popupWindow":Landroidx/appcompat/widget/ListPopupWindow;
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    invoke-virtual {v2, p0}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 108
    iget v3, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->popupWindowWidth:I

    int-to-float v3, v3

    invoke-static {v3}, Lcom/wuyouwin/core/UnitUtils;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ListPopupWindow;->setWidth(I)V

    .line 110
    new-instance v3, Lcom/wuyouwin/widget/MultiSelectionComboBox$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/wuyouwin/widget/MultiSelectionComboBox$$ExternalSyntheticLambda0;-><init>(Lcom/wuyouwin/widget/MultiSelectionComboBox;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    invoke-virtual {v2}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 120
    return v1

    .line 93
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v2    # "popupWindow":Landroidx/appcompat/widget/ListPopupWindow;
    :goto_0
    return v1
.end method

.method public setDisplayText(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayText"    # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->displayText:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setItems([Ljava/lang/String;)V
    .locals 0
    .param p1, "items"    # [Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->items:[Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Lcom/wuyouwin/widget/MultiSelectionComboBox;->updateDisplayText()V

    .line 63
    return-void
.end method

.method public setPopupWindowWidth(I)V
    .locals 0
    .param p1, "popupWindowWidth"    # I

    .line 53
    iput p1, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->popupWindowWidth:I

    .line 54
    return-void
.end method

.method public setSelectedItems([Ljava/lang/String;)V
    .locals 1
    .param p1, "selectedItems"    # [Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/wuyouwin/widget/MultiSelectionComboBox;->selectedItemSet:Landroid/util/ArraySet;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 76
    invoke-direct {p0}, Lcom/wuyouwin/widget/MultiSelectionComboBox;->updateDisplayText()V

    .line 77
    return-void
.end method
