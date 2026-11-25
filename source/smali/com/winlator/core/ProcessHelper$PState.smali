.class public final enum Lcom/winlator/core/ProcessHelper$PState;
.super Ljava/lang/Enum;
.source "ProcessHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/core/ProcessHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PState"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/core/ProcessHelper$PState;

.field public static final enum DEAD:Lcom/winlator/core/ProcessHelper$PState;

.field public static final enum OTHER:Lcom/winlator/core/ProcessHelper$PState;

.field public static final enum RUNNING:Lcom/winlator/core/ProcessHelper$PState;

.field public static final enum SLEEPING:Lcom/winlator/core/ProcessHelper$PState;

.field public static final enum STOPPED:Lcom/winlator/core/ProcessHelper$PState;

.field public static final enum WAITING:Lcom/winlator/core/ProcessHelper$PState;

.field public static final enum ZOMBIE:Lcom/winlator/core/ProcessHelper$PState;


# direct methods
.method private static synthetic $values()[Lcom/winlator/core/ProcessHelper$PState;
    .locals 7

    .line 28
    sget-object v0, Lcom/winlator/core/ProcessHelper$PState;->RUNNING:Lcom/winlator/core/ProcessHelper$PState;

    sget-object v1, Lcom/winlator/core/ProcessHelper$PState;->SLEEPING:Lcom/winlator/core/ProcessHelper$PState;

    sget-object v2, Lcom/winlator/core/ProcessHelper$PState;->WAITING:Lcom/winlator/core/ProcessHelper$PState;

    sget-object v3, Lcom/winlator/core/ProcessHelper$PState;->ZOMBIE:Lcom/winlator/core/ProcessHelper$PState;

    sget-object v4, Lcom/winlator/core/ProcessHelper$PState;->STOPPED:Lcom/winlator/core/ProcessHelper$PState;

    sget-object v5, Lcom/winlator/core/ProcessHelper$PState;->DEAD:Lcom/winlator/core/ProcessHelper$PState;

    sget-object v6, Lcom/winlator/core/ProcessHelper$PState;->OTHER:Lcom/winlator/core/ProcessHelper$PState;

    filled-new-array/range {v0 .. v6}, [Lcom/winlator/core/ProcessHelper$PState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcom/winlator/core/ProcessHelper$PState;

    const-string v1, "RUNNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/core/ProcessHelper$PState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/core/ProcessHelper$PState;->RUNNING:Lcom/winlator/core/ProcessHelper$PState;

    new-instance v0, Lcom/winlator/core/ProcessHelper$PState;

    const-string v1, "SLEEPING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/core/ProcessHelper$PState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/core/ProcessHelper$PState;->SLEEPING:Lcom/winlator/core/ProcessHelper$PState;

    new-instance v0, Lcom/winlator/core/ProcessHelper$PState;

    const-string v1, "WAITING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/core/ProcessHelper$PState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/core/ProcessHelper$PState;->WAITING:Lcom/winlator/core/ProcessHelper$PState;

    new-instance v0, Lcom/winlator/core/ProcessHelper$PState;

    const-string v1, "ZOMBIE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/winlator/core/ProcessHelper$PState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/core/ProcessHelper$PState;->ZOMBIE:Lcom/winlator/core/ProcessHelper$PState;

    new-instance v0, Lcom/winlator/core/ProcessHelper$PState;

    const-string v1, "STOPPED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/winlator/core/ProcessHelper$PState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/core/ProcessHelper$PState;->STOPPED:Lcom/winlator/core/ProcessHelper$PState;

    new-instance v0, Lcom/winlator/core/ProcessHelper$PState;

    const-string v1, "DEAD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/winlator/core/ProcessHelper$PState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/core/ProcessHelper$PState;->DEAD:Lcom/winlator/core/ProcessHelper$PState;

    new-instance v0, Lcom/winlator/core/ProcessHelper$PState;

    const-string v1, "OTHER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/winlator/core/ProcessHelper$PState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/core/ProcessHelper$PState;->OTHER:Lcom/winlator/core/ProcessHelper$PState;

    invoke-static {}, Lcom/winlator/core/ProcessHelper$PState;->$values()[Lcom/winlator/core/ProcessHelper$PState;

    move-result-object v0

    sput-object v0, Lcom/winlator/core/ProcessHelper$PState;->$VALUES:[Lcom/winlator/core/ProcessHelper$PState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/core/ProcessHelper$PState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lcom/winlator/core/ProcessHelper$PState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/core/ProcessHelper$PState;

    return-object v0
.end method

.method public static values()[Lcom/winlator/core/ProcessHelper$PState;
    .locals 1

    .line 28
    sget-object v0, Lcom/winlator/core/ProcessHelper$PState;->$VALUES:[Lcom/winlator/core/ProcessHelper$PState;

    invoke-virtual {v0}, [Lcom/winlator/core/ProcessHelper$PState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/core/ProcessHelper$PState;

    return-object v0
.end method
