.class public Lcom/wuyouwin/contentdialog/ContentDialog;
.super Landroid/app/Dialog;
.source "ContentDialog.java"


# instance fields
.field private final contentView:Landroid/view/View;

.field private onCancelCallback:Ljava/lang/Runnable;

.field private onConfirmCallback:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$098ribEMbFGyaiQHunyPEA_RyMY(Lcom/wuyouwin/contentdialog/ContentDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/wuyouwin/contentdialog/ContentDialog;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NPqsT49j97r0GufDrEsp85qu7VY(Lcom/wuyouwin/contentdialog/ContentDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/wuyouwin/contentdialog/ContentDialog;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VEe4aAyZ54do_79GNxWZpTpDsog(Landroid/widget/ListView;Lcom/wuyouwin/core/Callback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/wuyouwin/contentdialog/ContentDialog;->lambda$showSelectionList$3(Landroid/widget/ListView;Lcom/wuyouwin/core/Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bMdilFhZfw9Ho3PQnEufSop5o3k(Landroid/widget/EditText;Lcom/wuyouwin/core/Callback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/wuyouwin/contentdialog/ContentDialog;->lambda$prompt$2(Landroid/widget/EditText;Lcom/wuyouwin/core/Callback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wuyouwin/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResId"    # I

    .line 34
    const v0, 0x7f1100f3

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wuyouwin/contentdialog/ContentDialog;->contentView:Landroid/view/View;

    .line 37
    if-lez p2, :cond_0

    .line 38
    iget-object v0, p0, Lcom/wuyouwin/contentdialog/ContentDialog;->contentView:Landroid/view/View;

    const v1, 0x7f090061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 39
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 41
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 44
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/contentdialog/ContentDialog;->contentView:Landroid/view/View;

    const v1, 0x7f09000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "confirmButton":Landroid/view/View;
    new-instance v1, Lcom/wuyouwin/contentdialog/ContentDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/wuyouwin/contentdialog/ContentDialog$$ExternalSyntheticLambda0;-><init>(Lcom/wuyouwin/contentdialog/ContentDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v1, p0, Lcom/wuyouwin/contentdialog/ContentDialog;->contentView:Landroid/view/View;

    const v2, 0x7f09000c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, "cancelButton":Landroid/view/View;
    new-instance v2, Lcom/wuyouwin/contentdialog/ContentDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/wuyouwin/contentdialog/ContentDialog$$ExternalSyntheticLambda1;-><init>(Lcom/wuyouwin/contentdialog/ContentDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v2, p0, Lcom/wuyouwin/contentdialog/ContentDialog;->contentView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 57
    return-void
.end method

.method public static confirm(Landroid/content/Context;ILjava/lang/Runnable;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgResId"    # I
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 150
    new-instance v0, Lcom/wuyouwin/contentdialog/ContentDialog;

    invoke-direct {v0, p0}, Lcom/wuyouwin/contentdialog/ContentDialog;-><init>(Landroid/content/Context;)V

    .line 151
    .local v0, "dialog":Lcom/wuyouwin/contentdialog/ContentDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 152
    const v1, 0x7f080076

    invoke-virtual {v0, p1, v1}, Lcom/wuyouwin/contentdialog/ContentDialog;->setMessage(II)V

    .line 153
    invoke-virtual {v0, p2}, Lcom/wuyouwin/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 154
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 155
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/wuyouwin/contentdialog/ContentDialog;->onConfirmCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/contentdialog/ContentDialog;->onConfirmCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 48
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/wuyouwin/contentdialog/ContentDialog;->onCancelCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/contentdialog/ContentDialog;->onCancelCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 54
    return-void
.end method

.method private static synthetic lambda$prompt$2(Landroid/widget/EditText;Lcom/wuyouwin/core/Callback;)V
    .locals 2
    .param p0, "editText"    # Landroid/widget/EditText;
    .param p1, "callback"    # Lcom/wuyouwin/core/Callback;

    .line 167
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Lcom/wuyouwin/core/Callback;->call(Ljava/lang/Object;)V

    .line 169
    :cond_0
    return-void
.end method

.method private static synthetic lambda$showSelectionList$3(Landroid/widget/ListView;Lcom/wuyouwin/core/Callback;)V
    .locals 4
    .param p0, "listView"    # Landroid/widget/ListView;
    .param p1, "callback"    # Lcom/wuyouwin/core/Callback;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 192
    .local v1, "checkedItemPositions":Landroid/util/SparseBooleanArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 193
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 195
    .end local v2    # "i":I
    invoke-interface {p1, v0}, Lcom/wuyouwin/core/Callback;->call(Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public static prompt(Landroid/content/Context;ILjava/lang/String;Lcom/wuyouwin/core/Callback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleResId"    # I
    .param p2, "defaultText"    # Ljava/lang/String;

    .line 158
    .local p3, "callback":Lcom/wuyouwin/core/Callback;, "Lcom/wuyouwin/core/Callback<Ljava/lang/String;>;"
    new-instance v0, Lcom/wuyouwin/contentdialog/ContentDialog;

    invoke-direct {v0, p0}, Lcom/wuyouwin/contentdialog/ContentDialog;-><init>(Landroid/content/Context;)V

    .line 160
    .local v0, "dialog":Lcom/wuyouwin/contentdialog/ContentDialog;
    const v1, 0x7f09005b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 161
    .local v1, "editText":Landroid/widget/EditText;
    const v2, 0x7f100199

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 162
    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 165
    invoke-virtual {v0, p1}, Lcom/wuyouwin/contentdialog/ContentDialog;->setTitle(I)V

    .line 166
    new-instance v2, Lcom/wuyouwin/contentdialog/ContentDialog$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p3}, Lcom/wuyouwin/contentdialog/ContentDialog$$ExternalSyntheticLambda2;-><init>(Landroid/widget/EditText;Lcom/wuyouwin/core/Callback;)V

    invoke-virtual {v0, v2}, Lcom/wuyouwin/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 171
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 172
    return-void
.end method

.method public static showSelectionList(Landroid/content/Context;I[Ljava/lang/String;ZLcom/wuyouwin/core/Callback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleResId"    # I
    .param p2, "items"    # [Ljava/lang/String;
    .param p3, "multiSelection"    # Z

    .line 175
    .local p4, "callback":Lcom/wuyouwin/core/Callback;, "Lcom/wuyouwin/core/Callback<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3, p4}, Lcom/wuyouwin/contentdialog/ContentDialog;->showSelectionList(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZLcom/wuyouwin/core/Callback;)V

    .line 176
    return-void
.end method

.method public static showSelectionList(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZLcom/wuyouwin/core/Callback;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "items"    # [Ljava/lang/String;
    .param p3, "multiSelection"    # Z

    .line 179
    .local p4, "callback":Lcom/wuyouwin/core/Callback;, "Lcom/wuyouwin/core/Callback<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    new-instance v0, Lcom/wuyouwin/contentdialog/ContentDialog;

    invoke-direct {v0, p0}, Lcom/wuyouwin/contentdialog/ContentDialog;-><init>(Landroid/content/Context;)V

    .line 181
    .local v0, "dialog":Lcom/wuyouwin/contentdialog/ContentDialog;
    const v1, 0x7f09008f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 182
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {p0}, Lcom/wuyouwin/core/AppUtils;->getPreferredDialogWidth(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 183
    if-eqz p3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 184
    if-eqz p3, :cond_1

    const v2, 0x7f0c00a2

    goto :goto_1

    :cond_1
    const v2, 0x7f0c00a3

    .line 185
    .local v2, "layoutResId":I
    :goto_1
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-direct {v3, p0, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 188
    invoke-virtual {v0, p1}, Lcom/wuyouwin/contentdialog/ContentDialog;->setTitle(Ljava/lang/String;)V

    .line 189
    new-instance v3, Lcom/wuyouwin/contentdialog/ContentDialog$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1, p4}, Lcom/wuyouwin/contentdialog/ContentDialog$$ExternalSyntheticLambda3;-><init>(Landroid/widget/ListView;Lcom/wuyouwin/core/Callback;)V

    invoke-virtual {v0, v3}, Lcom/wuyouwin/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 198
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 199
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/wuyouwin/contentdialog/ContentDialog;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public setBottomBarText(Ljava/lang/String;)V
    .locals 2
    .param p1, "bottomBarText"    # Ljava/lang/String;

    .line 97
    const v0, 0x7f0900e6

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    .local v0, "tvBottomBarText":Landroid/widget/TextView;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 104
    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :goto_0
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "iconResId"    # I

    .line 77
    const v0, 0x7f090065

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 78
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    return-void
.end method

.method public setMessage(II)V
    .locals 1
    .param p1, "msgResId"    # I
    .param p2, "iconResId"    # I

    .line 114
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/wuyouwin/contentdialog/ContentDialog;->setMessage(Ljava/lang/String;I)V

    .line 115
    return-void
.end method

.method public setMessage(Ljava/lang/String;I)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "iconResId"    # I

    .line 122
    const v0, 0x7f0900ee

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 123
    .local v0, "tvMessage":Landroid/widget/TextView;
    const v1, 0x7f090066

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 124
    .local v1, "imageView":Landroid/widget/ImageView;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 127
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 130
    if-lez p2, :cond_1

    .line 131
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 136
    :cond_0
    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :cond_1
    :goto_0
    return-void
.end method

.method public setOnCancelCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onCancelCallback"    # Ljava/lang/Runnable;

    .line 68
    iput-object p1, p0, Lcom/wuyouwin/contentdialog/ContentDialog;->onCancelCallback:Ljava/lang/Runnable;

    .line 69
    return-void
.end method

.method public setOnConfirmCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onConfirmCallback"    # Ljava/lang/Runnable;

    .line 64
    iput-object p1, p0, Lcom/wuyouwin/contentdialog/ContentDialog;->onConfirmCallback:Ljava/lang/Runnable;

    .line 65
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .line 73
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wuyouwin/contentdialog/ContentDialog;->setTitle(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .line 83
    const v0, 0x7f090088

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 84
    .local v0, "titleBar":Landroid/widget/LinearLayout;
    const v1, 0x7f0900f4

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 86
    .local v1, "tvTitle":Landroid/widget/TextView;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 91
    :cond_0
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :goto_0
    return-void
.end method
