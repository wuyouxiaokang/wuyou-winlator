.class public Lcom/winlator/contentdialog/VortekConfigDialog;
.super Lcom/winlator/contentdialog/ContentDialog;
.source "VortekConfigDialog.java"


# static fields
.field public static final DEFAULT_VK_MAX_VERSION:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$VJoFzfjOczMzLgeYEOuFr2vhdVA(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Lcom/winlator/widget/MultiSelectionComboBox;[Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lcom/winlator/contentdialog/VortekConfigDialog;->lambda$new$0(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Lcom/winlator/widget/MultiSelectionComboBox;[Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/winlator/xenvironment/components/VortekRendererComponent;->VK_MAX_VERSION:I

    invoke-static {v1}, Lcom/winlator/core/GPUHelper;->vkVersionMajor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/winlator/xenvironment/components/VortekRendererComponent;->VK_MAX_VERSION:I

    invoke-static {v1}, Lcom/winlator/core/GPUHelper;->vkVersionMinor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/winlator/contentdialog/VortekConfigDialog;->DEFAULT_VK_MAX_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 22
    .param p1, "anchor"    # Landroid/view/View;

    .line 20
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c00bd

    invoke-direct {v0, v1, v2}, Lcom/winlator/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 22
    .local v1, "context":Landroid/content/Context;
    const v2, 0x7f08009f

    invoke-virtual {v0, v2}, Lcom/winlator/contentdialog/ContentDialog;->setIcon(I)V

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vortek "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f100056

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/winlator/contentdialog/ContentDialog;->setTitle(Ljava/lang/String;)V

    .line 25
    const v2, 0x7f0900a3

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 26
    .local v2, "sAdrenotoolsDriver":Landroid/widget/Spinner;
    const v3, 0x7f0900dc

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/Spinner;

    .line 27
    .local v12, "sVkMaxVersion":Landroid/widget/Spinner;
    const v3, 0x7f0900c9

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/Spinner;

    .line 28
    .local v13, "sMaxDeviceMemory":Landroid/widget/Spinner;
    const v3, 0x7f0900c5

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/Spinner;

    .line 29
    .local v14, "sImageCacheSize":Landroid/widget/Spinner;
    const v3, 0x7f0900d2

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/Spinner;

    .line 30
    .local v15, "sResourceMemoryType":Landroid/widget/Spinner;
    const v3, 0x7f090092

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/winlator/widget/MultiSelectionComboBox;

    .line 32
    .local v11, "mscbExposedExtensions":Lcom/winlator/widget/MultiSelectionComboBox;
    invoke-static {}, Lcom/winlator/core/GPUHelper;->vkGetDeviceExtensions()[Ljava/lang/String;

    move-result-object v10

    .line 33
    .local v10, "deviceExtensions":[Ljava/lang/String;
    const/16 v3, 0x168

    invoke-virtual {v11, v3}, Lcom/winlator/widget/MultiSelectionComboBox;->setPopupWindowWidth(I)V

    .line 34
    const v3, 0x7f100129

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/winlator/widget/MultiSelectionComboBox;->setDisplayText(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v11, v10}, Lcom/winlator/widget/MultiSelectionComboBox;->setItems([Ljava/lang/String;)V

    .line 37
    new-instance v3, Lcom/winlator/core/KeyValueSet;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/winlator/core/KeyValueSet;-><init>(Ljava/lang/Object;)V

    move-object v9, v3

    .line 39
    .local v9, "config":Lcom/winlator/core/KeyValueSet;
    const-string v3, "exposedDeviceExtensions"

    const-string v4, "all"

    invoke-virtual {v9, v3, v4}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "exposedDeviceExtensionsVal":Ljava/lang/String;
    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v3, "all"

    :cond_0
    move-object v8, v3

    .line 42
    .end local v3    # "exposedDeviceExtensionsVal":Ljava/lang/String;
    .local v8, "exposedDeviceExtensionsVal":Ljava/lang/String;
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    invoke-virtual {v11, v10}, Lcom/winlator/widget/MultiSelectionComboBox;->setSelectedItems([Ljava/lang/String;)V

    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 46
    const-string v3, ":"

    invoke-virtual {v8, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "selectedItems":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    move-object v4, v3

    goto :goto_0

    :cond_2
    move-object v4, v10

    :goto_0
    invoke-virtual {v11, v4}, Lcom/winlator/widget/MultiSelectionComboBox;->setSelectedItems([Ljava/lang/String;)V

    .line 50
    .end local v3    # "selectedItems":[Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v3, "adrenotoolsDriver"

    invoke-virtual {v9, v3}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 51
    .local v7, "adrenotoolsDriver":Ljava/lang/String;
    sget-object v3, Lcom/winlator/core/GeneralComponents$Type;->ADRENOTOOLS_DRIVER:Lcom/winlator/core/GeneralComponents$Type;

    const v4, 0x7f090001

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "System"

    invoke-static {v3, v4, v2, v7, v5}, Lcom/winlator/core/GeneralComponents;->initViews(Lcom/winlator/core/GeneralComponents$Type;Landroid/view/View;Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v3, "vkMaxVersion"

    sget-object v4, Lcom/winlator/contentdialog/VortekConfigDialog;->DEFAULT_VK_MAX_VERSION:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/winlator/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 54
    const-string v3, "maxDeviceMemory"

    const-string v4, "0"

    invoke-virtual {v9, v3, v4}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/winlator/core/AppUtils;->setSpinnerSelectionFromMemorySize(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 55
    const/16 v3, 0x100

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "imageCacheSize"

    invoke-virtual {v9, v4, v3}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/winlator/core/AppUtils;->setSpinnerSelectionFromNumber(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 56
    const-string v3, "resourceMemoryType"

    invoke-virtual {v9, v3}, Lcom/winlator/core/KeyValueSet;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v15, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 58
    new-instance v6, Lcom/winlator/contentdialog/VortekConfigDialog$$ExternalSyntheticLambda0;

    move-object v3, v6

    move-object v4, v2

    move-object v5, v12

    move-object/from16 v16, v1

    move-object v1, v6

    .end local v1    # "context":Landroid/content/Context;
    .local v16, "context":Landroid/content/Context;
    move-object v6, v13

    move-object/from16 v17, v7

    .end local v7    # "adrenotoolsDriver":Ljava/lang/String;
    .local v17, "adrenotoolsDriver":Ljava/lang/String;
    move-object v7, v14

    move-object/from16 v18, v8

    .end local v8    # "exposedDeviceExtensionsVal":Ljava/lang/String;
    .local v18, "exposedDeviceExtensionsVal":Ljava/lang/String;
    move-object v8, v15

    move-object/from16 v19, v9

    .end local v9    # "config":Lcom/winlator/core/KeyValueSet;
    .local v19, "config":Lcom/winlator/core/KeyValueSet;
    move-object v9, v11

    move-object/from16 v20, v10

    .end local v10    # "deviceExtensions":[Ljava/lang/String;
    .local v20, "deviceExtensions":[Ljava/lang/String;
    move-object/from16 v21, v11

    .end local v11    # "mscbExposedExtensions":Lcom/winlator/widget/MultiSelectionComboBox;
    .local v21, "mscbExposedExtensions":Lcom/winlator/widget/MultiSelectionComboBox;
    move-object/from16 v11, p1

    invoke-direct/range {v3 .. v11}, Lcom/winlator/contentdialog/VortekConfigDialog$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Lcom/winlator/widget/MultiSelectionComboBox;[Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/winlator/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method public static isRequireRestart(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "oldGraphicsDriverConfig"    # Ljava/lang/String;
    .param p1, "newGraphicsDriverConfig"    # Ljava/lang/String;

    .line 78
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 79
    new-instance v0, Lcom/winlator/core/KeyValueSet;

    invoke-direct {v0, p0}, Lcom/winlator/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    const-string v2, "adrenotoolsDriver"

    invoke-virtual {v0, v2}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "oldAdrenotoolsDriver":Ljava/lang/String;
    new-instance v3, Lcom/winlator/core/KeyValueSet;

    invoke-direct {v3, p1}, Lcom/winlator/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "newAdrenotoolsDriver":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 83
    .end local v0    # "oldAdrenotoolsDriver":Ljava/lang/String;
    .end local v2    # "newAdrenotoolsDriver":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private static synthetic lambda$new$0(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Lcom/winlator/widget/MultiSelectionComboBox;[Ljava/lang/String;Landroid/view/View;)V
    .locals 5
    .param p0, "sAdrenotoolsDriver"    # Landroid/widget/Spinner;
    .param p1, "sVkMaxVersion"    # Landroid/widget/Spinner;
    .param p2, "sMaxDeviceMemory"    # Landroid/widget/Spinner;
    .param p3, "sImageCacheSize"    # Landroid/widget/Spinner;
    .param p4, "sResourceMemoryType"    # Landroid/widget/Spinner;
    .param p5, "mscbExposedExtensions"    # Lcom/winlator/widget/MultiSelectionComboBox;
    .param p6, "deviceExtensions"    # [Ljava/lang/String;
    .param p7, "anchor"    # Landroid/view/View;

    .line 59
    new-instance v0, Lcom/winlator/core/KeyValueSet;

    invoke-direct {v0}, Lcom/winlator/core/KeyValueSet;-><init>()V

    .line 60
    .local v0, "newConfig":Lcom/winlator/core/KeyValueSet;
    const-string v1, "adrenotoolsDriver"

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 61
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/winlator/core/StringUtils;->parseNumber(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vkMaxVersion"

    invoke-virtual {v0, v2, v1}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 62
    invoke-virtual {p2}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/winlator/core/StringUtils;->parseMemorySize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "maxDeviceMemory"

    invoke-virtual {v0, v2, v1}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 63
    invoke-virtual {p3}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/winlator/core/StringUtils;->parseNumber(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "imageCacheSize"

    invoke-virtual {v0, v2, v1}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 64
    invoke-virtual {p4}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "resourceMemoryType"

    invoke-virtual {v0, v2, v1}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 66
    invoke-virtual {p5}, Lcom/winlator/widget/MultiSelectionComboBox;->getSelectedItems()[Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "selectedItems":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_1

    .line 68
    array-length v2, v1

    array-length v3, p6

    const-string v4, "exposedDeviceExtensions"

    if-ne v2, v3, :cond_0

    .line 69
    const-string v2, "all"

    invoke-virtual {v0, v4, v2}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    goto :goto_0

    .line 71
    :cond_0
    const-string v2, ":"

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 73
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/winlator/core/KeyValueSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p7, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    return-void
.end method
