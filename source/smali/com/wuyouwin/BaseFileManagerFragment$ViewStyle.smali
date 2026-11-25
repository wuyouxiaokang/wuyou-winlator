.class public final enum Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;
.super Ljava/lang/Enum;
.source "BaseFileManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/BaseFileManagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ViewStyle"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

.field public static final enum GRID:Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

.field public static final enum LIST:Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;


# direct methods
.method private static synthetic $values()[Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;
    .locals 2

    .line 38
    sget-object v0, Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;->LIST:Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    sget-object v1, Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;->GRID:Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    filled-new-array {v0, v1}, [Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    const-string v1, "LIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;->LIST:Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    new-instance v0, Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    const-string v1, "GRID"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;->GRID:Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    invoke-static {}, Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;->$values()[Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    move-result-object v0

    sput-object v0, Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;->$VALUES:[Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 38
    const-class v0, Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    return-object v0
.end method

.method public static values()[Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;
    .locals 1

    .line 38
    sget-object v0, Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;->$VALUES:[Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    invoke-virtual {v0}, [Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wuyouwin/BaseFileManagerFragment$ViewStyle;

    return-object v0
.end method
