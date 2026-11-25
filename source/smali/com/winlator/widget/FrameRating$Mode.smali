.class public final enum Lcom/winlator/widget/FrameRating$Mode;
.super Ljava/lang/Enum;
.source "FrameRating.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/widget/FrameRating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/widget/FrameRating$Mode;

.field public static final enum DISABLED:Lcom/winlator/widget/FrameRating$Mode;

.field public static final enum FULL:Lcom/winlator/widget/FrameRating$Mode;

.field public static final enum SIMPLE:Lcom/winlator/widget/FrameRating$Mode;


# direct methods
.method private static synthetic $values()[Lcom/winlator/widget/FrameRating$Mode;
    .locals 3

    .line 21
    sget-object v0, Lcom/winlator/widget/FrameRating$Mode;->DISABLED:Lcom/winlator/widget/FrameRating$Mode;

    sget-object v1, Lcom/winlator/widget/FrameRating$Mode;->SIMPLE:Lcom/winlator/widget/FrameRating$Mode;

    sget-object v2, Lcom/winlator/widget/FrameRating$Mode;->FULL:Lcom/winlator/widget/FrameRating$Mode;

    filled-new-array {v0, v1, v2}, [Lcom/winlator/widget/FrameRating$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lcom/winlator/widget/FrameRating$Mode;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/widget/FrameRating$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/widget/FrameRating$Mode;->DISABLED:Lcom/winlator/widget/FrameRating$Mode;

    new-instance v0, Lcom/winlator/widget/FrameRating$Mode;

    const-string v1, "SIMPLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/widget/FrameRating$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/widget/FrameRating$Mode;->SIMPLE:Lcom/winlator/widget/FrameRating$Mode;

    new-instance v0, Lcom/winlator/widget/FrameRating$Mode;

    const-string v1, "FULL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/widget/FrameRating$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/widget/FrameRating$Mode;->FULL:Lcom/winlator/widget/FrameRating$Mode;

    invoke-static {}, Lcom/winlator/widget/FrameRating$Mode;->$values()[Lcom/winlator/widget/FrameRating$Mode;

    move-result-object v0

    sput-object v0, Lcom/winlator/widget/FrameRating$Mode;->$VALUES:[Lcom/winlator/widget/FrameRating$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/widget/FrameRating$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lcom/winlator/widget/FrameRating$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/widget/FrameRating$Mode;

    return-object v0
.end method

.method public static values()[Lcom/winlator/widget/FrameRating$Mode;
    .locals 1

    .line 21
    sget-object v0, Lcom/winlator/widget/FrameRating$Mode;->$VALUES:[Lcom/winlator/widget/FrameRating$Mode;

    invoke-virtual {v0}, [Lcom/winlator/widget/FrameRating$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/widget/FrameRating$Mode;

    return-object v0
.end method
