.class public Lcom/wuyouwin/contentdialog/VKD3DConfigDialog;
.super Lcom/wuyouwin/contentdialog/ContentDialog;
.source "VKD3DConfigDialog.java"


# direct methods
.method public static synthetic $r8$lambda$ufssHzi5Oun4KwBaJdLt9fdvMi8(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/wuyouwin/contentdialog/VKD3DConfigDialog;->lambda$new$0(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 8
    .param p1, "anchor"    # Landroid/view/View;

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00bc

    invoke-direct {p0, v0, v1}, Lcom/wuyouwin/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 21
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f08009f

    invoke-virtual {p0, v1}, Lcom/wuyouwin/contentdialog/ContentDialog;->setIcon(I)V

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VKD3D "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f100056

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wuyouwin/contentdialog/ContentDialog;->setTitle(Ljava/lang/String;)V

    .line 24
    const v1, 0x7f0900da

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 25
    .local v1, "sVersion":Landroid/widget/Spinner;
    const v2, 0x7f0900bc

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 27
    .local v2, "sFeatureLevel":Landroid/widget/Spinner;
    new-instance v3, Lcom/wuyouwin/core/KeyValueSet;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/wuyouwin/core/KeyValueSet;-><init>(Ljava/lang/Object;)V

    .line 28
    .local v3, "config":Lcom/wuyouwin/core/KeyValueSet;
    const-string v4, "featureLevel"

    const-string v5, "12.1"

    invoke-virtual {v3, v4, v5}, Lcom/wuyouwin/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/wuyouwin/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 30
    const-string v4, "version"

    invoke-virtual {v3, v4}, Lcom/wuyouwin/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 31
    .local v4, "version":Ljava/lang/String;
    sget-object v5, Lcom/wuyouwin/core/GeneralComponents$Type;->VKD3D:Lcom/wuyouwin/core/GeneralComponents$Type;

    const v6, 0x7f0900fe

    invoke-virtual {p0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const-string v7, "2.14.1"

    invoke-static {v5, v6, v1, v4, v7}, Lcom/wuyouwin/core/GeneralComponents;->initViews(Lcom/wuyouwin/core/GeneralComponents$Type;Landroid/view/View;Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v5, Lcom/wuyouwin/contentdialog/VKD3DConfigDialog$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1, v2, p1}, Lcom/wuyouwin/contentdialog/VKD3DConfigDialog$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/view/View;)V

    invoke-virtual {p0, v5}, Lcom/wuyouwin/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method

.method private static synthetic lambda$new$0(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 3
    .param p0, "sVersion"    # Landroid/widget/Spinner;
    .param p1, "sFeatureLevel"    # Landroid/widget/Spinner;
    .param p2, "anchor"    # Landroid/view/View;

    .line 34
    new-instance v0, Lcom/wuyouwin/core/KeyValueSet;

    invoke-direct {v0}, Lcom/wuyouwin/core/KeyValueSet;-><init>()V

    .line 35
    .local v0, "newConfig":Lcom/wuyouwin/core/KeyValueSet;
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lcom/wuyouwin/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/KeyValueSet;

    .line 36
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "featureLevel"

    invoke-virtual {v0, v2, v1}, Lcom/wuyouwin/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/KeyValueSet;

    .line 37
    invoke-virtual {v0}, Lcom/wuyouwin/core/KeyValueSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public static setEnvVars(Lcom/wuyouwin/core/KeyValueSet;Lcom/wuyouwin/core/EnvVars;)V
    .locals 3
    .param p0, "config"    # Lcom/wuyouwin/core/KeyValueSet;
    .param p1, "envVars"    # Lcom/wuyouwin/core/EnvVars;

    .line 42
    const-string v0, "DXVK_LOG_LEVEL"

    const-string v1, "none"

    invoke-virtual {p1, v0, v1}, Lcom/wuyouwin/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/EnvVars;

    .line 43
    const-string v0, "VKD3D_DEBUG"

    invoke-virtual {p1, v0, v1}, Lcom/wuyouwin/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/EnvVars;

    .line 44
    const-string v0, "VKD3D_CONFIG"

    const-string v1, "skip_application_workarounds,no_upload_hvv,nodxr,no_staggered_submit"

    invoke-virtual {p1, v0, v1}, Lcom/wuyouwin/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/EnvVars;

    .line 45
    const-string v0, "DXVK_STATE_CACHE_PATH"

    invoke-static {}, Lcom/wuyouwin/xenvironment/RootFS;->getDosUserCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wuyouwin/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/EnvVars;

    .line 46
    const-string v0, "featureLevel"

    const-string v1, "12.1"

    invoke-virtual {p0, v0, v1}, Lcom/wuyouwin/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VKD3D_FEATURE_LEVEL"

    invoke-virtual {p1, v1, v0}, Lcom/wuyouwin/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/EnvVars;

    .line 47
    const-string v0, "VKD3D_SHADER_CACHE_PATH"

    invoke-static {}, Lcom/wuyouwin/xenvironment/RootFS;->getDosUserCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wuyouwin/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/EnvVars;

    .line 48
    return-void
.end method
