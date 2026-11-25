.class public Lcom/winlator/widget/ImagePickerView;
.super Landroid/view/View;
.source "ImagePickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final defaultSources:Ljava/util/List;

.field private final icon:Landroid/graphics/Bitmap;

.field private selectedSource:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$G3lcVwAWVbP3BPIjuZImp23udPE(Landroid/content/Context;Ljava/io/File;[Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/winlator/widget/ImagePickerView;->lambda$onClick$3(Landroid/content/Context;Ljava/io/File;[Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N6uSwC06gSDG4eOq770FL2XSBFs(Lcom/winlator/widget/ImagePickerView;Ljava/lang/String;[Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/widget/ImagePickerView;->lambda$onClick$1(Ljava/lang/String;[Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vz7H6oWMNVrVySqu8uf4v5hfyi4(Lcom/winlator/widget/ImagePickerView;Ljava/io/File;[Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/widget/ImagePickerView;->lambda$onClick$0(Ljava/io/File;[Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$keDzWJsKDLb6yB3GDWteAob32Vk(Landroid/content/Context;Ljava/io/File;[Landroid/widget/PopupWindow;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/winlator/widget/ImagePickerView;->lambda$onClick$2(Landroid/content/Context;Ljava/io/File;[Landroid/widget/PopupWindow;Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/winlator/widget/ImagePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const-string v0, "wallpaper-2"

    const-string v1, "wallpaper-3"

    const-string v2, "wallpaper-1"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/widget/ImagePickerView;->defaultSources:Ljava/util/List;

    .line 36
    iput-object v2, p0, Lcom/winlator/widget/ImagePickerView;->selectedSource:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800aa

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/widget/ImagePickerView;->icon:Landroid/graphics/Bitmap;

    .line 51
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 54
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method private synthetic lambda$onClick$0(Ljava/io/File;[Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 1
    .param p1, "userWallpaperFile"    # Ljava/io/File;
    .param p2, "popupWindow"    # [Landroid/widget/PopupWindow;
    .param p3, "v"    # Landroid/view/View;

    .line 108
    invoke-static {p1}, Lcom/winlator/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 109
    const-string v0, "wallpaper-1"

    iput-object v0, p0, Lcom/winlator/widget/ImagePickerView;->selectedSource:Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 111
    return-void
.end method

.method private synthetic lambda$onClick$1(Ljava/lang/String;[Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "popupWindow"    # [Landroid/widget/PopupWindow;
    .param p3, "v"    # Landroid/view/View;

    .line 117
    iput-object p1, p0, Lcom/winlator/widget/ImagePickerView;->selectedSource:Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 119
    return-void
.end method

.method private static synthetic lambda$onClick$2(Landroid/content/Context;Ljava/io/File;[Landroid/widget/PopupWindow;Landroid/net/Uri;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userWallpaperFile"    # Ljava/io/File;
    .param p2, "popupWindow"    # [Landroid/widget/PopupWindow;
    .param p3, "data"    # Landroid/net/Uri;

    .line 129
    const/16 v0, 0x500

    invoke-static {p0, p3, v0}, Lcom/winlator/core/ImageUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-static {v0, p1, v1, v2}, Lcom/winlator/core/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z

    .line 133
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 134
    return-void
.end method

.method private static synthetic lambda$onClick$3(Landroid/content/Context;Ljava/io/File;[Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userWallpaperFile"    # Ljava/io/File;
    .param p2, "popupWindow"    # [Landroid/widget/PopupWindow;
    .param p3, "v"    # Landroid/view/View;

    .line 125
    move-object v0, p0

    check-cast v0, Lcom/winlator/MainActivity;

    .line 126
    .local v0, "activity":Lcom/winlator/MainActivity;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    new-instance v2, Lcom/winlator/widget/ImagePickerView$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, p2}, Lcom/winlator/widget/ImagePickerView$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Ljava/io/File;[Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v2}, Lcom/winlator/MainActivity;->setOpenFileCallback(Lcom/winlator/core/Callback;)V

    .line 135
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 136
    return-void
.end method


# virtual methods
.method public getSelectedSource()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/winlator/widget/ImagePickerView;->selectedSource:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "anchor"    # Landroid/view/View;

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/winlator/core/WineThemeManager;->getUserWallpaperFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 88
    .local v1, "userWallpaperFile":Ljava/io/File;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 89
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0c0051

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 90
    .local v3, "view":Landroid/view/View;
    const v5, 0x7f090079

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 92
    .local v5, "llImageList":Landroid/widget/LinearLayout;
    filled-new-array {v4}, [Landroid/widget/PopupWindow;

    move-result-object v4

    .line 93
    .local v4, "popupWindow":[Landroid/widget/PopupWindow;
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/winlator/widget/ImagePickerView;->defaultSources:Ljava/util/List;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    .local v6, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    const-string v8, "user-wallpaper"

    if-eqz v7, :cond_0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 97
    .local v9, "source":Ljava/lang/String;
    const v11, 0x7f0c0050

    invoke-virtual {v2, v11, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 98
    .local v11, "itemView":Landroid/view/View;
    const v12, 0x7f090068

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 100
    .local v12, "imageView":Landroid/widget/ImageView;
    const-string v13, "wallpaper-"

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 101
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "wallpapers/"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/image.png"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/winlator/core/ImageUtils;->getBitmapFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v12, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 103
    :cond_1
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 104
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    const v13, 0x7f090025

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 106
    .local v13, "removeButton":Landroid/view/View;
    invoke-virtual {v13, v10}, Landroid/view/View;->setVisibility(I)V

    .line 107
    new-instance v10, Lcom/winlator/widget/ImagePickerView$$ExternalSyntheticLambda0;

    invoke-direct {v10, p0, v1, v4}, Lcom/winlator/widget/ImagePickerView$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/widget/ImagePickerView;Ljava/io/File;[Landroid/widget/PopupWindow;)V

    invoke-virtual {v13, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .end local v13    # "removeButton":Landroid/view/View;
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/winlator/widget/ImagePickerView;->selectedSource:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const v10, 0x7f080057

    invoke-virtual {v11, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 116
    :cond_3
    new-instance v10, Lcom/winlator/widget/ImagePickerView$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0, v9, v4}, Lcom/winlator/widget/ImagePickerView$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/widget/ImagePickerView;Ljava/lang/String;[Landroid/widget/PopupWindow;)V

    invoke-virtual {v11, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 121
    .end local v9    # "source":Ljava/lang/String;
    .end local v11    # "itemView":Landroid/view/View;
    .end local v12    # "imageView":Landroid/widget/ImageView;
    goto :goto_0

    .line 123
    :cond_4
    const v7, 0x7f09000b

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 124
    .local v7, "browseButton":Landroid/view/View;
    new-instance v8, Lcom/winlator/widget/ImagePickerView$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0, v1, v4}, Lcom/winlator/widget/ImagePickerView$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Ljava/io/File;[Landroid/widget/PopupWindow;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const/16 v8, 0xc8

    invoke-static {p1, v3, v10, v8}, Lcom/winlator/core/AppUtils;->showPopupWindow(Landroid/view/View;Landroid/view/View;II)Landroid/widget/PopupWindow;

    move-result-object v8

    aput-object v8, v4, v10

    .line 139
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 67
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 70
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 71
    .local v1, "height":I
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    goto :goto_0

    .line 73
    :cond_1
    int-to-float v2, v1

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lcom/winlator/core/UnitUtils;->dpToPx(F)F

    move-result v3

    sub-float/2addr v2, v3

    .line 74
    .local v2, "rectSize":F
    int-to-float v3, v0

    sub-float/2addr v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lcom/winlator/core/UnitUtils;->dpToPx(F)F

    move-result v5

    sub-float/2addr v3, v5

    .line 75
    .local v3, "startX":F
    int-to-float v5, v1

    sub-float/2addr v5, v2

    mul-float/2addr v5, v4

    .line 77
    .local v5, "startY":F
    new-instance v4, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 78
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/winlator/widget/ImagePickerView;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/winlator/widget/ImagePickerView;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 79
    .local v6, "srcRect":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/RectF;

    add-float v8, v3, v2

    add-float v9, v5, v2

    invoke-direct {v7, v3, v5, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 80
    .local v7, "dstRect":Landroid/graphics/RectF;
    iget-object v8, p0, Lcom/winlator/widget/ImagePickerView;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v8, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 81
    return-void

    .line 71
    .end local v2    # "rectSize":F
    .end local v3    # "startX":F
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "startY":F
    .end local v6    # "srcRect":Landroid/graphics/Rect;
    .end local v7    # "dstRect":Landroid/graphics/RectF;
    :goto_0
    return-void
.end method

.method public setSelectedSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "selectedSource"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/winlator/widget/ImagePickerView;->selectedSource:Ljava/lang/String;

    .line 63
    return-void
.end method
