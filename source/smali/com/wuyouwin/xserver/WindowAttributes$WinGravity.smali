.class public final enum Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;
.super Ljava/lang/Enum;
.source "WindowAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/xserver/WindowAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WinGravity"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

.field public static final enum CENTER:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

.field public static final enum EAST:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

.field public static final enum NORTH:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

.field public static final enum NORTH_EAST:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

.field public static final enum NORTH_WEST:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

.field public static final enum SOUTH:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

.field public static final enum SOUTH_EAST:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

.field public static final enum SOUTH_WEST:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

.field public static final enum STATIC:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

.field public static final enum UNMAP:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

.field public static final enum WEST:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;


# direct methods
.method private static synthetic $values()[Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;
    .locals 11

    .line 30
    sget-object v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;->UNMAP:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    sget-object v1, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;->NORTH_WEST:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    sget-object v2, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;->NORTH:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    sget-object v3, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;->NORTH_EAST:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    sget-object v4, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;->WEST:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    sget-object v5, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;->CENTER:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    sget-object v6, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;->EAST:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    sget-object v7, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;->SOUTH_WEST:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    sget-object v8, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;->SOUTH:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    sget-object v9, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;->SOUTH_EAST:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    sget-object v10, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;->STATIC:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    filled-new-array/range {v0 .. v10}, [Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    const-string v1, "UNMAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;->UNMAP:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    new-instance v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    const-string v1, "NORTH_WEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;->NORTH_WEST:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    new-instance v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    const-string v1, "NORTH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;->NORTH:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    new-instance v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    const-string v1, "NORTH_EAST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;->NORTH_EAST:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    new-instance v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    const-string v1, "WEST"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;->WEST:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    new-instance v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    const-string v1, "CENTER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;->CENTER:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    new-instance v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    const-string v1, "EAST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;->EAST:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    new-instance v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    const-string v1, "SOUTH_WEST"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;->SOUTH_WEST:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    new-instance v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    const-string v1, "SOUTH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;->SOUTH:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    new-instance v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    const-string v1, "SOUTH_EAST"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;->SOUTH_EAST:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    new-instance v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    const-string v1, "STATIC"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;->STATIC:Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    invoke-static {}, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;->$values()[Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    move-result-object v0

    sput-object v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;->$VALUES:[Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    return-object v0
.end method

.method public static values()[Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;
    .locals 1

    .line 30
    sget-object v0, Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;->$VALUES:[Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    invoke-virtual {v0}, [Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wuyouwin/xserver/WindowAttributes$WinGravity;

    return-object v0
.end method
