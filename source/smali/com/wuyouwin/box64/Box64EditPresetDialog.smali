.class public Lcom/wuyouwin/box64/Box64EditPresetDialog;
.super Lcom/wuyouwin/contentdialog/ContentDialog;
.source "Box64EditPresetDialog.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private onConfirmCallback:Ljava/lang/Runnable;

.field private final preset:Lcom/wuyouwin/box64/Box64Preset;

.field private final readonly:Z


# direct methods
.method public static synthetic $r8$lambda$3VwgVTL0yLFCe-bQe7WWUy5gboU(Lcom/wuyouwin/box64/Box64EditPresetDialog;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/box64/Box64EditPresetDialog;->lambda$loadEnvVarsList$1(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DdIa-5OMEN8hmVKn4aK0ogtUIHI(Lcom/wuyouwin/box64/Box64EditPresetDialog;Landroid/widget/EditText;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/box64/Box64EditPresetDialog;->lambda$new$0(Landroid/widget/EditText;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "presetId"    # Ljava/lang/String;

    .line 36
    const v0, 0x7f0c0023

    invoke-direct {p0, p1, v0}, Lcom/wuyouwin/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 37
    iput-object p1, p0, Lcom/wuyouwin/box64/Box64EditPresetDialog;->context:Landroid/content/Context;

    .line 38
    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Lcom/wuyouwin/box64/Box64PresetManager;->getPreset(Landroid/content/Context;Ljava/lang/String;)Lcom/wuyouwin/box64/Box64Preset;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/wuyouwin/box64/Box64EditPresetDialog;->preset:Lcom/wuyouwin/box64/Box64Preset;

    .line 39
    iget-object v0, p0, Lcom/wuyouwin/box64/Box64EditPresetDialog;->preset:Lcom/wuyouwin/box64/Box64Preset;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wuyouwin/box64/Box64EditPresetDialog;->preset:Lcom/wuyouwin/box64/Box64Preset;

    invoke-virtual {v0}, Lcom/wuyouwin/box64/Box64Preset;->isCustom()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/wuyouwin/box64/Box64EditPresetDialog;->readonly:Z

    .line 40
    const-string v0, "box64_preset"

    invoke-static {p1, v0}, Lcom/wuyouwin/core/StringUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wuyouwin/contentdialog/ContentDialog;->setTitle(Ljava/lang/String;)V

    .line 41
    const v0, 0x7f0800a2

    invoke-virtual {p0, v0}, Lcom/wuyouwin/contentdialog/ContentDialog;->setIcon(I)V

    .line 43
    const v0, 0x7f090055

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 44
    .local v0, "etName":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {p1}, Lcom/wuyouwin/core/AppUtils;->getPreferredDialogWidth(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 45
    iget-boolean v2, p0, Lcom/wuyouwin/box64/Box64EditPresetDialog;->readonly:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 46
    iget-object v1, p0, Lcom/wuyouwin/box64/Box64EditPresetDialog;->preset:Lcom/wuyouwin/box64/Box64Preset;

    if-eqz v1, :cond_2

    .line 47
    iget-object v1, p0, Lcom/wuyouwin/box64/Box64EditPresetDialog;->preset:Lcom/wuyouwin/box64/Box64Preset;

    iget-object v1, v1, Lcom/wuyouwin/box64/Box64Preset;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 49
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f100150

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/wuyouwin/box64/Box64PresetManager;->getNextPresetId(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :goto_2
    invoke-direct {p0}, Lcom/wuyouwin/box64/Box64EditPresetDialog;->loadEnvVarsList()V

    .line 52
    new-instance v1, Lcom/wuyouwin/box64/Box64EditPresetDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1}, Lcom/wuyouwin/box64/Box64EditPresetDialog$$ExternalSyntheticLambda0;-><init>(Lcom/wuyouwin/box64/Box64EditPresetDialog;Landroid/widget/EditText;Landroid/content/Context;)V

    invoke-super {p0, v1}, Lcom/wuyouwin/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method

.method private getEnvVars()Lcom/wuyouwin/core/EnvVars;
    .locals 9

    .line 67
    new-instance v0, Lcom/wuyouwin/core/EnvVars;

    invoke-direct {v0}, Lcom/wuyouwin/core/EnvVars;-><init>()V

    .line 68
    .local v0, "envVars":Lcom/wuyouwin/core/EnvVars;
    const v1, 0x7f09006d

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 69
    .local v1, "parent":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 70
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 71
    .local v3, "child":Landroid/view/View;
    const v4, 0x7f0900f9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "name":Ljava/lang/String;
    const v5, 0x7f0900e2

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 74
    .local v5, "spinner":Landroid/widget/Spinner;
    const v6, 0x7f0900fa

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ToggleButton;

    .line 75
    .local v6, "toggleButton":Landroid/widget/ToggleButton;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    .line 76
    .local v7, "toggleSwitch":Z
    :goto_1
    if-eqz v7, :cond_2

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "1"

    goto :goto_2

    :cond_1
    const-string v8, "0"

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 77
    .local v8, "value":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, v4, v8}, Lcom/wuyouwin/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/EnvVars;

    .line 69
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "spinner":Landroid/widget/Spinner;
    .end local v6    # "toggleButton":Landroid/widget/ToggleButton;
    .end local v7    # "toggleSwitch":Z
    .end local v8    # "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 79
    .end local v2    # "i":I
    return-object v0
.end method

.method private synthetic lambda$loadEnvVarsList$1(Ljava/lang/String;Landroid/view/View;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;

    .line 96
    const-string v0, "BOX64_"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "suffix":Ljava/lang/String;
    iget-object v1, p0, Lcom/wuyouwin/box64/Box64EditPresetDialog;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "box64_env_var_help__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wuyouwin/core/StringUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/wuyouwin/box64/Box64EditPresetDialog;->context:Landroid/content/Context;

    invoke-static {v2, p2, v1}, Lcom/wuyouwin/core/AppUtils;->showHelpBox(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/widget/EditText;Landroid/content/Context;)V
    .locals 3
    .param p1, "etName"    # Landroid/widget/EditText;
    .param p2, "context"    # Landroid/content/Context;

    .line 53
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 55
    :cond_0
    const-string v1, "[,\\|]+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/wuyouwin/box64/Box64EditPresetDialog;->preset:Lcom/wuyouwin/box64/Box64Preset;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/wuyouwin/box64/Box64EditPresetDialog;->preset:Lcom/wuyouwin/box64/Box64Preset;

    iget-object v1, v1, Lcom/wuyouwin/box64/Box64Preset;->id:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/wuyouwin/box64/Box64EditPresetDialog;->getEnvVars()Lcom/wuyouwin/core/EnvVars;

    move-result-object v2

    invoke-static {p2, v1, v0, v2}, Lcom/wuyouwin/box64/Box64PresetManager;->editPreset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/wuyouwin/core/EnvVars;)V

    .line 57
    iget-object v1, p0, Lcom/wuyouwin/box64/Box64EditPresetDialog;->onConfirmCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/wuyouwin/box64/Box64EditPresetDialog;->onConfirmCallback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 58
    :cond_2
    return-void
.end method

.method private loadEnvVarsList()V
    .locals 15

    .line 84
    const v0, 0x7f09006d

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 85
    .local v0, "parent":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/wuyouwin/box64/Box64EditPresetDialog;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 86
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/wuyouwin/box64/Box64EditPresetDialog;->context:Landroid/content/Context;

    const-string v4, "box64/env_vars.json"

    invoke-static {v3, v4}, Lcom/wuyouwin/core/FileUtils;->readString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 87
    .local v2, "data":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/wuyouwin/box64/Box64EditPresetDialog;->preset:Lcom/wuyouwin/box64/Box64Preset;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/wuyouwin/box64/Box64EditPresetDialog;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/wuyouwin/box64/Box64EditPresetDialog;->preset:Lcom/wuyouwin/box64/Box64Preset;

    iget-object v4, v4, Lcom/wuyouwin/box64/Box64Preset;->id:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/wuyouwin/box64/Box64PresetManager;->getEnvVars(Landroid/content/Context;Ljava/lang/String;)Lcom/wuyouwin/core/EnvVars;

    move-result-object v3

    goto :goto_0

    .line 122
    .end local v0    # "parent":Landroid/widget/LinearLayout;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "data":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    goto/16 :goto_4

    .line 87
    .restart local v0    # "parent":Landroid/widget/LinearLayout;
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    .restart local v2    # "data":Lorg/json/JSONArray;
    :cond_0
    const/4 v3, 0x0

    .line 89
    .local v3, "envVars":Lcom/wuyouwin/core/EnvVars;
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 90
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 91
    .local v5, "item":Lorg/json/JSONObject;
    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, "name":Ljava/lang/String;
    const v7, 0x7f0c0024

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 93
    .local v7, "child":Landroid/view/View;
    const v9, 0x7f0900f9

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v9, 0x7f090019

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/wuyouwin/box64/Box64EditPresetDialog$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0, v6}, Lcom/wuyouwin/box64/Box64EditPresetDialog$$ExternalSyntheticLambda1;-><init>(Lcom/wuyouwin/box64/Box64EditPresetDialog;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v9, 0x7f0900e2

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    .line 102
    .local v9, "spinner":Landroid/widget/Spinner;
    const v10, 0x7f0900fa

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ToggleButton;

    .line 103
    .local v10, "toggleButton":Landroid/widget/ToggleButton;
    const-string v11, "values"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-static {v11}, Lcom/wuyouwin/core/ArrayUtils;->toStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v11

    .line 104
    .local v11, "values":[Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3, v6}, Lcom/wuyouwin/core/EnvVars;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v3, v6}, Lcom/wuyouwin/core/EnvVars;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_1
    const-string v12, "defaultValue"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_2
    nop

    .line 106
    .local v12, "value":Ljava/lang/String;
    const-string v13, "toggleSwitch"

    invoke-virtual {v5, v13, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_3

    .line 107
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-boolean v13, p0, Lcom/wuyouwin/box64/Box64EditPresetDialog;->readonly:Z

    if-nez v13, :cond_2

    move v8, v14

    :cond_2
    invoke-virtual {v10, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 109
    const-string v8, "1"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v10, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 110
    iget-boolean v8, p0, Lcom/wuyouwin/box64/Box64EditPresetDialog;->readonly:Z

    if-eqz v8, :cond_5

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {v10, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    .line 113
    :cond_3
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-boolean v13, p0, Lcom/wuyouwin/box64/Box64EditPresetDialog;->readonly:Z

    if-nez v13, :cond_4

    move v8, v14

    :cond_4
    invoke-virtual {v9, v8}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 115
    new-instance v8, Landroid/widget/ArrayAdapter;

    iget-object v13, p0, Lcom/wuyouwin/box64/Box64EditPresetDialog;->context:Landroid/content/Context;

    const v14, 0x1090009

    invoke-direct {v8, v13, v14, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v9, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 116
    invoke-static {v9, v12}, Lcom/wuyouwin/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 119
    :cond_5
    :goto_3
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v5    # "item":Lorg/json/JSONObject;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "child":Landroid/view/View;
    .end local v9    # "spinner":Landroid/widget/Spinner;
    .end local v10    # "toggleButton":Landroid/widget/ToggleButton;
    .end local v11    # "values":[Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_6
    nop

    .line 122
    .end local v0    # "parent":Landroid/widget/LinearLayout;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "data":Lorg/json/JSONArray;
    .end local v3    # "envVars":Lcom/wuyouwin/core/EnvVars;
    .end local v4    # "i":I
    :goto_4
    nop

    .line 123
    return-void
.end method


# virtual methods
.method public setOnConfirmCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onConfirmCallback"    # Ljava/lang/Runnable;

    .line 63
    iput-object p1, p0, Lcom/wuyouwin/box64/Box64EditPresetDialog;->onConfirmCallback:Ljava/lang/Runnable;

    .line 64
    return-void
.end method
