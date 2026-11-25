.class public Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog;
.super Lcom/wuyouwin/contentdialog/ContentDialog;
.source "GamepadPlayerConfigDialog.java"


# instance fields
.field private manager:Lcom/wuyouwin/inputcontrols/InputControlsManager;


# direct methods
.method public static synthetic $r8$lambda$DJosY23DKLJxDfrD6oHeRhkdF8g(Landroid/widget/RadioGroup;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog;->lambda$new$1(Landroid/widget/RadioGroup;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZOO9Gj-CYIJTUWTS4kLR9ZNUdIk(Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog;Landroid/widget/Spinner;Ljava/lang/String;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog;->lambda$new$0(Landroid/widget/Spinner;Ljava/lang/String;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;B)V
    .locals 8
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "number"    # B

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c004e

    invoke-direct {p0, v0, v1}, Lcom/wuyouwin/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 25
    const v0, 0x7f0800a7

    invoke-virtual {p0, v0}, Lcom/wuyouwin/contentdialog/ContentDialog;->setIcon(I)V

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 27
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f10014b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wuyouwin/contentdialog/ContentDialog;->setTitle(Ljava/lang/String;)V

    .line 29
    new-instance v1, Lcom/wuyouwin/core/KeyValueSet;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/wuyouwin/core/KeyValueSet;-><init>(Ljava/lang/Object;)V

    .line 31
    .local v1, "config":Lcom/wuyouwin/core/KeyValueSet;
    const v2, 0x7f0900d6

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 32
    .local v2, "sSource":Landroid/widget/Spinner;
    const-string v3, "mode"

    invoke-virtual {v1, v3}, Lcom/wuyouwin/core/KeyValueSet;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    .line 33
    .local v3, "mode":B
    const-string v4, "name"

    invoke-virtual {v1, v4}, Lcom/wuyouwin/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 34
    .local v4, "selectedValue":Ljava/lang/String;
    const v5, 0x7f0900a0

    invoke-virtual {p0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    .line 35
    .local v5, "rgMode":Landroid/widget/RadioGroup;
    if-nez v3, :cond_0

    const v6, 0x7f09009a

    goto :goto_0

    :cond_0
    const v6, 0x7f090098

    :goto_0
    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 36
    new-instance v6, Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v2, v4}, Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog$$ExternalSyntheticLambda0;-><init>(Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog;Landroid/widget/Spinner;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 39
    invoke-direct {p0, v3, v2, v4}, Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog;->loadSourceSpinner(BLandroid/widget/Spinner;Ljava/lang/String;)V

    .line 41
    const v6, 0x7f09003c

    invoke-virtual {p0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 42
    .local v6, "cbEnableVibration":Landroid/widget/CheckBox;
    const-string v7, "vibration"

    invoke-virtual {v1, v7}, Lcom/wuyouwin/core/KeyValueSet;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 44
    new-instance v7, Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog$$ExternalSyntheticLambda1;

    invoke-direct {v7, v5, v2, v6, p1}, Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog$$ExternalSyntheticLambda1;-><init>(Landroid/widget/RadioGroup;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/view/View;)V

    invoke-virtual {p0, v7}, Lcom/wuyouwin/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/widget/Spinner;Ljava/lang/String;Landroid/widget/RadioGroup;I)V
    .locals 1
    .param p1, "sSource"    # Landroid/widget/Spinner;
    .param p2, "selectedValue"    # Ljava/lang/String;
    .param p3, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p4, "checkedId"    # I

    .line 37
    const v0, 0x7f09009a

    if-ne p4, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog;->loadSourceSpinner(BLandroid/widget/Spinner;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private static synthetic lambda$new$1(Landroid/widget/RadioGroup;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 3
    .param p0, "rgMode"    # Landroid/widget/RadioGroup;
    .param p1, "sSource"    # Landroid/widget/Spinner;
    .param p2, "cbEnableVibration"    # Landroid/widget/CheckBox;
    .param p3, "anchor"    # Landroid/view/View;

    .line 45
    new-instance v0, Lcom/wuyouwin/core/KeyValueSet;

    invoke-direct {v0}, Lcom/wuyouwin/core/KeyValueSet;-><init>()V

    .line 46
    .local v0, "newConfig":Lcom/wuyouwin/core/KeyValueSet;
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v2, 0x7f09009a

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "mode"

    invoke-virtual {v0, v2, v1}, Lcom/wuyouwin/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/KeyValueSet;

    .line 47
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lcom/wuyouwin/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/KeyValueSet;

    .line 48
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "1"

    goto :goto_2

    :cond_2
    const-string v1, "0"

    :goto_2
    const-string v2, "vibration"

    invoke-virtual {v0, v2, v1}, Lcom/wuyouwin/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/KeyValueSet;

    .line 49
    invoke-virtual {v0}, Lcom/wuyouwin/core/KeyValueSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method private loadSourceSpinner(BLandroid/widget/Spinner;Ljava/lang/String;)V
    .locals 6
    .param p1, "mode"    # B
    .param p2, "spinner"    # Landroid/widget/Spinner;
    .param p3, "selectedValue"    # Ljava/lang/String;

    .line 54
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v2, 0x7f100028

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    if-nez p1, :cond_1

    .line 59
    invoke-static {}, Lcom/wuyouwin/inputcontrols/ExternalController;->getControllers()Ljava/util/ArrayList;

    move-result-object v2

    .line 60
    .local v2, "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wuyouwin/inputcontrols/ExternalController;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wuyouwin/inputcontrols/ExternalController;

    .local v4, "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    invoke-virtual {v4}, Lcom/wuyouwin/inputcontrols/ExternalController;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    .end local v2    # "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wuyouwin/inputcontrols/ExternalController;>;"
    .end local v4    # "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    :cond_0
    goto :goto_2

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog;->manager:Lcom/wuyouwin/inputcontrols/InputControlsManager;

    if-nez v2, :cond_2

    new-instance v2, Lcom/wuyouwin/inputcontrols/InputControlsManager;

    invoke-direct {v2, v0}, Lcom/wuyouwin/inputcontrols/InputControlsManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog;->manager:Lcom/wuyouwin/inputcontrols/InputControlsManager;

    .line 64
    :cond_2
    iget-object v2, p0, Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog;->manager:Lcom/wuyouwin/inputcontrols/InputControlsManager;

    invoke-virtual {v2}, Lcom/wuyouwin/inputcontrols/InputControlsManager;->getProfiles()Ljava/util/ArrayList;

    move-result-object v2

    .line 65
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wuyouwin/inputcontrols/ControlsProfile;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wuyouwin/inputcontrols/ControlsProfile;

    .line 66
    .local v4, "profile":Lcom/wuyouwin/inputcontrols/ControlsProfile;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->loadElements(Lcom/wuyouwin/widget/InputControlsView;)V

    .line 67
    invoke-virtual {v4}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->isVirtualGamepad()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v4    # "profile":Lcom/wuyouwin/inputcontrols/ControlsProfile;
    :cond_3
    goto :goto_1

    .line 71
    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wuyouwin/inputcontrols/ControlsProfile;>;"
    :cond_4
    :goto_2
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_5
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-direct {v2, v0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 73
    invoke-static {p2, p3}, Lcom/wuyouwin/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 74
    return-void
.end method
