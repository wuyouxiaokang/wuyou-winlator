.class public final enum Lcom/wuyouwin/core/WineThemeManager$Theme;
.super Ljava/lang/Enum;
.source "WineThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/core/WineThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Theme"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wuyouwin/core/WineThemeManager$Theme;

.field public static final enum DARK:Lcom/wuyouwin/core/WineThemeManager$Theme;

.field public static final enum LIGHT:Lcom/wuyouwin/core/WineThemeManager$Theme;


# direct methods
.method private static synthetic $values()[Lcom/wuyouwin/core/WineThemeManager$Theme;
    .locals 2

    .line 22
    sget-object v0, Lcom/wuyouwin/core/WineThemeManager$Theme;->LIGHT:Lcom/wuyouwin/core/WineThemeManager$Theme;

    sget-object v1, Lcom/wuyouwin/core/WineThemeManager$Theme;->DARK:Lcom/wuyouwin/core/WineThemeManager$Theme;

    filled-new-array {v0, v1}, [Lcom/wuyouwin/core/WineThemeManager$Theme;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/wuyouwin/core/WineThemeManager$Theme;

    const-string v1, "LIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/core/WineThemeManager$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/core/WineThemeManager$Theme;->LIGHT:Lcom/wuyouwin/core/WineThemeManager$Theme;

    new-instance v0, Lcom/wuyouwin/core/WineThemeManager$Theme;

    const-string v1, "DARK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/core/WineThemeManager$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/core/WineThemeManager$Theme;->DARK:Lcom/wuyouwin/core/WineThemeManager$Theme;

    invoke-static {}, Lcom/wuyouwin/core/WineThemeManager$Theme;->$values()[Lcom/wuyouwin/core/WineThemeManager$Theme;

    move-result-object v0

    sput-object v0, Lcom/wuyouwin/core/WineThemeManager$Theme;->$VALUES:[Lcom/wuyouwin/core/WineThemeManager$Theme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wuyouwin/core/WineThemeManager$Theme;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lcom/wuyouwin/core/WineThemeManager$Theme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/core/WineThemeManager$Theme;

    return-object v0
.end method

.method public static values()[Lcom/wuyouwin/core/WineThemeManager$Theme;
    .locals 1

    .line 22
    sget-object v0, Lcom/wuyouwin/core/WineThemeManager$Theme;->$VALUES:[Lcom/wuyouwin/core/WineThemeManager$Theme;

    invoke-virtual {v0}, [Lcom/wuyouwin/core/WineThemeManager$Theme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wuyouwin/core/WineThemeManager$Theme;

    return-object v0
.end method
