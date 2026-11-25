.class public Lcom/winlator/SettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SettingsFragment.java"


# instance fields
.field private midiDeviceCallbackRegistered:Z

.field private preferences:Landroid/content/SharedPreferences;

.field private preloaderDialog:Lcom/winlator/core/PreloaderDialog;

.field private selectWineFileCallback:Lcom/winlator/core/Callback;


# direct methods
.method public static synthetic $r8$lambda$-Faz5lH82huuHgOERVHuuxRxYnU(Lcom/winlator/SettingsFragment;Ljava/util/ArrayList;Landroid/widget/Spinner;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/winlator/SettingsFragment;->lambda$loadWineVersionSpinner$17(Ljava/util/ArrayList;Landroid/widget/Spinner;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$08mEbe3WmxH8owP4I3DNzk_bwMo(Landroid/widget/EditText;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/winlator/SettingsFragment;->lambda$onCreateView$3(Landroid/widget/EditText;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$1bOiC-UkxZUBGjma6137xPDQ7zI(Lcom/winlator/SettingsFragment;Landroid/widget/CheckBox;Landroid/content/Context;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/winlator/SettingsFragment;->lambda$onCreateView$2(Landroid/widget/CheckBox;Landroid/content/Context;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$3muaHAEKNiPwS-JKanAyIJQn6-E(Lcom/winlator/SettingsFragment;Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/SettingsFragment;->lambda$loadWineDebugChannels$27(Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5FhnfVevIZ-KeGvZ7qYO56pFrrk(Lcom/winlator/SettingsFragment;Lcom/winlator/core/WineInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/SettingsFragment;->lambda$showWineInstallDialog$24(Lcom/winlator/core/WineInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5cqy0thMqZWLomZBIpA7EVPWwsY(Lcom/winlator/SettingsFragment;Landroid/widget/Spinner;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/SettingsFragment;->lambda$loadBox64PresetSpinner$7(Landroid/widget/Spinner;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5wBg2zoB__OEeqNi7e6IjG3XMoI(Landroid/widget/LinearLayout;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/winlator/SettingsFragment;->lambda$loadGamepadPlayerConfigs$29(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8larfmS2QIWGawX2T29ZhrNDlJk(Lcom/winlator/SettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/winlator/SettingsFragment;->lambda$onCreateView$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$CSTj5xJiHE_t6nimKsCQlcoDCYE(Lcom/winlator/SettingsFragment;Landroid/view/View;Landroid/widget/Spinner;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/SettingsFragment;->lambda$loadWineVersionSpinner$15(Landroid/view/View;Landroid/widget/Spinner;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DvT-j9wlmAI4gMldft8YI5yFDT8(Landroid/view/View;BLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/winlator/SettingsFragment;->lambda$loadGamepadPlayerConfigs$31(Landroid/view/View;BLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K1AWu0HUuorgctJLxmaNWUEGfig(Lcom/winlator/SettingsFragment;Ljava/io/File;Ljava/io/File;Ljava/lang/Runnable;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/winlator/SettingsFragment;->lambda$removeInstalledWine$13(Ljava/io/File;Ljava/io/File;Ljava/lang/Runnable;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L1FLHH0LlYjdpo1rgmn8kkoWpAo(Lcom/winlator/SettingsFragment;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/SettingsFragment;->lambda$selectWineFileForInstall$21(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NoEbLbCXcuWootrPUnLKGZiPGCU(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/winlator/SettingsFragment;->lambda$loadBox64PresetSpinner$11(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QEvdqqsCVNsBWE5LsiwW8K_dMvw(Lcom/winlator/SettingsFragment;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/SettingsFragment;->lambda$onCreateView$5(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RjdtKeEBeN6zA7SvpOGctthVMlY(Lcom/winlator/SettingsFragment;Lcom/winlator/core/WineInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/SettingsFragment;->lambda$selectWineFileForInstall$18(Lcom/winlator/core/WineInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RtYEjY9eVHoqZRzy1Q0Uz5Zv2yM(Lcom/winlator/SettingsFragment;Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/winlator/SettingsFragment;->lambda$loadWineDebugChannels$26(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T-ZrUQKQG5BaS13mdp5S1songoE(Lcom/winlator/SettingsFragment;Lcom/winlator/core/WineInfo;Landroid/view/View;Landroid/widget/Spinner;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/SettingsFragment;->lambda$loadWineVersionSpinner$16(Lcom/winlator/core/WineInfo;Landroid/view/View;Landroid/widget/Spinner;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VfaSpLYRs_ZOIzDG8hW-u1EUU1U(Lcom/winlator/SettingsFragment;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Lcom/winlator/widget/SeekBar;Lcom/winlator/widget/SeekBar;Lcom/winlator/widget/ColorPickerView;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/view/View;Landroid/widget/Spinner;Landroid/widget/RadioGroup;Landroid/widget/Spinner;IILandroid/widget/Spinner;Landroid/widget/EditText;Ljava/lang/String;Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p27}, Lcom/winlator/SettingsFragment;->lambda$onCreateView$6(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Lcom/winlator/widget/SeekBar;Lcom/winlator/widget/SeekBar;Lcom/winlator/widget/ColorPickerView;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/view/View;Landroid/widget/Spinner;Landroid/widget/RadioGroup;Landroid/widget/Spinner;IILandroid/widget/Spinner;Landroid/widget/EditText;Ljava/lang/String;Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fVvA1zUf3Szn0aiWhU9yMkxMXZc(Lcom/winlator/SettingsFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/SettingsFragment;->lambda$loadWineVersionSpinner$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fj4FJsv-SqtpeO-DcwqjurwqLc0(Lcom/winlator/SettingsFragment;Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/SettingsFragment;->lambda$selectWineFileForInstall$20(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g6C-HxWxdg2I-BAFBQ9aKnTb96M(Landroid/content/Context;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/winlator/SettingsFragment;->lambda$loadBox64PresetSpinner$8(Landroid/content/Context;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hveHF1pyp-tI_9-fUx9GueIiins(Landroid/content/Context;Landroid/widget/Spinner;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/winlator/SettingsFragment;->lambda$loadBox64PresetSpinner$9(Landroid/content/Context;Landroid/widget/Spinner;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iAOlTB5ucO2lRlAS_W27Xaz3vI8(Landroid/widget/EditText;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/winlator/SettingsFragment;->lambda$showWineInstallDialog$22(Landroid/widget/EditText;Ljava/util/concurrent/atomic/AtomicLong;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iX1oKYib92dmuiaZXgBz78sTP2M(Ljava/util/concurrent/atomic/AtomicLong;Landroid/widget/EditText;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/winlator/SettingsFragment;->lambda$showWineInstallDialog$23(Ljava/util/concurrent/atomic/AtomicLong;Landroid/widget/EditText;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j866mcrWWBo4krGNml9-tlMcmAw(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/winlator/SettingsFragment;->lambda$onCreateView$1(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l8TOI6aOAQ_9l7g6-ZXFJMqaEYU(Lcom/winlator/SettingsFragment;Ljava/util/ArrayList;[Ljava/lang/String;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/winlator/SettingsFragment;->lambda$loadWineDebugChannels$25(Ljava/util/ArrayList;[Ljava/lang/String;Landroid/view/View;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mNwrb185HV43psqkZPG9EhwU1MM(Lcom/winlator/SettingsFragment;Landroid/content/Context;Lcom/winlator/core/WineInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/SettingsFragment;->lambda$selectWineFileForInstall$19(Landroid/content/Context;Lcom/winlator/core/WineInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u_07t6FAebd0_JPJtaN9Qyc31gs(Landroid/content/Context;Landroid/widget/Spinner;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/winlator/SettingsFragment;->lambda$loadBox64PresetSpinner$10(Landroid/content/Context;Landroid/widget/Spinner;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uct61tW4hI_OHyUNoR6jgr_Ax38(Landroid/widget/Spinner;Landroid/content/Context;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/winlator/SettingsFragment;->lambda$loadBox64PresetSpinner$12(Landroid/widget/Spinner;Landroid/content/Context;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wAXZo0tLR-86D3rOynMtRLkn_IE(Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/winlator/SettingsFragment;->lambda$loadGamepadPlayerConfigs$30(Landroid/widget/LinearLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xR463ax1sbPFVTPm8lFv8PCVVtQ(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/winlator/SettingsFragment;->lambda$onCreateView$0(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yo4l28X94P0ONvGj9kdOyQROTWE(Lcom/winlator/SettingsFragment;Ljava/util/ArrayList;ILandroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/winlator/SettingsFragment;->lambda$loadWineDebugChannels$28(Ljava/util/ArrayList;ILandroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/SettingsFragment;->midiDeviceCallbackRegistered:Z

    return-void
.end method

.method static synthetic access$000(Lcom/winlator/SettingsFragment;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/winlator/SettingsFragment;
    .param p1, "x1"    # Landroid/widget/Spinner;
    .param p2, "x2"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/winlator/SettingsFragment;->loadMIDIInputDeviceSpinner(Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method private installWine(Lcom/winlator/core/WineInfo;)V
    .locals 6
    .param p1, "wineInfo"    # Lcom/winlator/core/WineInfo;

    .line 419
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 420
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/winlator/xenvironment/RootFS;->find(Landroid/content/Context;)Lcom/winlator/xenvironment/RootFS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/winlator/xenvironment/RootFS;->getInstalledWineDir()Ljava/io/File;

    move-result-object v1

    .line 422
    .local v1, "installedWineDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/winlator/core/WineInfo;->identifier()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 423
    .local v2, "wineDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    const v3, 0x7f100197

    invoke-static {v0, v3}, Lcom/winlator/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 425
    return-void

    .line 428
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/winlator/XServerDisplayActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 429
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "generate_wineprefix"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 430
    const-string v4, "wine_info"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 431
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 432
    return-void
.end method

.method private static synthetic lambda$loadBox64PresetSpinner$10(Landroid/content/Context;Landroid/widget/Spinner;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sBox64Preset"    # Landroid/widget/Spinner;
    .param p2, "updateSpinner"    # Ljava/lang/Runnable;
    .param p3, "v"    # Landroid/view/View;

    .line 326
    invoke-static {p1}, Lcom/winlator/box64/Box64PresetManager;->getSpinnerSelectedId(Landroid/widget/Spinner;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/winlator/box64/Box64PresetManager;->duplicatePreset(Landroid/content/Context;Ljava/lang/String;)V

    .line 327
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 328
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 329
    return-void
.end method

.method private static synthetic lambda$loadBox64PresetSpinner$11(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "presetId"    # Ljava/lang/String;
    .param p2, "updateSpinner"    # Ljava/lang/Runnable;

    .line 337
    invoke-static {p0, p1}, Lcom/winlator/box64/Box64PresetManager;->removePreset(Landroid/content/Context;Ljava/lang/String;)V

    .line 338
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 339
    return-void
.end method

.method private static synthetic lambda$loadBox64PresetSpinner$12(Landroid/widget/Spinner;Landroid/content/Context;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 3
    .param p0, "sBox64Preset"    # Landroid/widget/Spinner;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateSpinner"    # Ljava/lang/Runnable;
    .param p3, "v"    # Landroid/view/View;

    .line 331
    invoke-static {p0}, Lcom/winlator/box64/Box64PresetManager;->getSpinnerSelectedId(Landroid/widget/Spinner;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "presetId":Ljava/lang/String;
    const-string v1, "CUSTOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    const v1, 0x7f1001b2

    invoke-static {p1, v1}, Lcom/winlator/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 334
    return-void

    .line 336
    :cond_0
    new-instance v1, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda22;

    invoke-direct {v1, p1, v0, p2}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda22;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    const v2, 0x7f100084

    invoke-static {p1, v2, v1}, Lcom/winlator/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 340
    return-void
.end method

.method private synthetic lambda$loadBox64PresetSpinner$7(Landroid/widget/Spinner;)V
    .locals 3
    .param p1, "sBox64Preset"    # Landroid/widget/Spinner;

    .line 310
    iget-object v0, p0, Lcom/winlator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "box64_preset"

    const-string v2, "PERFORMANCE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/winlator/box64/Box64PresetManager;->loadSpinner(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method private static synthetic lambda$loadBox64PresetSpinner$8(Landroid/content/Context;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateSpinner"    # Ljava/lang/Runnable;
    .param p2, "v"    # Landroid/view/View;

    .line 316
    new-instance v0, Lcom/winlator/box64/Box64EditPresetDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/winlator/box64/Box64EditPresetDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 317
    .local v0, "dialog":Lcom/winlator/box64/Box64EditPresetDialog;
    invoke-virtual {v0, p1}, Lcom/winlator/box64/Box64EditPresetDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 318
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 319
    return-void
.end method

.method private static synthetic lambda$loadBox64PresetSpinner$9(Landroid/content/Context;Landroid/widget/Spinner;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sBox64Preset"    # Landroid/widget/Spinner;
    .param p2, "updateSpinner"    # Ljava/lang/Runnable;
    .param p3, "v"    # Landroid/view/View;

    .line 321
    new-instance v0, Lcom/winlator/box64/Box64EditPresetDialog;

    invoke-static {p1}, Lcom/winlator/box64/Box64PresetManager;->getSpinnerSelectedId(Landroid/widget/Spinner;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/winlator/box64/Box64EditPresetDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 322
    .local v0, "dialog":Lcom/winlator/box64/Box64EditPresetDialog;
    invoke-virtual {v0, p2}, Lcom/winlator/box64/Box64EditPresetDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 323
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 324
    return-void
.end method

.method private static synthetic lambda$loadGamepadPlayerConfigs$29(Landroid/widget/LinearLayout;)V
    .locals 3
    .param p0, "container"    # Landroid/widget/LinearLayout;

    .line 558
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 559
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static synthetic lambda$loadGamepadPlayerConfigs$30(Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 3
    .param p0, "container"    # Landroid/widget/LinearLayout;
    .param p1, "v"    # Landroid/view/View;

    .line 557
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda21;-><init>(Landroid/widget/LinearLayout;)V

    const v2, 0x7f100087

    invoke-static {v0, v2, v1}, Lcom/winlator/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 560
    return-void
.end method

.method private static synthetic lambda$loadGamepadPlayerConfigs$31(Landroid/view/View;BLandroid/view/View;)V
    .locals 1
    .param p0, "child"    # Landroid/view/View;
    .param p1, "slot"    # B
    .param p2, "v"    # Landroid/view/View;

    .line 566
    new-instance v0, Lcom/winlator/contentdialog/GamepadPlayerConfigDialog;

    invoke-direct {v0, p0, p1}, Lcom/winlator/contentdialog/GamepadPlayerConfigDialog;-><init>(Landroid/view/View;B)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private synthetic lambda$loadWineDebugChannels$25(Ljava/util/ArrayList;[Ljava/lang/String;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "debugChannels"    # Ljava/util/ArrayList;
    .param p2, "items"    # [Ljava/lang/String;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "selectedPositions"    # Ljava/util/ArrayList;

    .line 477
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "selectedPosition":I
    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 478
    .end local v1    # "selectedPosition":I
    :cond_1
    invoke-direct {p0, p3, p1}, Lcom/winlator/SettingsFragment;->loadWineDebugChannels(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 479
    return-void
.end method

.method private synthetic lambda$loadWineDebugChannels$26(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "debugChannels"    # Ljava/util/ArrayList;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "v"    # Landroid/view/View;

    .line 469
    const/4 v0, 0x0

    .line 471
    .local v0, "jsonArray":Lorg/json/JSONArray;
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    const-string v2, "wine_debug_channels.json"

    invoke-static {p1, v2}, Lcom/winlator/core/FileUtils;->readString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 473
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 475
    :goto_1
    invoke-static {v0}, Lcom/winlator/core/ArrayUtils;->toStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "items":[Ljava/lang/String;
    new-instance v2, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0, p2, v1, p3}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda19;-><init>(Lcom/winlator/SettingsFragment;Ljava/util/ArrayList;[Ljava/lang/String;Landroid/view/View;)V

    const v3, 0x7f1001ac

    const/4 v4, 0x1

    invoke-static {p1, v3, v1, v4, v2}, Lcom/winlator/contentdialog/ContentDialog;->showSelectionList(Landroid/content/Context;I[Ljava/lang/String;ZLcom/winlator/core/Callback;)V

    .line 480
    return-void
.end method

.method private synthetic lambda$loadWineDebugChannels$27(Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "debugChannels"    # Ljava/util/ArrayList;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "v"    # Landroid/view/View;

    .line 485
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 486
    const-string v0, "warn,err,fixme"

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 487
    invoke-direct {p0, p2, p1}, Lcom/winlator/SettingsFragment;->loadWineDebugChannels(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 488
    return-void
.end method

.method private synthetic lambda$loadWineDebugChannels$28(Ljava/util/ArrayList;ILandroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "debugChannels"    # Ljava/util/ArrayList;
    .param p2, "index"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "v"    # Landroid/view/View;

    .line 497
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 498
    invoke-direct {p0, p3, p1}, Lcom/winlator/SettingsFragment;->loadWineDebugChannels(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 499
    return-void
.end method

.method private synthetic lambda$loadWineVersionSpinner$14(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 378
    invoke-direct {p0}, Lcom/winlator/SettingsFragment;->selectWineFileForInstall()V

    return-void
.end method

.method private synthetic lambda$loadWineVersionSpinner$15(Landroid/view/View;Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sWineVersion"    # Landroid/widget/Spinner;

    .line 383
    invoke-direct {p0, p1, p2}, Lcom/winlator/SettingsFragment;->loadWineVersionSpinner(Landroid/view/View;Landroid/widget/Spinner;)V

    return-void
.end method

.method private synthetic lambda$loadWineVersionSpinner$16(Lcom/winlator/core/WineInfo;Landroid/view/View;Landroid/widget/Spinner;)V
    .locals 1
    .param p1, "wineInfo"    # Lcom/winlator/core/WineInfo;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "sWineVersion"    # Landroid/widget/Spinner;

    .line 383
    new-instance v0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p2, p3}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda25;-><init>(Lcom/winlator/SettingsFragment;Landroid/view/View;Landroid/widget/Spinner;)V

    invoke-direct {p0, p1, v0}, Lcom/winlator/SettingsFragment;->removeInstalledWine(Lcom/winlator/core/WineInfo;Ljava/lang/Runnable;)V

    .line 384
    return-void
.end method

.method private synthetic lambda$loadWineVersionSpinner$17(Ljava/util/ArrayList;Landroid/widget/Spinner;Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "wineInfos"    # Ljava/util/ArrayList;
    .param p2, "sWineVersion"    # Landroid/widget/Spinner;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "v"    # Landroid/view/View;

    .line 380
    invoke-virtual {p2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/core/WineInfo;

    .line 381
    .local v0, "wineInfo":Lcom/winlator/core/WineInfo;
    sget-object v1, Lcom/winlator/core/WineInfo;->MAIN_WINE_INFO:Lcom/winlator/core/WineInfo;

    if-eq v0, v1, :cond_0

    .line 382
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda23;

    invoke-direct {v2, p0, v0, p3, p2}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda23;-><init>(Lcom/winlator/SettingsFragment;Lcom/winlator/core/WineInfo;Landroid/view/View;Landroid/widget/Spinner;)V

    const v3, 0x7f100086

    invoke-static {v1, v3, v2}, Lcom/winlator/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 386
    :cond_0
    return-void
.end method

.method private static synthetic lambda$onCreateView$0(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sSoundFont"    # Landroid/widget/Spinner;
    .param p2, "v"    # Landroid/view/View;

    .line 119
    new-instance v0, Lcom/winlator/contentdialog/SoundFontTestDialog;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/winlator/contentdialog/SoundFontTestDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static synthetic lambda$onCreateView$1(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tempId"    # Ljava/lang/String;

    .line 166
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 167
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 168
    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateView$2(Landroid/widget/CheckBox;Landroid/content/Context;Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "cbEnableBackgroundWakelock"    # Landroid/widget/CheckBox;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "buttonView"    # Landroid/widget/CompoundButton;
    .param p4, "isChecked"    # Z

    .line 154
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    if-nez p4, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 157
    :cond_1
    if-eqz p4, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_2

    .line 158
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    const-string v0, "permission_trigger"

    .line 161
    .local v0, "tempId":Ljava/lang/String;
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/winlator/services/NotificationUtils;->getInstance(Landroid/content/Context;)Lcom/winlator/services/NotificationUtils;

    move-result-object v1

    const-string v2, "Permission Trigger"

    const/4 v3, 0x2

    invoke-virtual {v1, p2, v0, v2, v3}, Lcom/winlator/services/NotificationUtils;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 165
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2, p2, v0}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda10;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    .end local v0    # "tempId":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static synthetic lambda$onCreateView$3(Landroid/widget/EditText;Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p0, "etLogFile"    # Landroid/widget/EditText;
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 193
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onCreateView$4()V
    .locals 1

    .line 216
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/winlator/MainActivity;

    invoke-static {v0}, Lcom/winlator/xenvironment/RootFSInstaller;->install(Lcom/winlator/MainActivity;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$5(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;

    .line 216
    new-instance v0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda16;-><init>(Lcom/winlator/SettingsFragment;)V

    const v1, 0x7f10007f

    invoke-static {p1, v1, v0}, Lcom/winlator/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 217
    return-void
.end method

.method private synthetic lambda$onCreateView$6(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Lcom/winlator/widget/SeekBar;Lcom/winlator/widget/SeekBar;Lcom/winlator/widget/ColorPickerView;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/view/View;Landroid/widget/Spinner;Landroid/widget/RadioGroup;Landroid/widget/Spinner;IILandroid/widget/Spinner;Landroid/widget/EditText;Ljava/lang/String;Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 17
    .param p1, "sSoundFont"    # Landroid/widget/Spinner;
    .param p2, "sBox64Version"    # Landroid/widget/Spinner;
    .param p3, "sBox64Preset"    # Landroid/widget/Spinner;
    .param p4, "cbMoveCursorToTouchpoint"    # Landroid/widget/CheckBox;
    .param p5, "cbCapturePointerOnExternalMouse"    # Landroid/widget/CheckBox;
    .param p6, "sbCursorSpeed"    # Lcom/winlator/widget/SeekBar;
    .param p7, "sbCursorSize"    # Lcom/winlator/widget/SeekBar;
    .param p8, "cpvCursorColor"    # Lcom/winlator/widget/ColorPickerView;
    .param p9, "cbEnableWineDebug"    # Landroid/widget/CheckBox;
    .param p10, "sBox64Logs"    # Landroid/widget/Spinner;
    .param p11, "cbSaveLogsToFile"    # Landroid/widget/CheckBox;
    .param p12, "cbOpenAndroidBrowserFromWine"    # Landroid/widget/CheckBox;
    .param p13, "cbUseAndroidClipboardOnWine"    # Landroid/widget/CheckBox;
    .param p14, "cbEnableBackgroundProtection"    # Landroid/widget/CheckBox;
    .param p15, "cbEnableBackgroundWakelock"    # Landroid/widget/CheckBox;
    .param p16, "cbSaveMemOnRunFromSteam"    # Landroid/widget/CheckBox;
    .param p17, "view"    # Landroid/view/View;
    .param p18, "sGamepadModel"    # Landroid/widget/Spinner;
    .param p19, "rgAppTheme"    # Landroid/widget/RadioGroup;
    .param p20, "sLanguage"    # Landroid/widget/Spinner;
    .param p21, "oldLCIndex"    # I
    .param p22, "oldAppThemeId"    # I
    .param p23, "sMIDIInputDevice"    # Landroid/widget/Spinner;
    .param p24, "etLogFile"    # Landroid/widget/EditText;
    .param p25, "defaultLogPath"    # Ljava/lang/String;
    .param p26, "wineDebugChannels"    # Ljava/util/ArrayList;
    .param p27, "v"    # Landroid/view/View;

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/winlator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 227
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "soundfont"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/winlator/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "box64_version"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 229
    const-string v2, "box64_preset"

    invoke-static/range {p3 .. p3}, Lcom/winlator/box64/Box64PresetManager;->getSpinnerSelectedId(Landroid/widget/Spinner;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 230
    const-string v2, "move_cursor_to_touchpoint"

    invoke-virtual/range {p4 .. p4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 231
    const-string v2, "capture_pointer_on_external_mouse"

    invoke-virtual/range {p5 .. p5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 232
    invoke-virtual/range {p6 .. p6}, Lcom/winlator/widget/SeekBar;->getValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    const-string v4, "cursor_speed"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 233
    invoke-virtual/range {p7 .. p7}, Lcom/winlator/widget/SeekBar;->getValue()F

    move-result v2

    div-float/2addr v2, v3

    const-string v3, "cursor_scale"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 234
    const-string v2, "cursor_color"

    invoke-virtual/range {p8 .. p8}, Lcom/winlator/widget/ColorPickerView;->getColor()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 235
    const-string v2, "enable_wine_debug"

    invoke-virtual/range {p9 .. p9}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 236
    const-string v2, "box64_logs"

    invoke-virtual/range {p10 .. p10}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 237
    const-string v2, "save_logs_to_file"

    invoke-virtual/range {p11 .. p11}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 238
    const-string v2, "open_android_browser_from_wine"

    invoke-virtual/range {p12 .. p12}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 239
    const-string v2, "use_android_clipboard_on_wine"

    invoke-virtual/range {p13 .. p13}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 240
    const-string v2, "enable_background_protection"

    invoke-virtual/range {p14 .. p14}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 241
    const-string v2, "enable_background_wakelock"

    invoke-virtual/range {p15 .. p15}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 242
    const-string v2, "save_mem_on_run_from_steam"

    invoke-virtual/range {p16 .. p16}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 243
    move-object/from16 v2, p17

    invoke-direct {v0, v2, v1}, Lcom/winlator/SettingsFragment;->putGamepadPlayerConfigs(Landroid/view/View;Landroid/content/SharedPreferences$Editor;)V

    .line 245
    invoke-virtual/range {p18 .. p18}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-virtual/range {p18 .. p18}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/winlator/winhandler/GamepadHandler$GamepadModel;

    .line 246
    .local v3, "gamepadModel":Lcom/winlator/winhandler/GamepadHandler$GamepadModel;
    iget-short v4, v3, Lcom/winlator/winhandler/GamepadHandler$GamepadModel;->vendorId:S

    const-string v5, "gamepad_model"

    const/4 v6, 0x1

    if-le v4, v6, :cond_0

    iget-short v4, v3, Lcom/winlator/winhandler/GamepadHandler$GamepadModel;->productId:S

    if-le v4, v6, :cond_0

    .line 247
    invoke-virtual {v3}, Lcom/winlator/winhandler/GamepadHandler$GamepadModel;->identifier()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 249
    :cond_0
    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 251
    :goto_0
    invoke-virtual/range {p19 .. p19}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v4

    .line 252
    .local v4, "newAppThemeId":I
    const v5, 0x7f09009c

    const/4 v7, 0x0

    if-ne v4, v5, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    const-string v8, "app_theme"

    invoke-interface {v1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 254
    invoke-virtual/range {p20 .. p20}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v5

    .line 255
    .local v5, "newLCIndex":I
    const-string v8, "lc_index"

    invoke-interface {v1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 256
    move/from16 v8, p21

    if-ne v8, v5, :cond_2

    move/from16 v9, p22

    if-eq v9, v4, :cond_3

    goto :goto_2

    :cond_2
    move/from16 v9, p22

    :goto_2
    move v7, v6

    .line 258
    .local v7, "restartApp":Z
    :cond_3
    invoke-virtual/range {p23 .. p23}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v10

    .line 259
    .local v10, "midiInputDevicePosition":I
    if-nez v10, :cond_4

    const-string v6, "none"

    goto :goto_3

    .line 260
    :cond_4
    if-ne v10, v6, :cond_5

    const-string v6, "auto"

    goto :goto_3

    :cond_5
    invoke-virtual/range {p23 .. p23}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 259
    :goto_3
    const-string v11, "midi_input_device"

    invoke-interface {v1, v11, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 262
    invoke-virtual/range {p24 .. p24}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 263
    .local v6, "logPath":Ljava/lang/String;
    move-object/from16 v11, p25

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "log_file"

    if-nez v12, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    .line 264
    invoke-interface {v1, v13, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 266
    :cond_6
    invoke-interface {v1, v13}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 268
    :goto_4
    invoke-virtual/range {p26 .. p26}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    const-string v13, "wine_debug_channels"

    if-nez v12, :cond_7

    .line 269
    const-string v12, ","

    move-object/from16 v14, p26

    invoke-static {v12, v14}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v13, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_5

    .line 271
    :cond_7
    move-object/from16 v14, p26

    iget-object v12, v0, Lcom/winlator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v12, v13}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v1, v13}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 273
    :cond_8
    :goto_5
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 274
    if-nez v7, :cond_9

    .line 275
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    const v13, 0x7f090097

    invoke-virtual {v12, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/google/android/material/navigation/NavigationView;

    .line 276
    .local v12, "navigationView":Lcom/google/android/material/navigation/NavigationView;
    const v13, 0x7f0901da

    invoke-virtual {v12, v13}, Lcom/google/android/material/navigation/NavigationView;->setCheckedItem(I)V

    .line 277
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v13

    .line 278
    .local v13, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v13}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v15

    new-instance v0, Lcom/winlator/ContainersFragment;

    invoke-direct {v0}, Lcom/winlator/ContainersFragment;-><init>()V

    .line 279
    move-object/from16 v16, v1

    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .local v16, "editor":Landroid/content/SharedPreferences$Editor;
    const v1, 0x7f09005e

    invoke-virtual {v15, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 281
    .end local v12    # "navigationView":Lcom/google/android/material/navigation/NavigationView;
    .end local v13    # "fragmentManager":Landroidx/fragment/app/FragmentManager;
    goto :goto_6

    .line 282
    .end local v16    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_9
    move-object/from16 v16, v1

    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v16    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/core/AppUtils;->restartActivity(Landroid/app/Activity;)V

    goto :goto_6

    .line 273
    .end local v16    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_a
    move-object/from16 v16, v1

    .line 284
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v16    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_6
    return-void
.end method

.method private synthetic lambda$removeInstalledWine$13(Ljava/io/File;Ljava/io/File;Ljava/lang/Runnable;Landroid/app/Activity;)V
    .locals 1
    .param p1, "wineDir"    # Ljava/io/File;
    .param p2, "containerPatternFile"    # Ljava/io/File;
    .param p3, "onSuccess"    # Ljava/lang/Runnable;
    .param p4, "activity"    # Landroid/app/Activity;

    .line 366
    invoke-static {p1}, Lcom/winlator/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 367
    invoke-static {p2}, Lcom/winlator/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 368
    iget-object v0, p0, Lcom/winlator/SettingsFragment;->preloaderDialog:Lcom/winlator/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/winlator/core/PreloaderDialog;->closeOnUiThread()V

    .line 369
    if-eqz p3, :cond_0

    invoke-virtual {p4, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 370
    :cond_0
    return-void
.end method

.method private synthetic lambda$selectWineFileForInstall$18(Lcom/winlator/core/WineInfo;)V
    .locals 0
    .param p1, "wineInfo"    # Lcom/winlator/core/WineInfo;

    .line 402
    invoke-direct {p0, p1}, Lcom/winlator/SettingsFragment;->showWineInstallDialog(Lcom/winlator/core/WineInfo;)V

    return-void
.end method

.method private synthetic lambda$selectWineFileForInstall$19(Landroid/content/Context;Lcom/winlator/core/WineInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wineInfo"    # Lcom/winlator/core/WineInfo;

    .line 396
    iget-object v0, p0, Lcom/winlator/SettingsFragment;->preloaderDialog:Lcom/winlator/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/winlator/core/PreloaderDialog;->closeOnUiThread()V

    .line 397
    if-nez p2, :cond_0

    .line 398
    const v0, 0x7f100197

    invoke-static {p1, v0}, Lcom/winlator/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 399
    return-void

    .line 402
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0, p2}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda28;-><init>(Lcom/winlator/SettingsFragment;Lcom/winlator/core/WineInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 403
    return-void
.end method

.method private synthetic lambda$selectWineFileForInstall$20(Landroid/content/Context;Ljava/io/File;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wineDir"    # Ljava/io/File;

    .line 394
    if-eqz p2, :cond_0

    .line 395
    new-instance v0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p1}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda26;-><init>(Lcom/winlator/SettingsFragment;Landroid/content/Context;)V

    invoke-static {p1, p2, v0}, Lcom/winlator/core/WineInstaller;->findWineVersionAsync(Landroid/content/Context;Ljava/io/File;Lcom/winlator/core/Callback;)V

    goto :goto_0

    .line 406
    :cond_0
    const v0, 0x7f100197

    invoke-static {p1, v0}, Lcom/winlator/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 407
    iget-object v0, p0, Lcom/winlator/SettingsFragment;->preloaderDialog:Lcom/winlator/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/winlator/core/PreloaderDialog;->closeOnUiThread()V

    .line 409
    :goto_0
    return-void
.end method

.method private synthetic lambda$selectWineFileForInstall$21(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 392
    iget-object v0, p0, Lcom/winlator/SettingsFragment;->preloaderDialog:Lcom/winlator/core/PreloaderDialog;

    const v1, 0x7f10014e

    invoke-virtual {v0, v1}, Lcom/winlator/core/PreloaderDialog;->show(I)V

    .line 393
    new-instance v0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda24;-><init>(Lcom/winlator/SettingsFragment;Landroid/content/Context;)V

    invoke-static {p1, p2, v0}, Lcom/winlator/core/WineInstaller;->extractWineFileForInstallAsync(Landroid/content/Context;Landroid/net/Uri;Lcom/winlator/core/Callback;)V

    .line 410
    return-void
.end method

.method private static synthetic lambda$showWineInstallDialog$22(Landroid/widget/EditText;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 2
    .param p0, "etSize"    # Landroid/widget/EditText;
    .param p1, "totalSizeRef"    # Ljava/util/concurrent/atomic/AtomicLong;

    .line 449
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/winlator/core/StringUtils;->formatBytes(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static synthetic lambda$showWineInstallDialog$23(Ljava/util/concurrent/atomic/AtomicLong;Landroid/widget/EditText;Ljava/lang/Long;)V
    .locals 2
    .param p0, "totalSizeRef"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "etSize"    # Landroid/widget/EditText;
    .param p2, "size"    # Ljava/lang/Long;

    .line 448
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 449
    new-instance v0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda31;

    invoke-direct {v0, p1, p0}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda31;-><init>(Landroid/widget/EditText;Ljava/util/concurrent/atomic/AtomicLong;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 450
    return-void
.end method

.method private synthetic lambda$showWineInstallDialog$24(Lcom/winlator/core/WineInfo;)V
    .locals 0
    .param p1, "wineInfo"    # Lcom/winlator/core/WineInfo;

    .line 452
    invoke-direct {p0, p1}, Lcom/winlator/SettingsFragment;->installWine(Lcom/winlator/core/WineInfo;)V

    return-void
.end method

.method private loadBox64PresetSpinner(Landroid/view/View;Landroid/widget/Spinner;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sBox64Preset"    # Landroid/widget/Spinner;

    .line 307
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 309
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda5;-><init>(Lcom/winlator/SettingsFragment;Landroid/widget/Spinner;)V

    .line 313
    .local v1, "updateSpinner":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 315
    const v2, 0x7f090005

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0, v1}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    const v2, 0x7f090013

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0, p2, v1}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;Landroid/widget/Spinner;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    const v2, 0x7f090011

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v3, v0, p2, v1}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda8;-><init>(Landroid/content/Context;Landroid/widget/Spinner;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    const v2, 0x7f090026

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v3, p2, v0, v1}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda9;-><init>(Landroid/widget/Spinner;Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    return-void
.end method

.method private loadGamepadModelSpinner(Landroid/widget/Spinner;)V
    .locals 6
    .param p1, "sGamepadModel"    # Landroid/widget/Spinner;

    .line 290
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 291
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/winlator/winhandler/GamepadHandler;->loadGamepadModels(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 293
    .local v1, "gamepadModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/winhandler/GamepadHandler$GamepadModel;>;"
    iget-object v2, p0, Lcom/winlator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "gamepad_model"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "selectedModel":Ljava/lang/String;
    const/4 v3, 0x0

    .line 295
    .local v3, "selectedPosition":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 296
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/winlator/winhandler/GamepadHandler$GamepadModel;

    invoke-virtual {v5}, Lcom/winlator/winhandler/GamepadHandler$GamepadModel;->identifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 297
    move v3, v4

    .line 298
    goto :goto_1

    .line 295
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 302
    .end local v4    # "i":I
    :cond_1
    :goto_1
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090009

    invoke-direct {v4, v0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 303
    invoke-virtual {p1, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 304
    return-void
.end method

.method private loadGamepadPlayerConfigs(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 555
    const v0, 0x7f090076

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 556
    .local v0, "container":Landroid/widget/LinearLayout;
    const v1, 0x7f09002b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda14;

    invoke-direct {v2, v0}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda14;-><init>(Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 563
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 564
    .local v2, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/winlator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gamepad_player"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 565
    int-to-byte v3, v1

    .line 566
    .local v3, "slot":B
    new-instance v4, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda15;

    invoke-direct {v4, v2, v3}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda15;-><init>(Landroid/view/View;B)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "slot":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 568
    .end local v1    # "i":I
    return-void
.end method

.method private loadMIDIInputDeviceSpinner(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 11
    .param p1, "sMIDIInputDevice"    # Landroid/widget/Spinner;
    .param p2, "selectedValue"    # Ljava/lang/String;

    .line 514
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 515
    .local v0, "context":Landroid/content/Context;
    const-string v1, "midi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/midi/MidiManager;

    .line 516
    .local v1, "mm":Landroid/media/midi/MidiManager;
    invoke-virtual {v1}, Landroid/media/midi/MidiManager;->getDevices()[Landroid/media/midi/MidiDeviceInfo;

    move-result-object v2

    .line 518
    .local v2, "infos":[Landroid/media/midi/MidiDeviceInfo;
    iget-boolean v3, p0, Lcom/winlator/SettingsFragment;->midiDeviceCallbackRegistered:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 519
    iput-boolean v4, p0, Lcom/winlator/SettingsFragment;->midiDeviceCallbackRegistered:Z

    .line 520
    new-instance v3, Lcom/winlator/SettingsFragment$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/winlator/SettingsFragment$1;-><init>(Lcom/winlator/SettingsFragment;Landroid/widget/Spinner;Ljava/lang/String;)V

    new-instance v5, Landroid/os/Handler;

    .line 530
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 520
    invoke-virtual {v1, v3, v5}, Landroid/media/midi/MidiManager;->registerDeviceCallback(Landroid/media/midi/MidiManager$DeviceCallback;Landroid/os/Handler;)V

    .line 533
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v5, 0x7f100134

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    const v5, 0x7f100028

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    array-length v5, v2

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_2

    aget-object v8, v2, v7

    .line 538
    .local v8, "info":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {v8}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result v9

    if-lez v9, :cond_1

    .line 539
    invoke-virtual {v8}, Landroid/media/midi/MidiDeviceInfo;->getProperties()Landroid/os/Bundle;

    move-result-object v9

    .line 540
    .local v9, "properties":Landroid/os/Bundle;
    const-string v10, "name"

    invoke-virtual {v9, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    .end local v8    # "info":Landroid/media/midi/MidiDeviceInfo;
    .end local v9    # "properties":Landroid/os/Bundle;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 544
    :cond_2
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v7, 0x1090009

    invoke-direct {v5, v0, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 546
    const-string v5, "none"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 547
    invoke-virtual {p1, v6, v6}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    goto :goto_1

    .line 549
    :cond_3
    const-string v5, "auto"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {p1, p2}, Lcom/winlator/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 550
    :cond_4
    invoke-virtual {p1, v4, v6}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    .line 552
    :cond_5
    :goto_1
    return-void
.end method

.method private loadWineDebugChannels(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;

    .line 457
    .local p2, "debugChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 458
    .local v3, "context":Landroid/content/Context;
    const v4, 0x7f09008c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 459
    .local v4, "container":Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 461
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 462
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0c00bf

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 463
    .local v8, "itemView":Landroid/view/View;
    const v9, 0x7f0900f9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 464
    const v10, 0x7f090025

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 466
    const v11, 0x7f090004

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 467
    .local v11, "addButton":Landroid/view/View;
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 468
    new-instance v12, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda11;

    invoke-direct {v12, v0, v3, v2, v1}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda11;-><init>(Lcom/winlator/SettingsFragment;Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/View;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    const v12, 0x7f09002a

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 483
    .local v12, "resetButton":Landroid/view/View;
    invoke-virtual {v12, v7}, Landroid/view/View;->setVisibility(I)V

    .line 484
    new-instance v13, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda12;

    invoke-direct {v13, v0, v2, v1}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda12;-><init>(Lcom/winlator/SettingsFragment;Ljava/util/ArrayList;Landroid/view/View;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 491
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_0

    .line 492
    invoke-virtual {v5, v6, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 493
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 494
    .local v14, "textView":Landroid/widget/TextView;
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    move v15, v13

    .line 496
    .local v15, "index":I
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda13;

    invoke-direct {v7, v0, v2, v15, v1}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda13;-><init>(Lcom/winlator/SettingsFragment;Ljava/util/ArrayList;ILandroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 491
    .end local v14    # "textView":Landroid/widget/TextView;
    .end local v15    # "index":I
    add-int/lit8 v13, v13, 0x1

    const v6, 0x7f0c00bf

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    nop

    .line 502
    .end local v13    # "i":I
    return-void
.end method

.method private loadWineVersionSpinner(Landroid/view/View;Landroid/widget/Spinner;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sWineVersion"    # Landroid/widget/Spinner;

    .line 374
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 375
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/winlator/core/WineInstaller;->getInstalledWineInfos(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 376
    .local v1, "wineInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/core/WineInfo;>;"
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-direct {v2, v0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 378
    const v2, 0x7f09001e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda17;-><init>(Lcom/winlator/SettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    const v2, 0x7f090029

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda18;

    invoke-direct {v3, p0, v1, p2, p1}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda18;-><init>(Lcom/winlator/SettingsFragment;Ljava/util/ArrayList;Landroid/widget/Spinner;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    return-void
.end method

.method private putGamepadPlayerConfigs(Landroid/view/View;Landroid/content/SharedPreferences$Editor;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "editor"    # Landroid/content/SharedPreferences$Editor;

    .line 571
    const v0, 0x7f090076

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 572
    .local v0, "container":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 573
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 574
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 575
    .local v3, "config":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gamepad_player"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 576
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 577
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 579
    :cond_0
    invoke-interface {p2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 572
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "config":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 581
    .end local v1    # "i":I
    return-void
.end method

.method private removeInstalledWine(Lcom/winlator/core/WineInfo;Ljava/lang/Runnable;)V
    .locals 12
    .param p1, "wineInfo"    # Lcom/winlator/core/WineInfo;
    .param p2, "onSuccess"    # Ljava/lang/Runnable;

    .line 344
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    .line 345
    .local v6, "activity":Landroid/app/Activity;
    new-instance v0, Lcom/winlator/container/ContainerManager;

    invoke-direct {v0, v6}, Lcom/winlator/container/ContainerManager;-><init>(Landroid/content/Context;)V

    move-object v7, v0

    .line 347
    .local v7, "manager":Lcom/winlator/container/ContainerManager;
    invoke-virtual {v7}, Lcom/winlator/container/ContainerManager;->getContainers()Ljava/util/ArrayList;

    move-result-object v8

    .line 348
    .local v8, "containers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/container/Container;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const v4, 0x7f100198

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/container/Container;

    .line 349
    .local v1, "container":Lcom/winlator/container/Container;
    invoke-virtual {v1}, Lcom/winlator/container/Container;->getWineVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/winlator/core/WineInfo;->identifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    invoke-static {v6, v4}, Lcom/winlator/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 351
    return-void

    .line 349
    :cond_0
    nop

    .line 353
    .end local v1    # "container":Lcom/winlator/container/Container;
    goto :goto_0

    .line 355
    :cond_1
    invoke-static {v6}, Lcom/winlator/xenvironment/RootFS;->find(Landroid/content/Context;)Lcom/winlator/xenvironment/RootFS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/xenvironment/RootFS;->getInstalledWineDir()Ljava/io/File;

    move-result-object v9

    .line 356
    .local v9, "installedWineDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v0, p1, Lcom/winlator/core/WineInfo;->path:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    .local v2, "wineDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "container-pattern-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/winlator/core/WineInfo;->fullVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tzst"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 359
    .local v3, "containerPatternFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    goto :goto_1

    .line 364
    :cond_3
    iget-object v0, p0, Lcom/winlator/SettingsFragment;->preloaderDialog:Lcom/winlator/core/PreloaderDialog;

    const v1, 0x7f10015f

    invoke-virtual {v0, v1}, Lcom/winlator/core/PreloaderDialog;->show(I)V

    .line 365
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    new-instance v11, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda27;

    move-object v0, v11

    move-object v1, p0

    move-object v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda27;-><init>(Lcom/winlator/SettingsFragment;Ljava/io/File;Ljava/io/File;Ljava/lang/Runnable;Landroid/app/Activity;)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 371
    return-void

    .line 360
    :goto_1
    invoke-static {v6, v4}, Lcom/winlator/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 361
    return-void
.end method

.method public static resetPreferenceVersions(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 4
    .param p0, "activity"    # Landroidx/appcompat/app/AppCompatActivity;

    .line 505
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 506
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 507
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "box64_version"

    const-string v3, "0.4.4"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 508
    const-string v2, "current_box64_version"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 509
    const-string v2, "current_graphics_driver"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 510
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 511
    return-void
.end method

.method private selectWineFileForInstall()V
    .locals 4

    .line 390
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 391
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, v0}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda20;-><init>(Lcom/winlator/SettingsFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/winlator/SettingsFragment;->selectWineFileCallback:Lcom/winlator/core/Callback;

    .line 412
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, p0, v1, v3}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 416
    return-void
.end method

.method private showWineInstallDialog(Lcom/winlator/core/WineInfo;)V
    .locals 7
    .param p1, "wineInfo"    # Lcom/winlator/core/WineInfo;

    .line 435
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 436
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/winlator/contentdialog/ContentDialog;

    const v2, 0x7f0c00c0

    invoke-direct {v1, v0, v2}, Lcom/winlator/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 437
    .local v1, "dialog":Lcom/winlator/contentdialog/ContentDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 438
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 439
    const v2, 0x7f1000d4

    invoke-virtual {v1, v2}, Lcom/winlator/contentdialog/ContentDialog;->setTitle(I)V

    .line 440
    const v2, 0x7f0800d3

    invoke-virtual {v1, v2}, Lcom/winlator/contentdialog/ContentDialog;->setIcon(I)V

    .line 442
    const v2, 0x7f09005a

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 443
    .local v2, "etVersion":Landroid/widget/EditText;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wine "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/winlator/core/WineInfo;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/winlator/core/WineInfo;->subversion:Ljava/lang/String;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/winlator/core/WineInfo;->subversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    const v3, 0x7f090058

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 446
    .local v3, "etSize":Landroid/widget/EditText;
    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 447
    .local v4, "totalSizeRef":Ljava/util/concurrent/atomic/AtomicLong;
    new-instance v5, Ljava/io/File;

    iget-object v6, p1, Lcom/winlator/core/WineInfo;->path:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda29;

    invoke-direct {v6, v4, v3}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda29;-><init>(Ljava/util/concurrent/atomic/AtomicLong;Landroid/widget/EditText;)V

    invoke-static {v5, v6}, Lcom/winlator/core/FileUtils;->getSizeAsync(Ljava/io/File;Lcom/winlator/core/Callback;)V

    .line 452
    new-instance v5, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda30;

    invoke-direct {v5, p0, p1}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda30;-><init>(Lcom/winlator/SettingsFragment;Lcom/winlator/core/WineInfo;)V

    invoke-virtual {v1, v5}, Lcom/winlator/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 453
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 454
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 98
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/winlator/SettingsFragment;->selectWineFileCallback:Lcom/winlator/core/Callback;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/winlator/SettingsFragment;->selectWineFileCallback:Lcom/winlator/core/Callback;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/winlator/core/Callback;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    goto :goto_1

    .line 104
    :cond_0
    :goto_0
    goto :goto_2

    .line 102
    :goto_1
    nop

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100195

    invoke-static {v1, v2}, Lcom/winlator/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/SettingsFragment;->selectWineFileCallback:Lcom/winlator/core/Callback;

    .line 107
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 85
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 87
    new-instance v0, Lcom/winlator/core/PreloaderDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/winlator/core/PreloaderDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/winlator/SettingsFragment;->preloaderDialog:Lcom/winlator/core/PreloaderDialog;

    .line 88
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 61
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 112
    move-object/from16 v15, p0

    const v2, 0x7f0c00a0

    const/4 v3, 0x0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    invoke-virtual {v14, v2, v13, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 113
    .local v12, "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 114
    .local v11, "context":Landroid/content/Context;
    invoke-static {v11}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, v15, Lcom/winlator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    .line 116
    const v2, 0x7f0900d5

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/Spinner;

    .line 117
    .local v10, "sSoundFont":Landroid/widget/Spinner;
    iget-object v2, v15, Lcom/winlator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "soundfont"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, "soundfont":Ljava/lang/String;
    sget-object v2, Lcom/winlator/core/GeneralComponents$Type;->SOUNDFONT:Lcom/winlator/core/GeneralComponents$Type;

    const v4, 0x7f0900e1

    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v7, "SONiVOX-EAS-GM-Wavetable"

    invoke-static {v2, v4, v10, v6, v7}, Lcom/winlator/core/GeneralComponents;->initViews(Lcom/winlator/core/GeneralComponents$Type;Landroid/view/View;Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const v2, 0x7f09002f

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4, v11, v10}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/widget/Spinner;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v2, 0x7f0900c8

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/widget/Spinner;

    .line 122
    .local v4, "sMIDIInputDevice":Landroid/widget/Spinner;
    iget-object v2, v15, Lcom/winlator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v7, "midi_input_device"

    const-string v8, "auto"

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "midiInputDevice":Ljava/lang/String;
    invoke-direct {v15, v4, v2}, Lcom/winlator/SettingsFragment;->loadMIDIInputDeviceSpinner(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 125
    const v7, 0x7f0900b4

    invoke-virtual {v12, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Landroid/widget/Spinner;

    .line 126
    .local v9, "sBox64Version":Landroid/widget/Spinner;
    iget-object v7, v15, Lcom/winlator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "box64_version"

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "box64Version":Ljava/lang/String;
    sget-object v7, Lcom/winlator/core/GeneralComponents$Type;->BOX64:Lcom/winlator/core/GeneralComponents$Type;

    const v8, 0x7f090032

    invoke-virtual {v12, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const-string v0, "0.4.4"

    invoke-static {v7, v8, v9, v5, v0}, Lcom/winlator/core/GeneralComponents;->initViews(Lcom/winlator/core/GeneralComponents$Type;Landroid/view/View;Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const v0, 0x7f0900b3

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 130
    .local v0, "sBox64Preset":Landroid/widget/Spinner;
    invoke-direct {v15, v12, v0}, Lcom/winlator/SettingsFragment;->loadBox64PresetSpinner(Landroid/view/View;Landroid/widget/Spinner;)V

    .line 132
    const v7, 0x7f09009e

    invoke-virtual {v12, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroid/widget/RadioGroup;

    .line 133
    .local v8, "rgAppTheme":Landroid/widget/RadioGroup;
    iget-object v7, v15, Lcom/winlator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "app_theme"

    const/4 v3, 0x1

    invoke-interface {v7, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    const v1, 0x7f090099

    goto :goto_0

    :cond_0
    const v1, 0x7f09009c

    .line 134
    .local v1, "oldAppThemeId":I
    :goto_0
    invoke-virtual {v8, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 136
    const v7, 0x7f090040

    invoke-virtual {v12, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 137
    .local v7, "cbMoveCursorToTouchpoint":Landroid/widget/CheckBox;
    iget-object v3, v15, Lcom/winlator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    .end local v0    # "sBox64Preset":Landroid/widget/Spinner;
    .local v20, "sBox64Preset":Landroid/widget/Spinner;
    const-string v0, "move_cursor_to_touchpoint"

    move/from16 v23, v1

    const/4 v1, 0x0

    .end local v1    # "oldAppThemeId":I
    .local v23, "oldAppThemeId":I
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 139
    const v0, 0x7f090034

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/CheckBox;

    .line 140
    .local v3, "cbCapturePointerOnExternalMouse":Landroid/widget/CheckBox;
    iget-object v0, v15, Lcom/winlator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "capture_pointer_on_external_mouse"

    move-object/from16 v24, v2

    const/4 v2, 0x1

    .end local v2    # "midiInputDevice":Ljava/lang/String;
    .local v24, "midiInputDevice":Ljava/lang/String;
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 142
    const v0, 0x7f090041

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/CheckBox;

    .line 143
    .local v1, "cbOpenAndroidBrowserFromWine":Landroid/widget/CheckBox;
    iget-object v0, v15, Lcom/winlator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v25, v3

    .end local v3    # "cbCapturePointerOnExternalMouse":Landroid/widget/CheckBox;
    .local v25, "cbCapturePointerOnExternalMouse":Landroid/widget/CheckBox;
    const-string v3, "open_android_browser_from_wine"

    const/4 v2, 0x0

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 145
    const v0, 0x7f090048

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/CheckBox;

    .line 146
    .local v3, "cbUseAndroidClipboardOnWine":Landroid/widget/CheckBox;
    iget-object v0, v15, Lcom/winlator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "use_android_clipboard_on_wine"

    move-object/from16 v26, v1

    const/4 v1, 0x0

    .end local v1    # "cbOpenAndroidBrowserFromWine":Landroid/widget/CheckBox;
    .local v26, "cbOpenAndroidBrowserFromWine":Landroid/widget/CheckBox;
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 148
    const v0, 0x7f090039

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/CheckBox;

    .line 149
    .local v2, "cbEnableBackgroundWakelock":Landroid/widget/CheckBox;
    iget-object v0, v15, Lcom/winlator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v27, v3

    .end local v3    # "cbUseAndroidClipboardOnWine":Landroid/widget/CheckBox;
    .local v27, "cbUseAndroidClipboardOnWine":Landroid/widget/CheckBox;
    const-string v3, "enable_background_wakelock"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 151
    const v0, 0x7f090038

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/CheckBox;

    .line 152
    .local v3, "cbEnableBackgroundProtection":Landroid/widget/CheckBox;
    iget-object v0, v15, Lcom/winlator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v28, v4

    .end local v4    # "sMIDIInputDevice":Landroid/widget/Spinner;
    .local v28, "sMIDIInputDevice":Landroid/widget/Spinner;
    const-string v4, "enable_background_protection"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 153
    new-instance v0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, v15, v2, v11}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/SettingsFragment;Landroid/widget/CheckBox;Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 172
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 174
    const v0, 0x7f090044

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/CheckBox;

    .line 175
    .local v4, "cbSaveMemOnRunFromSteam":Landroid/widget/CheckBox;
    iget-object v0, v15, Lcom/winlator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "save_mem_on_run_from_steam"

    move-object/from16 v29, v2

    const/4 v2, 0x1

    .end local v2    # "cbEnableBackgroundWakelock":Landroid/widget/CheckBox;
    .local v29, "cbEnableBackgroundWakelock":Landroid/widget/CheckBox;
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 177
    const v0, 0x7f09003d

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/CheckBox;

    .line 178
    .local v2, "cbEnableWineDebug":Landroid/widget/CheckBox;
    iget-object v0, v15, Lcom/winlator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "enable_wine_debug"

    move-object/from16 v30, v3

    const/4 v3, 0x0

    .end local v3    # "cbEnableBackgroundProtection":Landroid/widget/CheckBox;
    .local v30, "cbEnableBackgroundProtection":Landroid/widget/CheckBox;
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v15, Lcom/winlator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "wine_debug_channels"

    move-object/from16 v31, v2

    .end local v2    # "cbEnableWineDebug":Landroid/widget/CheckBox;
    .local v31, "cbEnableWineDebug":Landroid/widget/CheckBox;
    const-string v2, "warn,err,fixme"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v0

    .line 181
    .local v3, "wineDebugChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v15, v12, v3}, Lcom/winlator/SettingsFragment;->loadWineDebugChannels(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 183
    const v0, 0x7f0900b2

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/Spinner;

    .line 184
    .local v2, "sBox64Logs":Landroid/widget/Spinner;
    iget-object v0, v15, Lcom/winlator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "box64_logs"

    move-object/from16 v32, v3

    const/4 v3, 0x0

    .end local v3    # "wineDebugChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v32, "wineDebugChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 186
    const v0, 0x7f090043

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/CheckBox;

    .line 187
    .local v1, "cbSaveLogsToFile":Landroid/widget/CheckBox;
    iget-object v0, v15, Lcom/winlator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v18, v2

    .end local v2    # "sBox64Logs":Landroid/widget/Spinner;
    .local v18, "sBox64Logs":Landroid/widget/Spinner;
    const-string v2, "save_logs_to_file"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 189
    const v0, 0x7f090054

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/EditText;

    .line 190
    .local v2, "etLogFile":Landroid/widget/EditText;
    invoke-static {}, Lcom/winlator/widget/LogView;->getLogFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "defaultLogPath":Ljava/lang/String;
    iget-object v3, v15, Lcom/winlator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v33, v4

    .end local v4    # "cbSaveMemOnRunFromSteam":Landroid/widget/CheckBox;
    .local v33, "cbSaveMemOnRunFromSteam":Landroid/widget/CheckBox;
    const-string v4, "log_file"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 193
    new-instance v3, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda2;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 195
    const v3, 0x7f0900a8

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/winlator/widget/SeekBar;

    move-object/from16 v34, v7

    .end local v7    # "cbMoveCursorToTouchpoint":Landroid/widget/CheckBox;
    .local v4, "sbCursorSpeed":Lcom/winlator/widget/SeekBar;
    .local v34, "cbMoveCursorToTouchpoint":Landroid/widget/CheckBox;
    move-object v7, v4

    .line 196
    iget-object v3, v15, Lcom/winlator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v35, v0

    .end local v0    # "defaultLogPath":Ljava/lang/String;
    .local v35, "defaultLogPath":Ljava/lang/String;
    const-string v0, "cursor_speed"

    move-object/from16 v36, v1

    .end local v1    # "cbSaveLogsToFile":Landroid/widget/CheckBox;
    .local v36, "cbSaveLogsToFile":Landroid/widget/CheckBox;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    invoke-virtual {v4, v0}, Lcom/winlator/widget/SeekBar;->setValue(F)V

    .line 198
    const v0, 0x7f0900a7

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/winlator/widget/SeekBar;

    move-object/from16 v37, v8

    .end local v8    # "rgAppTheme":Landroid/widget/RadioGroup;
    .local v0, "sbCursorSize":Lcom/winlator/widget/SeekBar;
    .local v37, "rgAppTheme":Landroid/widget/RadioGroup;
    move-object v8, v0

    .line 199
    iget-object v3, v15, Lcom/winlator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v38, v2

    .end local v2    # "etLogFile":Landroid/widget/EditText;
    .local v38, "etLogFile":Landroid/widget/EditText;
    const-string v2, "cursor_scale"

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/winlator/widget/SeekBar;->setValue(F)V

    .line 201
    const v1, 0x7f09004b

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/winlator/widget/ColorPickerView;

    move-object/from16 v39, v9

    .end local v9    # "sBox64Version":Landroid/widget/Spinner;
    .local v3, "cpvCursorColor":Lcom/winlator/widget/ColorPickerView;
    .local v39, "sBox64Version":Landroid/widget/Spinner;
    move-object v9, v3

    .line 202
    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v3, v1}, Lcom/winlator/widget/ColorPickerView;->setPalette([I)V

    .line 203
    iget-object v1, v15, Lcom/winlator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "cursor_color"

    move-object/from16 v17, v0

    const v0, 0xffffff

    .end local v0    # "sbCursorSize":Lcom/winlator/widget/SeekBar;
    .local v17, "sbCursorSize":Lcom/winlator/widget/SeekBar;
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/winlator/widget/ColorPickerView;->setColor(I)V

    .line 205
    const v0, 0x7f0900bf

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/Spinner;

    .local v2, "sGamepadModel":Landroid/widget/Spinner;
    move-object/from16 v19, v2

    .line 206
    invoke-direct {v15, v2}, Lcom/winlator/SettingsFragment;->loadGamepadModelSpinner(Landroid/widget/Spinner;)V

    .line 208
    const v0, 0x7f0900de

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/Spinner;

    .line 209
    .local v1, "sWineVersion":Landroid/widget/Spinner;
    invoke-direct {v15, v12, v1}, Lcom/winlator/SettingsFragment;->loadWineVersionSpinner(Landroid/view/View;Landroid/widget/Spinner;)V

    .line 211
    const v0, 0x7f0900c7

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .local v0, "sLanguage":Landroid/widget/Spinner;
    move-object/from16 v21, v0

    .line 212
    move-object/from16 v16, v1

    .end local v1    # "sWineVersion":Landroid/widget/Spinner;
    .local v16, "sWineVersion":Landroid/widget/Spinner;
    invoke-static {v11}, Lcom/winlator/core/LocaleHelper;->getLocaleIndex(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 213
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v40

    .local v40, "oldLCIndex":I
    move/from16 v22, v40

    .line 215
    const v1, 0x7f090024

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v41, v0

    .end local v0    # "sLanguage":Landroid/widget/Spinner;
    .local v41, "sLanguage":Landroid/widget/Spinner;
    new-instance v0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, v15, v11}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/SettingsFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    invoke-direct {v15, v12}, Lcom/winlator/SettingsFragment;->loadGamepadPlayerConfigs(Landroid/view/View;)V

    .line 225
    const v0, 0x7f09000e

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda4;

    move-object/from16 v44, v0

    move-object/from16 v42, v17

    move-object/from16 v43, v41

    move-object/from16 v41, v35

    move-object/from16 v35, v20

    .end local v17    # "sbCursorSize":Lcom/winlator/widget/SeekBar;
    .end local v20    # "sBox64Preset":Landroid/widget/Spinner;
    .local v35, "sBox64Preset":Landroid/widget/Spinner;
    .local v41, "defaultLogPath":Ljava/lang/String;
    .local v42, "sbCursorSize":Lcom/winlator/widget/SeekBar;
    .local v43, "sLanguage":Landroid/widget/Spinner;
    move-object/from16 v48, v1

    move-object/from16 v47, v16

    move-object/from16 v45, v26

    move-object/from16 v46, v36

    move/from16 v36, v23

    .end local v16    # "sWineVersion":Landroid/widget/Spinner;
    .end local v23    # "oldAppThemeId":I
    .end local v26    # "cbOpenAndroidBrowserFromWine":Landroid/widget/CheckBox;
    .local v36, "oldAppThemeId":I
    .local v45, "cbOpenAndroidBrowserFromWine":Landroid/widget/CheckBox;
    .local v46, "cbSaveLogsToFile":Landroid/widget/CheckBox;
    .local v47, "sWineVersion":Landroid/widget/Spinner;
    move-object/from16 v1, p0

    move-object/from16 v51, v2

    move-object/from16 v49, v18

    move-object/from16 v50, v38

    move-object/from16 v38, v31

    move-object/from16 v31, v29

    move-object/from16 v29, v24

    .end local v2    # "sGamepadModel":Landroid/widget/Spinner;
    .end local v18    # "sBox64Logs":Landroid/widget/Spinner;
    .end local v24    # "midiInputDevice":Ljava/lang/String;
    .local v29, "midiInputDevice":Ljava/lang/String;
    .local v31, "cbEnableBackgroundWakelock":Landroid/widget/CheckBox;
    .local v38, "cbEnableWineDebug":Landroid/widget/CheckBox;
    .local v49, "sBox64Logs":Landroid/widget/Spinner;
    .local v50, "etLogFile":Landroid/widget/EditText;
    .local v51, "sGamepadModel":Landroid/widget/Spinner;
    move-object v2, v10

    move-object/from16 v54, v3

    move-object/from16 v52, v30

    move-object/from16 v53, v32

    move-object/from16 v30, v25

    move-object/from16 v32, v27

    .end local v3    # "cpvCursorColor":Lcom/winlator/widget/ColorPickerView;
    .end local v25    # "cbCapturePointerOnExternalMouse":Landroid/widget/CheckBox;
    .end local v27    # "cbUseAndroidClipboardOnWine":Landroid/widget/CheckBox;
    .local v30, "cbCapturePointerOnExternalMouse":Landroid/widget/CheckBox;
    .local v32, "cbUseAndroidClipboardOnWine":Landroid/widget/CheckBox;
    .local v52, "cbEnableBackgroundProtection":Landroid/widget/CheckBox;
    .local v53, "wineDebugChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v54, "cpvCursorColor":Lcom/winlator/widget/ColorPickerView;
    move-object/from16 v3, v39

    move-object/from16 v55, v4

    .end local v4    # "sbCursorSpeed":Lcom/winlator/widget/SeekBar;
    .local v55, "sbCursorSpeed":Lcom/winlator/widget/SeekBar;
    move-object/from16 v4, v35

    move-object/from16 v56, v5

    .end local v5    # "box64Version":Ljava/lang/String;
    .local v56, "box64Version":Ljava/lang/String;
    move-object/from16 v5, v34

    move-object/from16 v57, v6

    .end local v6    # "soundfont":Ljava/lang/String;
    .local v57, "soundfont":Ljava/lang/String;
    move-object/from16 v6, v30

    move-object/from16 v58, v10

    .end local v10    # "sSoundFont":Landroid/widget/Spinner;
    .local v58, "sSoundFont":Landroid/widget/Spinner;
    move-object/from16 v10, v38

    move-object/from16 v59, v11

    .end local v11    # "context":Landroid/content/Context;
    .local v59, "context":Landroid/content/Context;
    move-object/from16 v11, v49

    move-object/from16 v60, v12

    .end local v12    # "view":Landroid/view/View;
    .local v60, "view":Landroid/view/View;
    move-object/from16 v12, v46

    move-object/from16 v13, v45

    move-object/from16 v14, v32

    move-object/from16 v15, v52

    move-object/from16 v16, v31

    move-object/from16 v17, v33

    move-object/from16 v18, v60

    move-object/from16 v20, v37

    move-object/from16 v24, v28

    move-object/from16 v25, v50

    move-object/from16 v26, v41

    move-object/from16 v27, v53

    invoke-direct/range {v0 .. v27}, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/SettingsFragment;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Lcom/winlator/widget/SeekBar;Lcom/winlator/widget/SeekBar;Lcom/winlator/widget/ColorPickerView;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/view/View;Landroid/widget/Spinner;Landroid/widget/RadioGroup;Landroid/widget/Spinner;IILandroid/widget/Spinner;Landroid/widget/EditText;Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object/from16 v1, v44

    move-object/from16 v0, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    return-object v60

    nop

    :array_0
    .array-data 4
        0xffffff
        0x0
        0x651fff
        0xffea00
        0xff9100
        0xf50057
        0xb0ff
        0x1de9b6
    .end array-data
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 92
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f10016c

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 94
    return-void
.end method
