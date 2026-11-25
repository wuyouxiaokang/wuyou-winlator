.class public Lcom/wuyouwin/contentdialog/FileInfoDialog;
.super Lcom/wuyouwin/contentdialog/ContentDialog;
.source "FileInfoDialog.java"


# direct methods
.method public static synthetic $r8$lambda$ly98t4Mr7vq-SucdG2UhN2RxBLk(Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/wuyouwin/contentdialog/FileInfoDialog;->lambda$new$0(Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicLong;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wwwmMTfHLpEGqwpmO5slijZH1sw(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Landroid/widget/TextView;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/wuyouwin/contentdialog/FileInfoDialog;->lambda$new$1(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Landroid/widget/TextView;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/wuyouwin/container/FileInfo;Lcom/wuyouwin/container/Container;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Lcom/wuyouwin/container/FileInfo;
    .param p3, "container"    # Lcom/wuyouwin/container/Container;

    .line 26
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const v3, 0x7f0c004b

    invoke-direct {v0, v1, v3}, Lcom/wuyouwin/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 27
    const v3, 0x7f09000c

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 28
    const v3, 0x7f1000d1

    invoke-virtual {v0, v3}, Lcom/wuyouwin/contentdialog/ContentDialog;->setTitle(I)V

    .line 29
    const v3, 0x7f0800ab

    invoke-virtual {v0, v3}, Lcom/wuyouwin/contentdialog/ContentDialog;->setIcon(I)V

    .line 31
    const-string v3, ""

    .line 32
    .local v3, "formattedType":Ljava/lang/String;
    sget-object v4, Lcom/wuyouwin/contentdialog/FileInfoDialog$1;->$SwitchMap$com$winlator$container$FileInfo$Type:[I

    iget-object v5, v2, Lcom/wuyouwin/container/FileInfo;->type:Lcom/wuyouwin/container/FileInfo$Type;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 40
    :pswitch_0
    const v4, 0x7f1000bb

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 37
    :pswitch_1
    const v4, 0x7f10008d

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 38
    goto :goto_0

    .line 34
    :pswitch_2
    const v4, 0x7f1000b7

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 35
    nop

    .line 44
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v4, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    const v5, 0x7f100193

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5, v3}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v5, v2, Lcom/wuyouwin/container/FileInfo;->type:Lcom/wuyouwin/container/FileInfo$Type;

    sget-object v6, Lcom/wuyouwin/container/FileInfo$Type;->DIRECTORY:Lcom/wuyouwin/container/FileInfo$Type;

    if-ne v5, v6, :cond_0

    .line 48
    const v5, 0x7f10005a

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/container/FileInfo;->getItemCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f1000db

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    iget-object v5, v2, Lcom/wuyouwin/container/FileInfo;->type:Lcom/wuyouwin/container/FileInfo$Type;

    sget-object v6, Lcom/wuyouwin/container/FileInfo$Type;->FILE:Lcom/wuyouwin/container/FileInfo$Type;

    const-string v7, "?"

    const v8, 0x7f100172

    if-ne v5, v6, :cond_1

    .line 52
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/container/FileInfo;->getSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/wuyouwin/core/StringUtils;->formatBytes(J)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :goto_1
    iget-object v5, v2, Lcom/wuyouwin/container/FileInfo;->type:Lcom/wuyouwin/container/FileInfo$Type;

    sget-object v6, Lcom/wuyouwin/container/FileInfo$Type;->DRIVE:Lcom/wuyouwin/container/FileInfo$Type;

    if-eq v5, v6, :cond_2

    .line 57
    const v5, 0x7f1000e1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/wuyouwin/container/FileInfo;->path:Ljava/lang/String;

    invoke-static {v6}, Lcom/wuyouwin/core/FileUtils;->getDirname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v8, p3

    invoke-static {v6, v8}, Lcom/wuyouwin/core/WineUtils;->unixToDOSPath(Ljava/lang/String;Lcom/wuyouwin/container/Container;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 56
    :cond_2
    move-object/from16 v8, p3

    .line 60
    :goto_2
    new-instance v5, Ljava/util/Date;

    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/container/FileInfo;->toFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-direct {v5, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 61
    .local v5, "date":Ljava/util/Date;
    const/4 v6, 0x3

    invoke-static {v6, v6}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, "modified":Ljava/lang/String;
    const v9, 0x7f100101

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9, v6}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    const v9, 0x7f09006d

    invoke-virtual {v0, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 65
    .local v9, "llContent":Landroid/widget/LinearLayout;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v10, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v10, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static/range {p1 .. p1}, Lcom/wuyouwin/core/AppUtils;->getPreferredDialogWidth(Landroid/content/Context;)I

    move-result v12

    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 67
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v10, v12

    .line 70
    const/high16 v11, 0x41000000    # 8.0f

    invoke-static {v11}, Lcom/wuyouwin/core/UnitUtils;->dpToPx(F)F

    move-result v11

    float-to-int v11, v11

    .line 72
    .local v11, "paddingRight":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    .line 73
    .local v13, "columns":[Ljava/lang/String;
    new-instance v14, Landroid/widget/LinearLayout;

    invoke-direct {v14, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    .local v14, "row":Landroid/widget/LinearLayout;
    invoke-virtual {v14, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 77
    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 78
    .local v15, "tvLabel":Landroid/widget/TextView;
    invoke-virtual {v15, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    const/4 v0, 0x0

    invoke-virtual {v15, v0, v0, v11, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 80
    const/4 v0, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v15, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x0

    aget-object v0, v13, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {v15}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v15, v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 83
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, "tvValue":Landroid/widget/TextView;
    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 88
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 89
    aget-object v1, v13, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    aget-object v1, v13, v2

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 93
    .local v1, "lastTime":Ljava/util/concurrent/atomic/AtomicLong;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 95
    .local v2, "totalSize":Ljava/util/concurrent/atomic/AtomicLong;
    move-object/from16 v16, v3

    .end local v3    # "formattedType":Ljava/lang/String;
    .local v16, "formattedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/container/FileInfo;->toFile()Ljava/io/File;

    move-result-object v3

    move-object/from16 v17, v4

    .end local v4    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    .local v17, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    new-instance v4, Lcom/wuyouwin/contentdialog/FileInfoDialog$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v1, v0}, Lcom/wuyouwin/contentdialog/FileInfoDialog$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Landroid/widget/TextView;)V

    invoke-static {v3, v4}, Lcom/wuyouwin/core/FileUtils;->getSizeAsync(Ljava/io/File;Lcom/wuyouwin/core/Callback;)V

    goto :goto_4

    .line 91
    .end local v1    # "lastTime":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v2    # "totalSize":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v16    # "formattedType":Ljava/lang/String;
    .end local v17    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    .restart local v3    # "formattedType":Ljava/lang/String;
    .restart local v4    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .line 106
    .end local v3    # "formattedType":Ljava/lang/String;
    .end local v4    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    .restart local v16    # "formattedType":Ljava/lang/String;
    .restart local v17    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    :goto_4
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    invoke-virtual {v9, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 109
    .end local v0    # "tvValue":Landroid/widget/TextView;
    .end local v13    # "columns":[Ljava/lang/String;
    .end local v14    # "row":Landroid/widget/LinearLayout;
    .end local v15    # "tvLabel":Landroid/widget/TextView;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    goto/16 :goto_3

    .line 110
    .end local v16    # "formattedType":Ljava/lang/String;
    .end local v17    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    .restart local v3    # "formattedType":Ljava/lang/String;
    .restart local v4    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$new$0(Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 2
    .param p0, "tvValue"    # Landroid/widget/TextView;
    .param p1, "totalSize"    # Ljava/util/concurrent/atomic/AtomicLong;

    .line 100
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/wuyouwin/core/StringUtils;->formatBytes(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static synthetic lambda$new$1(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Landroid/widget/TextView;Ljava/lang/Long;)V
    .locals 7
    .param p0, "totalSize"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "lastTime"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p2, "tvValue"    # Landroid/widget/TextView;
    .param p3, "size"    # Ljava/lang/Long;

    .line 96
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 98
    .local v0, "currTime":J
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 99
    .local v2, "elapsedTime":I
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    const/16 v3, 0x1e

    if-le v2, v3, :cond_1

    .line 100
    :cond_0
    new-instance v3, Lcom/wuyouwin/contentdialog/FileInfoDialog$$ExternalSyntheticLambda1;

    invoke-direct {v3, p2, p0}, Lcom/wuyouwin/contentdialog/FileInfoDialog$$ExternalSyntheticLambda1;-><init>(Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicLong;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 101
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 103
    :cond_1
    return-void
.end method
