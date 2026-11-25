.class public final enum Lcom/winlator/container/FileInfo$Type;
.super Ljava/lang/Enum;
.source "FileInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/container/FileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/container/FileInfo$Type;

.field public static final enum DIRECTORY:Lcom/winlator/container/FileInfo$Type;

.field public static final enum DRIVE:Lcom/winlator/container/FileInfo$Type;

.field public static final enum FILE:Lcom/winlator/container/FileInfo$Type;


# direct methods
.method private static synthetic $values()[Lcom/winlator/container/FileInfo$Type;
    .locals 3

    .line 13
    sget-object v0, Lcom/winlator/container/FileInfo$Type;->FILE:Lcom/winlator/container/FileInfo$Type;

    sget-object v1, Lcom/winlator/container/FileInfo$Type;->DIRECTORY:Lcom/winlator/container/FileInfo$Type;

    sget-object v2, Lcom/winlator/container/FileInfo$Type;->DRIVE:Lcom/winlator/container/FileInfo$Type;

    filled-new-array {v0, v1, v2}, [Lcom/winlator/container/FileInfo$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lcom/winlator/container/FileInfo$Type;

    const-string v1, "FILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/container/FileInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/container/FileInfo$Type;->FILE:Lcom/winlator/container/FileInfo$Type;

    new-instance v0, Lcom/winlator/container/FileInfo$Type;

    const-string v1, "DIRECTORY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/container/FileInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/container/FileInfo$Type;->DIRECTORY:Lcom/winlator/container/FileInfo$Type;

    new-instance v0, Lcom/winlator/container/FileInfo$Type;

    const-string v1, "DRIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/container/FileInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/container/FileInfo$Type;->DRIVE:Lcom/winlator/container/FileInfo$Type;

    invoke-static {}, Lcom/winlator/container/FileInfo$Type;->$values()[Lcom/winlator/container/FileInfo$Type;

    move-result-object v0

    sput-object v0, Lcom/winlator/container/FileInfo$Type;->$VALUES:[Lcom/winlator/container/FileInfo$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/container/FileInfo$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 13
    const-class v0, Lcom/winlator/container/FileInfo$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/container/FileInfo$Type;

    return-object v0
.end method

.method public static values()[Lcom/winlator/container/FileInfo$Type;
    .locals 1

    .line 13
    sget-object v0, Lcom/winlator/container/FileInfo$Type;->$VALUES:[Lcom/winlator/container/FileInfo$Type;

    invoke-virtual {v0}, [Lcom/winlator/container/FileInfo$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/container/FileInfo$Type;

    return-object v0
.end method
