.class public Lcom/winlator/contentdialog/ShortcutSettingsDialog;
.super Lcom/winlator/contentdialog/ContentDialog;
.source "ShortcutSettingsDialog.java"


# instance fields
.field private final fragment:Lcom/winlator/ShortcutsFragment;

.field private inputControlsManager:Lcom/winlator/inputcontrols/InputControlsManager;

.field private final shortcut:Lcom/winlator/container/Shortcut;


# direct methods
.method public static synthetic $r8$lambda$5zRit5YTJVDXzpjhv1UdgZogXGE(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->lambda$createContentView$6(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EqmOfGTBk-NNPM_4sdLzIbuj3WE(Lcom/winlator/contentdialog/ShortcutSettingsDialog;Landroid/widget/EditText;Lcom/winlator/container/GraphicsDriverPicker;Lcom/winlator/container/DXWrapperPicker;Landroid/view/View;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/winlator/widget/EnvVarsView;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p13}, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->lambda$createContentView$7(Landroid/widget/EditText;Lcom/winlator/container/GraphicsDriverPicker;Lcom/winlator/container/DXWrapperPicker;Landroid/view/View;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/winlator/widget/EnvVarsView;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JIT9A2JyXSw29uafRTej4Sf9fMM(Lcom/winlator/contentdialog/ShortcutSettingsDialog;Landroid/content/Context;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->lambda$createContentView$3(Landroid/content/Context;Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M93oDyUPJV7j3MgacnxjNyRtfhQ(Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->lambda$createContentView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NsL7tGT-xfVIQE8Rq4iZhsogt7Q(Landroid/widget/EditText;Landroid/view/MenuItem;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->lambda$createContentView$2(Landroid/widget/EditText;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PzThZ3vxludwoNagqR-J1RGYG74(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->lambda$createContentView$0(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UG73UOy-kBaZ1GvsvroK0Ura37o(Landroid/widget/EditText;Landroid/view/MenuItem;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->lambda$createContentView$4(Landroid/widget/EditText;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XhEPNS41lLYYA_GrBKR2btcFnuU(Landroid/content/Context;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->lambda$createContentView$5(Landroid/content/Context;Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nfWoB3AWViFDXfIMLYOIxEE238I(Landroid/content/Context;Lcom/winlator/widget/EnvVarsView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->lambda$createEnvVarsTab$8(Landroid/content/Context;Lcom/winlator/widget/EnvVarsView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/winlator/ShortcutsFragment;Lcom/winlator/container/Shortcut;)V
    .locals 2
    .param p1, "fragment"    # Lcom/winlator/ShortcutsFragment;
    .param p2, "shortcut"    # Lcom/winlator/container/Shortcut;

    .line 42
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00a1

    invoke-direct {p0, v0, v1}, Lcom/winlator/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 43
    iput-object p1, p0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->fragment:Lcom/winlator/ShortcutsFragment;

    .line 44
    iput-object p2, p0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    .line 45
    iget-object v0, p2, Lcom/winlator/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/winlator/contentdialog/ContentDialog;->setTitle(Ljava/lang/String;)V

    .line 46
    const v0, 0x7f0800cf

    invoke-virtual {p0, v0}, Lcom/winlator/contentdialog/ContentDialog;->setIcon(I)V

    .line 48
    invoke-direct {p0}, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->createContentView()V

    .line 49
    return-void
.end method

.method private createContentView()V
    .locals 33

    .line 52
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->fragment:Lcom/winlator/ShortcutsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 53
    .local v14, "context":Landroid/content/Context;
    new-instance v0, Lcom/winlator/inputcontrols/InputControlsManager;

    invoke-direct {v0, v14}, Lcom/winlator/inputcontrols/InputControlsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v15, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->inputControlsManager:Lcom/winlator/inputcontrols/InputControlsManager;

    .line 54
    const v0, 0x7f09006d

    invoke-virtual {v15, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/LinearLayout;

    .line 55
    .local v16, "llContent":Landroid/widget/LinearLayout;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v14}, Lcom/winlator/core/AppUtils;->getPreferredDialogWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 57
    const v0, 0x7f090055

    invoke-virtual {v15, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/EditText;

    .line 58
    .local v13, "etName":Landroid/widget/EditText;
    iget-object v0, v15, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v0, v0, Lcom/winlator/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v0, 0x7f090053

    invoke-virtual {v15, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/EditText;

    .line 61
    .local v12, "etExecArgs":Landroid/widget/EditText;
    iget-object v0, v15, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    const-string v1, "execArgs"

    invoke-virtual {v0, v1}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/contentdialog/ContentDialog;->getContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, v15, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v2, v15, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v2, v2, Lcom/winlator/container/Shortcut;->container:Lcom/winlator/container/Container;

    invoke-virtual {v2}, Lcom/winlator/container/Container;->getScreenSize()Ljava/lang/String;

    move-result-object v2

    const-string v3, "screenSize"

    invoke-virtual {v1, v3, v2}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/winlator/ContainerDetailFragment;->loadScreenSizeSpinner(Landroid/view/View;Ljava/lang/String;)V

    .line 65
    iget-object v0, v15, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v1, v15, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v1, v1, Lcom/winlator/container/Shortcut;->container:Lcom/winlator/container/Container;

    invoke-virtual {v1}, Lcom/winlator/container/Container;->getGraphicsDriverConfig()Ljava/lang/String;

    move-result-object v1

    const-string v2, "graphicsDriverConfig"

    invoke-virtual {v0, v2, v1}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 66
    .local v11, "oldGraphicsDriverConfig":Ljava/lang/String;
    iget-object v0, v15, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v1, v15, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v1, v1, Lcom/winlator/container/Shortcut;->container:Lcom/winlator/container/Container;

    invoke-virtual {v1}, Lcom/winlator/container/Container;->getGraphicsDriver()Ljava/lang/String;

    move-result-object v1

    const-string v2, "graphicsDriver"

    invoke-virtual {v0, v2, v1}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 67
    .local v10, "selectedGraphicsDriver":Ljava/lang/String;
    new-instance v0, Lcom/winlator/container/GraphicsDriverPicker;

    const v1, 0x7f090077

    invoke-virtual {v15, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1, v10, v11}, Lcom/winlator/container/GraphicsDriverPicker;-><init>(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v0

    .line 69
    .local v9, "graphicsDriverPicker":Lcom/winlator/container/GraphicsDriverPicker;
    iget-object v0, v15, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v1, v15, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v1, v1, Lcom/winlator/container/Shortcut;->container:Lcom/winlator/container/Container;

    invoke-virtual {v1}, Lcom/winlator/container/Container;->getDXWrapperConfig()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dxwrapperConfig"

    invoke-virtual {v0, v2, v1}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, "oldDXWrapperConfig":Ljava/lang/String;
    iget-object v0, v15, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v1, v15, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v1, v1, Lcom/winlator/container/Shortcut;->container:Lcom/winlator/container/Container;

    invoke-virtual {v1}, Lcom/winlator/container/Container;->getDXWrapper()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dxwrapper"

    invoke-virtual {v0, v2, v1}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "selectedDXWrapper":Ljava/lang/String;
    new-instance v4, Lcom/winlator/container/DXWrapperPicker;

    const v0, 0x7f090070

    invoke-virtual {v15, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0, v9, v7, v8}, Lcom/winlator/container/DXWrapperPicker;-><init>(Landroid/widget/LinearLayout;Lcom/winlator/container/GraphicsDriverPicker;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .local v4, "dxwrapperPicker":Lcom/winlator/container/DXWrapperPicker;
    const v0, 0x7f09001a

    invoke-virtual {v15, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/winlator/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, v14}, Lcom/winlator/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v0, 0x7f0900a4

    invoke-virtual {v15, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Spinner;

    .line 76
    .local v6, "sAudioDriver":Landroid/widget/Spinner;
    iget-object v0, v15, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v1, v15, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v1, v1, Lcom/winlator/container/Shortcut;->container:Lcom/winlator/container/Container;

    invoke-virtual {v1}, Lcom/winlator/container/Container;->getAudioDriver()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audioDriver"

    invoke-virtual {v0, v2, v1}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/winlator/core/AppUtils;->setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 78
    const v0, 0x7f09000a

    invoke-virtual {v15, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 79
    .local v5, "vAudioDriverConfig":Landroid/view/View;
    iget-object v0, v15, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v1, v15, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v1, v1, Lcom/winlator/container/Shortcut;->container:Lcom/winlator/container/Container;

    invoke-virtual {v1}, Lcom/winlator/container/Container;->getAudioDriverConfig()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audioDriverConfig"

    invoke-virtual {v0, v2, v1}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    new-instance v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/winlator/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v0, 0x7f09003e

    invoke-virtual {v15, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/CheckBox;

    .line 83
    .local v3, "cbForceFullscreen":Landroid/widget/CheckBox;
    iget-object v0, v15, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    const-string v1, "forceFullscreen"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 85
    const v0, 0x7f0900b3

    invoke-virtual {v15, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/Spinner;

    .line 86
    .local v1, "sBox64Preset":Landroid/widget/Spinner;
    iget-object v0, v15, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    move-object/from16 v17, v3

    .end local v3    # "cbForceFullscreen":Landroid/widget/CheckBox;
    .local v17, "cbForceFullscreen":Landroid/widget/CheckBox;
    iget-object v3, v15, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v3, v3, Lcom/winlator/container/Shortcut;->container:Lcom/winlator/container/Container;

    invoke-virtual {v3}, Lcom/winlator/container/Container;->getBox64Preset()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v5

    .end local v5    # "vAudioDriverConfig":Landroid/view/View;
    .local v18, "vAudioDriverConfig":Landroid/view/View;
    const-string v5, "box64Preset"

    invoke-virtual {v0, v5, v3}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/winlator/box64/Box64PresetManager;->loadSpinner(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 88
    const v0, 0x7f0900b7

    invoke-virtual {v15, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/Spinner;

    .line 89
    .local v5, "sControlsProfile":Landroid/widget/Spinner;
    iget-object v0, v15, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    const-string v3, "controlsProfile"

    invoke-virtual {v0, v3, v2}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v5, v0}, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->loadControlsProfileSpinner(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 91
    const v0, 0x7f0900ba

    invoke-virtual {v15, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/Spinner;

    .line 92
    .local v3, "sDInputMapperType":Landroid/widget/Spinner;
    iget-object v0, v15, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v1

    .end local v1    # "sBox64Preset":Landroid/widget/Spinner;
    .local v19, "sBox64Preset":Landroid/widget/Spinner;
    const-string v1, "dinputMapperType"

    invoke-virtual {v0, v1, v2}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/contentdialog/ContentDialog;->getContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, v15, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v2, v15, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v2, v2, Lcom/winlator/container/Shortcut;->container:Lcom/winlator/container/Container;

    invoke-virtual {v2}, Lcom/winlator/container/Container;->getWinComponents()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v3

    .end local v3    # "sDInputMapperType":Landroid/widget/Spinner;
    .local v20, "sDInputMapperType":Landroid/widget/Spinner;
    const-string v3, "wincomponents"

    invoke-virtual {v1, v3, v2}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/winlator/ContainerDetailFragment;->createWinComponentsTab(Landroid/view/View;Ljava/lang/String;)V

    .line 95
    invoke-direct/range {p0 .. p0}, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->createEnvVarsTab()Lcom/winlator/widget/EnvVarsView;

    move-result-object v21

    .line 97
    .local v21, "envVarsView":Lcom/winlator/widget/EnvVarsView;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/contentdialog/ContentDialog;->getContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090084

    const v2, 0x7f090082

    const v3, 0x7f090085

    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    const v2, 0x7f0900f8

    invoke-static {v0, v2, v1}, Lcom/winlator/core/AppUtils;->setupTabLayout(Landroid/view/View;I[I)V

    .line 99
    const v0, 0x7f090021

    invoke-virtual {v15, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/winlator/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, v15, v14, v13}, Lcom/winlator/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/contentdialog/ShortcutSettingsDialog;Landroid/content/Context;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v0, 0x7f090018

    invoke-virtual {v15, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/winlator/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda3;

    invoke-direct {v1, v14, v12}, Lcom/winlator/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    new-instance v3, Lcom/winlator/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda4;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v22, v3

    move-object v3, v9

    move-object/from16 v23, v5

    .end local v5    # "sControlsProfile":Landroid/widget/Spinner;
    .local v23, "sControlsProfile":Landroid/widget/Spinner;
    move-object/from16 v5, v18

    move-object/from16 v24, v6

    .end local v6    # "sAudioDriver":Landroid/widget/Spinner;
    .local v24, "sAudioDriver":Landroid/widget/Spinner;
    move-object/from16 v25, v7

    .end local v7    # "selectedDXWrapper":Ljava/lang/String;
    .local v25, "selectedDXWrapper":Ljava/lang/String;
    move-object v7, v12

    move-object/from16 v26, v8

    .end local v8    # "oldDXWrapperConfig":Ljava/lang/String;
    .local v26, "oldDXWrapperConfig":Ljava/lang/String;
    move-object/from16 v8, v17

    move-object/from16 v27, v9

    .end local v9    # "graphicsDriverPicker":Lcom/winlator/container/GraphicsDriverPicker;
    .local v27, "graphicsDriverPicker":Lcom/winlator/container/GraphicsDriverPicker;
    move-object/from16 v9, v21

    move-object/from16 v28, v10

    .end local v10    # "selectedGraphicsDriver":Ljava/lang/String;
    .local v28, "selectedGraphicsDriver":Ljava/lang/String;
    move-object/from16 v10, v19

    move-object/from16 v29, v11

    .end local v11    # "oldGraphicsDriverConfig":Ljava/lang/String;
    .local v29, "oldGraphicsDriverConfig":Ljava/lang/String;
    move-object/from16 v11, v23

    move-object/from16 v30, v12

    .end local v12    # "etExecArgs":Landroid/widget/EditText;
    .local v30, "etExecArgs":Landroid/widget/EditText;
    move-object/from16 v12, v20

    move-object/from16 v31, v13

    .end local v13    # "etName":Landroid/widget/EditText;
    .local v31, "etName":Landroid/widget/EditText;
    move-object/from16 v13, v29

    move-object/from16 v32, v14

    .end local v14    # "context":Landroid/content/Context;
    .local v32, "context":Landroid/content/Context;
    invoke-direct/range {v0 .. v14}, Lcom/winlator/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/contentdialog/ShortcutSettingsDialog;Landroid/widget/EditText;Lcom/winlator/container/GraphicsDriverPicker;Lcom/winlator/container/DXWrapperPicker;Landroid/view/View;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/winlator/widget/EnvVarsView;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Ljava/lang/String;Landroid/content/Context;)V

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/winlator/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method

.method private createEnvVarsTab()Lcom/winlator/widget/EnvVarsView;
    .locals 6

    .line 192
    invoke-virtual {p0}, Lcom/winlator/contentdialog/ContentDialog;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 194
    .local v1, "context":Landroid/content/Context;
    const v2, 0x7f09005c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/winlator/widget/EnvVarsView;

    .line 195
    .local v2, "envVarsView":Lcom/winlator/widget/EnvVarsView;
    new-instance v3, Lcom/winlator/core/EnvVars;

    iget-object v4, p0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    const-string v5, "envVars"

    invoke-virtual {v4, v5}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/winlator/core/EnvVars;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/winlator/widget/EnvVarsView;->setEnvVars(Lcom/winlator/core/EnvVars;)V

    .line 196
    const v3, 0x7f090008

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/winlator/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda7;

    invoke-direct {v4, v1, v2}, Lcom/winlator/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;Lcom/winlator/widget/EnvVarsView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    return-object v2
.end method

.method private static synthetic lambda$createContentView$0(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;

    .line 73
    const v0, 0x7f100093

    invoke-static {p0, p1, v0}, Lcom/winlator/core/AppUtils;->showHelpBox(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method private static synthetic lambda$createContentView$1(Landroid/view/View;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .line 80
    new-instance v0, Lcom/winlator/contentdialog/AudioDriverConfigDialog;

    invoke-direct {v0, p0}, Lcom/winlator/contentdialog/AudioDriverConfigDialog;-><init>(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static synthetic lambda$createContentView$2(Landroid/widget/EditText;Landroid/view/MenuItem;)Z
    .locals 1
    .param p0, "etName"    # Landroid/widget/EditText;
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 113
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic lambda$createContentView$3(Landroid/content/Context;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "etName"    # Landroid/widget/EditText;
    .param p3, "v"    # Landroid/view/View;

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "peFile":Ljava/io/File;
    iget-object v1, p0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    invoke-virtual {v1}, Lcom/winlator/container/Shortcut;->getLinkFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/winlator/win32/MSLink;->extractLinkInfo(Ljava/io/File;)Lcom/winlator/win32/MSLink$LinkInfo;

    move-result-object v1

    .line 102
    .local v1, "linkInfo":Lcom/winlator/win32/MSLink$LinkInfo;
    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/winlator/win32/MSLink$LinkInfo;->targetPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v4, v4, Lcom/winlator/container/Shortcut;->container:Lcom/winlator/container/Container;

    invoke-static {v3, v4}, Lcom/winlator/core/WineUtils;->dosToUnixPath(Ljava/lang/String;Lcom/winlator/container/Container;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 103
    :cond_0
    if-nez v0, :cond_1

    return-void

    .line 105
    :cond_1
    invoke-static {v0}, Lcom/winlator/win32/PEParser;->getFileVersionInfo(Ljava/io/File;)Lcom/winlator/win32/PEParser$FileVersionInfo;

    move-result-object v2

    .line 106
    .local v2, "fileVersionInfo":Lcom/winlator/win32/PEParser$FileVersionInfo;
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/winlator/win32/PEParser$FileVersionInfo;->FileDescription:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/winlator/win32/PEParser$FileVersionInfo;->OriginalFilename:Ljava/lang/String;

    .line 107
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 108
    new-instance v3, Landroid/widget/PopupMenu;

    invoke-direct {v3, p1, p3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 109
    .local v3, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    .line 110
    .local v4, "menu":Landroid/view/Menu;
    iget-object v5, v2, Lcom/winlator/win32/PEParser$FileVersionInfo;->FileDescription:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 111
    iget-object v5, v2, Lcom/winlator/win32/PEParser$FileVersionInfo;->OriginalFilename:Ljava/lang/String;

    invoke-static {v5}, Lcom/winlator/core/FileUtils;->getBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 112
    new-instance v5, Lcom/winlator/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda5;

    invoke-direct {v5, p2}, Lcom/winlator/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda5;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v3, v5}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 116
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    .line 118
    .end local v3    # "popupMenu":Landroid/widget/PopupMenu;
    .end local v4    # "menu":Landroid/view/Menu;
    :cond_2
    return-void
.end method

.method private static synthetic lambda$createContentView$4(Landroid/widget/EditText;Landroid/view/MenuItem;)Z
    .locals 4
    .param p0, "etExecArgs"    # Landroid/widget/EditText;
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "execArgs":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private static synthetic lambda$createContentView$5(Landroid/content/Context;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "etExecArgs"    # Landroid/widget/EditText;
    .param p2, "v"    # Landroid/view/View;

    .line 121
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p0, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 122
    .local v0, "popupMenu":Landroid/widget/PopupMenu;
    const v1, 0x7f0d0004

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 123
    new-instance v1, Lcom/winlator/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lcom/winlator/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda8;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 129
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 130
    return-void
.end method

.method private static synthetic lambda$createContentView$6(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .line 173
    invoke-static {p0}, Lcom/winlator/core/AppUtils;->restartApplication(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$createContentView$7(Landroid/widget/EditText;Lcom/winlator/container/GraphicsDriverPicker;Lcom/winlator/container/DXWrapperPicker;Landroid/view/View;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/winlator/widget/EnvVarsView;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Ljava/lang/String;Landroid/content/Context;)V
    .locals 22
    .param p1, "etName"    # Landroid/widget/EditText;
    .param p2, "graphicsDriverPicker"    # Lcom/winlator/container/GraphicsDriverPicker;
    .param p3, "dxwrapperPicker"    # Lcom/winlator/container/DXWrapperPicker;
    .param p4, "vAudioDriverConfig"    # Landroid/view/View;
    .param p5, "sAudioDriver"    # Landroid/widget/Spinner;
    .param p6, "etExecArgs"    # Landroid/widget/EditText;
    .param p7, "cbForceFullscreen"    # Landroid/widget/CheckBox;
    .param p8, "envVarsView"    # Lcom/winlator/widget/EnvVarsView;
    .param p9, "sBox64Preset"    # Landroid/widget/Spinner;
    .param p10, "sControlsProfile"    # Landroid/widget/Spinner;
    .param p11, "sDInputMapperType"    # Landroid/widget/Spinner;
    .param p12, "oldGraphicsDriverConfig"    # Ljava/lang/String;
    .param p13, "context"    # Landroid/content/Context;

    .line 133
    move-object/from16 v0, p0

    move-object/from16 v1, p13

    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/container/GraphicsDriverPicker;->getGraphicsDriver()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "graphicsDriver":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/winlator/container/DXWrapperPicker;->getDXWrapper()Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "dxwrapper":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/winlator/container/DXWrapperPicker;->getDXWrapperConfig()Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, "dxwrapperConfig":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/container/GraphicsDriverPicker;->getGraphicsDriverConfig()Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, "graphicsDriverConfig":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, "audioDriverConfig":Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/winlator/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 140
    .local v8, "audioDriver":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/contentdialog/ContentDialog;->getContentView()Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Lcom/winlator/ContainerDetailFragment;->getScreenSize(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    .line 142
    .local v9, "screenSize":Ljava/lang/String;
    invoke-virtual/range {p6 .. p6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 143
    .local v10, "execArgs":Ljava/lang/String;
    iget-object v11, v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    move-object v12, v10

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    const-string v14, "execArgs"

    invoke-virtual {v11, v14, v12}, Lcom/winlator/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v11, v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v12, v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v12, v12, Lcom/winlator/container/Shortcut;->container:Lcom/winlator/container/Container;

    invoke-virtual {v12}, Lcom/winlator/container/Container;->getScreenSize()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    move-object v12, v9

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    const-string v14, "screenSize"

    invoke-virtual {v11, v14, v12}, Lcom/winlator/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v11, v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v12, v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v12, v12, Lcom/winlator/container/Shortcut;->container:Lcom/winlator/container/Container;

    invoke-virtual {v12}, Lcom/winlator/container/Container;->getGraphicsDriver()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    move-object v12, v3

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :goto_2
    const-string v14, "graphicsDriver"

    invoke-virtual {v11, v14, v12}, Lcom/winlator/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v11, v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v12, v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v12, v12, Lcom/winlator/container/Shortcut;->container:Lcom/winlator/container/Container;

    invoke-virtual {v12}, Lcom/winlator/container/Container;->getDXWrapper()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    move-object v12, v4

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    const-string v14, "dxwrapper"

    invoke-virtual {v11, v14, v12}, Lcom/winlator/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v11, v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v12, v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v12, v12, Lcom/winlator/container/Shortcut;->container:Lcom/winlator/container/Container;

    invoke-virtual {v12}, Lcom/winlator/container/Container;->getDXWrapperConfig()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    move-object v12, v5

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    :goto_4
    const-string v14, "dxwrapperConfig"

    invoke-virtual {v11, v14, v12}, Lcom/winlator/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v11, v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v12, v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v12, v12, Lcom/winlator/container/Shortcut;->container:Lcom/winlator/container/Container;

    invoke-virtual {v12}, Lcom/winlator/container/Container;->getGraphicsDriverConfig()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    move-object v12, v6

    goto :goto_5

    :cond_5
    const/4 v12, 0x0

    :goto_5
    const-string v14, "graphicsDriverConfig"

    invoke-virtual {v11, v14, v12}, Lcom/winlator/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v11, v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v12, v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v12, v12, Lcom/winlator/container/Shortcut;->container:Lcom/winlator/container/Container;

    invoke-virtual {v12}, Lcom/winlator/container/Container;->getAudioDriver()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    move-object v12, v8

    goto :goto_6

    :cond_6
    const/4 v12, 0x0

    :goto_6
    const-string v14, "audioDriver"

    invoke-virtual {v11, v14, v12}, Lcom/winlator/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v11, v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v12, v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v12, v12, Lcom/winlator/container/Shortcut;->container:Lcom/winlator/container/Container;

    invoke-virtual {v12}, Lcom/winlator/container/Container;->getAudioDriverConfig()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    move-object v12, v7

    goto :goto_7

    :cond_7
    const/4 v12, 0x0

    :goto_7
    const-string v14, "audioDriverConfig"

    invoke-virtual {v11, v14, v12}, Lcom/winlator/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v11, v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    invoke-virtual/range {p7 .. p7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_8

    const-string v12, "1"

    goto :goto_8

    :cond_8
    const/4 v12, 0x0

    :goto_8
    const-string v14, "forceFullscreen"

    invoke-virtual {v11, v14, v12}, Lcom/winlator/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/contentdialog/ContentDialog;->getContentView()Landroid/view/View;

    move-result-object v11

    invoke-static {v11}, Lcom/winlator/ContainerDetailFragment;->getWinComponents(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    .line 154
    .local v11, "wincomponents":Ljava/lang/String;
    iget-object v12, v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v14, v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v14, v14, Lcom/winlator/container/Shortcut;->container:Lcom/winlator/container/Container;

    invoke-virtual {v14}, Lcom/winlator/container/Container;->getWinComponents()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    move-object v14, v11

    goto :goto_9

    :cond_9
    const/4 v14, 0x0

    :goto_9
    const-string v15, "wincomponents"

    invoke-virtual {v12, v15, v14}, Lcom/winlator/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p8 .. p8}, Lcom/winlator/widget/EnvVarsView;->getEnvVars()Ljava/lang/String;

    move-result-object v12

    .line 157
    .local v12, "envVars":Ljava/lang/String;
    iget-object v14, v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_a

    move-object v15, v12

    goto :goto_a

    :cond_a
    const/4 v15, 0x0

    :goto_a
    const-string v13, "envVars"

    invoke-virtual {v14, v13, v15}, Lcom/winlator/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static/range {p9 .. p9}, Lcom/winlator/box64/Box64PresetManager;->getSpinnerSelectedId(Landroid/widget/Spinner;)Ljava/lang/String;

    move-result-object v13

    .line 160
    .local v13, "box64Preset":Ljava/lang/String;
    iget-object v14, v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v15, v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v15, v15, Lcom/winlator/container/Shortcut;->container:Lcom/winlator/container/Container;

    invoke-virtual {v15}, Lcom/winlator/container/Container;->getBox64Preset()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    move-object v15, v13

    goto :goto_b

    :cond_b
    const/4 v15, 0x0

    :goto_b
    move-object/from16 v17, v4

    .end local v4    # "dxwrapper":Ljava/lang/String;
    .local v17, "dxwrapper":Ljava/lang/String;
    const-string v4, "box64Preset"

    invoke-virtual {v14, v4, v15}, Lcom/winlator/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v4, v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->inputControlsManager:Lcom/winlator/inputcontrols/InputControlsManager;

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lcom/winlator/inputcontrols/InputControlsManager;->getProfiles(Z)Ljava/util/ArrayList;

    move-result-object v4

    .line 163
    .local v4, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/inputcontrols/ControlsProfile;>;"
    invoke-virtual/range {p10 .. p10}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v15

    const/16 v18, 0x0

    if-lez v15, :cond_c

    invoke-virtual/range {p10 .. p10}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v15

    sub-int/2addr v15, v14

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/winlator/inputcontrols/ControlsProfile;

    iget v15, v15, Lcom/winlator/inputcontrols/ControlsProfile;->id:I

    goto :goto_c

    :cond_c
    move/from16 v15, v18

    .line 164
    .local v15, "controlsProfile":I
    :goto_c
    iget-object v14, v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    if-lez v15, :cond_d

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v21, v19

    move-object/from16 v19, v4

    move-object/from16 v4, v21

    goto :goto_d

    :cond_d
    move-object/from16 v19, v4

    const/4 v4, 0x0

    .end local v4    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/inputcontrols/ControlsProfile;>;"
    .local v19, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/inputcontrols/ControlsProfile;>;"
    :goto_d
    move-object/from16 v20, v5

    .end local v5    # "dxwrapperConfig":Ljava/lang/String;
    .local v20, "dxwrapperConfig":Ljava/lang/String;
    const-string v5, "controlsProfile"

    invoke-virtual {v14, v5, v4}, Lcom/winlator/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p11 .. p11}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    .line 167
    .local v4, "dinputMapperType":I
    iget-object v5, v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    const/4 v14, 0x1

    if-eq v4, v14, :cond_e

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v14, v16

    goto :goto_e

    :cond_e
    const/4 v14, 0x0

    :goto_e
    move/from16 v16, v4

    .end local v4    # "dinputMapperType":I
    .local v16, "dinputMapperType":I
    const-string v4, "dinputMapperType"

    invoke-virtual {v5, v4, v14}, Lcom/winlator/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v4, v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    invoke-virtual {v4}, Lcom/winlator/container/Shortcut;->saveData()V

    .line 170
    iget-object v4, v0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v4, v4, Lcom/winlator/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-direct {v0, v2}, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->renameShortcut(Ljava/lang/String;)V

    .line 172
    :cond_f
    const-string v4, "vortek"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v4, p12

    invoke-static {v4, v6}, Lcom/winlator/contentdialog/VortekConfigDialog;->isRequireRestart(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v14, 0x1

    goto :goto_f

    :cond_10
    move-object/from16 v4, p12

    :cond_11
    move/from16 v14, v18

    :goto_f
    move v5, v14

    .line 173
    .local v5, "requireRestart":Z
    if-eqz v5, :cond_12

    new-instance v14, Lcom/winlator/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda6;

    invoke-direct {v14, v1}, Lcom/winlator/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;)V

    const v0, 0x7f100182

    invoke-static {v1, v0, v14}, Lcom/winlator/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 174
    :cond_12
    return-void
.end method

.method private static synthetic lambda$createEnvVarsTab$8(Landroid/content/Context;Lcom/winlator/widget/EnvVarsView;Landroid/view/View;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "envVarsView"    # Lcom/winlator/widget/EnvVarsView;
    .param p2, "v"    # Landroid/view/View;

    .line 196
    new-instance v0, Lcom/winlator/contentdialog/AddEnvVarDialog;

    invoke-direct {v0, p0, p1}, Lcom/winlator/contentdialog/AddEnvVarDialog;-><init>(Landroid/content/Context;Lcom/winlator/widget/EnvVarsView;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private loadControlsProfileSpinner(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 8
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "selectedValue"    # Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->fragment:Lcom/winlator/ShortcutsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 202
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->inputControlsManager:Lcom/winlator/inputcontrols/InputControlsManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/winlator/inputcontrols/InputControlsManager;->getProfiles(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 203
    .local v1, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/inputcontrols/ControlsProfile;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v3, 0x7f100134

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    const/4 v3, 0x0

    .line 207
    .local v3, "selectedPosition":I
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 208
    .local v4, "selectedId":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 209
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/winlator/inputcontrols/ControlsProfile;

    .line 210
    .local v6, "profile":Lcom/winlator/inputcontrols/ControlsProfile;
    iget v7, v6, Lcom/winlator/inputcontrols/ControlsProfile;->id:I

    if-ne v7, v4, :cond_0

    add-int/lit8 v3, v5, 0x1

    .line 211
    :cond_0
    invoke-virtual {v6}, Lcom/winlator/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .end local v6    # "profile":Lcom/winlator/inputcontrols/ControlsProfile;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 214
    .end local v5    # "i":I
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x1090009

    invoke-direct {v5, v0, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 215
    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    .line 216
    return-void
.end method

.method private renameShortcut(Ljava/lang/String;)V
    .locals 6
    .param p1, "newName"    # Ljava/lang/String;

    .line 178
    invoke-static {p1}, Lcom/winlator/core/StringUtils;->clearReservedChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 179
    iget-object v0, p0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v0, v0, Lcom/winlator/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 180
    .local v0, "parent":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".desktop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 181
    .local v1, "newFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v2, v2, Lcom/winlator/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 183
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v4, v4, Lcom/winlator/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".lnk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    .local v2, "linkFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v3

    .line 186
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 188
    :cond_1
    iget-object v3, p0, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->fragment:Lcom/winlator/ShortcutsFragment;

    invoke-virtual {v3}, Lcom/winlator/ShortcutsFragment;->refreshContent()V

    .line 189
    return-void
.end method
