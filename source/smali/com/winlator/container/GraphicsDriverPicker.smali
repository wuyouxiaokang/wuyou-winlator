.class public Lcom/winlator/container/GraphicsDriverPicker;
.super Ljava/lang/Object;
.source "GraphicsDriverPicker.java"


# instance fields
.field private final container:Landroid/widget/LinearLayout;


# direct methods
.method public static synthetic $r8$lambda$9WKfGnSxAZ5FGWlJJSt6LPJX1Cw(Lcom/winlator/widget/TaggedSelectionBox;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/winlator/container/GraphicsDriverPicker;->lambda$new$0(Lcom/winlator/widget/TaggedSelectionBox;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "container"    # Landroid/widget/LinearLayout;
    .param p2, "selectedGraphicsDriver"    # Ljava/lang/String;
    .param p3, "graphicsDriverConfig"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/winlator/container/GraphicsDriverPicker;->container:Landroid/widget/LinearLayout;

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 20
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 21
    invoke-static {p2}, Lcom/winlator/container/GraphicsDrivers;->parseIdentifiers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "identifiers":[Ljava/lang/String;
    invoke-static {p2, p3}, Lcom/winlator/container/GraphicsDrivers;->parseConfigs(Ljava/lang/String;Ljava/lang/String;)[Lcom/winlator/core/KeyValueSet;

    move-result-object v2

    .line 24
    .local v2, "configs":[Lcom/winlator/core/KeyValueSet;
    const-string v3, "Vulkan"

    const-string v4, "OpenGL"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, "apiNames":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 26
    new-instance v5, Lcom/winlator/widget/TaggedSelectionBox;

    invoke-direct {v5, v0}, Lcom/winlator/widget/TaggedSelectionBox;-><init>(Landroid/content/Context;)V

    .line 27
    .local v5, "taggedSelectionBox":Lcom/winlator/widget/TaggedSelectionBox;
    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Lcom/winlator/widget/TaggedSelectionBox;->setLabel(Ljava/lang/String;)V

    .line 28
    aget-object v6, v3, v4

    invoke-static {v6}, Lcom/winlator/container/GraphicsDrivers;->getItems(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/winlator/widget/TaggedSelectionBox;->setItems([Ljava/lang/String;)V

    .line 29
    aget-object v6, v1, v4

    invoke-static {v6}, Lcom/winlator/container/GraphicsDrivers;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/winlator/widget/TaggedSelectionBox;->setSelectedItem(Ljava/lang/String;)V

    .line 30
    aget-object v6, v2, v4

    invoke-virtual {v6}, Lcom/winlator/core/KeyValueSet;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 31
    new-instance v6, Lcom/winlator/container/GraphicsDriverPicker$$ExternalSyntheticLambda0;

    invoke-direct {v6, v5}, Lcom/winlator/container/GraphicsDriverPicker$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/widget/TaggedSelectionBox;)V

    invoke-virtual {v5, v6}, Lcom/winlator/widget/TaggedSelectionBox;->setOnButtonClickListener(Lcom/winlator/widget/TaggedSelectionBox$OnButtonClickListener;)V

    .line 35
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 25
    .end local v5    # "taggedSelectionBox":Lcom/winlator/widget/TaggedSelectionBox;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 37
    .end local v4    # "i":I
    return-void
.end method

.method private static synthetic lambda$new$0(Lcom/winlator/widget/TaggedSelectionBox;)V
    .locals 1
    .param p0, "taggedSelectionBox"    # Lcom/winlator/widget/TaggedSelectionBox;

    .line 32
    invoke-virtual {p0}, Lcom/winlator/widget/TaggedSelectionBox;->getSelectedItem()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "graphicsDriver":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/winlator/container/GraphicsDriverPicker;->showGraphicsDriverConfigDialog(Ljava/lang/String;Landroid/view/View;)V

    .line 34
    return-void
.end method

.method private static showGraphicsDriverConfigDialog(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p0, "graphicsDriver"    # Ljava/lang/String;
    .param p1, "anchor"    # Landroid/view/View;

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "virgl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "vortek"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "turnip"

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

    .line 68
    :pswitch_0
    new-instance v0, Lcom/winlator/contentdialog/VirGLConfigDialog;

    invoke-direct {v0, p1}, Lcom/winlator/contentdialog/VirGLConfigDialog;-><init>(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 65
    :pswitch_1
    new-instance v0, Lcom/winlator/contentdialog/VortekConfigDialog;

    invoke-direct {v0, p1}, Lcom/winlator/contentdialog/VortekConfigDialog;-><init>(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 66
    goto :goto_2

    .line 62
    :pswitch_2
    new-instance v0, Lcom/winlator/contentdialog/TurnipConfigDialog;

    invoke-direct {v0, p1}, Lcom/winlator/contentdialog/TurnipConfigDialog;-><init>(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 63
    nop

    .line 71
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x33679d9c -> :sswitch_2
        -0x3052635f -> :sswitch_1
        0x6b04944 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getGraphicsDriver()Ljava/lang/String;
    .locals 4

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v0, "graphicsDriver":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/winlator/container/GraphicsDriverPicker;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 42
    iget-object v2, p0, Lcom/winlator/container/GraphicsDriverPicker;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/winlator/widget/TaggedSelectionBox;

    .line 43
    .local v2, "taggedSelectionBox":Lcom/winlator/widget/TaggedSelectionBox;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    :cond_0
    invoke-virtual {v2}, Lcom/winlator/widget/TaggedSelectionBox;->getSelectedItem()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/winlator/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .end local v2    # "taggedSelectionBox":Lcom/winlator/widget/TaggedSelectionBox;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 46
    .end local v1    # "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getGraphicsDriverConfig()Ljava/lang/String;
    .locals 4

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v0, "graphicsDriverConfig":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/winlator/container/GraphicsDriverPicker;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 52
    iget-object v2, p0, Lcom/winlator/container/GraphicsDriverPicker;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/winlator/widget/TaggedSelectionBox;

    .line 53
    .local v2, "taggedSelectionBox":Lcom/winlator/widget/TaggedSelectionBox;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x7c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .end local v2    # "taggedSelectionBox":Lcom/winlator/widget/TaggedSelectionBox;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 56
    .end local v1    # "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
