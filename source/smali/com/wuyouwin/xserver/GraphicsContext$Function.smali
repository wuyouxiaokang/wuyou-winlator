.class public final enum Lcom/wuyouwin/xserver/GraphicsContext$Function;
.super Ljava/lang/Enum;
.source "GraphicsContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/xserver/GraphicsContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Function"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wuyouwin/xserver/GraphicsContext$Function;

.field public static final enum AND:Lcom/wuyouwin/xserver/GraphicsContext$Function;

.field public static final enum AND_INVERTED:Lcom/wuyouwin/xserver/GraphicsContext$Function;

.field public static final enum AND_REVERSE:Lcom/wuyouwin/xserver/GraphicsContext$Function;

.field public static final enum CLEAR:Lcom/wuyouwin/xserver/GraphicsContext$Function;

.field public static final enum COPY:Lcom/wuyouwin/xserver/GraphicsContext$Function;

.field public static final enum COPY_INVERTED:Lcom/wuyouwin/xserver/GraphicsContext$Function;

.field public static final enum EQUIV:Lcom/wuyouwin/xserver/GraphicsContext$Function;

.field public static final enum INVERT:Lcom/wuyouwin/xserver/GraphicsContext$Function;

.field public static final enum NAND:Lcom/wuyouwin/xserver/GraphicsContext$Function;

.field public static final enum NOR:Lcom/wuyouwin/xserver/GraphicsContext$Function;

.field public static final enum NO_OP:Lcom/wuyouwin/xserver/GraphicsContext$Function;

.field public static final enum OR:Lcom/wuyouwin/xserver/GraphicsContext$Function;

.field public static final enum OR_INVERTED:Lcom/wuyouwin/xserver/GraphicsContext$Function;

.field public static final enum OR_REVERSE:Lcom/wuyouwin/xserver/GraphicsContext$Function;

.field public static final enum SET:Lcom/wuyouwin/xserver/GraphicsContext$Function;

.field public static final enum XOR:Lcom/wuyouwin/xserver/GraphicsContext$Function;


# direct methods
.method private static synthetic $values()[Lcom/wuyouwin/xserver/GraphicsContext$Function;
    .locals 16

    .line 27
    sget-object v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;->CLEAR:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    sget-object v1, Lcom/wuyouwin/xserver/GraphicsContext$Function;->AND:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    sget-object v2, Lcom/wuyouwin/xserver/GraphicsContext$Function;->AND_REVERSE:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    sget-object v3, Lcom/wuyouwin/xserver/GraphicsContext$Function;->COPY:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    sget-object v4, Lcom/wuyouwin/xserver/GraphicsContext$Function;->AND_INVERTED:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    sget-object v5, Lcom/wuyouwin/xserver/GraphicsContext$Function;->NO_OP:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    sget-object v6, Lcom/wuyouwin/xserver/GraphicsContext$Function;->XOR:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    sget-object v7, Lcom/wuyouwin/xserver/GraphicsContext$Function;->OR:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    sget-object v8, Lcom/wuyouwin/xserver/GraphicsContext$Function;->NOR:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    sget-object v9, Lcom/wuyouwin/xserver/GraphicsContext$Function;->EQUIV:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    sget-object v10, Lcom/wuyouwin/xserver/GraphicsContext$Function;->INVERT:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    sget-object v11, Lcom/wuyouwin/xserver/GraphicsContext$Function;->OR_REVERSE:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    sget-object v12, Lcom/wuyouwin/xserver/GraphicsContext$Function;->COPY_INVERTED:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    sget-object v13, Lcom/wuyouwin/xserver/GraphicsContext$Function;->OR_INVERTED:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    sget-object v14, Lcom/wuyouwin/xserver/GraphicsContext$Function;->NAND:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    sget-object v15, Lcom/wuyouwin/xserver/GraphicsContext$Function;->SET:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    filled-new-array/range {v0 .. v15}, [Lcom/wuyouwin/xserver/GraphicsContext$Function;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;

    const-string v1, "CLEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;->CLEAR:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;

    const-string v1, "AND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;->AND:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;

    const-string v1, "AND_REVERSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;->AND_REVERSE:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;

    const-string v1, "COPY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;->COPY:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;

    const-string v1, "AND_INVERTED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;->AND_INVERTED:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;

    const-string v1, "NO_OP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;->NO_OP:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;

    const-string v1, "XOR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;->XOR:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;

    const-string v1, "OR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;->OR:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;

    const-string v1, "NOR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;->NOR:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;

    const-string v1, "EQUIV"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;->EQUIV:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;

    const-string v1, "INVERT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;->INVERT:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;

    const-string v1, "OR_REVERSE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;->OR_REVERSE:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;

    const-string v1, "COPY_INVERTED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;->COPY_INVERTED:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;

    const-string v1, "OR_INVERTED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;->OR_INVERTED:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;

    const-string v1, "NAND"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;->NAND:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;

    const-string v1, "SET"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;->SET:Lcom/wuyouwin/xserver/GraphicsContext$Function;

    invoke-static {}, Lcom/wuyouwin/xserver/GraphicsContext$Function;->$values()[Lcom/wuyouwin/xserver/GraphicsContext$Function;

    move-result-object v0

    sput-object v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;->$VALUES:[Lcom/wuyouwin/xserver/GraphicsContext$Function;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wuyouwin/xserver/GraphicsContext$Function;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;

    return-object v0
.end method

.method public static values()[Lcom/wuyouwin/xserver/GraphicsContext$Function;
    .locals 1

    .line 27
    sget-object v0, Lcom/wuyouwin/xserver/GraphicsContext$Function;->$VALUES:[Lcom/wuyouwin/xserver/GraphicsContext$Function;

    invoke-virtual {v0}, [Lcom/wuyouwin/xserver/GraphicsContext$Function;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wuyouwin/xserver/GraphicsContext$Function;

    return-object v0
.end method
