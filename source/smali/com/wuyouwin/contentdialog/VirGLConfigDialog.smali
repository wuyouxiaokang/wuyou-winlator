.class public Lcom/wuyouwin/contentdialog/VirGLConfigDialog;
.super Lcom/wuyouwin/contentdialog/ContentDialog;
.source "VirGLConfigDialog.java"


# direct methods
.method public static synthetic $r8$lambda$V0TS_jJEI5p5EsgHpjat__7mmLI(Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/wuyouwin/contentdialog/VirGLConfigDialog;->lambda$new$0(Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6
    .param p1, "anchor"    # Landroid/view/View;

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00bb

    invoke-direct {p0, v0, v1}, Lcom/wuyouwin/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 22
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f0800cf

    invoke-virtual {p0, v1}, Lcom/wuyouwin/contentdialog/ContentDialog;->setIcon(I)V

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VirGL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f100056

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wuyouwin/contentdialog/ContentDialog;->setTitle(Ljava/lang/String;)V

    .line 25
    const v1, 0x7f0900da

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 26
    .local v1, "sGLVersion":Landroid/widget/Spinner;
    const v2, 0x7f090037

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 28
    .local v2, "cbDisableVertexArrayBGRA":Landroid/widget/CheckBox;
    new-instance v3, Lcom/wuyouwin/core/KeyValueSet;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/wuyouwin/core/KeyValueSet;-><init>(Ljava/lang/Object;)V

    .line 29
    .local v3, "config":Lcom/wuyouwin/core/KeyValueSet;
    const-string v4, "glVersion"

    const-string v5, "3.1"

    invoke-virtual {v3, v4, v5}, Lcom/wuyouwin/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/wuyouwin/core/AppUtils;->setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 30
    const-string v4, "disableVertexArrayBGRA"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/wuyouwin/core/KeyValueSet;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 32
    new-instance v4, Lcom/wuyouwin/contentdialog/VirGLConfigDialog$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v2, p1}, Lcom/wuyouwin/contentdialog/VirGLConfigDialog$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/view/View;)V

    invoke-virtual {p0, v4}, Lcom/wuyouwin/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 38
    return-void
.end method

.method private static synthetic lambda$new$0(Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 3
    .param p0, "sGLVersion"    # Landroid/widget/Spinner;
    .param p1, "cbDisableVertexArrayBGRA"    # Landroid/widget/CheckBox;
    .param p2, "anchor"    # Landroid/view/View;

    .line 33
    new-instance v0, Lcom/wuyouwin/core/KeyValueSet;

    invoke-direct {v0}, Lcom/wuyouwin/core/KeyValueSet;-><init>()V

    .line 34
    .local v0, "newConfig":Lcom/wuyouwin/core/KeyValueSet;
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/wuyouwin/core/StringUtils;->parseNumber(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "glVersion"

    invoke-virtual {v0, v2, v1}, Lcom/wuyouwin/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/KeyValueSet;

    .line 35
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    const-string v2, "disableVertexArrayBGRA"

    invoke-virtual {v0, v2, v1}, Lcom/wuyouwin/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/KeyValueSet;

    .line 36
    invoke-virtual {v0}, Lcom/wuyouwin/core/KeyValueSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public static setEnvVars(Lcom/wuyouwin/core/KeyValueSet;Lcom/wuyouwin/core/EnvVars;)V
    .locals 6
    .param p0, "config"    # Lcom/wuyouwin/core/KeyValueSet;
    .param p1, "envVars"    # Lcom/wuyouwin/core/EnvVars;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "disabledExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "GL_KHR_debug"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v1, "disableVertexArrayBGRA"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/wuyouwin/core/KeyValueSet;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GL_EXT_vertex_array_bgra"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_0
    const-string v1, ""

    .line 46
    .local v1, "mesaExtensionOverride":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 47
    .local v3, "disabledExtension":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, " "

    goto :goto_1

    :cond_1
    const-string v5, ""

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    .end local v3    # "disabledExtension":Ljava/lang/String;
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "MESA_EXTENSION_OVERRIDE"

    invoke-virtual {p1, v2, v1}, Lcom/wuyouwin/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/EnvVars;

    .line 51
    :cond_3
    const-string v2, "glVersion"

    const-string v3, "3.1"

    invoke-virtual {p0, v2, v3}, Lcom/wuyouwin/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MESA_GL_VERSION_OVERRIDE"

    invoke-virtual {p1, v3, v2}, Lcom/wuyouwin/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/EnvVars;

    .line 52
    return-void
.end method
