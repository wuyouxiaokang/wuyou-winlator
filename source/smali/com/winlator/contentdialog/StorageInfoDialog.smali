.class public Lcom/winlator/contentdialog/StorageInfoDialog;
.super Lcom/winlator/contentdialog/ContentDialog;
.source "StorageInfoDialog.java"


# direct methods
.method public static synthetic $r8$lambda$47KVEB7kyaJ7EqEtdbPulZr1QjY(Ljava/util/concurrent/atomic/AtomicLong;Lcom/winlator/core/Callback;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/winlator/contentdialog/StorageInfoDialog;->lambda$new$3(Ljava/util/concurrent/atomic/AtomicLong;Lcom/winlator/core/Callback;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5ya8mG3JJHcMZ069qG9x5stga4I(Ljava/io/File;Ljava/io/File;Lcom/winlator/container/Container;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/winlator/contentdialog/StorageInfoDialog;->lambda$new$5(Ljava/io/File;Ljava/io/File;Lcom/winlator/container/Container;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VkO6EhD_csWtDM1yglTy1i2YnhI(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/winlator/contentdialog/StorageInfoDialog;->lambda$new$1(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WoLmvIpQWIL1XK0VgHOPEBuf3sI(Ljava/util/concurrent/atomic/AtomicLong;Lcom/winlator/core/Callback;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/winlator/contentdialog/StorageInfoDialog;->lambda$new$2(Ljava/util/concurrent/atomic/AtomicLong;Lcom/winlator/core/Callback;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZfFKoPa61fYJAU4HrtY4a7ocOoQ(Ljava/util/concurrent/atomic/AtomicLong;Lcom/winlator/core/Callback;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/winlator/contentdialog/StorageInfoDialog;->lambda$new$4(Ljava/util/concurrent/atomic/AtomicLong;Lcom/winlator/core/Callback;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uE7uBIrHbbQ0YRyz2CS_t7f2g8Y(Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicLong;Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicLong;Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicLong;JLandroid/widget/TextView;Lcom/google/android/material/progressindicator/CircularProgressIndicator;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p9}, Lcom/winlator/contentdialog/StorageInfoDialog;->lambda$new$0(Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicLong;Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicLong;Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicLong;JLandroid/widget/TextView;Lcom/google/android/material/progressindicator/CircularProgressIndicator;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/winlator/container/Container;)V
    .locals 24
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "container"    # Lcom/winlator/container/Container;

    .line 20
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x7f0c0027

    invoke-direct {v0, v1, v2}, Lcom/winlator/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 22
    const v2, 0x7f10017c

    invoke-virtual {v0, v2}, Lcom/winlator/contentdialog/ContentDialog;->setTitle(I)V

    .line 23
    const v2, 0x7f0800ab

    invoke-virtual {v0, v2}, Lcom/winlator/contentdialog/ContentDialog;->setIcon(I)V

    .line 25
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 26
    .local v2, "driveCSize":Ljava/util/concurrent/atomic/AtomicLong;
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 28
    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    move-object v14, v5

    .line 29
    .local v14, "cacheSize":Ljava/util/concurrent/atomic/AtomicLong;
    invoke-virtual {v14, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 31
    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    move-object v15, v5

    .line 32
    .local v15, "totalSize":Ljava/util/concurrent/atomic/AtomicLong;
    invoke-virtual {v15, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 34
    const v3, 0x7f0900e9

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/TextView;

    .line 35
    .local v16, "tvDriveCSize":Landroid/widget/TextView;
    const v3, 0x7f0900e7

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/TextView;

    .line 36
    .local v17, "tvCacheSize":Landroid/widget/TextView;
    const v3, 0x7f0900f5

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/TextView;

    .line 37
    .local v18, "tvTotalSize":Landroid/widget/TextView;
    const v3, 0x7f0900f6

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/TextView;

    .line 38
    .local v19, "tvUsedSpace":Landroid/widget/TextView;
    const v3, 0x7f09004f

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 40
    .local v20, "circularProgressIndicator":Lcom/google/android/material/progressindicator/CircularProgressIndicator;
    invoke-static {}, Lcom/winlator/core/FileUtils;->getInternalStorageSize()J

    move-result-wide v21

    .line 42
    .local v21, "internalStorageSize":J
    new-instance v23, Lcom/winlator/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda0;

    move-object/from16 v3, v23

    move-object/from16 v4, v16

    move-object v5, v2

    move-object/from16 v6, v17

    move-object v7, v14

    move-object/from16 v8, v18

    move-object v9, v15

    move-wide/from16 v10, v21

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    invoke-direct/range {v3 .. v13}, Lcom/winlator/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicLong;Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicLong;Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicLong;JLandroid/widget/TextView;Lcom/google/android/material/progressindicator/CircularProgressIndicator;)V

    .line 52
    .local v3, "updateUI":Ljava/lang/Runnable;
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v4

    .line 53
    .local v4, "rootDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v6, ".wine/drive_c"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .local v5, "driveCDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v7, ".cache"

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    .local v6, "containerCacheDir":Ljava/io/File;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    .line 56
    .local v7, "globalCacheDir":Ljava/io/File;
    new-instance v8, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 58
    .local v8, "lastTime":Ljava/util/concurrent/atomic/AtomicLong;
    new-instance v9, Lcom/winlator/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda1;

    invoke-direct {v9, v15, v8, v1, v3}, Lcom/winlator/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 68
    .local v9, "onAddSize":Lcom/winlator/core/Callback;, "Lcom/winlator/core/Callback<Ljava/lang/Long;>;"
    new-instance v10, Lcom/winlator/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda2;

    invoke-direct {v10, v2, v9}, Lcom/winlator/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/atomic/AtomicLong;Lcom/winlator/core/Callback;)V

    invoke-static {v5, v10}, Lcom/winlator/core/FileUtils;->getSizeAsync(Ljava/io/File;Lcom/winlator/core/Callback;)V

    .line 73
    new-instance v10, Lcom/winlator/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda3;

    invoke-direct {v10, v14, v9}, Lcom/winlator/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/atomic/AtomicLong;Lcom/winlator/core/Callback;)V

    invoke-static {v6, v10}, Lcom/winlator/core/FileUtils;->getSizeAsync(Ljava/io/File;Lcom/winlator/core/Callback;)V

    .line 78
    new-instance v10, Lcom/winlator/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda4;

    invoke-direct {v10, v14, v9}, Lcom/winlator/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/atomic/AtomicLong;Lcom/winlator/core/Callback;)V

    invoke-static {v7, v10}, Lcom/winlator/core/FileUtils;->getSizeAsync(Ljava/io/File;Lcom/winlator/core/Callback;)V

    .line 83
    const v10, 0x7f09000c

    invoke-virtual {v0, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f100051

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 84
    new-instance v10, Lcom/winlator/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda5;

    move-object/from16 v11, p2

    invoke-direct {v10, v6, v7, v11}, Lcom/winlator/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda5;-><init>(Ljava/io/File;Ljava/io/File;Lcom/winlator/container/Container;)V

    invoke-virtual {v0, v10}, Lcom/winlator/contentdialog/ContentDialog;->setOnCancelCallback(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method private static synthetic lambda$new$0(Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicLong;Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicLong;Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicLong;JLandroid/widget/TextView;Lcom/google/android/material/progressindicator/CircularProgressIndicator;)V
    .locals 4
    .param p0, "tvDriveCSize"    # Landroid/widget/TextView;
    .param p1, "driveCSize"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p2, "tvCacheSize"    # Landroid/widget/TextView;
    .param p3, "cacheSize"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p4, "tvTotalSize"    # Landroid/widget/TextView;
    .param p5, "totalSize"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p6, "internalStorageSize"    # J
    .param p8, "tvUsedSpace"    # Landroid/widget/TextView;
    .param p9, "circularProgressIndicator"    # Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 43
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/winlator/core/StringUtils;->formatBytes(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/winlator/core/StringUtils;->formatBytes(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/winlator/core/StringUtils;->formatBytes(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-double v0, v0

    long-to-double v2, p6

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 48
    .local v0, "progress":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const/4 v1, 0x1

    invoke-virtual {p9, v0, v1}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 50
    return-void
.end method

.method private static synthetic lambda$new$1(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Long;)V
    .locals 4
    .param p0, "totalSize"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "lastTime"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "updateUI"    # Ljava/lang/Runnable;
    .param p4, "size"    # Ljava/lang/Long;

    .line 59
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 61
    .local v0, "currTime":J
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 62
    .local v2, "elapsedTime":I
    const/16 v3, 0x1e

    if-le v2, v3, :cond_0

    .line 63
    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 64
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 66
    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$2(Ljava/util/concurrent/atomic/AtomicLong;Lcom/winlator/core/Callback;Ljava/lang/Long;)V
    .locals 2
    .param p0, "driveCSize"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "onAddSize"    # Lcom/winlator/core/Callback;
    .param p2, "size"    # Ljava/lang/Long;

    .line 69
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 70
    invoke-interface {p1, p2}, Lcom/winlator/core/Callback;->call(Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method private static synthetic lambda$new$3(Ljava/util/concurrent/atomic/AtomicLong;Lcom/winlator/core/Callback;Ljava/lang/Long;)V
    .locals 2
    .param p0, "cacheSize"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "onAddSize"    # Lcom/winlator/core/Callback;
    .param p2, "size"    # Ljava/lang/Long;

    .line 74
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 75
    invoke-interface {p1, p2}, Lcom/winlator/core/Callback;->call(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method private static synthetic lambda$new$4(Ljava/util/concurrent/atomic/AtomicLong;Lcom/winlator/core/Callback;Ljava/lang/Long;)V
    .locals 2
    .param p0, "cacheSize"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "onAddSize"    # Lcom/winlator/core/Callback;
    .param p2, "size"    # Ljava/lang/Long;

    .line 79
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 80
    invoke-interface {p1, p2}, Lcom/winlator/core/Callback;->call(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method private static synthetic lambda$new$5(Ljava/io/File;Ljava/io/File;Lcom/winlator/container/Container;)V
    .locals 2
    .param p0, "containerCacheDir"    # Ljava/io/File;
    .param p1, "globalCacheDir"    # Ljava/io/File;
    .param p2, "container"    # Lcom/winlator/container/Container;

    .line 85
    invoke-static {p0}, Lcom/winlator/core/FileUtils;->clear(Ljava/io/File;)Z

    .line 86
    invoke-static {p1}, Lcom/winlator/core/FileUtils;->clear(Ljava/io/File;)Z

    .line 88
    const-string v0, "desktopTheme"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/winlator/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    invoke-virtual {p2}, Lcom/winlator/container/Container;->saveData()V

    .line 90
    return-void
.end method
