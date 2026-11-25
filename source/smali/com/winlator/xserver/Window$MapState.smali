.class public final enum Lcom/winlator/xserver/Window$MapState;
.super Ljava/lang/Enum;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/xserver/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapState"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/xserver/Window$MapState;

.field public static final enum UNMAPPED:Lcom/winlator/xserver/Window$MapState;

.field public static final enum UNVIEWABLE:Lcom/winlator/xserver/Window$MapState;

.field public static final enum VIEWABLE:Lcom/winlator/xserver/Window$MapState;


# direct methods
.method private static synthetic $values()[Lcom/winlator/xserver/Window$MapState;
    .locals 3

    .line 25
    sget-object v0, Lcom/winlator/xserver/Window$MapState;->UNMAPPED:Lcom/winlator/xserver/Window$MapState;

    sget-object v1, Lcom/winlator/xserver/Window$MapState;->UNVIEWABLE:Lcom/winlator/xserver/Window$MapState;

    sget-object v2, Lcom/winlator/xserver/Window$MapState;->VIEWABLE:Lcom/winlator/xserver/Window$MapState;

    filled-new-array {v0, v1, v2}, [Lcom/winlator/xserver/Window$MapState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lcom/winlator/xserver/Window$MapState;

    const-string v1, "UNMAPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/Window$MapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/Window$MapState;->UNMAPPED:Lcom/winlator/xserver/Window$MapState;

    new-instance v0, Lcom/winlator/xserver/Window$MapState;

    const-string v1, "UNVIEWABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/Window$MapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/Window$MapState;->UNVIEWABLE:Lcom/winlator/xserver/Window$MapState;

    new-instance v0, Lcom/winlator/xserver/Window$MapState;

    const-string v1, "VIEWABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/Window$MapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/Window$MapState;->VIEWABLE:Lcom/winlator/xserver/Window$MapState;

    invoke-static {}, Lcom/winlator/xserver/Window$MapState;->$values()[Lcom/winlator/xserver/Window$MapState;

    move-result-object v0

    sput-object v0, Lcom/winlator/xserver/Window$MapState;->$VALUES:[Lcom/winlator/xserver/Window$MapState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/xserver/Window$MapState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lcom/winlator/xserver/Window$MapState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/xserver/Window$MapState;

    return-object v0
.end method

.method public static values()[Lcom/winlator/xserver/Window$MapState;
    .locals 1

    .line 25
    sget-object v0, Lcom/winlator/xserver/Window$MapState;->$VALUES:[Lcom/winlator/xserver/Window$MapState;

    invoke-virtual {v0}, [Lcom/winlator/xserver/Window$MapState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/xserver/Window$MapState;

    return-object v0
.end method
