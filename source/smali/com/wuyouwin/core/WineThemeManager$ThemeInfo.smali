.class public Lcom/wuyouwin/core/WineThemeManager$ThemeInfo;
.super Ljava/lang/Object;
.source "WineThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/core/WineThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeInfo"
.end annotation


# instance fields
.field public final backgroundColor:I

.field public final backgroundType:Lcom/wuyouwin/core/WineThemeManager$BackgroundType;

.field public final theme:Lcom/wuyouwin/core/WineThemeManager$Theme;

.field public final wallpaperId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "values":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/wuyouwin/core/WineThemeManager$Theme;->valueOf(Ljava/lang/String;)Lcom/wuyouwin/core/WineThemeManager$Theme;

    move-result-object v1

    iput-object v1, p0, Lcom/wuyouwin/core/WineThemeManager$ThemeInfo;->theme:Lcom/wuyouwin/core/WineThemeManager$Theme;

    .line 37
    array-length v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 38
    aget-object v1, v0, v3

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/wuyouwin/core/WineThemeManager$ThemeInfo;->backgroundColor:I

    .line 39
    sget-object v1, Lcom/wuyouwin/core/WineThemeManager$BackgroundType;->IMAGE:Lcom/wuyouwin/core/WineThemeManager$BackgroundType;

    iput-object v1, p0, Lcom/wuyouwin/core/WineThemeManager$ThemeInfo;->backgroundType:Lcom/wuyouwin/core/WineThemeManager$BackgroundType;

    goto :goto_0

    .line 42
    :cond_0
    aget-object v1, v0, v3

    invoke-static {v1}, Lcom/wuyouwin/core/WineThemeManager$BackgroundType;->valueOf(Ljava/lang/String;)Lcom/wuyouwin/core/WineThemeManager$BackgroundType;

    move-result-object v1

    iput-object v1, p0, Lcom/wuyouwin/core/WineThemeManager$ThemeInfo;->backgroundType:Lcom/wuyouwin/core/WineThemeManager$BackgroundType;

    .line 43
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/wuyouwin/core/WineThemeManager$ThemeInfo;->backgroundColor:I

    .line 46
    :goto_0
    array-length v1, v0

    sub-int/2addr v1, v3

    aget-object v1, v0, v1

    .line 47
    .local v1, "lastValue":Ljava/lang/String;
    const-string v2, "wallpaper-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "wallpaper-1"

    goto :goto_1

    :cond_2
    const-string v2, "user-wallpaper"

    :goto_1
    iput-object v2, p0, Lcom/wuyouwin/core/WineThemeManager$ThemeInfo;->wallpaperId:Ljava/lang/String;

    .line 48
    return-void
.end method
