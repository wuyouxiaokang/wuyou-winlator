.class public Lcom/winlator/contentdialog/CreateFolderDialog;
.super Lcom/winlator/contentdialog/ContentDialog;
.source "CreateFolderDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/contentdialog/CreateFolderDialog$OnCreateFolderListener;
    }
.end annotation


# instance fields
.field private onCreateFolderListener:Lcom/winlator/contentdialog/CreateFolderDialog$OnCreateFolderListener;


# direct methods
.method public static synthetic $r8$lambda$fxcRMdFpDI_pe4kGxJ9o-AR7vug(Lcom/winlator/contentdialog/CreateFolderDialog;Landroid/widget/EditText;Ljava/util/ArrayList;Landroid/widget/Spinner;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/contentdialog/CreateFolderDialog;->lambda$new$0(Landroid/widget/EditText;Ljava/util/ArrayList;Landroid/widget/Spinner;)V

    return-void
.end method

.method public constructor <init>(Lcom/winlator/container/ContainerManager;)V
    .locals 8
    .param p1, "manager"    # Lcom/winlator/container/ContainerManager;

    .line 22
    invoke-virtual {p1}, Lcom/winlator/container/ContainerManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c002e

    invoke-direct {p0, v0, v1}, Lcom/winlator/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 23
    invoke-virtual {p1}, Lcom/winlator/container/ContainerManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 24
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f0900b6

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 25
    .local v1, "sContainer":Landroid/widget/Spinner;
    const v2, 0x7f090055

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 27
    .local v2, "etName":Landroid/widget/EditText;
    const v3, 0x7f10012e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/winlator/contentdialog/ContentDialog;->setTitle(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/winlator/container/ContainerManager;->getContainers()Ljava/util/ArrayList;

    move-result-object v3

    .line 30
    .local v3, "containers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/container/Container;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/winlator/container/Container;

    .local v6, "container":Lcom/winlator/container/Container;
    invoke-virtual {v6}, Lcom/winlator/container/Container;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    .end local v6    # "container":Lcom/winlator/container/Container;
    :cond_0
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x1090009

    invoke-direct {v5, v0, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 35
    new-instance v5, Lcom/winlator/contentdialog/CreateFolderDialog$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v2, v3, v1}, Lcom/winlator/contentdialog/CreateFolderDialog$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/contentdialog/CreateFolderDialog;Landroid/widget/EditText;Ljava/util/ArrayList;Landroid/widget/Spinner;)V

    invoke-virtual {p0, v5}, Lcom/winlator/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 41
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/widget/EditText;Ljava/util/ArrayList;Landroid/widget/Spinner;)V
    .locals 3
    .param p1, "etName"    # Landroid/widget/EditText;
    .param p2, "containers"    # Ljava/util/ArrayList;
    .param p3, "sContainer"    # Landroid/widget/Spinner;

    .line 36
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/container/Container;

    .line 39
    .local v1, "container":Lcom/winlator/container/Container;
    iget-object v2, p0, Lcom/winlator/contentdialog/CreateFolderDialog;->onCreateFolderListener:Lcom/winlator/contentdialog/CreateFolderDialog$OnCreateFolderListener;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/winlator/contentdialog/CreateFolderDialog;->onCreateFolderListener:Lcom/winlator/contentdialog/CreateFolderDialog$OnCreateFolderListener;

    invoke-interface {v2, v1, v0}, Lcom/winlator/contentdialog/CreateFolderDialog$OnCreateFolderListener;->onCreateFolder(Lcom/winlator/container/Container;Ljava/lang/String;)V

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public setOnCreateFolderListener(Lcom/winlator/contentdialog/CreateFolderDialog$OnCreateFolderListener;)V
    .locals 0
    .param p1, "onCreateFolderListener"    # Lcom/winlator/contentdialog/CreateFolderDialog$OnCreateFolderListener;

    .line 44
    iput-object p1, p0, Lcom/winlator/contentdialog/CreateFolderDialog;->onCreateFolderListener:Lcom/winlator/contentdialog/CreateFolderDialog$OnCreateFolderListener;

    .line 45
    return-void
.end method
