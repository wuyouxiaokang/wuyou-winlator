.class public abstract Lcom/wuyouwin/core/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/core/AppUtils$RestartApplicationOptions;
    }
.end annotation


# static fields
.field public static final DIRECTORY_DOWNLOADS:Ljava/lang/String;

.field private static globalToastReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public static synthetic $r8$lambda$-MxLF-xpgLG_fmZggtIU9R0J2dQ([ILandroid/view/View;Lcom/wuyouwin/core/Callback;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/wuyouwin/core/AppUtils;->lambda$setupTabLayout$4([ILandroid/view/View;Lcom/wuyouwin/core/Callback;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-QUQvyq2d6mM6u4AG7cKpMUZSEs(Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/wuyouwin/core/AppUtils;->lambda$hideSystemUI$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4YtIZNlaaKVYV_3ru0eVuDSl18c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/wuyouwin/core/AppUtils;->lambda$showToast$2(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DndgY7Z0C9XrZegamI0iqkzSLCU(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/wuyouwin/core/AppUtils;->lambda$showKeyboard$0(Landroid/view/inputmethod/InputMethodManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lOrt8vY2LjJ0QrP96BCuwh35wGc(Landroid/view/View;[ZLcom/wuyouwin/core/Callback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/wuyouwin/core/AppUtils;->lambda$observeSoftKeyboardVisibility$3(Landroid/view/View;[ZLcom/wuyouwin/core/Callback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 46
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wuyouwin/core/AppUtils;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/wuyouwin/core/AppUtils;->globalToastReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static findViewsWithClass(Landroid/view/ViewGroup;Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 5
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "viewClass"    # Ljava/lang/Class;

    .line 335
    .local p2, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 336
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 337
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 338
    .local v3, "_class":Ljava/lang/Class;
    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, p1, :cond_1

    :cond_0
    goto :goto_1

    .line 341
    :cond_1
    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 342
    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v4, p1, p2}, Lcom/wuyouwin/core/AppUtils;->findViewsWithClass(Landroid/view/ViewGroup;Ljava/lang/Class;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 339
    :goto_1
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "_class":Ljava/lang/Class;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 345
    .end local v0    # "i":I
    .end local v1    # "childCount":I
    return-void
.end method

.method public static getPreferredDialogWidth(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 134
    .local v0, "orientation":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v1, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    .line 135
    .local v1, "scale":F
    :goto_0
    invoke-static {}, Lcom/wuyouwin/core/AppUtils;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/wuyouwin/core/UnitUtils;->pxToDp(F)F

    move-result v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Lcom/wuyouwin/core/UnitUtils;->dpToPx(F)F

    move-result v2

    float-to-int v2, v2

    return v2
.end method

.method public static getScreenHeight()I
    .locals 1

    .line 129
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static getScreenWidth()I
    .locals 1

    .line 125
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static getThemeColor(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrId"    # I

    .line 373
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 374
    .local v0, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 375
    iget v1, v0, Landroid/util/TypedValue;->data:I

    return v1
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 227
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 228
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 230
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public static hideSystemUI(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 95
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, "decorView":Landroid/view/View;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_1

    .line 98
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/wuyouwin/core/AppUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;Z)V

    .line 99
    invoke-static {v1}, Lcom/wuyouwin/core/AppUtils$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/View;)Landroid/view/WindowInsetsController;

    move-result-object v2

    .line 100
    .local v2, "insetsController":Landroid/view/WindowInsetsController;
    if-eqz v2, :cond_0

    .line 101
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30$$ExternalSyntheticApiModelOutline0;->m()I

    move-result v3

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30$$ExternalSyntheticApiModelOutline1;->m()I

    move-result v4

    or-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/wuyouwin/core/AppUtils$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowInsetsController;I)V

    .line 102
    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/wuyouwin/core/AppUtils$$ExternalSyntheticApiModelOutline3;->m(Landroid/view/WindowInsetsController;I)V

    .line 104
    .end local v2    # "insetsController":Landroid/view/WindowInsetsController;
    :cond_0
    goto :goto_0

    .line 106
    :cond_1
    const/16 v2, 0x1706

    .line 113
    .local v2, "flags":I
    const/16 v3, 0x1706

    invoke-virtual {v1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 114
    new-instance v3, Lcom/wuyouwin/core/AppUtils$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1}, Lcom/wuyouwin/core/AppUtils$$ExternalSyntheticLambda7;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 118
    .end local v2    # "flags":I
    :goto_0
    return-void
.end method

.method public static isUiThread()Z
    .locals 2

    .line 121
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static keepScreenOn(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 58
    return-void
.end method

.method private static synthetic lambda$hideSystemUI$1(Landroid/view/View;I)V
    .locals 1
    .param p0, "decorView"    # Landroid/view/View;
    .param p1, "visibility"    # I

    .line 115
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    const/16 v0, 0x1706

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 116
    :cond_0
    return-void
.end method

.method private static synthetic lambda$observeSoftKeyboardVisibility$3(Landroid/view/View;[ZLcom/wuyouwin/core/Callback;)V
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;
    .param p1, "visible"    # [Z
    .param p2, "callback"    # Lcom/wuyouwin/core/Callback;

    .line 238
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 239
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 240
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 241
    .local v1, "screenHeight":I
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v1, v2

    .line 243
    .local v2, "keypadHeight":I
    int-to-float v3, v2

    int-to-float v4, v1

    const v5, 0x3e19999a    # 0.15f

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    const/4 v4, 0x0

    if-lez v3, :cond_0

    .line 244
    aget-boolean v3, p1, v4

    if-nez v3, :cond_1

    .line 245
    const/4 v3, 0x1

    aput-boolean v3, p1, v4

    .line 246
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/wuyouwin/core/Callback;->call(Ljava/lang/Object;)V

    goto :goto_0

    .line 250
    :cond_0
    aget-boolean v3, p1, v4

    if-eqz v3, :cond_1

    .line 251
    aput-boolean v4, p1, v4

    .line 252
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/wuyouwin/core/Callback;->call(Ljava/lang/Object;)V

    .line 255
    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$setupTabLayout$4([ILandroid/view/View;Lcom/wuyouwin/core/Callback;Ljava/lang/Integer;)V
    .locals 8
    .param p0, "tabResIds"    # [I
    .param p1, "view"    # Landroid/view/View;
    .param p2, "onShowTab"    # Lcom/wuyouwin/core/Callback;
    .param p3, "position"    # Ljava/lang/Integer;

    .line 308
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 309
    aget v1, p0, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 310
    .local v1, "tabView":Landroid/view/View;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/16 v2, 0x8

    .line 311
    .local v2, "visibility":I
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez v2, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 312
    :cond_1
    if-nez v2, :cond_2

    if-eqz p2, :cond_2

    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/wuyouwin/core/Callback;->call(Ljava/lang/Object;)V

    .line 308
    .end local v1    # "tabView":Landroid/view/View;
    .end local v2    # "visibility":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 314
    .end local v0    # "i":I
    return-void
.end method

.method private static synthetic lambda$showKeyboard$0(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 2
    .param p0, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    .line 88
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method

.method private static synthetic lambda$showToast$2(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .line 145
    invoke-static {p0, p1}, Lcom/wuyouwin/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    return-void
.end method

.method public static observeSoftKeyboardVisibility(Landroid/view/View;Lcom/wuyouwin/core/Callback;)V
    .locals 3
    .param p0, "rootView"    # Landroid/view/View;

    .line 236
    .local p1, "callback":Lcom/wuyouwin/core/Callback;, "Lcom/wuyouwin/core/Callback<Ljava/lang/Boolean;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 237
    .local v0, "visible":[Z
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/wuyouwin/core/AppUtils$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0, p1}, Lcom/wuyouwin/core/AppUtils$$ExternalSyntheticLambda8;-><init>(Landroid/view/View;[ZLcom/wuyouwin/core/Callback;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 256
    return-void
.end method

.method public static restartActivity(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 63
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 64
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 65
    return-void
.end method

.method public static restartApplication(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 68
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/wuyouwin/core/AppUtils;->restartApplication(Landroid/content/Context;Lcom/wuyouwin/core/AppUtils$RestartApplicationOptions;)V

    .line 69
    return-void
.end method

.method public static restartApplication(Landroid/content/Context;Lcom/wuyouwin/core/AppUtils$RestartApplicationOptions;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "options"    # Lcom/wuyouwin/core/AppUtils$RestartApplicationOptions;

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 75
    .local v1, "mainIntent":Landroid/content/Intent;
    if-eqz p1, :cond_2

    .line 76
    iget v2, p1, Lcom/wuyouwin/core/AppUtils$RestartApplicationOptions;->selectedMenuItemId:I

    if-lez v2, :cond_0

    const-string v2, "selected_menu_item_id"

    iget v3, p1, Lcom/wuyouwin/core/AppUtils$RestartApplicationOptions;->selectedMenuItemId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    :cond_0
    iget v2, p1, Lcom/wuyouwin/core/AppUtils$RestartApplicationOptions;->containerId:I

    if-lez v2, :cond_1

    const-string v2, "container_id"

    iget v3, p1, Lcom/wuyouwin/core/AppUtils$RestartApplicationOptions;->containerId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    :cond_1
    iget-object v2, p1, Lcom/wuyouwin/core/AppUtils$RestartApplicationOptions;->startPath:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, "start_path"

    iget-object v3, p1, Lcom/wuyouwin/core/AppUtils$RestartApplicationOptions;->startPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 82
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exit(I)V

    .line 83
    return-void
.end method

.method public static runDelayed(Ljava/lang/Runnable;J)V
    .locals 2
    .param p0, "callback"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J

    .line 348
    if-nez p0, :cond_0

    return-void

    .line 349
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/wuyouwin/core/AppUtils$2;

    invoke-direct {v1, p0}, Lcom/wuyouwin/core/AppUtils$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 355
    return-void
.end method

.method public static setActivityTheme(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 379
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 380
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "app_theme"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 381
    .local v1, "appTheme":I
    if-nez v1, :cond_0

    .line 382
    const v2, 0x7f110009

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    .line 384
    :cond_0
    if-ne v1, v2, :cond_1

    .line 385
    const v2, 0x7f11000c

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTheme(I)V

    .line 387
    :cond_1
    :goto_0
    return-void
.end method

.method public static setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z
    .locals 3
    .param p0, "spinner"    # Landroid/widget/Spinner;
    .param p1, "identifier"    # Ljava/lang/String;

    .line 270
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    .line 271
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 272
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/wuyouwin/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    invoke-virtual {p0, v1, v0}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    .line 274
    const/4 v0, 0x1

    return v0

    .line 271
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 277
    .end local v1    # "i":I
    return v0
.end method

.method public static setSpinnerSelectionFromMemorySize(Landroid/widget/Spinner;Ljava/lang/String;)Z
    .locals 3
    .param p0, "spinner"    # Landroid/widget/Spinner;
    .param p1, "value"    # Ljava/lang/String;

    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    .line 293
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 294
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/wuyouwin/core/StringUtils;->parseMemorySize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    invoke-virtual {p0, v1, v0}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    .line 296
    const/4 v0, 0x1

    return v0

    .line 293
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 299
    .end local v1    # "i":I
    return v0
.end method

.method public static setSpinnerSelectionFromNumber(Landroid/widget/Spinner;Ljava/lang/String;)Z
    .locals 3
    .param p0, "spinner"    # Landroid/widget/Spinner;
    .param p1, "value"    # Ljava/lang/String;

    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    .line 282
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 283
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/wuyouwin/core/StringUtils;->parseNumber(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    invoke-virtual {p0, v1, v0}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    .line 285
    const/4 v0, 0x1

    return v0

    .line 282
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 288
    .end local v1    # "i":I
    return v0
.end method

.method public static setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z
    .locals 3
    .param p0, "spinner"    # Landroid/widget/Spinner;
    .param p1, "value"    # Ljava/lang/String;

    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    .line 260
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 261
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    invoke-virtual {p0, v1, v0}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    .line 263
    const/4 v0, 0x1

    return v0

    .line 260
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 266
    .end local v1    # "i":I
    return v0
.end method

.method public static varargs setupTabLayout(Landroid/view/View;ILcom/wuyouwin/core/Callback;[I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tabLayoutResId"    # I
    .param p3, "tabResIds"    # [I

    .line 307
    .local p2, "onShowTab":Lcom/wuyouwin/core/Callback;, "Lcom/wuyouwin/core/Callback<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/wuyouwin/core/AppUtils$$ExternalSyntheticLambda6;

    invoke-direct {v0, p3, p0, p2}, Lcom/wuyouwin/core/AppUtils$$ExternalSyntheticLambda6;-><init>([ILandroid/view/View;Lcom/wuyouwin/core/Callback;)V

    .line 316
    .local v0, "tabSelectedCallback":Lcom/wuyouwin/core/Callback;, "Lcom/wuyouwin/core/Callback<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    .line 317
    .local v1, "tabLayout":Lcom/google/android/material/tabs/TabLayout;
    new-instance v2, Lcom/wuyouwin/core/AppUtils$1;

    invoke-direct {v2, v0}, Lcom/wuyouwin/core/AppUtils$1;-><init>(Lcom/wuyouwin/core/Callback;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 331
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 332
    return-void
.end method

.method public static varargs setupTabLayout(Landroid/view/View;I[I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tabLayoutResId"    # I
    .param p2, "tabResIds"    # [I

    .line 303
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/wuyouwin/core/AppUtils;->setupTabLayout(Landroid/view/View;ILcom/wuyouwin/core/Callback;[I)V

    .line 304
    return-void
.end method

.method public static showHelpBox(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "textResId"    # I

    .line 209
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/wuyouwin/core/AppUtils;->showHelpBox(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public static showHelpBox(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "text"    # Ljava/lang/String;

    .line 213
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/wuyouwin/core/UnitUtils;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 214
    .local v0, "padding":I
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 215
    .local v1, "textView":Landroid/widget/TextView;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v3, 0x438e0000    # 284.0f

    invoke-static {v3}, Lcom/wuyouwin/core/UnitUtils;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 217
    const/4 v2, 0x1

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 218
    const/4 v2, 0x0

    invoke-static {p2, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 220
    .local v3, "widthMeasureSpec":I
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 221
    .local v2, "heightMeasureSpec":I
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->measure(II)V

    .line 222
    const/16 v4, 0x12c

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {p1, v1, v4, v5}, Lcom/wuyouwin/core/AppUtils;->showPopupWindow(Landroid/view/View;Landroid/view/View;II)Landroid/widget/PopupWindow;

    .line 223
    return-void
.end method

.method public static showKeyboard(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 5
    .param p0, "activity"    # Landroidx/appcompat/app/AppCompatActivity;

    .line 86
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 87
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-le v1, v2, :cond_0

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/wuyouwin/core/AppUtils$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/wuyouwin/core/AppUtils$$ExternalSyntheticLambda5;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 90
    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 91
    :goto_0
    return-void
.end method

.method public static showPopupWindow(Landroid/view/View;Landroid/view/View;II)Landroid/widget/PopupWindow;
    .locals 6
    .param p0, "anchor"    # Landroid/view/View;
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 174
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 175
    .local v1, "popupWindow":Landroid/widget/PopupWindow;
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 177
    const/4 v2, 0x0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 178
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 179
    .local v3, "widthMeasureSpec":I
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 180
    .local v4, "heightMeasureSpec":I
    invoke-virtual {p1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 183
    .end local v3    # "widthMeasureSpec":I
    .end local v4    # "heightMeasureSpec":I
    goto :goto_1

    .line 185
    :cond_0
    const/4 v3, -0x2

    if-lez p2, :cond_1

    .line 186
    int-to-float v4, p2

    invoke-static {v4}, Lcom/wuyouwin/core/UnitUtils;->dpToPx(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 190
    :goto_0
    if-lez p3, :cond_2

    .line 191
    int-to-float v3, p3

    invoke-static {v3}, Lcom/wuyouwin/core/UnitUtils;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_1

    .line 193
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 196
    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 197
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 198
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 200
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    .line 201
    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 203
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 204
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    .line 205
    return-object v1
.end method

.method public static showToast(Landroid/content/Context;I)Landroid/widget/Toast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textResId"    # I

    .line 139
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/wuyouwin/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .line 143
    invoke-static {}, Lcom/wuyouwin/core/AppUtils;->isUiThread()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 144
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 145
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/wuyouwin/core/AppUtils$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Lcom/wuyouwin/core/AppUtils$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 147
    :cond_0
    return-object v1

    .line 150
    :cond_1
    sget-object v0, Lcom/wuyouwin/core/AppUtils;->globalToastReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 151
    sget-object v0, Lcom/wuyouwin/core/AppUtils;->globalToastReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    .line 152
    .local v0, "toast":Landroid/widget/Toast;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 153
    :cond_2
    sput-object v1, Lcom/wuyouwin/core/AppUtils;->globalToastReference:Ljava/lang/ref/WeakReference;

    .line 156
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0030

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 157
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0900f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 160
    .local v1, "toast":Landroid/widget/Toast;
    const/16 v2, 0x51

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x28

    if-lt v2, v3, :cond_4

    const/4 v4, 0x1

    :cond_4
    invoke-virtual {v1, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 162
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 163
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 164
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/wuyouwin/core/AppUtils;->globalToastReference:Ljava/lang/ref/WeakReference;

    .line 165
    return-object v1
.end method
