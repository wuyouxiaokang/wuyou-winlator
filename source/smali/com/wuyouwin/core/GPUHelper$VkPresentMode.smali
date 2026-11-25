.class public final enum Lcom/wuyouwin/core/GPUHelper$VkPresentMode;
.super Ljava/lang/Enum;
.source "GPUHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/core/GPUHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VkPresentMode"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

.field public static final enum FIFO:Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

.field public static final enum FIFO_RELAXED:Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

.field public static final enum IMMEDIATE:Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

.field public static final enum MAILBOX:Lcom/wuyouwin/core/GPUHelper$VkPresentMode;


# direct methods
.method private static synthetic $values()[Lcom/wuyouwin/core/GPUHelper$VkPresentMode;
    .locals 4

    .line 24
    sget-object v0, Lcom/wuyouwin/core/GPUHelper$VkPresentMode;->IMMEDIATE:Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

    sget-object v1, Lcom/wuyouwin/core/GPUHelper$VkPresentMode;->MAILBOX:Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

    sget-object v2, Lcom/wuyouwin/core/GPUHelper$VkPresentMode;->FIFO:Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

    sget-object v3, Lcom/wuyouwin/core/GPUHelper$VkPresentMode;->FIFO_RELAXED:Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/core/GPUHelper$VkPresentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/core/GPUHelper$VkPresentMode;->IMMEDIATE:Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

    new-instance v0, Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

    const-string v1, "MAILBOX"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/core/GPUHelper$VkPresentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/core/GPUHelper$VkPresentMode;->MAILBOX:Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

    new-instance v0, Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

    const-string v1, "FIFO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/core/GPUHelper$VkPresentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/core/GPUHelper$VkPresentMode;->FIFO:Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

    new-instance v0, Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

    const-string v1, "FIFO_RELAXED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/core/GPUHelper$VkPresentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/core/GPUHelper$VkPresentMode;->FIFO_RELAXED:Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

    .line 24
    invoke-static {}, Lcom/wuyouwin/core/GPUHelper$VkPresentMode;->$values()[Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

    move-result-object v0

    sput-object v0, Lcom/wuyouwin/core/GPUHelper$VkPresentMode;->$VALUES:[Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wuyouwin/core/GPUHelper$VkPresentMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

    return-object v0
.end method

.method public static values()[Lcom/wuyouwin/core/GPUHelper$VkPresentMode;
    .locals 1

    .line 24
    sget-object v0, Lcom/wuyouwin/core/GPUHelper$VkPresentMode;->$VALUES:[Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

    invoke-virtual {v0}, [Lcom/wuyouwin/core/GPUHelper$VkPresentMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wuyouwin/core/GPUHelper$VkPresentMode;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 2

    .line 28
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
