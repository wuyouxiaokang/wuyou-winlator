.class public final enum Lcom/winlator/core/TarCompressorUtils$Type;
.super Ljava/lang/Enum;
.source "TarCompressorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/core/TarCompressorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/core/TarCompressorUtils$Type;

.field public static final enum XZ:Lcom/winlator/core/TarCompressorUtils$Type;

.field public static final enum ZSTD:Lcom/winlator/core/TarCompressorUtils$Type;


# direct methods
.method private static synthetic $values()[Lcom/winlator/core/TarCompressorUtils$Type;
    .locals 2

    .line 30
    sget-object v0, Lcom/winlator/core/TarCompressorUtils$Type;->XZ:Lcom/winlator/core/TarCompressorUtils$Type;

    sget-object v1, Lcom/winlator/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/core/TarCompressorUtils$Type;

    filled-new-array {v0, v1}, [Lcom/winlator/core/TarCompressorUtils$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lcom/winlator/core/TarCompressorUtils$Type;

    const-string v1, "XZ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/core/TarCompressorUtils$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/core/TarCompressorUtils$Type;->XZ:Lcom/winlator/core/TarCompressorUtils$Type;

    new-instance v0, Lcom/winlator/core/TarCompressorUtils$Type;

    const-string v1, "ZSTD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/core/TarCompressorUtils$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/core/TarCompressorUtils$Type;

    invoke-static {}, Lcom/winlator/core/TarCompressorUtils$Type;->$values()[Lcom/winlator/core/TarCompressorUtils$Type;

    move-result-object v0

    sput-object v0, Lcom/winlator/core/TarCompressorUtils$Type;->$VALUES:[Lcom/winlator/core/TarCompressorUtils$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/core/TarCompressorUtils$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Lcom/winlator/core/TarCompressorUtils$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/core/TarCompressorUtils$Type;

    return-object v0
.end method

.method public static values()[Lcom/winlator/core/TarCompressorUtils$Type;
    .locals 1

    .line 30
    sget-object v0, Lcom/winlator/core/TarCompressorUtils$Type;->$VALUES:[Lcom/winlator/core/TarCompressorUtils$Type;

    invoke-virtual {v0}, [Lcom/winlator/core/TarCompressorUtils$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/core/TarCompressorUtils$Type;

    return-object v0
.end method
