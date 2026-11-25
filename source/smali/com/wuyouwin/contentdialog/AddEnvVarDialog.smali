.class public Lcom/wuyouwin/contentdialog/AddEnvVarDialog;
.super Lcom/wuyouwin/contentdialog/ContentDialog;
.source "AddEnvVarDialog.java"


# direct methods
.method public static synthetic $r8$lambda$367Lc2_gloA0hUtnLisXODSN9qc(Landroid/content/Context;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/wuyouwin/contentdialog/AddEnvVarDialog;->lambda$new$1(Landroid/content/Context;Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kpv2UoVnt6eI63Ls7qiPUWAMcG4(Landroid/widget/EditText;Landroid/view/MenuItem;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/wuyouwin/contentdialog/AddEnvVarDialog;->lambda$new$0(Landroid/widget/EditText;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lu0AFf8AUgT3YiukrRBfVbQjQv4(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/wuyouwin/widget/EnvVarsView;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/wuyouwin/contentdialog/AddEnvVarDialog;->lambda$new$2(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/wuyouwin/widget/EnvVarsView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/wuyouwin/widget/EnvVarsView;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "envVarsView"    # Lcom/wuyouwin/widget/EnvVarsView;

    .line 13
    const v0, 0x7f0c001f

    invoke-direct {p0, p1, v0}, Lcom/wuyouwin/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 14
    const v0, 0x7f090055

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 15
    .local v0, "etName":Landroid/widget/EditText;
    const v1, 0x7f090059

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 17
    .local v1, "etValue":Landroid/widget/EditText;
    const v2, 0x7f10012d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/wuyouwin/contentdialog/ContentDialog;->setTitle(Ljava/lang/String;)V

    .line 18
    const v2, 0x7f0800a2

    invoke-virtual {p0, v2}, Lcom/wuyouwin/contentdialog/ContentDialog;->setIcon(I)V

    .line 20
    const v2, 0x7f09001f

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/wuyouwin/contentdialog/AddEnvVarDialog$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v0}, Lcom/wuyouwin/contentdialog/AddEnvVarDialog$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    new-instance v2, Lcom/wuyouwin/contentdialog/AddEnvVarDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1, p2}, Lcom/wuyouwin/contentdialog/AddEnvVarDialog$$ExternalSyntheticLambda1;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/wuyouwin/widget/EnvVarsView;)V

    invoke-virtual {p0, v2}, Lcom/wuyouwin/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 40
    return-void
.end method

.method private static synthetic lambda$new$0(Landroid/widget/EditText;Landroid/view/MenuItem;)Z
    .locals 1
    .param p0, "etName"    # Landroid/widget/EditText;
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 26
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$new$1(Landroid/content/Context;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "etName"    # Landroid/widget/EditText;
    .param p2, "v"    # Landroid/view/View;

    .line 21
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p0, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 22
    .local v0, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 23
    .local v1, "menu":Landroid/view/Menu;
    sget-object v2, Lcom/wuyouwin/widget/EnvVarsView;->knownEnvVars:[[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .local v6, "knownEnvVar":[Ljava/lang/String;
    aget-object v7, v6, v4

    invoke-interface {v1, v7}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .end local v6    # "knownEnvVar":[Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 25
    :cond_0
    new-instance v2, Lcom/wuyouwin/contentdialog/AddEnvVarDialog$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/wuyouwin/contentdialog/AddEnvVarDialog$$ExternalSyntheticLambda2;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 29
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 30
    return-void
.end method

.method private static synthetic lambda$new$2(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/wuyouwin/widget/EnvVarsView;)V
    .locals 4
    .param p0, "etName"    # Landroid/widget/EditText;
    .param p1, "etValue"    # Landroid/widget/EditText;
    .param p2, "envVarsView"    # Lcom/wuyouwin/widget/EnvVarsView;

    .line 33
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2, v0}, Lcom/wuyouwin/widget/EnvVarsView;->containsName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    invoke-virtual {p2, v0, v1}, Lcom/wuyouwin/widget/EnvVarsView;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method
