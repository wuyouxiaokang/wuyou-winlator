.class public Lcom/winlator/contentdialog/ActiveWindowsDialog;
.super Lcom/winlator/contentdialog/ContentDialog;
.source "ActiveWindowsDialog.java"


# instance fields
.field private final activity:Lcom/winlator/XServerDisplayActivity;


# direct methods
.method public static synthetic $r8$lambda$0e4MNQgwWR0mjpxrgGO6icbaHRo(Lcom/winlator/contentdialog/ActiveWindowsDialog;Lcom/winlator/xserver/Window;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/contentdialog/ActiveWindowsDialog;->lambda$loadWindowViews$3(Lcom/winlator/xserver/Window;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZaMgi2qu4Zfz1oUFCHhzySWt8K0(Lcom/winlator/contentdialog/ActiveWindowsDialog;Lcom/winlator/XServerDisplayActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/contentdialog/ActiveWindowsDialog;->lambda$new$0(Lcom/winlator/XServerDisplayActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fk5kprbzYJkO2tpNcj8c4HSpDEs(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/winlator/contentdialog/ActiveWindowsDialog;->lambda$loadWindowViews$2(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oPs_izmcpdPMBpEdZVa3KsUA5ug(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/winlator/contentdialog/ActiveWindowsDialog;->lambda$loadWindowViews$1(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Lcom/winlator/XServerDisplayActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/winlator/XServerDisplayActivity;

    .line 28
    const v0, 0x7f0c001e

    invoke-direct {p0, p1, v0}, Lcom/winlator/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 29
    iput-object p1, p0, Lcom/winlator/contentdialog/ActiveWindowsDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 31
    const v1, 0x7f10001e

    invoke-virtual {p0, v1}, Lcom/winlator/contentdialog/ContentDialog;->setTitle(I)V

    .line 32
    const v1, 0x7f080097

    invoke-virtual {p0, v1}, Lcom/winlator/contentdialog/ContentDialog;->setIcon(I)V

    .line 34
    const v1, 0x7f09000c

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 35
    .local v1, "showDesktopButton":Landroid/widget/Button;
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    const v0, 0x7f10016f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 37
    new-instance v0, Lcom/winlator/contentdialog/ActiveWindowsDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/winlator/contentdialog/ActiveWindowsDialog$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/contentdialog/ActiveWindowsDialog;Lcom/winlator/XServerDisplayActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-direct {p0}, Lcom/winlator/contentdialog/ActiveWindowsDialog;->collectActiveWindows()Ljava/util/ArrayList;

    move-result-object v0

    .line 43
    .local v0, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/xserver/Window;>;"
    invoke-direct {p0, v0}, Lcom/winlator/contentdialog/ActiveWindowsDialog;->loadWindowViews(Ljava/util/ArrayList;)V

    .line 44
    return-void
.end method

.method private collectActiveWindows()Ljava/util/ArrayList;
    .locals 5

    .line 117
    iget-object v0, p0, Lcom/winlator/contentdialog/ActiveWindowsDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-virtual {v0}, Lcom/winlator/XServerDisplayActivity;->getXServer()Lcom/winlator/xserver/XServer;

    move-result-object v0

    .line 118
    .local v0, "xServer":Lcom/winlator/xserver/XServer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/xserver/Window;>;"
    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v3, Lcom/winlator/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v2, v3}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v2

    .line 121
    .local v2, "lock":Lcom/winlator/xserver/XLock;
    :try_start_0
    iget-object v3, v0, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    iget-object v3, v3, Lcom/winlator/xserver/WindowManager;->rootWindow:Lcom/winlator/xserver/Window;

    invoke-direct {p0, v3, v1}, Lcom/winlator/contentdialog/ActiveWindowsDialog;->collectActiveWindows(Lcom/winlator/xserver/Window;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/winlator/xserver/XLock;->close()V

    .line 124
    .end local v2    # "lock":Lcom/winlator/xserver/XLock;
    :cond_0
    return-object v1

    .line 120
    .restart local v2    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v3
.end method

.method private collectActiveWindows(Lcom/winlator/xserver/Window;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "window"    # Lcom/winlator/xserver/Window;

    .line 104
    .local p2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/xserver/Window;>;"
    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->isRenderable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/winlator/contentdialog/ActiveWindowsDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-virtual {v0}, Lcom/winlator/XServerDisplayActivity;->getXServer()Lcom/winlator/xserver/XServer;

    move-result-object v0

    .line 107
    .local v0, "xServer":Lcom/winlator/xserver/XServer;
    iget-object v1, v0, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    iget-object v1, v1, Lcom/winlator/xserver/WindowManager;->rootWindow:Lcom/winlator/xserver/Window;

    if-eq p1, v1, :cond_1

    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->isDesktopWindow()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->isSurface()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 108
    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_3
    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/xserver/Window;

    .line 112
    .local v2, "child":Lcom/winlator/xserver/Window;
    invoke-direct {p0, v2, p2}, Lcom/winlator/contentdialog/ActiveWindowsDialog;->collectActiveWindows(Lcom/winlator/xserver/Window;Ljava/util/ArrayList;)V

    .line 113
    .end local v2    # "child":Lcom/winlator/xserver/Window;
    goto :goto_0

    .line 114
    :cond_4
    return-void
.end method

.method private static synthetic lambda$loadWindowViews$1(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "ivWindow"    # Landroid/widget/ImageView;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 85
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static synthetic lambda$loadWindowViews$2(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "ivWindow"    # Landroid/widget/ImageView;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 85
    new-instance v0, Lcom/winlator/contentdialog/ActiveWindowsDialog$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/winlator/contentdialog/ActiveWindowsDialog$$ExternalSyntheticLambda3;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$loadWindowViews$3(Lcom/winlator/xserver/Window;Landroid/view/View;)V
    .locals 4
    .param p1, "window"    # Lcom/winlator/xserver/Window;
    .param p2, "v"    # Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/winlator/contentdialog/ActiveWindowsDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-virtual {v0}, Lcom/winlator/XServerDisplayActivity;->getWinHandler()Lcom/winlator/winhandler/WinHandler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->getHandle()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/winhandler/WinHandler;->bringToFront(Ljava/lang/String;J)V

    .line 96
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 97
    return-void
.end method

.method private synthetic lambda$new$0(Lcom/winlator/XServerDisplayActivity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Lcom/winlator/XServerDisplayActivity;
    .param p2, "v"    # Landroid/view/View;

    .line 38
    invoke-virtual {p1}, Lcom/winlator/XServerDisplayActivity;->getWinHandler()Lcom/winlator/winhandler/WinHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/winhandler/WinHandler;->showDesktop()V

    .line 39
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 40
    return-void
.end method

.method private loadWindowViews(Ljava/util/ArrayList;)V
    .locals 23

    .line 47
    .local p1, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/xserver/Window;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 48
    const v1, 0x7f0900eb

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    return-void

    .line 52
    :cond_0
    iget-object v1, v0, Lcom/winlator/contentdialog/ActiveWindowsDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-virtual {v1}, Lcom/winlator/XServerDisplayActivity;->getXServer()Lcom/winlator/xserver/XServer;

    move-result-object v1

    .line 53
    .local v1, "xServer":Lcom/winlator/xserver/XServer;
    const v3, 0x7f09008b

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 54
    .local v3, "llWindowList":Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 55
    invoke-virtual {v1}, Lcom/winlator/xserver/XServer;->getRenderer()Lcom/winlator/renderer/GLRenderer;

    move-result-object v4

    .line 57
    .local v4, "renderer":Lcom/winlator/renderer/GLRenderer;
    iget-object v5, v0, Lcom/winlator/contentdialog/ActiveWindowsDialog;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 58
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const/high16 v6, 0x41c00000    # 24.0f

    invoke-static {v6}, Lcom/winlator/core/UnitUtils;->dpToPx(F)F

    move-result v6

    .line 59
    .local v6, "iconSize":F
    const/high16 v7, 0x42e80000    # 116.0f

    invoke-static {v7}, Lcom/winlator/core/UnitUtils;->dpToPx(F)F

    move-result v7

    float-to-int v7, v7

    .line 61
    .local v7, "imageHeight":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_5

    .line 62
    move-object/from16 v10, p1

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/winlator/xserver/Window;

    .line 63
    .local v11, "window":Lcom/winlator/xserver/Window;
    invoke-virtual {v11}, Lcom/winlator/xserver/Window;->getParent()Lcom/winlator/xserver/Window;

    move-result-object v12

    .line 64
    .local v12, "parent":Lcom/winlator/xserver/Window;
    const v13, 0x7f0c001d

    invoke-virtual {v5, v13, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 65
    .local v13, "itemView":Landroid/view/View;
    const v14, 0x7f090065

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 66
    .local v14, "ivIcon":Landroid/widget/ImageView;
    const v15, 0x7f090067

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 67
    .local v15, "ivWindow":Landroid/widget/ImageView;
    const v9, 0x7f0900ef

    invoke-virtual {v13, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 69
    .local v9, "tvName":Landroid/widget/TextView;
    invoke-virtual {v11}, Lcom/winlator/xserver/Window;->getName()Ljava/lang/String;

    move-result-object v17

    .line 70
    .local v17, "title":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-virtual {v12}, Lcom/winlator/xserver/Window;->getName()Ljava/lang/String;

    move-result-object v17

    :cond_1
    move-object/from16 v2, v17

    .line 71
    .end local v17    # "title":Ljava/lang/String;
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    move-object/from16 v17, v2

    .end local v2    # "title":Ljava/lang/String;
    .restart local v17    # "title":Ljava/lang/String;
    iget-object v2, v1, Lcom/winlator/xserver/XServer;->pixmapManager:Lcom/winlator/xserver/PixmapManager;

    invoke-virtual {v2, v11}, Lcom/winlator/xserver/PixmapManager;->getWindowIcon(Lcom/winlator/xserver/Window;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 74
    .local v2, "icon":Landroid/graphics/Bitmap;
    if-nez v2, :cond_2

    move-object/from16 v19, v2

    .end local v2    # "icon":Landroid/graphics/Bitmap;
    .local v19, "icon":Landroid/graphics/Bitmap;
    iget-object v2, v1, Lcom/winlator/xserver/XServer;->pixmapManager:Lcom/winlator/xserver/PixmapManager;

    invoke-virtual {v2, v12}, Lcom/winlator/xserver/PixmapManager;->getWindowIcon(Lcom/winlator/xserver/Window;)Landroid/graphics/Bitmap;

    move-result-object v2

    .end local v19    # "icon":Landroid/graphics/Bitmap;
    .restart local v2    # "icon":Landroid/graphics/Bitmap;
    goto :goto_1

    :cond_2
    move-object/from16 v19, v2

    .line 76
    :goto_1
    move-object/from16 v19, v1

    .end local v1    # "xServer":Lcom/winlator/xserver/XServer;
    .local v19, "xServer":Lcom/winlator/xserver/XServer;
    const v1, 0x7f08010e

    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    if-eqz v2, :cond_3

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 79
    :cond_3
    invoke-virtual {v11}, Lcom/winlator/xserver/Window;->isIconic()Z

    move-result v1

    if-nez v1, :cond_4

    .line 80
    invoke-virtual {v11}, Lcom/winlator/xserver/Window;->getContent()Lcom/winlator/xserver/Drawable;

    move-result-object v1

    .line 81
    .local v1, "content":Lcom/winlator/xserver/Drawable;
    move-object/from16 v20, v2

    .end local v2    # "icon":Landroid/graphics/Bitmap;
    .local v20, "icon":Landroid/graphics/Bitmap;
    iget-short v2, v1, Lcom/winlator/xserver/Drawable;->width:S

    int-to-float v2, v2

    move-object/from16 v21, v5

    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    .local v21, "inflater":Landroid/view/LayoutInflater;
    iget-short v5, v1, Lcom/winlator/xserver/Drawable;->height:S

    int-to-float v5, v5

    const/4 v10, 0x0

    move-object/from16 v22, v12

    .end local v12    # "parent":Lcom/winlator/xserver/Window;
    .local v22, "parent":Lcom/winlator/xserver/Window;
    int-to-float v12, v7

    invoke-static {v2, v5, v10, v12}, Lcom/winlator/core/ImageUtils;->getScaledSize(FFFF)[I

    move-result-object v2

    .line 82
    .local v2, "scaledSize":[I
    const/4 v5, 0x0

    aget v10, v2, v5

    int-to-float v10, v10

    sub-float/2addr v10, v6

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 83
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    aget v12, v2, v5

    move-object/from16 v16, v14

    const/4 v5, 0x1

    .end local v14    # "ivIcon":Landroid/widget/ImageView;
    .local v16, "ivIcon":Landroid/widget/ImageView;
    aget v14, v2, v5

    invoke-direct {v10, v12, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    new-instance v10, Lcom/winlator/contentdialog/ActiveWindowsDialog$$ExternalSyntheticLambda1;

    invoke-direct {v10, v15}, Lcom/winlator/contentdialog/ActiveWindowsDialog$$ExternalSyntheticLambda1;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v4, v1, v10}, Lcom/winlator/renderer/GLRenderer;->takeWindowScreenshot(Lcom/winlator/xserver/Drawable;Lcom/winlator/core/Callback;)V

    .line 86
    .end local v1    # "content":Lcom/winlator/xserver/Drawable;
    .end local v2    # "scaledSize":[I
    const/4 v2, 0x0

    goto :goto_2

    .line 88
    .end local v16    # "ivIcon":Landroid/widget/ImageView;
    .end local v20    # "icon":Landroid/graphics/Bitmap;
    .end local v21    # "inflater":Landroid/view/LayoutInflater;
    .end local v22    # "parent":Lcom/winlator/xserver/Window;
    .local v2, "icon":Landroid/graphics/Bitmap;
    .restart local v5    # "inflater":Landroid/view/LayoutInflater;
    .restart local v12    # "parent":Lcom/winlator/xserver/Window;
    .restart local v14    # "ivIcon":Landroid/widget/ImageView;
    :cond_4
    move-object/from16 v20, v2

    move-object/from16 v21, v5

    move-object/from16 v22, v12

    move-object/from16 v16, v14

    const/4 v5, 0x1

    .end local v2    # "icon":Landroid/graphics/Bitmap;
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "parent":Lcom/winlator/xserver/Window;
    .end local v14    # "ivIcon":Landroid/widget/ImageView;
    .restart local v16    # "ivIcon":Landroid/widget/ImageView;
    .restart local v20    # "icon":Landroid/graphics/Bitmap;
    .restart local v21    # "inflater":Landroid/view/LayoutInflater;
    .restart local v22    # "parent":Lcom/winlator/xserver/Window;
    const v1, 0x7f090064

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    const v1, 0x7f090063

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    int-to-float v1, v7

    sub-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 91
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    :goto_2
    new-instance v1, Lcom/winlator/contentdialog/ActiveWindowsDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, v11}, Lcom/winlator/contentdialog/ActiveWindowsDialog$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/contentdialog/ActiveWindowsDialog;Lcom/winlator/xserver/Window;)V

    invoke-virtual {v15, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 61
    .end local v9    # "tvName":Landroid/widget/TextView;
    .end local v11    # "window":Lcom/winlator/xserver/Window;
    .end local v13    # "itemView":Landroid/view/View;
    .end local v15    # "ivWindow":Landroid/widget/ImageView;
    .end local v16    # "ivIcon":Landroid/widget/ImageView;
    .end local v17    # "title":Ljava/lang/String;
    .end local v20    # "icon":Landroid/graphics/Bitmap;
    .end local v22    # "parent":Lcom/winlator/xserver/Window;
    add-int/lit8 v8, v8, -0x1

    move v9, v5

    move-object/from16 v1, v19

    move-object/from16 v5, v21

    goto/16 :goto_0

    .end local v19    # "xServer":Lcom/winlator/xserver/XServer;
    .end local v21    # "inflater":Landroid/view/LayoutInflater;
    .local v1, "xServer":Lcom/winlator/xserver/XServer;
    .restart local v5    # "inflater":Landroid/view/LayoutInflater;
    :cond_5
    nop

    .line 101
    .end local v8    # "i":I
    return-void
.end method
