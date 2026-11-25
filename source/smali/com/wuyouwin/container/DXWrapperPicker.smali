.class public Lcom/wuyouwin/container/DXWrapperPicker;
.super Ljava/lang/Object;
.source "DXWrapperPicker.java"


# instance fields
.field private final container:Landroid/widget/LinearLayout;


# direct methods
.method public static synthetic $r8$lambda$Ff3ysgYpoIFPLi5aZ4EfWj4k-fU([Ljava/lang/String;Lcom/wuyouwin/widget/TaggedSelectionBox;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/wuyouwin/container/DXWrapperPicker;->lambda$new$0([Ljava/lang/String;Lcom/wuyouwin/widget/TaggedSelectionBox;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l9lQCvHf7voI_GRIdVQxW-UT62w(Lcom/wuyouwin/widget/TaggedSelectionBox;Lcom/wuyouwin/container/GraphicsDriverPicker;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/wuyouwin/container/DXWrapperPicker;->lambda$new$1(Lcom/wuyouwin/widget/TaggedSelectionBox;Lcom/wuyouwin/container/GraphicsDriverPicker;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout;Lcom/wuyouwin/container/GraphicsDriverPicker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "container"    # Landroid/widget/LinearLayout;
    .param p2, "graphicsDriverPicker"    # Lcom/wuyouwin/container/GraphicsDriverPicker;
    .param p3, "selectedDXWrapper"    # Ljava/lang/String;
    .param p4, "dxwrapperConfig"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/wuyouwin/container/DXWrapperPicker;->container:Landroid/widget/LinearLayout;

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 20
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 21
    invoke-static {p3, p4}, Lcom/wuyouwin/container/DXWrappers;->parseConfigs(Ljava/lang/String;Ljava/lang/String;)[Lcom/wuyouwin/core/KeyValueSet;

    move-result-object v1

    .line 22
    .local v1, "configs":[Lcom/wuyouwin/core/KeyValueSet;
    invoke-static {p3}, Lcom/wuyouwin/container/DXWrappers;->parseIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 24
    const-string v2, "Direct3D"

    const-string v3, "DirectX 12"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "apiNames":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 26
    new-instance v4, Lcom/wuyouwin/widget/TaggedSelectionBox;

    invoke-direct {v4, v0}, Lcom/wuyouwin/widget/TaggedSelectionBox;-><init>(Landroid/content/Context;)V

    .line 27
    .local v4, "taggedSelectionBox":Lcom/wuyouwin/widget/TaggedSelectionBox;
    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Lcom/wuyouwin/widget/TaggedSelectionBox;->setLabel(Ljava/lang/String;)V

    .line 28
    aget-object v5, v1, v3

    invoke-virtual {v5}, Lcom/wuyouwin/core/KeyValueSet;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 30
    if-nez v3, :cond_2

    .line 31
    const-string v5, "wined3d"

    invoke-static {v5}, Lcom/wuyouwin/container/DXWrappers;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "dxvk"

    invoke-static {v7}, Lcom/wuyouwin/container/DXWrappers;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v6, v8}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/wuyouwin/widget/TaggedSelectionBox;->setItems([Ljava/lang/String;)V

    .line 32
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    goto :goto_1

    .line 35
    :cond_1
    invoke-static {v7}, Lcom/wuyouwin/container/DXWrappers;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wuyouwin/widget/TaggedSelectionBox;->setSelectedItem(Ljava/lang/String;)V

    goto :goto_2

    .line 33
    :goto_1
    invoke-static {p3}, Lcom/wuyouwin/container/DXWrappers;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wuyouwin/widget/TaggedSelectionBox;->setSelectedItem(Ljava/lang/String;)V

    .line 37
    :goto_2
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v5

    .line 38
    .local v5, "oldDXWrapper":[Ljava/lang/String;
    new-instance v6, Lcom/wuyouwin/container/DXWrapperPicker$$ExternalSyntheticLambda0;

    invoke-direct {v6, v5, v4}, Lcom/wuyouwin/container/DXWrapperPicker$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;Lcom/wuyouwin/widget/TaggedSelectionBox;)V

    invoke-virtual {v4, v6}, Lcom/wuyouwin/widget/TaggedSelectionBox;->setOnItemSelectedListener(Lcom/wuyouwin/widget/TaggedSelectionBox$OnItemSelectedListener;)V

    .line 43
    .end local v5    # "oldDXWrapper":[Ljava/lang/String;
    goto :goto_3

    .line 45
    :cond_2
    const-string v5, "vkd3d"

    invoke-static {v5}, Lcom/wuyouwin/container/DXWrappers;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wuyouwin/widget/TaggedSelectionBox;->setItems([Ljava/lang/String;)V

    .line 46
    invoke-virtual {v4}, Lcom/wuyouwin/widget/TaggedSelectionBox;->getItems()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/wuyouwin/widget/TaggedSelectionBox;->setSelectedItem(Ljava/lang/String;)V

    .line 49
    :goto_3
    new-instance v5, Lcom/wuyouwin/container/DXWrapperPicker$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4, p2}, Lcom/wuyouwin/container/DXWrapperPicker$$ExternalSyntheticLambda1;-><init>(Lcom/wuyouwin/widget/TaggedSelectionBox;Lcom/wuyouwin/container/GraphicsDriverPicker;)V

    invoke-virtual {v4, v5}, Lcom/wuyouwin/widget/TaggedSelectionBox;->setOnButtonClickListener(Lcom/wuyouwin/widget/TaggedSelectionBox$OnButtonClickListener;)V

    .line 54
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 25
    .end local v4    # "taggedSelectionBox":Lcom/wuyouwin/widget/TaggedSelectionBox;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 56
    .end local v3    # "i":I
    return-void
.end method

.method private static synthetic lambda$new$0([Ljava/lang/String;Lcom/wuyouwin/widget/TaggedSelectionBox;Ljava/lang/String;)V
    .locals 3
    .param p0, "oldDXWrapper"    # [Ljava/lang/String;
    .param p1, "taggedSelectionBox"    # Lcom/wuyouwin/widget/TaggedSelectionBox;
    .param p2, "item"    # Ljava/lang/String;

    .line 39
    invoke-static {p2}, Lcom/wuyouwin/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "dxwrapper":Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    :cond_0
    aput-object v0, p0, v1

    .line 42
    return-void
.end method

.method private static synthetic lambda$new$1(Lcom/wuyouwin/widget/TaggedSelectionBox;Lcom/wuyouwin/container/GraphicsDriverPicker;)V
    .locals 3
    .param p0, "taggedSelectionBox"    # Lcom/wuyouwin/widget/TaggedSelectionBox;
    .param p1, "graphicsDriverPicker"    # Lcom/wuyouwin/container/GraphicsDriverPicker;

    .line 50
    invoke-virtual {p0}, Lcom/wuyouwin/widget/TaggedSelectionBox;->getSelectedItem()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wuyouwin/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "dxwrapper":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/wuyouwin/container/GraphicsDriverPicker;->getGraphicsDriver()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wuyouwin/container/GraphicsDrivers;->parseIdentifiers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 52
    .local v1, "graphicsDriver":Ljava/lang/String;
    invoke-static {v0, v1, p0}, Lcom/wuyouwin/container/DXWrapperPicker;->showDXWrapperConfigDialog(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 53
    return-void
.end method

.method private static showDXWrapperConfigDialog(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p0, "dxwrapper"    # Ljava/lang/String;
    .param p1, "graphicsDriver"    # Ljava/lang/String;
    .param p2, "anchor"    # Landroid/view/View;

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "wined3d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "vkd3d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "dxvk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 82
    :pswitch_0
    new-instance v0, Lcom/wuyouwin/contentdialog/WineD3DConfigDialog;

    invoke-direct {v0, p2}, Lcom/wuyouwin/contentdialog/WineD3DConfigDialog;-><init>(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 79
    :pswitch_1
    new-instance v0, Lcom/wuyouwin/contentdialog/VKD3DConfigDialog;

    invoke-direct {v0, p2}, Lcom/wuyouwin/contentdialog/VKD3DConfigDialog;-><init>(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 80
    goto :goto_2

    .line 76
    :pswitch_2
    new-instance v0, Lcom/wuyouwin/contentdialog/DXVKConfigDialog;

    invoke-direct {v0, p1, p2}, Lcom/wuyouwin/contentdialog/DXVKConfigDialog;-><init>(Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 77
    nop

    .line 85
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2f4649 -> :sswitch_2
        0x6b0f720 -> :sswitch_1
        0x506fe54c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDXWrapper()Ljava/lang/String;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/wuyouwin/container/DXWrapperPicker;->container:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/widget/TaggedSelectionBox;

    .line 60
    .local v0, "taggedSelectionBox":Lcom/wuyouwin/widget/TaggedSelectionBox;
    invoke-virtual {v0}, Lcom/wuyouwin/widget/TaggedSelectionBox;->getSelectedItem()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wuyouwin/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDXWrapperConfig()Ljava/lang/String;
    .locals 4

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v0, "dxwrapperConfig":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/wuyouwin/container/DXWrapperPicker;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/wuyouwin/container/DXWrapperPicker;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/wuyouwin/widget/TaggedSelectionBox;

    .line 67
    .local v2, "taggedSelectionBox":Lcom/wuyouwin/widget/TaggedSelectionBox;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x7c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .end local v2    # "taggedSelectionBox":Lcom/wuyouwin/widget/TaggedSelectionBox;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 70
    .end local v1    # "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
