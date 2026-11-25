.class public Lcom/winlator/contentdialog/ScreenEffectDialog;
.super Lcom/winlator/contentdialog/ContentDialog;
.source "ScreenEffectDialog.java"


# instance fields
.field private final activity:Lcom/winlator/XServerDisplayActivity;

.field private final cbEnableCRTShader:Landroid/widget/CheckBox;

.field private final cbEnableFXAA:Landroid/widget/CheckBox;

.field private final preferences:Landroid/content/SharedPreferences;

.field private final sProfile:Landroid/widget/Spinner;

.field private final sbBrightness:Lcom/winlator/widget/SeekBar;

.field private final sbContrast:Lcom/winlator/widget/SeekBar;

.field private final sbGamma:Lcom/winlator/widget/SeekBar;


# direct methods
.method public static synthetic $r8$lambda$GAncEO_2W8V5B00qAuF3ffTdVuY(Lcom/winlator/contentdialog/ScreenEffectDialog;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/contentdialog/ScreenEffectDialog;->lambda$new$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HyM7Rs-bIqgJC4Wx6sv4WSd0LYQ(Lcom/winlator/contentdialog/ScreenEffectDialog;Lcom/winlator/XServerDisplayActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/contentdialog/ScreenEffectDialog;->lambda$new$1(Lcom/winlator/XServerDisplayActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SlCATfTS3CGfBU-KHBTxpqoO0Ls(Lcom/winlator/contentdialog/ScreenEffectDialog;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/contentdialog/ScreenEffectDialog;->lambda$new$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZBGXLIN6HdrBtXFuBAgEQ-hTITo(Lcom/winlator/contentdialog/ScreenEffectDialog;Lcom/winlator/XServerDisplayActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/contentdialog/ScreenEffectDialog;->lambda$new$3(Lcom/winlator/XServerDisplayActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_z5jioc9ydgt8PdXs0OLouEge9E(Lcom/winlator/contentdialog/ScreenEffectDialog;Lcom/winlator/renderer/effects/ColorEffect;Lcom/winlator/renderer/GLRenderer;Lcom/winlator/renderer/effects/FXAAEffect;Lcom/winlator/renderer/effects/CRTEffect;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/winlator/contentdialog/ScreenEffectDialog;->lambda$new$4(Lcom/winlator/renderer/effects/ColorEffect;Lcom/winlator/renderer/GLRenderer;Lcom/winlator/renderer/effects/FXAAEffect;Lcom/winlator/renderer/effects/CRTEffect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s27uHw1TIvcwZ7iah4bhpHiIMu0(Lcom/winlator/contentdialog/ScreenEffectDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/contentdialog/ScreenEffectDialog;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/winlator/XServerDisplayActivity;)V
    .locals 12
    .param p1, "activity"    # Lcom/winlator/XServerDisplayActivity;

    .line 37
    const v0, 0x7f0c009c

    invoke-direct {p0, p1, v0}, Lcom/winlator/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 38
    iput-object p1, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    .line 39
    const v0, 0x7f100168

    invoke-virtual {p0, v0}, Lcom/winlator/contentdialog/ContentDialog;->setTitle(I)V

    .line 40
    const v0, 0x7f0800ce

    invoke-virtual {p0, v0}, Lcom/winlator/contentdialog/ContentDialog;->setIcon(I)V

    .line 42
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->preferences:Landroid/content/SharedPreferences;

    .line 44
    invoke-virtual {p1}, Lcom/winlator/XServerDisplayActivity;->getXServerView()Lcom/winlator/widget/XServerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/widget/XServerView;->getRenderer()Lcom/winlator/renderer/GLRenderer;

    move-result-object v0

    .line 45
    .local v0, "renderer":Lcom/winlator/renderer/GLRenderer;
    iget-object v1, v0, Lcom/winlator/renderer/GLRenderer;->effectComposer:Lcom/winlator/renderer/EffectComposer;

    const-class v2, Lcom/winlator/renderer/effects/ColorEffect;

    invoke-virtual {v1, v2}, Lcom/winlator/renderer/EffectComposer;->getEffect(Ljava/lang/Class;)Lcom/winlator/renderer/effects/Effect;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/winlator/renderer/effects/ColorEffect;

    .line 46
    .local v7, "currentColorEffect":Lcom/winlator/renderer/effects/ColorEffect;
    if-eqz v7, :cond_0

    move-object v3, v7

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/winlator/renderer/effects/ColorEffect;

    invoke-direct {v1}, Lcom/winlator/renderer/effects/ColorEffect;-><init>()V

    move-object v3, v1

    .line 47
    .local v3, "colorEffect":Lcom/winlator/renderer/effects/ColorEffect;
    :goto_0
    iget-object v1, v0, Lcom/winlator/renderer/GLRenderer;->effectComposer:Lcom/winlator/renderer/EffectComposer;

    const-class v2, Lcom/winlator/renderer/effects/FXAAEffect;

    invoke-virtual {v1, v2}, Lcom/winlator/renderer/EffectComposer;->getEffect(Ljava/lang/Class;)Lcom/winlator/renderer/effects/Effect;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/winlator/renderer/effects/FXAAEffect;

    .line 48
    .local v8, "fxaaEffect":Lcom/winlator/renderer/effects/FXAAEffect;
    iget-object v1, v0, Lcom/winlator/renderer/GLRenderer;->effectComposer:Lcom/winlator/renderer/EffectComposer;

    const-class v2, Lcom/winlator/renderer/effects/CRTEffect;

    invoke-virtual {v1, v2}, Lcom/winlator/renderer/EffectComposer;->getEffect(Ljava/lang/Class;)Lcom/winlator/renderer/effects/Effect;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/winlator/renderer/effects/CRTEffect;

    .line 50
    .local v9, "crtEffect":Lcom/winlator/renderer/effects/CRTEffect;
    const v1, 0x7f0900cf

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sProfile:Landroid/widget/Spinner;

    .line 51
    const v1, 0x7f0900a5

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/winlator/widget/SeekBar;

    iput-object v1, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sbBrightness:Lcom/winlator/widget/SeekBar;

    .line 52
    const v1, 0x7f0900a6

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/winlator/widget/SeekBar;

    iput-object v1, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sbContrast:Lcom/winlator/widget/SeekBar;

    .line 53
    const v1, 0x7f0900a9

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/winlator/widget/SeekBar;

    iput-object v1, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sbGamma:Lcom/winlator/widget/SeekBar;

    .line 54
    const v1, 0x7f09003b

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->cbEnableFXAA:Landroid/widget/CheckBox;

    .line 55
    const v1, 0x7f09003a

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->cbEnableCRTShader:Landroid/widget/CheckBox;

    .line 57
    iget-object v1, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sbBrightness:Lcom/winlator/widget/SeekBar;

    invoke-virtual {v3}, Lcom/winlator/renderer/effects/ColorEffect;->getBrightness()F

    move-result v2

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/winlator/widget/SeekBar;->setValue(F)V

    .line 58
    iget-object v1, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sbContrast:Lcom/winlator/widget/SeekBar;

    invoke-virtual {v3}, Lcom/winlator/renderer/effects/ColorEffect;->getContrast()F

    move-result v2

    mul-float/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/winlator/widget/SeekBar;->setValue(F)V

    .line 59
    iget-object v1, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sbGamma:Lcom/winlator/widget/SeekBar;

    invoke-virtual {v3}, Lcom/winlator/renderer/effects/ColorEffect;->getGamma()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/winlator/widget/SeekBar;->setValue(F)V

    .line 60
    iget-object v1, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->cbEnableFXAA:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v10

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 61
    iget-object v1, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->cbEnableCRTShader:Landroid/widget/CheckBox;

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    move v2, v10

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 63
    iget-object v1, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sProfile:Landroid/widget/Spinner;

    new-instance v2, Lcom/winlator/contentdialog/ScreenEffectDialog$1;

    invoke-direct {v2, p0}, Lcom/winlator/contentdialog/ScreenEffectDialog$1;-><init>(Lcom/winlator/contentdialog/ScreenEffectDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 74
    iget-object v1, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sProfile:Landroid/widget/Spinner;

    invoke-virtual {p1}, Lcom/winlator/XServerDisplayActivity;->getScreenEffectProfile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/winlator/contentdialog/ScreenEffectDialog;->loadProfileSpinner(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 75
    const v1, 0x7f090009

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/winlator/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/winlator/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/contentdialog/ScreenEffectDialog;Lcom/winlator/XServerDisplayActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v1, 0x7f090028

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/winlator/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/winlator/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/contentdialog/ScreenEffectDialog;Lcom/winlator/XServerDisplayActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    new-instance v11, Lcom/winlator/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda2;

    move-object v1, v11

    move-object v2, p0

    move-object v4, v0

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/winlator/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/contentdialog/ScreenEffectDialog;Lcom/winlator/renderer/effects/ColorEffect;Lcom/winlator/renderer/GLRenderer;Lcom/winlator/renderer/effects/FXAAEffect;Lcom/winlator/renderer/effects/CRTEffect;)V

    invoke-virtual {p0, v11}, Lcom/winlator/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 116
    const v1, 0x7f09002a

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 117
    .local v1, "resetButton":Landroid/widget/Button;
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 118
    new-instance v2, Lcom/winlator/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/winlator/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/contentdialog/ScreenEffectDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/winlator/contentdialog/ScreenEffectDialog;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/winlator/contentdialog/ScreenEffectDialog;

    .line 26
    iget-object v0, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sProfile:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/winlator/contentdialog/ScreenEffectDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/winlator/contentdialog/ScreenEffectDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Lcom/winlator/contentdialog/ScreenEffectDialog;->loadProfile(Ljava/lang/String;)V

    return-void
.end method

.method private addProfile(Ljava/lang/String;Landroid/widget/Spinner;)V
    .locals 6
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "sProfile"    # Landroid/widget/Spinner;

    .line 174
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->preferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v3, "screen_effect_profiles"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 175
    .local v0, "profiles":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v4, ":"

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 176
    .local v2, "profile":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 177
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    .line 178
    .end local v2    # "profile":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 179
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v1, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 181
    invoke-direct {p0, p2, p1}, Lcom/winlator/contentdialog/ScreenEffectDialog;->loadProfileSpinner(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sProfile:Landroid/widget/Spinner;

    invoke-direct {p0, p1, v0}, Lcom/winlator/contentdialog/ScreenEffectDialog;->addProfile(Ljava/lang/String;Landroid/widget/Spinner;)V

    .line 77
    return-void
.end method

.method private synthetic lambda$new$1(Lcom/winlator/XServerDisplayActivity;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Lcom/winlator/XServerDisplayActivity;
    .param p2, "v"    # Landroid/view/View;

    .line 75
    new-instance v0, Lcom/winlator/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/winlator/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/contentdialog/ScreenEffectDialog;)V

    const v1, 0x7f100158

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/winlator/contentdialog/ContentDialog;->prompt(Landroid/content/Context;ILjava/lang/String;Lcom/winlator/core/Callback;)V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/String;)V
    .locals 1
    .param p1, "selectedProfile"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sProfile:Landroid/widget/Spinner;

    invoke-direct {p0, p1, v0}, Lcom/winlator/contentdialog/ScreenEffectDialog;->removeProfile(Ljava/lang/String;Landroid/widget/Spinner;)V

    .line 84
    return-void
.end method

.method private synthetic lambda$new$3(Lcom/winlator/XServerDisplayActivity;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Lcom/winlator/XServerDisplayActivity;
    .param p2, "v"    # Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sProfile:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sProfile:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 81
    .local v0, "selectedProfile":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 82
    new-instance v1, Lcom/winlator/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0}, Lcom/winlator/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda5;-><init>(Lcom/winlator/contentdialog/ScreenEffectDialog;Ljava/lang/String;)V

    const v2, 0x7f100085

    invoke-static {p1, v2, v1}, Lcom/winlator/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    goto :goto_1

    .line 86
    :cond_1
    const v1, 0x7f100133

    invoke-static {p1, v1}, Lcom/winlator/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 87
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$4(Lcom/winlator/renderer/effects/ColorEffect;Lcom/winlator/renderer/GLRenderer;Lcom/winlator/renderer/effects/FXAAEffect;Lcom/winlator/renderer/effects/CRTEffect;)V
    .locals 5
    .param p1, "colorEffect"    # Lcom/winlator/renderer/effects/ColorEffect;
    .param p2, "renderer"    # Lcom/winlator/renderer/GLRenderer;
    .param p3, "fxaaEffect"    # Lcom/winlator/renderer/effects/FXAAEffect;
    .param p4, "crtEffect"    # Lcom/winlator/renderer/effects/CRTEffect;

    .line 90
    iget-object v0, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sbBrightness:Lcom/winlator/widget/SeekBar;

    invoke-virtual {v0}, Lcom/winlator/widget/SeekBar;->getValue()F

    move-result v0

    .line 91
    .local v0, "brightness":F
    iget-object v1, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sbContrast:Lcom/winlator/widget/SeekBar;

    invoke-virtual {v1}, Lcom/winlator/widget/SeekBar;->getValue()F

    move-result v1

    .line 92
    .local v1, "contrast":F
    iget-object v2, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sbGamma:Lcom/winlator/widget/SeekBar;

    invoke-virtual {v2}, Lcom/winlator/widget/SeekBar;->getValue()F

    move-result v2

    .line 94
    .local v2, "gamma":F
    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-nez v4, :cond_0

    cmpl-float v3, v1, v3

    if-nez v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1

    :cond_0
    goto :goto_0

    .line 101
    :cond_1
    iget-object v3, p2, Lcom/winlator/renderer/GLRenderer;->effectComposer:Lcom/winlator/renderer/EffectComposer;

    invoke-virtual {v3, p1}, Lcom/winlator/renderer/EffectComposer;->removeEffect(Lcom/winlator/renderer/effects/Effect;)V

    goto :goto_1

    .line 95
    :goto_0
    const/high16 v3, 0x42c80000    # 100.0f

    div-float v4, v0, v3

    invoke-virtual {p1, v4}, Lcom/winlator/renderer/effects/ColorEffect;->setBrightness(F)V

    .line 96
    div-float v3, v1, v3

    invoke-virtual {p1, v3}, Lcom/winlator/renderer/effects/ColorEffect;->setContrast(F)V

    .line 97
    invoke-virtual {p1, v2}, Lcom/winlator/renderer/effects/ColorEffect;->setGamma(F)V

    .line 99
    iget-object v3, p2, Lcom/winlator/renderer/GLRenderer;->effectComposer:Lcom/winlator/renderer/EffectComposer;

    invoke-virtual {v3, p1}, Lcom/winlator/renderer/EffectComposer;->addEffect(Lcom/winlator/renderer/effects/Effect;)V

    .line 103
    :goto_1
    iget-object v3, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->cbEnableFXAA:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    if-nez p3, :cond_3

    iget-object v3, p2, Lcom/winlator/renderer/GLRenderer;->effectComposer:Lcom/winlator/renderer/EffectComposer;

    new-instance v4, Lcom/winlator/renderer/effects/FXAAEffect;

    invoke-direct {v4}, Lcom/winlator/renderer/effects/FXAAEffect;-><init>()V

    invoke-virtual {v3, v4}, Lcom/winlator/renderer/EffectComposer;->addEffect(Lcom/winlator/renderer/effects/Effect;)V

    goto :goto_2

    .line 106
    :cond_2
    if-eqz p3, :cond_3

    iget-object v3, p2, Lcom/winlator/renderer/GLRenderer;->effectComposer:Lcom/winlator/renderer/EffectComposer;

    invoke-virtual {v3, p3}, Lcom/winlator/renderer/EffectComposer;->removeEffect(Lcom/winlator/renderer/effects/Effect;)V

    .line 108
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->cbEnableCRTShader:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 109
    if-nez p4, :cond_5

    iget-object v3, p2, Lcom/winlator/renderer/GLRenderer;->effectComposer:Lcom/winlator/renderer/EffectComposer;

    new-instance v4, Lcom/winlator/renderer/effects/CRTEffect;

    invoke-direct {v4}, Lcom/winlator/renderer/effects/CRTEffect;-><init>()V

    invoke-virtual {v3, v4}, Lcom/winlator/renderer/EffectComposer;->addEffect(Lcom/winlator/renderer/effects/Effect;)V

    goto :goto_3

    .line 111
    :cond_4
    if-eqz p4, :cond_5

    iget-object v3, p2, Lcom/winlator/renderer/GLRenderer;->effectComposer:Lcom/winlator/renderer/EffectComposer;

    invoke-virtual {v3, p4}, Lcom/winlator/renderer/EffectComposer;->removeEffect(Lcom/winlator/renderer/effects/Effect;)V

    .line 113
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sProfile:Landroid/widget/Spinner;

    invoke-direct {p0, v3}, Lcom/winlator/contentdialog/ScreenEffectDialog;->saveProfile(Landroid/widget/Spinner;)V

    .line 114
    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 118
    invoke-direct {p0}, Lcom/winlator/contentdialog/ScreenEffectDialog;->resetSettings()V

    return-void
.end method

.method private loadProfile(Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .line 155
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->preferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v3, "screen_effect_profiles"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 156
    .local v0, "profiles":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 157
    .local v2, "profile":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "parts":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v5, v3, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 159
    array-length v1, v3

    const/4 v5, 0x1

    if-le v1, v5, :cond_1

    aget-object v1, v3, v5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    new-instance v1, Lcom/winlator/core/KeyValueSet;

    aget-object v5, v3, v5

    invoke-direct {v1, v5}, Lcom/winlator/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, "settings":Lcom/winlator/core/KeyValueSet;
    iget-object v5, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sbBrightness:Lcom/winlator/widget/SeekBar;

    const-string v6, "brightness"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/winlator/core/KeyValueSet;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/winlator/widget/SeekBar;->setValue(F)V

    .line 163
    iget-object v5, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sbContrast:Lcom/winlator/widget/SeekBar;

    const-string v6, "contrast"

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6, v7}, Lcom/winlator/core/KeyValueSet;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/winlator/widget/SeekBar;->setValue(F)V

    .line 164
    iget-object v5, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sbGamma:Lcom/winlator/widget/SeekBar;

    const-string v6, "gamma"

    invoke-virtual {v1, v6, v7}, Lcom/winlator/core/KeyValueSet;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/winlator/widget/SeekBar;->setValue(F)V

    .line 165
    iget-object v5, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->cbEnableFXAA:Landroid/widget/CheckBox;

    const-string v6, "fxaa"

    invoke-virtual {v1, v6, v4}, Lcom/winlator/core/KeyValueSet;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 166
    iget-object v5, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->cbEnableCRTShader:Landroid/widget/CheckBox;

    const-string v6, "crt_shader"

    invoke-virtual {v1, v6, v4}, Lcom/winlator/core/KeyValueSet;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 167
    .end local v1    # "settings":Lcom/winlator/core/KeyValueSet;
    goto :goto_1

    .line 158
    :cond_0
    nop

    .line 170
    .end local v2    # "profile":Ljava/lang/String;
    .end local v3    # "parts":[Ljava/lang/String;
    goto :goto_0

    .line 171
    :cond_1
    :goto_1
    return-void
.end method

.method private loadProfileSpinner(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 8
    .param p1, "sProfile"    # Landroid/widget/Spinner;
    .param p2, "selectedName"    # Ljava/lang/String;

    .line 199
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->preferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v3, "screen_effect_profiles"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 200
    .local v0, "profiles":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    const v4, 0x7f10016b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    const/4 v2, 0x0

    .line 204
    .local v2, "selectedPosition":I
    const/4 v3, 0x1

    .line 205
    .local v3, "position":I
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 206
    .local v5, "profile":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    .line 207
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v2, v3

    .line 209
    :cond_0
    nop

    .end local v5    # "profile":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 210
    goto :goto_0

    .line 212
    :cond_1
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    const v6, 0x1090009

    invoke-direct {v4, v5, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 213
    invoke-virtual {p1, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 214
    return-void
.end method

.method private removeProfile(Ljava/lang/String;Landroid/widget/Spinner;)V
    .locals 6
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "sProfile"    # Landroid/widget/Spinner;

    .line 185
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->preferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v3, "screen_effect_profiles"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 186
    .local v0, "profiles":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 187
    .local v2, "profile":Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 188
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 189
    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 190
    goto :goto_1

    .line 188
    :cond_0
    nop

    .line 192
    .end local v2    # "profile":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    goto :goto_0

    .line 193
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 194
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/winlator/contentdialog/ScreenEffectDialog;->loadProfileSpinner(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0}, Lcom/winlator/contentdialog/ScreenEffectDialog;->resetSettings()V

    .line 196
    return-void
.end method

.method private resetSettings()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sbBrightness:Lcom/winlator/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/winlator/widget/SeekBar;->setValue(F)V

    .line 123
    iget-object v0, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sbContrast:Lcom/winlator/widget/SeekBar;

    invoke-virtual {v0, v1}, Lcom/winlator/widget/SeekBar;->setValue(F)V

    .line 124
    iget-object v0, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sbGamma:Lcom/winlator/widget/SeekBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/winlator/widget/SeekBar;->setValue(F)V

    .line 126
    iget-object v0, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->cbEnableFXAA:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 127
    iget-object v0, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->cbEnableCRTShader:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 128
    return-void
.end method

.method private saveProfile(Landroid/widget/Spinner;)V
    .locals 10
    .param p1, "sProfile"    # Landroid/widget/Spinner;

    .line 131
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 132
    .local v0, "selectedProfile":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_3

    .line 133
    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->preferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v4, "screen_effect_profiles"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 134
    .local v1, "oldProfiles":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 136
    .local v2, "newProfiles":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    new-instance v3, Lcom/winlator/core/KeyValueSet;

    invoke-direct {v3}, Lcom/winlator/core/KeyValueSet;-><init>()V

    .line 137
    .local v3, "settings":Lcom/winlator/core/KeyValueSet;
    iget-object v5, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sbBrightness:Lcom/winlator/widget/SeekBar;

    invoke-virtual {v5}, Lcom/winlator/widget/SeekBar;->getValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "brightness"

    invoke-virtual {v3, v6, v5}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 138
    iget-object v5, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sbContrast:Lcom/winlator/widget/SeekBar;

    invoke-virtual {v5}, Lcom/winlator/widget/SeekBar;->getValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "contrast"

    invoke-virtual {v3, v6, v5}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 139
    iget-object v5, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->sbGamma:Lcom/winlator/widget/SeekBar;

    invoke-virtual {v5}, Lcom/winlator/widget/SeekBar;->getValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "gamma"

    invoke-virtual {v3, v6, v5}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 140
    iget-object v5, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->cbEnableFXAA:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "fxaa"

    invoke-virtual {v3, v6, v5}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 141
    iget-object v5, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->cbEnableCRTShader:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "crt_shader"

    invoke-virtual {v3, v6, v5}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 143
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 144
    .local v6, "profile":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    .line 145
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_1
    move-object v7, v6

    :goto_2
    invoke-virtual {v2, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 146
    .end local v6    # "profile":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    goto :goto_1

    .line 148
    :cond_2
    iget-object v5, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    .end local v1    # "oldProfiles":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .end local v2    # "newProfiles":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .end local v3    # "settings":Lcom/winlator/core/KeyValueSet;
    :cond_3
    iget-object v1, p0, Lcom/winlator/contentdialog/ScreenEffectDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-virtual {v1, v0}, Lcom/winlator/XServerDisplayActivity;->setScreenEffectProfile(Ljava/lang/String;)V

    .line 152
    return-void
.end method
