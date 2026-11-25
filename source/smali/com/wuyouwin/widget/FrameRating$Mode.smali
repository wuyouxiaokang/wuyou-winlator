.class public final enum Lcom/wuyouwin/widget/FrameRating$Mode;
.super Ljava/lang/Enum;
.source "FrameRating.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/widget/FrameRating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wuyouwin/widget/FrameRating$Mode;

.field public static final enum DISABLED:Lcom/wuyouwin/widget/FrameRating$Mode;

.field public static final enum FULL:Lcom/wuyouwin/widget/FrameRating$Mode;

.field public static final enum SIMPLE:Lcom/wuyouwin/widget/FrameRating$Mode;


# direct methods
.method private static synthetic $values()[Lcom/wuyouwin/widget/FrameRating$Mode;
    .locals 3

    .line 21
    sget-object v0, Lcom/wuyouwin/widget/FrameRating$Mode;->DISABLED:Lcom/wuyouwin/widget/FrameRating$Mode;

    sget-object v1, Lcom/wuyouwin/widget/FrameRating$Mode;->SIMPLE:Lcom/wuyouwin/widget/FrameRating$Mode;

    sget-object v2, Lcom/wuyouwin/widget/FrameRating$Mode;->FULL:Lcom/wuyouwin/widget/FrameRating$Mode;

    filled-new-array {v0, v1, v2}, [Lcom/wuyouwin/widget/FrameRating$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lcom/wuyouwin/widget/FrameRating$Mode;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/widget/FrameRating$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/widget/FrameRating$Mode;->DISABLED:Lcom/wuyouwin/widget/FrameRating$Mode;

    new-instance v0, Lcom/wuyouwin/widget/FrameRating$Mode;

    const-string v1, "SIMPLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/widget/FrameRating$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/widget/FrameRating$Mode;->SIMPLE:Lcom/wuyouwin/widget/FrameRating$Mode;

    new-instance v0, Lcom/wuyouwin/widget/FrameRating$Mode;

    const-string v1, "FULL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/widget/FrameRating$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/widget/FrameRating$Mode;->FULL:Lcom/wuyouwin/widget/FrameRating$Mode;

    invoke-static {}, Lcom/wuyouwin/widget/FrameRating$Mode;->$values()[Lcom/wuyouwin/widget/FrameRating$Mode;

    move-result-object v0

    sput-object v0, Lcom/wuyouwin/widget/FrameRating$Mode;->$VALUES:[Lcom/wuyouwin/widget/FrameRating$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wuyouwin/widget/FrameRating$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lcom/wuyouwin/widget/FrameRating$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/widget/FrameRating$Mode;

    return-object v0
.end method

.method public static values()[Lcom/wuyouwin/widget/FrameRating$Mode;
    .locals 1

    .line 21
    sget-object v0, Lcom/wuyouwin/widget/FrameRating$Mode;->$VALUES:[Lcom/wuyouwin/widget/FrameRating$Mode;

    invoke-virtual {v0}, [Lcom/wuyouwin/widget/FrameRating$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wuyouwin/widget/FrameRating$Mode;

    return-object v0
.end method
