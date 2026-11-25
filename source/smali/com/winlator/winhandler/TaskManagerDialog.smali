.class public Lcom/winlator/winhandler/TaskManagerDialog;
.super Lcom/winlator/contentdialog/ContentDialog;
.source "TaskManagerDialog.java"

# interfaces
.implements Lcom/winlator/winhandler/OnGetProcessInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;,
        Lcom/winlator/winhandler/TaskManagerDialog$Panel;
    }
.end annotation


# instance fields
.field private final activity:Lcom/winlator/XServerDisplayActivity;

.field private final batteryInfo:Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;

.field private final batteryPanel:Lcom/winlator/winhandler/TaskManagerDialog$Panel;

.field private batteryReceiver:Landroid/content/BroadcastReceiver;

.field private final cpuPanel:Lcom/winlator/winhandler/TaskManagerDialog$Panel;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final lock:Ljava/lang/Object;

.field private final memoryPanel:Lcom/winlator/winhandler/TaskManagerDialog$Panel;

.field private timer:Ljava/util/Timer;


# direct methods
.method public static synthetic $r8$lambda$1dUg4yKot2ywinYjP0Us3-pcNDQ(Lcom/winlator/winhandler/TaskManagerDialog;Lcom/winlator/XServerDisplayActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/winhandler/TaskManagerDialog;->lambda$new$1(Lcom/winlator/XServerDisplayActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4aiJ4niGlT8p9JM7_oae0ibzzPA(Lcom/winlator/winhandler/TaskManagerDialog;Lcom/winlator/winhandler/ProcessInfo;Lcom/winlator/widget/CPUListView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/winhandler/TaskManagerDialog;->lambda$showProcessorAffinityDialog$5(Lcom/winlator/winhandler/ProcessInfo;Lcom/winlator/widget/CPUListView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8JBwrjn27ohiGqJaIsPQmdKx7Vk(Lcom/winlator/winhandler/TaskManagerDialog;Lcom/winlator/XServerDisplayActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/winhandler/TaskManagerDialog;->lambda$new$2(Lcom/winlator/XServerDisplayActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Az-lFdmNEEpx45D6eCMBFpbWYQ4(Lcom/winlator/XServerDisplayActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/winlator/winhandler/TaskManagerDialog;->lambda$new$0(Lcom/winlator/XServerDisplayActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E1IN21XgNuZHZqcuTmrlzoYaG4A(Lcom/winlator/winhandler/WinHandler;Lcom/winlator/winhandler/ProcessInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/winlator/winhandler/TaskManagerDialog;->lambda$showListItemMenu$3(Lcom/winlator/winhandler/WinHandler;Lcom/winlator/winhandler/ProcessInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K9E9x6Opu8PoQAAGK1A72kA8ueI(Lcom/winlator/winhandler/TaskManagerDialog;Lcom/winlator/winhandler/ProcessInfo;Landroid/view/MenuItem;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/winhandler/TaskManagerDialog;->lambda$showListItemMenu$4(Lcom/winlator/winhandler/ProcessInfo;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZpJOdmhOh-WnJNEbgTcHdRRpj_k(Lcom/winlator/winhandler/TaskManagerDialog;Lcom/winlator/winhandler/ProcessInfo;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/winhandler/TaskManagerDialog;->lambda$onGetProcessInfo$6(Lcom/winlator/winhandler/ProcessInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uT2E4m_pNKG46vFKxr_-ewng-Ks(Lcom/winlator/winhandler/TaskManagerDialog;IILcom/winlator/winhandler/ProcessInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/winhandler/TaskManagerDialog;->lambda$onGetProcessInfo$7(IILcom/winlator/winhandler/ProcessInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/winlator/XServerDisplayActivity;)V
    .locals 8
    .param p1, "activity"    # Lcom/winlator/XServerDisplayActivity;

    .line 88
    const v0, 0x7f0c00a7

    invoke-direct {p0, p1, v0}, Lcom/winlator/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/winlator/winhandler/TaskManagerDialog;->lock:Ljava/lang/Object;

    .line 45
    new-instance v0, Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;-><init>(Lcom/winlator/winhandler/TaskManagerDialog$1;)V

    iput-object v0, p0, Lcom/winlator/winhandler/TaskManagerDialog;->batteryInfo:Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;

    .line 89
    iput-object p1, p0, Lcom/winlator/winhandler/TaskManagerDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 91
    const v1, 0x7f100181

    invoke-virtual {p0, v1}, Lcom/winlator/contentdialog/ContentDialog;->setTitle(I)V

    .line 92
    const v1, 0x7f0800d1

    invoke-virtual {p0, v1}, Lcom/winlator/contentdialog/ContentDialog;->setIcon(I)V

    .line 94
    const v1, 0x7f09000c

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 95
    .local v1, "cancelButton":Landroid/widget/Button;
    const v2, 0x7f10012f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 96
    new-instance v2, Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/winhandler/TaskManagerDialog;Lcom/winlator/XServerDisplayActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    new-instance v2, Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/winhandler/TaskManagerDialog;Lcom/winlator/XServerDisplayActivity;)V

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 112
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/winlator/winhandler/TaskManagerDialog;->inflater:Landroid/view/LayoutInflater;

    .line 114
    new-instance v2, Lcom/winlator/winhandler/TaskManagerDialog$1;

    invoke-direct {v2, p0}, Lcom/winlator/winhandler/TaskManagerDialog$1;-><init>(Lcom/winlator/winhandler/TaskManagerDialog;)V

    iput-object v2, p0, Lcom/winlator/winhandler/TaskManagerDialog;->batteryReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v3, p0, Lcom/winlator/winhandler/TaskManagerDialog;->batteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/winlator/winhandler/TaskManagerDialog;->createPanel(I)Lcom/winlator/winhandler/TaskManagerDialog$Panel;

    move-result-object v4

    iput-object v4, p0, Lcom/winlator/winhandler/TaskManagerDialog;->cpuPanel:Lcom/winlator/winhandler/TaskManagerDialog$Panel;

    .line 136
    iget-object v4, p0, Lcom/winlator/winhandler/TaskManagerDialog;->cpuPanel:Lcom/winlator/winhandler/TaskManagerDialog$Panel;

    const v5, 0x7f08009d

    invoke-static {v4, v0, v5}, Lcom/winlator/winhandler/TaskManagerDialog$Panel;->access$500(Lcom/winlator/winhandler/TaskManagerDialog$Panel;II)V

    .line 137
    iget-object v4, p0, Lcom/winlator/winhandler/TaskManagerDialog;->cpuPanel:Lcom/winlator/winhandler/TaskManagerDialog$Panel;

    const/4 v5, 0x1

    const v6, 0x7f0800d2

    invoke-static {v4, v5, v6}, Lcom/winlator/winhandler/TaskManagerDialog$Panel;->access$500(Lcom/winlator/winhandler/TaskManagerDialog$Panel;II)V

    .line 139
    invoke-direct {p0, v5}, Lcom/winlator/winhandler/TaskManagerDialog;->createPanel(I)Lcom/winlator/winhandler/TaskManagerDialog$Panel;

    move-result-object v4

    iput-object v4, p0, Lcom/winlator/winhandler/TaskManagerDialog;->memoryPanel:Lcom/winlator/winhandler/TaskManagerDialog$Panel;

    .line 140
    iget-object v4, p0, Lcom/winlator/winhandler/TaskManagerDialog;->memoryPanel:Lcom/winlator/winhandler/TaskManagerDialog$Panel;

    const v7, 0x7f0800b1

    invoke-static {v4, v0, v7}, Lcom/winlator/winhandler/TaskManagerDialog$Panel;->access$500(Lcom/winlator/winhandler/TaskManagerDialog$Panel;II)V

    .line 142
    invoke-direct {p0, v3}, Lcom/winlator/winhandler/TaskManagerDialog;->createPanel(I)Lcom/winlator/winhandler/TaskManagerDialog$Panel;

    move-result-object v3

    iput-object v3, p0, Lcom/winlator/winhandler/TaskManagerDialog;->batteryPanel:Lcom/winlator/winhandler/TaskManagerDialog$Panel;

    .line 143
    iget-object v3, p0, Lcom/winlator/winhandler/TaskManagerDialog;->batteryPanel:Lcom/winlator/winhandler/TaskManagerDialog$Panel;

    const v4, 0x7f0800c9

    invoke-static {v3, v0, v4}, Lcom/winlator/winhandler/TaskManagerDialog$Panel;->access$500(Lcom/winlator/winhandler/TaskManagerDialog$Panel;II)V

    .line 144
    iget-object v0, p0, Lcom/winlator/winhandler/TaskManagerDialog;->batteryPanel:Lcom/winlator/winhandler/TaskManagerDialog$Panel;

    invoke-static {v0, v5, v6}, Lcom/winlator/winhandler/TaskManagerDialog$Panel;->access$500(Lcom/winlator/winhandler/TaskManagerDialog$Panel;II)V

    .line 145
    return-void
.end method

.method static synthetic access$100(Lcom/winlator/winhandler/TaskManagerDialog;)Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;
    .locals 1
    .param p0, "x0"    # Lcom/winlator/winhandler/TaskManagerDialog;

    .line 39
    iget-object v0, p0, Lcom/winlator/winhandler/TaskManagerDialog;->batteryInfo:Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/winlator/winhandler/TaskManagerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/winlator/winhandler/TaskManagerDialog;

    .line 39
    invoke-direct {p0}, Lcom/winlator/winhandler/TaskManagerDialog;->update()V

    return-void
.end method

.method static synthetic access$900(Lcom/winlator/winhandler/TaskManagerDialog;)Lcom/winlator/XServerDisplayActivity;
    .locals 1
    .param p0, "x0"    # Lcom/winlator/winhandler/TaskManagerDialog;

    .line 39
    iget-object v0, p0, Lcom/winlator/winhandler/TaskManagerDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    return-object v0
.end method

.method private createPanel(I)Lcom/winlator/winhandler/TaskManagerDialog$Panel;
    .locals 9
    .param p1, "numItems"    # I

    .line 148
    const v0, 0x7f09007c

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 149
    .local v0, "llPanelList":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/winlator/winhandler/TaskManagerDialog;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c00a8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 151
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 152
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lcom/winlator/core/UnitUtils;->dpToPx(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 154
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 157
    const v4, 0x7f09007a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 159
    .local v4, "llItemList":Landroid/widget/LinearLayout;
    new-instance v5, Lcom/winlator/winhandler/TaskManagerDialog$Panel;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/winlator/winhandler/TaskManagerDialog$Panel;-><init>(Lcom/winlator/winhandler/TaskManagerDialog$1;)V

    .line 160
    .local v5, "panel":Lcom/winlator/winhandler/TaskManagerDialog$Panel;
    invoke-static {v5, v1}, Lcom/winlator/winhandler/TaskManagerDialog$Panel;->access$702(Lcom/winlator/winhandler/TaskManagerDialog$Panel;Landroid/view/View;)Landroid/view/View;

    .line 161
    new-array v6, p1, [Landroid/view/View;

    invoke-static {v5, v6}, Lcom/winlator/winhandler/TaskManagerDialog$Panel;->access$802(Lcom/winlator/winhandler/TaskManagerDialog$Panel;[Landroid/view/View;)[Landroid/view/View;

    .line 163
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, p1, :cond_1

    .line 164
    iget-object v7, p0, Lcom/winlator/winhandler/TaskManagerDialog;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0c00a9

    invoke-virtual {v7, v8, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 165
    .local v7, "itemView":Landroid/view/View;
    invoke-static {v5}, Lcom/winlator/winhandler/TaskManagerDialog$Panel;->access$800(Lcom/winlator/winhandler/TaskManagerDialog$Panel;)[Landroid/view/View;

    move-result-object v8

    aput-object v7, v8, v6

    .line 166
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 163
    .end local v7    # "itemView":Landroid/view/View;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 169
    .end local v6    # "i":I
    return-object v5
.end method

.method private static synthetic lambda$new$0(Lcom/winlator/XServerDisplayActivity;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Lcom/winlator/XServerDisplayActivity;
    .param p1, "command"    # Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/winlator/XServerDisplayActivity;->getWinHandler()Lcom/winlator/winhandler/WinHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/winlator/winhandler/WinHandler;->exec(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/winlator/XServerDisplayActivity;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Lcom/winlator/XServerDisplayActivity;
    .param p2, "v"    # Landroid/view/View;

    .line 97
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 98
    new-instance v0, Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/XServerDisplayActivity;)V

    const v1, 0x7f10012f

    const-string v2, "taskmgr.exe"

    invoke-static {p1, v1, v2, v0}, Lcom/winlator/contentdialog/ContentDialog;->prompt(Landroid/content/Context;ILjava/lang/String;Lcom/winlator/core/Callback;)V

    .line 99
    return-void
.end method

.method private synthetic lambda$new$2(Lcom/winlator/XServerDisplayActivity;Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "activity"    # Lcom/winlator/XServerDisplayActivity;
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .line 102
    iget-object v0, p0, Lcom/winlator/winhandler/TaskManagerDialog;->batteryReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/winhandler/TaskManagerDialog;->batteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/winlator/winhandler/TaskManagerDialog;->timer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/winlator/winhandler/TaskManagerDialog;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 106
    iput-object v1, p0, Lcom/winlator/winhandler/TaskManagerDialog;->timer:Ljava/util/Timer;

    .line 109
    :cond_1
    invoke-virtual {p1}, Lcom/winlator/XServerDisplayActivity;->getWinHandler()Lcom/winlator/winhandler/WinHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/winlator/winhandler/WinHandler;->setOnGetProcessInfoListener(Lcom/winlator/winhandler/OnGetProcessInfoListener;)V

    .line 110
    return-void
.end method

.method private synthetic lambda$onGetProcessInfo$6(Lcom/winlator/winhandler/ProcessInfo;Landroid/view/View;)V
    .locals 0
    .param p1, "processInfo"    # Lcom/winlator/winhandler/ProcessInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 261
    invoke-direct {p0, p2, p1}, Lcom/winlator/winhandler/TaskManagerDialog;->showListItemMenu(Landroid/view/View;Lcom/winlator/winhandler/ProcessInfo;)V

    return-void
.end method

.method private synthetic lambda$onGetProcessInfo$7(IILcom/winlator/winhandler/ProcessInfo;)V
    .locals 8
    .param p1, "numProcesses"    # I
    .param p2, "index"    # I
    .param p3, "processInfo"    # Lcom/winlator/winhandler/ProcessInfo;

    .line 244
    iget-object v0, p0, Lcom/winlator/winhandler/TaskManagerDialog;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    const v1, 0x7f09007d

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 246
    .local v1, "container":Landroid/widget/LinearLayout;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/winlator/winhandler/TaskManagerDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    const v4, 0x7f100153

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/contentdialog/ContentDialog;->setBottomBarText(Ljava/lang/String;)V

    .line 248
    const/4 v2, 0x0

    const v3, 0x7f0900eb

    if-nez p1, :cond_0

    .line 249
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 250
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    monitor-exit v0

    return-void

    .line 282
    .end local v1    # "container":Landroid/widget/LinearLayout;
    :catchall_0
    move-exception v1

    goto/16 :goto_4

    .line 254
    .restart local v1    # "container":Landroid/widget/LinearLayout;
    :cond_0
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 256
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 257
    .local v3, "childCount":I
    nop

    nop

    if-ge p2, v3, :cond_1

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/winlator/winhandler/TaskManagerDialog;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0c009b

    invoke-virtual {v4, v5, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_0
    nop

    .line 258
    .local v2, "itemView":Landroid/view/View;
    const v4, 0x7f0900ef

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p3, Lcom/winlator/winhandler/ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p3, Lcom/winlator/winhandler/ProcessInfo;->wow64Process:Z

    nop

    if-eqz v6, :cond_2

    const-string v6, " *32"

    goto :goto_1

    :cond_2
    const-string v6, ""

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    const v4, 0x7f0900f0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget v5, p3, Lcom/winlator/winhandler/ProcessInfo;->pid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    const v4, 0x7f0900ed

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/winlator/winhandler/ProcessInfo;->getFormattedMemoryUsage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    const v4, 0x7f09001f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, p3}, Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/winhandler/TaskManagerDialog;Lcom/winlator/winhandler/ProcessInfo;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v4, p0, Lcom/winlator/winhandler/TaskManagerDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-virtual {v4}, Lcom/winlator/XServerDisplayActivity;->getXServer()Lcom/winlator/xserver/XServer;

    move-result-object v4

    .line 266
    .local v4, "xServer":Lcom/winlator/xserver/XServer;
    sget-object v5, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    invoke-virtual {v4, v5}, Lcom/winlator/xserver/XServer;->lock(Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    .local v5, "xlock":Lcom/winlator/xserver/XLock;
    :try_start_1
    iget-object v6, v4, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    iget v7, p3, Lcom/winlator/winhandler/ProcessInfo;->pid:I

    invoke-virtual {v6, v7}, Lcom/winlator/xserver/WindowManager;->findWindowWithProcessId(I)Lcom/winlator/xserver/Window;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 268
    .local v6, "window":Lcom/winlator/xserver/Window;
    if-eqz v5, :cond_3

    :try_start_2
    invoke-interface {v5}, Lcom/winlator/xserver/XLock;->close()V

    .line 270
    .end local v5    # "xlock":Lcom/winlator/xserver/XLock;
    :cond_3
    const v5, 0x7f090065

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 271
    .local v5, "ivIcon":Landroid/widget/ImageView;
    const v7, 0x7f08010e

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 272
    if-eqz v6, :cond_4

    .line 273
    iget-object v7, v4, Lcom/winlator/xserver/XServer;->pixmapManager:Lcom/winlator/xserver/PixmapManager;

    invoke-virtual {v7, v6}, Lcom/winlator/xserver/PixmapManager;->getWindowIcon(Lcom/winlator/xserver/Window;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 274
    .local v7, "icon":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_4

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 277
    .end local v7    # "icon":Landroid/graphics/Bitmap;
    :cond_4
    if-lt p2, v3, :cond_5

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 279
    :cond_5
    add-int/lit8 v7, p1, -0x1

    if-ne p2, v7, :cond_6

    if-le v3, p1, :cond_6

    .line 280
    add-int/lit8 v7, v3, -0x1

    .local v7, "i":I
    :goto_2
    if-lt v7, p1, :cond_6

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 282
    .end local v1    # "container":Landroid/widget/LinearLayout;
    .end local v2    # "itemView":Landroid/view/View;
    .end local v3    # "childCount":I
    .end local v4    # "xServer":Lcom/winlator/xserver/XServer;
    .end local v5    # "ivIcon":Landroid/widget/ImageView;
    .end local v6    # "window":Lcom/winlator/xserver/Window;
    .end local v7    # "i":I
    :cond_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    return-void

    .line 266
    .restart local v1    # "container":Landroid/widget/LinearLayout;
    .restart local v2    # "itemView":Landroid/view/View;
    .restart local v3    # "childCount":I
    .restart local v4    # "xServer":Lcom/winlator/xserver/XServer;
    .local v5, "xlock":Lcom/winlator/xserver/XLock;
    :catchall_1
    move-exception v6

    if-eqz v5, :cond_7

    :try_start_3
    invoke-interface {v5}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v7

    :try_start_4
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    nop

    .end local p1    # "numProcesses":I
    .end local p2    # "index":I
    .end local p3    # "processInfo":Lcom/winlator/winhandler/ProcessInfo;
    throw v6

    .line 282
    .end local v1    # "container":Landroid/widget/LinearLayout;
    .end local v2    # "itemView":Landroid/view/View;
    .end local v3    # "childCount":I
    .end local v4    # "xServer":Lcom/winlator/xserver/XServer;
    .end local v5    # "xlock":Lcom/winlator/xserver/XLock;
    .restart local p1    # "numProcesses":I
    .restart local p2    # "index":I
    .restart local p3    # "processInfo":Lcom/winlator/winhandler/ProcessInfo;
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private static synthetic lambda$showListItemMenu$3(Lcom/winlator/winhandler/WinHandler;Lcom/winlator/winhandler/ProcessInfo;)V
    .locals 2
    .param p0, "winHandler"    # Lcom/winlator/winhandler/WinHandler;
    .param p1, "processInfo"    # Lcom/winlator/winhandler/ProcessInfo;

    .line 203
    const/4 v0, 0x0

    iget v1, p1, Lcom/winlator/winhandler/ProcessInfo;->pid:I

    invoke-virtual {p0, v0, v1}, Lcom/winlator/winhandler/WinHandler;->killProcess(Ljava/lang/String;I)V

    .line 204
    return-void
.end method

.method private synthetic lambda$showListItemMenu$4(Lcom/winlator/winhandler/ProcessInfo;Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "processInfo"    # Lcom/winlator/winhandler/ProcessInfo;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .line 191
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 192
    .local v0, "itemId":I
    iget-object v1, p0, Lcom/winlator/winhandler/TaskManagerDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-virtual {v1}, Lcom/winlator/XServerDisplayActivity;->getWinHandler()Lcom/winlator/winhandler/WinHandler;

    move-result-object v1

    .line 193
    .local v1, "winHandler":Lcom/winlator/winhandler/WinHandler;
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 195
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/winlator/winhandler/TaskManagerDialog;->showProcessorAffinityDialog(Lcom/winlator/winhandler/ProcessInfo;)V

    .line 196
    goto :goto_0

    .line 202
    :sswitch_1
    iget-object v2, p0, Lcom/winlator/winhandler/TaskManagerDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    new-instance v3, Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda6;

    invoke-direct {v3, v1, p1}, Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda6;-><init>(Lcom/winlator/winhandler/WinHandler;Lcom/winlator/winhandler/ProcessInfo;)V

    const v4, 0x7f10007e

    invoke-static {v2, v4, v3}, Lcom/winlator/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    goto :goto_0

    .line 198
    :sswitch_2
    iget-object v2, p1, Lcom/winlator/winhandler/ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/winlator/winhandler/WinHandler;->bringToFront(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 200
    nop

    .line 207
    :goto_0
    const/4 v2, 0x1

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901d9 -> :sswitch_2
        0x7f0901e1 -> :sswitch_1
        0x7f0901f0 -> :sswitch_0
    .end sparse-switch
.end method

.method private synthetic lambda$showProcessorAffinityDialog$5(Lcom/winlator/winhandler/ProcessInfo;Lcom/winlator/widget/CPUListView;)V
    .locals 3
    .param p1, "processInfo"    # Lcom/winlator/winhandler/ProcessInfo;
    .param p2, "cpuListView"    # Lcom/winlator/widget/CPUListView;

    .line 219
    iget-object v0, p0, Lcom/winlator/winhandler/TaskManagerDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-virtual {v0}, Lcom/winlator/XServerDisplayActivity;->getWinHandler()Lcom/winlator/winhandler/WinHandler;

    move-result-object v0

    .line 220
    .local v0, "winHandler":Lcom/winlator/winhandler/WinHandler;
    iget v1, p1, Lcom/winlator/winhandler/ProcessInfo;->pid:I

    invoke-virtual {p2}, Lcom/winlator/widget/CPUListView;->getCheckedCPUList()[Z

    move-result-object v2

    invoke-static {v2}, Lcom/winlator/core/ProcessHelper;->getAffinityMask([Z)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/winlator/winhandler/WinHandler;->setProcessAffinity(II)V

    .line 221
    invoke-direct {p0}, Lcom/winlator/winhandler/TaskManagerDialog;->update()V

    .line 222
    return-void
.end method

.method private showListItemMenu(Landroid/view/View;Lcom/winlator/winhandler/ProcessInfo;)V
    .locals 3
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "processInfo"    # Lcom/winlator/winhandler/ProcessInfo;

    .line 186
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/winlator/winhandler/TaskManagerDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 187
    .local v0, "listItemMenu":Landroid/widget/PopupMenu;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/winlator/ContainerDetailFragment$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/PopupMenu;Z)V

    .line 189
    :cond_0
    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 190
    new-instance v1, Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2}, Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda5;-><init>(Lcom/winlator/winhandler/TaskManagerDialog;Lcom/winlator/winhandler/ProcessInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 209
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 210
    return-void
.end method

.method private showProcessorAffinityDialog(Lcom/winlator/winhandler/ProcessInfo;)V
    .locals 3
    .param p1, "processInfo"    # Lcom/winlator/winhandler/ProcessInfo;

    .line 213
    new-instance v0, Lcom/winlator/contentdialog/ContentDialog;

    iget-object v1, p0, Lcom/winlator/winhandler/TaskManagerDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    const v2, 0x7f0c002c

    invoke-direct {v0, v1, v2}, Lcom/winlator/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 214
    .local v0, "dialog":Lcom/winlator/contentdialog/ContentDialog;
    iget-object v1, p1, Lcom/winlator/winhandler/ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/winlator/contentdialog/ContentDialog;->setTitle(Ljava/lang/String;)V

    .line 215
    const v1, 0x7f08009d

    invoke-virtual {v0, v1}, Lcom/winlator/contentdialog/ContentDialog;->setIcon(I)V

    .line 216
    const v1, 0x7f090049

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/winlator/widget/CPUListView;

    .line 217
    .local v1, "cpuListView":Lcom/winlator/widget/CPUListView;
    invoke-virtual {p1}, Lcom/winlator/winhandler/ProcessInfo;->getCPUList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/widget/CPUListView;->setCheckedCPUList(Ljava/lang/String;)V

    .line 218
    new-instance v2, Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1, v1}, Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda7;-><init>(Lcom/winlator/winhandler/TaskManagerDialog;Lcom/winlator/winhandler/ProcessInfo;Lcom/winlator/widget/CPUListView;)V

    invoke-virtual {v0, v2}, Lcom/winlator/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 223
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 224
    return-void
.end method

.method private update()V
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/winlator/winhandler/TaskManagerDialog;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/winlator/winhandler/TaskManagerDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-virtual {v1}, Lcom/winlator/XServerDisplayActivity;->getWinHandler()Lcom/winlator/winhandler/WinHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/winlator/winhandler/WinHandler;->listProcesses()V

    .line 176
    const v1, 0x7f09007d

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 177
    .local v1, "container":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f0900eb

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 178
    .end local v1    # "container":Landroid/widget/LinearLayout;
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-direct {p0}, Lcom/winlator/winhandler/TaskManagerDialog;->updateCPUPanel()V

    .line 181
    invoke-direct {p0}, Lcom/winlator/winhandler/TaskManagerDialog;->updateMemoryPanel()V

    .line 182
    invoke-direct {p0}, Lcom/winlator/winhandler/TaskManagerDialog;->updateBatteryPanel()V

    .line 183
    return-void

    .line 178
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateBatteryPanel()V
    .locals 7

    .line 324
    iget-object v0, p0, Lcom/winlator/winhandler/TaskManagerDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/core/BatteryUtils;->getCurrentMicroamperes(Landroid/app/Activity;)I

    move-result v0

    .line 326
    .local v0, "currentMicroamperes":I
    iget-object v1, p0, Lcom/winlator/winhandler/TaskManagerDialog;->batteryPanel:Lcom/winlator/winhandler/TaskManagerDialog$Panel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/winlator/winhandler/TaskManagerDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    const v4, 0x7f10002b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/winlator/winhandler/TaskManagerDialog;->batteryInfo:Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;

    invoke-static {v3}, Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;->access$400(Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/winlator/winhandler/TaskManagerDialog$Panel;->access$1100(Lcom/winlator/winhandler/TaskManagerDialog$Panel;Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/winlator/winhandler/TaskManagerDialog;->batteryPanel:Lcom/winlator/winhandler/TaskManagerDialog$Panel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v4, p0, Lcom/winlator/winhandler/TaskManagerDialog;->batteryInfo:Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;

    invoke-static {v4}, Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;->access$200(Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;)F

    move-result v4

    invoke-static {v0, v4}, Lcom/winlator/core/BatteryUtils;->computePower(IF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%.2f"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " W"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/winlator/winhandler/TaskManagerDialog$Panel;->access$1200(Lcom/winlator/winhandler/TaskManagerDialog$Panel;ILjava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/winlator/winhandler/TaskManagerDialog;->batteryPanel:Lcom/winlator/winhandler/TaskManagerDialog$Panel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/winlator/winhandler/TaskManagerDialog;->batteryInfo:Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;

    invoke-static {v3}, Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;->access$300(Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u00baC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Lcom/winlator/winhandler/TaskManagerDialog$Panel;->access$1200(Lcom/winlator/winhandler/TaskManagerDialog$Panel;ILjava/lang/String;)V

    .line 330
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v1, "popupMenuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/winlator/winhandler/TaskManagerDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    const v4, 0x7f1001a5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v6, p0, Lcom/winlator/winhandler/TaskManagerDialog;->batteryInfo:Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;

    invoke-static {v6}, Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;->access$200(Lcom/winlator/winhandler/TaskManagerDialog$BatteryInfo;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " V"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/winlator/winhandler/TaskManagerDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    const v5, 0x7f100062

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v4, v0, 0x3e8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mA"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v2, p0, Lcom/winlator/winhandler/TaskManagerDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-static {v2}, Lcom/winlator/core/BatteryUtils;->getCapacity(Landroid/content/Context;)I

    move-result v2

    .line 335
    .local v2, "capacity":I
    if-lez v2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/winlator/winhandler/TaskManagerDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    const v6, 0x7f10004a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mAh"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_0
    iget-object v3, p0, Lcom/winlator/winhandler/TaskManagerDialog;->batteryPanel:Lcom/winlator/winhandler/TaskManagerDialog$Panel;

    invoke-static {v3, v1}, Lcom/winlator/winhandler/TaskManagerDialog$Panel;->access$1300(Lcom/winlator/winhandler/TaskManagerDialog$Panel;Ljava/util/ArrayList;)V

    .line 338
    return-void
.end method

.method private updateCPUPanel()V
    .locals 10

    .line 287
    invoke-static {}, Lcom/winlator/core/CPUStatus;->getCurrentClockSpeeds()[S

    move-result-object v0

    .line 288
    .local v0, "clockSpeeds":[S
    const/4 v1, 0x0

    .line 289
    .local v1, "totalClockSpeed":F
    const/4 v2, 0x0

    .line 290
    .local v2, "maxClockSpeed":I
    const/4 v3, 0x0

    .line 292
    .local v3, "selectedClockSpeed":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v4, "popupMenuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_0

    .line 295
    aget-short v6, v0, v5

    int-to-float v6, v6

    add-float/2addr v1, v6

    .line 296
    invoke-static {v5}, Lcom/winlator/core/CPUStatus;->getMaxClockSpeed(I)S

    move-result v6

    .line 297
    .local v6, "currentMaxClockSpeed":I
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 298
    aget-short v7, v0, v5

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 300
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CPU"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-short v8, v0, v5

    invoke-static {v8}, Lcom/winlator/core/CPUStatus;->formatClockSpeed(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/winlator/core/CPUStatus;->formatClockSpeed(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    .end local v6    # "currentMaxClockSpeed":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 303
    .end local v5    # "i":I
    array-length v5, v0

    int-to-float v5, v5

    div-float v5, v1, v5

    .line 304
    .local v5, "avgClockSpeed":F
    int-to-float v6, v2

    div-float v6, v5, v6

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-byte v6, v6

    .line 306
    .local v6, "cpuUsagePercent":B
    iget-object v7, p0, Lcom/winlator/winhandler/TaskManagerDialog;->cpuPanel:Lcom/winlator/winhandler/TaskManagerDialog$Panel;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CPU ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "%)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/winlator/winhandler/TaskManagerDialog$Panel;->access$1100(Lcom/winlator/winhandler/TaskManagerDialog$Panel;Ljava/lang/String;)V

    .line 307
    iget-object v7, p0, Lcom/winlator/winhandler/TaskManagerDialog;->cpuPanel:Lcom/winlator/winhandler/TaskManagerDialog$Panel;

    const/4 v8, 0x0

    invoke-static {v3}, Lcom/winlator/core/CPUStatus;->formatClockSpeed(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/winlator/winhandler/TaskManagerDialog$Panel;->access$1200(Lcom/winlator/winhandler/TaskManagerDialog$Panel;ILjava/lang/String;)V

    .line 308
    iget-object v7, p0, Lcom/winlator/winhandler/TaskManagerDialog;->cpuPanel:Lcom/winlator/winhandler/TaskManagerDialog$Panel;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/winlator/core/CPUStatus;->getTemperature()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\u00baC"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v9, v8}, Lcom/winlator/winhandler/TaskManagerDialog$Panel;->access$1200(Lcom/winlator/winhandler/TaskManagerDialog$Panel;ILjava/lang/String;)V

    .line 309
    iget-object v7, p0, Lcom/winlator/winhandler/TaskManagerDialog;->cpuPanel:Lcom/winlator/winhandler/TaskManagerDialog$Panel;

    invoke-static {v7, v4}, Lcom/winlator/winhandler/TaskManagerDialog$Panel;->access$1300(Lcom/winlator/winhandler/TaskManagerDialog$Panel;Ljava/util/ArrayList;)V

    .line 310
    return-void
.end method

.method private updateMemoryPanel()V
    .locals 10

    .line 313
    iget-object v0, p0, Lcom/winlator/winhandler/TaskManagerDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 314
    .local v0, "activityManager":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 315
    .local v1, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 316
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long/2addr v2, v4

    .line 317
    .local v2, "usedMem":J
    long-to-double v4, v2

    iget-wide v6, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    int-to-byte v4, v4

    .line 319
    .local v4, "memUsagePercent":B
    iget-object v5, p0, Lcom/winlator/winhandler/TaskManagerDialog;->memoryPanel:Lcom/winlator/winhandler/TaskManagerDialog$Panel;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/winlator/winhandler/TaskManagerDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    const v8, 0x7f1000fc

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "%)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/winlator/winhandler/TaskManagerDialog$Panel;->access$1100(Lcom/winlator/winhandler/TaskManagerDialog$Panel;Ljava/lang/String;)V

    .line 320
    iget-object v5, p0, Lcom/winlator/winhandler/TaskManagerDialog;->memoryPanel:Lcom/winlator/winhandler/TaskManagerDialog$Panel;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-static {v2, v3, v7}, Lcom/winlator/core/StringUtils;->formatBytes(JZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v8, v9}, Lcom/winlator/core/StringUtils;->formatBytes(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v7, v6}, Lcom/winlator/winhandler/TaskManagerDialog$Panel;->access$1200(Lcom/winlator/winhandler/TaskManagerDialog$Panel;ILjava/lang/String;)V

    .line 321
    return-void
.end method


# virtual methods
.method public onGetProcessInfo(IILcom/winlator/winhandler/ProcessInfo;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "numProcesses"    # I
    .param p3, "processInfo"    # Lcom/winlator/winhandler/ProcessInfo;

    .line 243
    iget-object v0, p0, Lcom/winlator/winhandler/TaskManagerDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    new-instance v1, Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/winhandler/TaskManagerDialog;IILcom/winlator/winhandler/ProcessInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 284
    return-void
.end method

.method public show()V
    .locals 7

    .line 228
    invoke-direct {p0}, Lcom/winlator/winhandler/TaskManagerDialog;->update()V

    .line 229
    iget-object v0, p0, Lcom/winlator/winhandler/TaskManagerDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-virtual {v0}, Lcom/winlator/XServerDisplayActivity;->getWinHandler()Lcom/winlator/winhandler/WinHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/winlator/winhandler/WinHandler;->setOnGetProcessInfoListener(Lcom/winlator/winhandler/OnGetProcessInfoListener;)V

    .line 231
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/winlator/winhandler/TaskManagerDialog;->timer:Ljava/util/Timer;

    .line 232
    iget-object v1, p0, Lcom/winlator/winhandler/TaskManagerDialog;->timer:Ljava/util/Timer;

    new-instance v2, Lcom/winlator/winhandler/TaskManagerDialog$2;

    invoke-direct {v2, p0}, Lcom/winlator/winhandler/TaskManagerDialog$2;-><init>(Lcom/winlator/winhandler/TaskManagerDialog;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 238
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 239
    return-void
.end method
