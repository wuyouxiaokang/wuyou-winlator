.class public Lcom/wuyouwin/contentdialog/TurnipConfigDialog;
.super Lcom/wuyouwin/contentdialog/ContentDialog;
.source "TurnipConfigDialog.java"


# static fields
.field private static final DEFAULT_PRESENT_MODE:Lcom/wuyouwin/core/GPUHelper$VkPresentMode;


# direct methods
.method public static synthetic $r8$lambda$_JZpncWEd0jgto1M2AsPu90007k(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/wuyouwin/contentdialog/TurnipConfigDialog;->lambda$new$0(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 18
    sget-object v0, Lcom/wuyouwin/core/GPUHelper$VkPresentMode;->MAILBOX:Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

    sput-object v0, Lcom/wuyouwin/contentdialog/TurnipConfigDialog;->DEFAULT_PRESENT_MODE:Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 14
    .param p1, "anchor"    # Landroid/view/View;

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00ba

    invoke-direct {p0, v0, v1}, Lcom/wuyouwin/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 23
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f08009f

    invoke-virtual {p0, v1}, Lcom/wuyouwin/contentdialog/ContentDialog;->setIcon(I)V

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Turnip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f100056

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wuyouwin/contentdialog/ContentDialog;->setTitle(Ljava/lang/String;)V

    .line 26
    const v1, 0x7f0900da

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 27
    .local v1, "sVersion":Landroid/widget/Spinner;
    const v2, 0x7f0900c9

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/Spinner;

    .line 28
    .local v8, "sMaxDeviceMemory":Landroid/widget/Spinner;
    const v2, 0x7f090035

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/CheckBox;

    .line 29
    .local v9, "cbDirectRendering":Landroid/widget/CheckBox;
    const v2, 0x7f0900ce

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/Spinner;

    .line 31
    .local v10, "sPresentMode":Landroid/widget/Spinner;
    new-instance v2, Lcom/wuyouwin/core/KeyValueSet;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/wuyouwin/core/KeyValueSet;-><init>(Ljava/lang/Object;)V

    move-object v11, v2

    .line 32
    .local v11, "config":Lcom/wuyouwin/core/KeyValueSet;
    const-string v2, "directRendering"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Lcom/wuyouwin/core/KeyValueSet;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v9, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 33
    const-string v2, "maxDeviceMemory"

    const-string v3, "0"

    invoke-virtual {v11, v2, v3}, Lcom/wuyouwin/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/wuyouwin/core/AppUtils;->setSpinnerSelectionFromMemorySize(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 34
    sget-object v2, Lcom/wuyouwin/contentdialog/TurnipConfigDialog;->DEFAULT_PRESENT_MODE:Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "presentMode"

    invoke-virtual {v11, v3, v2}, Lcom/wuyouwin/core/KeyValueSet;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    .line 36
    const-string v2, "version"

    invoke-virtual {v11, v2}, Lcom/wuyouwin/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 37
    .local v12, "version":Ljava/lang/String;
    sget-object v2, Lcom/wuyouwin/core/GeneralComponents$Type;->TURNIP:Lcom/wuyouwin/core/GeneralComponents$Type;

    const v3, 0x7f0900fd

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "26.2.0"

    invoke-static {v2, v3, v1, v12, v4}, Lcom/wuyouwin/core/GeneralComponents;->initViews(Lcom/wuyouwin/core/GeneralComponents$Type;Landroid/view/View;Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v13, Lcom/wuyouwin/contentdialog/TurnipConfigDialog$$ExternalSyntheticLambda0;

    move-object v2, v13

    move-object v3, v1

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/wuyouwin/contentdialog/TurnipConfigDialog$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/view/View;)V

    invoke-virtual {p0, v13}, Lcom/wuyouwin/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method

.method private static isForceGMEM(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 55
    invoke-static {p0}, Lcom/wuyouwin/core/GPUHelper;->getAdrenoModelId(Landroid/content/Context;)S

    move-result v0

    .line 56
    .local v0, "modelId":S
    const/16 v1, 0x2c6

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2d0

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2dc

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private static isForceSYSMEM(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 50
    invoke-static {p0}, Lcom/wuyouwin/core/GPUHelper;->getAdrenoModelId(Landroid/content/Context;)S

    move-result v0

    .line 51
    .local v0, "modelId":S
    const/16 v1, 0x2bc

    if-lt v0, v1, :cond_0

    const/16 v1, 0x2c6

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2d0

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2dc

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static synthetic lambda$new$0(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 3
    .param p0, "sVersion"    # Landroid/widget/Spinner;
    .param p1, "sMaxDeviceMemory"    # Landroid/widget/Spinner;
    .param p2, "cbDirectRendering"    # Landroid/widget/CheckBox;
    .param p3, "sPresentMode"    # Landroid/widget/Spinner;
    .param p4, "anchor"    # Landroid/view/View;

    .line 40
    new-instance v0, Lcom/wuyouwin/core/KeyValueSet;

    invoke-direct {v0}, Lcom/wuyouwin/core/KeyValueSet;-><init>()V

    .line 41
    .local v0, "newConfig":Lcom/wuyouwin/core/KeyValueSet;
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/wuyouwin/core/StringUtils;->parseNumber(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lcom/wuyouwin/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/KeyValueSet;

    .line 42
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/wuyouwin/core/StringUtils;->parseMemorySize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "maxDeviceMemory"

    invoke-virtual {v0, v2, v1}, Lcom/wuyouwin/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/KeyValueSet;

    .line 43
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    const-string v2, "directRendering"

    invoke-virtual {v0, v2, v1}, Lcom/wuyouwin/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/KeyValueSet;

    .line 44
    invoke-virtual {p3}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "presentMode"

    invoke-virtual {v0, v2, v1}, Lcom/wuyouwin/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/KeyValueSet;

    .line 45
    invoke-virtual {v0}, Lcom/wuyouwin/core/KeyValueSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public static setEnvVars(Landroid/content/Context;Lcom/wuyouwin/core/KeyValueSet;Lcom/wuyouwin/core/EnvVars;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/wuyouwin/core/KeyValueSet;
    .param p2, "envVars"    # Lcom/wuyouwin/core/EnvVars;

    .line 60
    const-string v0, "maxDeviceMemory"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/wuyouwin/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "maxDeviceMemory":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TU_OVERRIDE_HEAP_SIZE"

    invoke-virtual {p2, v1, v0}, Lcom/wuyouwin/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/EnvVars;

    .line 62
    :cond_0
    const-string v1, "directRendering"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/wuyouwin/core/KeyValueSet;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MESA_VK_WSI_NATIVE_MEM_IMPORTED"

    const-string v2, "1"

    invoke-virtual {p2, v1, v2}, Lcom/wuyouwin/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/EnvVars;

    .line 64
    :cond_1
    sget-object v1, Lcom/wuyouwin/contentdialog/TurnipConfigDialog;->DEFAULT_PRESENT_MODE:Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "presentMode"

    invoke-virtual {p1, v2, v1}, Lcom/wuyouwin/core/KeyValueSet;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 65
    .local v1, "presentModeIdx":I
    invoke-static {}, Lcom/wuyouwin/core/GPUHelper$VkPresentMode;->values()[Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/wuyouwin/core/GPUHelper$VkPresentMode;->value()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "presentMode":Ljava/lang/String;
    const-string v3, "MESA_VK_WSI_PRESENT_MODE"

    invoke-virtual {p2, v3, v2}, Lcom/wuyouwin/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/EnvVars;

    .line 68
    const-string v3, "TU_DEBUG"

    invoke-virtual {p2, v3}, Lcom/wuyouwin/core/EnvVars;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "tuDebug":Ljava/lang/String;
    invoke-static {p0}, Lcom/wuyouwin/contentdialog/TurnipConfigDialog;->isForceSYSMEM(Landroid/content/Context;)Z

    move-result v5

    const-string v6, ""

    const-string v7, ","

    if-eqz v5, :cond_3

    const-string v5, "sysmem"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 70
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_2
    move-object v9, v6

    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v3, v5}, Lcom/wuyouwin/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/EnvVars;

    goto :goto_2

    .line 72
    :cond_3
    invoke-static {p0}, Lcom/wuyouwin/contentdialog/TurnipConfigDialog;->isForceGMEM(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "gmem"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 73
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_4
    move-object v9, v6

    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v3, v5}, Lcom/wuyouwin/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/EnvVars;

    .line 75
    :cond_5
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "deck_emu"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v3, v5}, Lcom/wuyouwin/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/EnvVars;

    .line 76
    return-void
.end method
