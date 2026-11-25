.class public final enum Lcom/winlator/xserver/Decoration;
.super Ljava/lang/Enum;
.source "Decoration.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/xserver/Decoration;

.field public static final enum ALL:Lcom/winlator/xserver/Decoration;

.field public static final enum BORDER:Lcom/winlator/xserver/Decoration;

.field public static final enum MAXIMIZE:Lcom/winlator/xserver/Decoration;

.field public static final enum MENU:Lcom/winlator/xserver/Decoration;

.field public static final enum MINIMIZE:Lcom/winlator/xserver/Decoration;

.field public static final enum RESIZEH:Lcom/winlator/xserver/Decoration;

.field public static final enum TITLE:Lcom/winlator/xserver/Decoration;


# direct methods
.method private static synthetic $values()[Lcom/winlator/xserver/Decoration;
    .locals 7

    .line 3
    sget-object v0, Lcom/winlator/xserver/Decoration;->ALL:Lcom/winlator/xserver/Decoration;

    sget-object v1, Lcom/winlator/xserver/Decoration;->BORDER:Lcom/winlator/xserver/Decoration;

    sget-object v2, Lcom/winlator/xserver/Decoration;->RESIZEH:Lcom/winlator/xserver/Decoration;

    sget-object v3, Lcom/winlator/xserver/Decoration;->TITLE:Lcom/winlator/xserver/Decoration;

    sget-object v4, Lcom/winlator/xserver/Decoration;->MENU:Lcom/winlator/xserver/Decoration;

    sget-object v5, Lcom/winlator/xserver/Decoration;->MINIMIZE:Lcom/winlator/xserver/Decoration;

    sget-object v6, Lcom/winlator/xserver/Decoration;->MAXIMIZE:Lcom/winlator/xserver/Decoration;

    filled-new-array/range {v0 .. v6}, [Lcom/winlator/xserver/Decoration;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/winlator/xserver/Decoration;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/Decoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/Decoration;->ALL:Lcom/winlator/xserver/Decoration;

    new-instance v0, Lcom/winlator/xserver/Decoration;

    const-string v1, "BORDER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/Decoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/Decoration;->BORDER:Lcom/winlator/xserver/Decoration;

    new-instance v0, Lcom/winlator/xserver/Decoration;

    const-string v1, "RESIZEH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/Decoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/Decoration;->RESIZEH:Lcom/winlator/xserver/Decoration;

    new-instance v0, Lcom/winlator/xserver/Decoration;

    const-string v1, "TITLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/Decoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/Decoration;->TITLE:Lcom/winlator/xserver/Decoration;

    new-instance v0, Lcom/winlator/xserver/Decoration;

    const-string v1, "MENU"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/Decoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/Decoration;->MENU:Lcom/winlator/xserver/Decoration;

    new-instance v0, Lcom/winlator/xserver/Decoration;

    const-string v1, "MINIMIZE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/Decoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/Decoration;->MINIMIZE:Lcom/winlator/xserver/Decoration;

    new-instance v0, Lcom/winlator/xserver/Decoration;

    const-string v1, "MAXIMIZE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/Decoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/Decoration;->MAXIMIZE:Lcom/winlator/xserver/Decoration;

    .line 3
    invoke-static {}, Lcom/winlator/xserver/Decoration;->$values()[Lcom/winlator/xserver/Decoration;

    move-result-object v0

    sput-object v0, Lcom/winlator/xserver/Decoration;->$VALUES:[Lcom/winlator/xserver/Decoration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/xserver/Decoration;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/winlator/xserver/Decoration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/xserver/Decoration;

    return-object v0
.end method

.method public static values()[Lcom/winlator/xserver/Decoration;
    .locals 1

    .line 3
    sget-object v0, Lcom/winlator/xserver/Decoration;->$VALUES:[Lcom/winlator/xserver/Decoration;

    invoke-virtual {v0}, [Lcom/winlator/xserver/Decoration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/xserver/Decoration;

    return-object v0
.end method


# virtual methods
.method public flag()I
    .locals 2

    .line 7
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method
