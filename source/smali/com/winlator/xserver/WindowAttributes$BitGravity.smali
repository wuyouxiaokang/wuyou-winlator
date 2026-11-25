.class public final enum Lcom/winlator/xserver/WindowAttributes$BitGravity;
.super Ljava/lang/Enum;
.source "WindowAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/xserver/WindowAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BitGravity"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/xserver/WindowAttributes$BitGravity;

.field public static final enum CENTER:Lcom/winlator/xserver/WindowAttributes$BitGravity;

.field public static final enum EAST:Lcom/winlator/xserver/WindowAttributes$BitGravity;

.field public static final enum FORGET:Lcom/winlator/xserver/WindowAttributes$BitGravity;

.field public static final enum NORTH:Lcom/winlator/xserver/WindowAttributes$BitGravity;

.field public static final enum NORTH_EAST:Lcom/winlator/xserver/WindowAttributes$BitGravity;

.field public static final enum NORTH_WEST:Lcom/winlator/xserver/WindowAttributes$BitGravity;

.field public static final enum SOUTH:Lcom/winlator/xserver/WindowAttributes$BitGravity;

.field public static final enum SOUTH_EAST:Lcom/winlator/xserver/WindowAttributes$BitGravity;

.field public static final enum SOUTH_WEST:Lcom/winlator/xserver/WindowAttributes$BitGravity;

.field public static final enum STATIC:Lcom/winlator/xserver/WindowAttributes$BitGravity;

.field public static final enum WEST:Lcom/winlator/xserver/WindowAttributes$BitGravity;


# direct methods
.method private static synthetic $values()[Lcom/winlator/xserver/WindowAttributes$BitGravity;
    .locals 11

    .line 29
    sget-object v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;->FORGET:Lcom/winlator/xserver/WindowAttributes$BitGravity;

    sget-object v1, Lcom/winlator/xserver/WindowAttributes$BitGravity;->NORTH_WEST:Lcom/winlator/xserver/WindowAttributes$BitGravity;

    sget-object v2, Lcom/winlator/xserver/WindowAttributes$BitGravity;->NORTH:Lcom/winlator/xserver/WindowAttributes$BitGravity;

    sget-object v3, Lcom/winlator/xserver/WindowAttributes$BitGravity;->NORTH_EAST:Lcom/winlator/xserver/WindowAttributes$BitGravity;

    sget-object v4, Lcom/winlator/xserver/WindowAttributes$BitGravity;->WEST:Lcom/winlator/xserver/WindowAttributes$BitGravity;

    sget-object v5, Lcom/winlator/xserver/WindowAttributes$BitGravity;->CENTER:Lcom/winlator/xserver/WindowAttributes$BitGravity;

    sget-object v6, Lcom/winlator/xserver/WindowAttributes$BitGravity;->EAST:Lcom/winlator/xserver/WindowAttributes$BitGravity;

    sget-object v7, Lcom/winlator/xserver/WindowAttributes$BitGravity;->SOUTH_WEST:Lcom/winlator/xserver/WindowAttributes$BitGravity;

    sget-object v8, Lcom/winlator/xserver/WindowAttributes$BitGravity;->SOUTH:Lcom/winlator/xserver/WindowAttributes$BitGravity;

    sget-object v9, Lcom/winlator/xserver/WindowAttributes$BitGravity;->SOUTH_EAST:Lcom/winlator/xserver/WindowAttributes$BitGravity;

    sget-object v10, Lcom/winlator/xserver/WindowAttributes$BitGravity;->STATIC:Lcom/winlator/xserver/WindowAttributes$BitGravity;

    filled-new-array/range {v0 .. v10}, [Lcom/winlator/xserver/WindowAttributes$BitGravity;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;

    const-string v1, "FORGET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/WindowAttributes$BitGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;->FORGET:Lcom/winlator/xserver/WindowAttributes$BitGravity;

    new-instance v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;

    const-string v1, "NORTH_WEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/WindowAttributes$BitGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;->NORTH_WEST:Lcom/winlator/xserver/WindowAttributes$BitGravity;

    new-instance v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;

    const-string v1, "NORTH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/WindowAttributes$BitGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;->NORTH:Lcom/winlator/xserver/WindowAttributes$BitGravity;

    new-instance v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;

    const-string v1, "NORTH_EAST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/WindowAttributes$BitGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;->NORTH_EAST:Lcom/winlator/xserver/WindowAttributes$BitGravity;

    new-instance v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;

    const-string v1, "WEST"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/WindowAttributes$BitGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;->WEST:Lcom/winlator/xserver/WindowAttributes$BitGravity;

    new-instance v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;

    const-string v1, "CENTER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/WindowAttributes$BitGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;->CENTER:Lcom/winlator/xserver/WindowAttributes$BitGravity;

    new-instance v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;

    const-string v1, "EAST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/WindowAttributes$BitGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;->EAST:Lcom/winlator/xserver/WindowAttributes$BitGravity;

    new-instance v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;

    const-string v1, "SOUTH_WEST"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/WindowAttributes$BitGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;->SOUTH_WEST:Lcom/winlator/xserver/WindowAttributes$BitGravity;

    new-instance v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;

    const-string v1, "SOUTH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/WindowAttributes$BitGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;->SOUTH:Lcom/winlator/xserver/WindowAttributes$BitGravity;

    new-instance v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;

    const-string v1, "SOUTH_EAST"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/WindowAttributes$BitGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;->SOUTH_EAST:Lcom/winlator/xserver/WindowAttributes$BitGravity;

    new-instance v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;

    const-string v1, "STATIC"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/WindowAttributes$BitGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;->STATIC:Lcom/winlator/xserver/WindowAttributes$BitGravity;

    invoke-static {}, Lcom/winlator/xserver/WindowAttributes$BitGravity;->$values()[Lcom/winlator/xserver/WindowAttributes$BitGravity;

    move-result-object v0

    sput-object v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;->$VALUES:[Lcom/winlator/xserver/WindowAttributes$BitGravity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/xserver/WindowAttributes$BitGravity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;

    return-object v0
.end method

.method public static values()[Lcom/winlator/xserver/WindowAttributes$BitGravity;
    .locals 1

    .line 29
    sget-object v0, Lcom/winlator/xserver/WindowAttributes$BitGravity;->$VALUES:[Lcom/winlator/xserver/WindowAttributes$BitGravity;

    invoke-virtual {v0}, [Lcom/winlator/xserver/WindowAttributes$BitGravity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/xserver/WindowAttributes$BitGravity;

    return-object v0
.end method
