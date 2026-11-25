.class public Lcom/winlator/contentdialog/DebugDialog;
.super Lcom/winlator/contentdialog/ContentDialog;
.source "DebugDialog.java"

# interfaces
.implements Lcom/winlator/core/Callback;


# instance fields
.field private final logView:Lcom/winlator/widget/LogView;

.field private paused:Z


# direct methods
.method public static synthetic $r8$lambda$DYC5RfQBtUS6HCPAl76YSlKXzg4(Lcom/winlator/contentdialog/DebugDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/contentdialog/DebugDialog;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RqQmqsNVlr2-zzc9M7eUMhmvb7Q(Lcom/winlator/contentdialog/DebugDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/contentdialog/DebugDialog;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nmdHbkSx3Ae7kIX7bAYfJTdzgPA(Lcom/winlator/contentdialog/DebugDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/contentdialog/DebugDialog;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    const v0, 0x7f0c0031

    invoke-direct {p0, p1, v0}, Lcom/winlator/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/contentdialog/DebugDialog;->paused:Z

    .line 24
    const v1, 0x7f08009e

    invoke-virtual {p0, v1}, Lcom/winlator/contentdialog/ContentDialog;->setIcon(I)V

    .line 25
    const v1, 0x7f1000e3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/winlator/contentdialog/ContentDialog;->setTitle(Ljava/lang/String;)V

    .line 26
    const v1, 0x7f090090

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/winlator/widget/LogView;

    iput-object v1, p0, Lcom/winlator/contentdialog/DebugDialog;->logView:Lcom/winlator/widget/LogView;

    .line 27
    iget-object v1, p0, Lcom/winlator/contentdialog/DebugDialog;->logView:Lcom/winlator/widget/LogView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {}, Lcom/winlator/core/AppUtils;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/winlator/core/UnitUtils;->pxToDp(F)F

    move-result v2

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v2, v3

    invoke-static {v2}, Lcom/winlator/core/UnitUtils;->dpToPx(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 29
    const v1, 0x7f09000c

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    const v1, 0x7f09006b

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 32
    .local v1, "llBottomBarPanel":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0032

    invoke-virtual {v2, v3, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, "toolbarView":Landroid/view/View;
    const v2, 0x7f09000d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/winlator/contentdialog/DebugDialog$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/winlator/contentdialog/DebugDialog$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/contentdialog/DebugDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    const v2, 0x7f090023

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 38
    .local v2, "pauseButton":Landroid/widget/ImageButton;
    new-instance v3, Lcom/winlator/contentdialog/DebugDialog$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/winlator/contentdialog/DebugDialog$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/contentdialog/DebugDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v3, 0x7f090016

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/winlator/contentdialog/DebugDialog$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/winlator/contentdialog/DebugDialog$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/contentdialog/DebugDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 35
    iget-object v0, p0, Lcom/winlator/contentdialog/DebugDialog;->logView:Lcom/winlator/widget/LogView;

    invoke-virtual {v0}, Lcom/winlator/widget/LogView;->clear()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 39
    iget-boolean v0, p0, Lcom/winlator/contentdialog/DebugDialog;->paused:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/contentdialog/DebugDialog;->paused:Z

    .line 40
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/winlator/contentdialog/DebugDialog;->paused:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0800ba

    goto :goto_0

    :cond_0
    const v1, 0x7f0800b7

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/winlator/contentdialog/DebugDialog;->logView:Lcom/winlator/widget/LogView;

    invoke-virtual {v0}, Lcom/winlator/widget/LogView;->exportToFile()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/winlator/contentdialog/DebugDialog;->call(Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 3
    .param p1, "line"    # Ljava/lang/String;

    .line 50
    iget-boolean v0, p0, Lcom/winlator/contentdialog/DebugDialog;->paused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/winlator/contentdialog/DebugDialog;->logView:Lcom/winlator/widget/LogView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/winlator/widget/LogView;->append(Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method
