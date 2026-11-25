.class public Lcom/winlator/widget/TaggedSelectionBox;
.super Landroid/widget/LinearLayout;
.source "TaggedSelectionBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/widget/TaggedSelectionBox$OnButtonClickListener;,
        Lcom/winlator/widget/TaggedSelectionBox$OnItemSelectedListener;
    }
.end annotation


# instance fields
.field private items:[Ljava/lang/String;

.field private onButtonClickListener:Lcom/winlator/widget/TaggedSelectionBox$OnButtonClickListener;

.field private onItemSelectedListener:Lcom/winlator/widget/TaggedSelectionBox$OnItemSelectedListener;


# direct methods
.method public static synthetic $r8$lambda$3CCPtEDkcMuRfyyX2lj8SNoSWfU(Lcom/winlator/widget/TaggedSelectionBox;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/widget/TaggedSelectionBox;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Id6kE8q8N54aDlPtA61vE8xNjXc(Lcom/winlator/widget/TaggedSelectionBox;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/widget/TaggedSelectionBox;->lambda$new$1(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xklp26bLbOJ7t2Dw8SCN8Y9JH4Y(Lcom/winlator/widget/TaggedSelectionBox;Landroidx/appcompat/widget/ListPopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/winlator/widget/TaggedSelectionBox;->lambda$new$0(Landroidx/appcompat/widget/ListPopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/winlator/widget/TaggedSelectionBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/winlator/widget/TaggedSelectionBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/winlator/widget/TaggedSelectionBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 46
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 48
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0c00a6

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "contentView":Landroid/view/View;
    const v2, 0x7f090071

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 51
    .local v2, "llDisplayBox":Landroid/widget/LinearLayout;
    new-instance v3, Lcom/winlator/widget/TaggedSelectionBox$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/winlator/widget/TaggedSelectionBox$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/widget/TaggedSelectionBox;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v3, 0x7f09002e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/winlator/widget/TaggedSelectionBox$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/winlator/widget/TaggedSelectionBox$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/widget/TaggedSelectionBox;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    return-void
.end method

.method private synthetic lambda$new$0(Landroidx/appcompat/widget/ListPopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "popupWindow"    # Landroidx/appcompat/widget/ListPopupWindow;
    .param p2, "parent"    # Landroid/widget/AdapterView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # I
    .param p5, "id"    # J

    .line 59
    const v0, 0x7f0900ef

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/winlator/widget/TaggedSelectionBox;->items:[Ljava/lang/String;

    aget-object v1, v1, p4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/winlator/widget/TaggedSelectionBox;->onItemSelectedListener:Lcom/winlator/widget/TaggedSelectionBox$OnItemSelectedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/widget/TaggedSelectionBox;->onItemSelectedListener:Lcom/winlator/widget/TaggedSelectionBox$OnItemSelectedListener;

    iget-object v1, p0, Lcom/winlator/widget/TaggedSelectionBox;->items:[Ljava/lang/String;

    aget-object v1, v1, p4

    invoke-interface {v0, v1}, Lcom/winlator/widget/TaggedSelectionBox$OnItemSelectedListener;->onItemSelected(Ljava/lang/String;)V

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 62
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/winlator/widget/TaggedSelectionBox;->items:[Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, "popupWindow":Landroidx/appcompat/widget/ListPopupWindow;
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    iget-object v3, p0, Lcom/winlator/widget/TaggedSelectionBox;->items:[Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 56
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setWidth(I)V

    .line 58
    new-instance v1, Lcom/winlator/widget/TaggedSelectionBox$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/winlator/widget/TaggedSelectionBox$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/widget/TaggedSelectionBox;Landroidx/appcompat/widget/ListPopupWindow;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 64
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/winlator/widget/TaggedSelectionBox;->onButtonClickListener:Lcom/winlator/widget/TaggedSelectionBox$OnButtonClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/widget/TaggedSelectionBox;->onButtonClickListener:Lcom/winlator/widget/TaggedSelectionBox$OnButtonClickListener;

    invoke-interface {v0}, Lcom/winlator/widget/TaggedSelectionBox$OnButtonClickListener;->onClick()V

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public getItems()[Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/winlator/widget/TaggedSelectionBox;->items:[Ljava/lang/String;

    return-object v0
.end method

.method public getOnButtonClickListener()Lcom/winlator/widget/TaggedSelectionBox$OnButtonClickListener;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/winlator/widget/TaggedSelectionBox;->onButtonClickListener:Lcom/winlator/widget/TaggedSelectionBox$OnButtonClickListener;

    return-object v0
.end method

.method public getOnItemSelectedListener()Lcom/winlator/widget/TaggedSelectionBox$OnItemSelectedListener;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/winlator/widget/TaggedSelectionBox;->onItemSelectedListener:Lcom/winlator/widget/TaggedSelectionBox$OnItemSelectedListener;

    return-object v0
.end method

.method public getSelectedItem()Ljava/lang/String;
    .locals 1

    .line 73
    const v0, 0x7f0900ef

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs setItems([Ljava/lang/String;)V
    .locals 0
    .param p1, "items"    # [Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/winlator/widget/TaggedSelectionBox;->items:[Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .line 81
    const v0, 0x7f0900ec

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method public setOnButtonClickListener(Lcom/winlator/widget/TaggedSelectionBox$OnButtonClickListener;)V
    .locals 0
    .param p1, "onButtonClickListener"    # Lcom/winlator/widget/TaggedSelectionBox$OnButtonClickListener;

    .line 97
    iput-object p1, p0, Lcom/winlator/widget/TaggedSelectionBox;->onButtonClickListener:Lcom/winlator/widget/TaggedSelectionBox$OnButtonClickListener;

    .line 98
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/winlator/widget/TaggedSelectionBox$OnItemSelectedListener;)V
    .locals 0
    .param p1, "onItemSelectedListener"    # Lcom/winlator/widget/TaggedSelectionBox$OnItemSelectedListener;

    .line 105
    iput-object p1, p0, Lcom/winlator/widget/TaggedSelectionBox;->onItemSelectedListener:Lcom/winlator/widget/TaggedSelectionBox$OnItemSelectedListener;

    .line 106
    return-void
.end method

.method public setSelectedItem(Ljava/lang/String;)V
    .locals 1
    .param p1, "selectedItem"    # Ljava/lang/String;

    .line 77
    const v0, 0x7f0900ef

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method
