.class public final enum Lcom/wuyouwin/core/GeneralComponents$InstallMode;
.super Ljava/lang/Enum;
.source "GeneralComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/core/GeneralComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InstallMode"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wuyouwin/core/GeneralComponents$InstallMode;

.field public static final enum BOTH:Lcom/wuyouwin/core/GeneralComponents$InstallMode;

.field public static final enum DOWNLOAD:Lcom/wuyouwin/core/GeneralComponents$InstallMode;

.field public static final enum FILE:Lcom/wuyouwin/core/GeneralComponents$InstallMode;


# direct methods
.method private static synthetic $values()[Lcom/wuyouwin/core/GeneralComponents$InstallMode;
    .locals 3

    .line 27
    sget-object v0, Lcom/wuyouwin/core/GeneralComponents$InstallMode;->DOWNLOAD:Lcom/wuyouwin/core/GeneralComponents$InstallMode;

    sget-object v1, Lcom/wuyouwin/core/GeneralComponents$InstallMode;->FILE:Lcom/wuyouwin/core/GeneralComponents$InstallMode;

    sget-object v2, Lcom/wuyouwin/core/GeneralComponents$InstallMode;->BOTH:Lcom/wuyouwin/core/GeneralComponents$InstallMode;

    filled-new-array {v0, v1, v2}, [Lcom/wuyouwin/core/GeneralComponents$InstallMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/wuyouwin/core/GeneralComponents$InstallMode;

    const-string v1, "DOWNLOAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/core/GeneralComponents$InstallMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/core/GeneralComponents$InstallMode;->DOWNLOAD:Lcom/wuyouwin/core/GeneralComponents$InstallMode;

    new-instance v0, Lcom/wuyouwin/core/GeneralComponents$InstallMode;

    const-string v1, "FILE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/core/GeneralComponents$InstallMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/core/GeneralComponents$InstallMode;->FILE:Lcom/wuyouwin/core/GeneralComponents$InstallMode;

    new-instance v0, Lcom/wuyouwin/core/GeneralComponents$InstallMode;

    const-string v1, "BOTH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/core/GeneralComponents$InstallMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/core/GeneralComponents$InstallMode;->BOTH:Lcom/wuyouwin/core/GeneralComponents$InstallMode;

    invoke-static {}, Lcom/wuyouwin/core/GeneralComponents$InstallMode;->$values()[Lcom/wuyouwin/core/GeneralComponents$InstallMode;

    move-result-object v0

    sput-object v0, Lcom/wuyouwin/core/GeneralComponents$InstallMode;->$VALUES:[Lcom/wuyouwin/core/GeneralComponents$InstallMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wuyouwin/core/GeneralComponents$InstallMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lcom/wuyouwin/core/GeneralComponents$InstallMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/core/GeneralComponents$InstallMode;

    return-object v0
.end method

.method public static values()[Lcom/wuyouwin/core/GeneralComponents$InstallMode;
    .locals 1

    .line 27
    sget-object v0, Lcom/wuyouwin/core/GeneralComponents$InstallMode;->$VALUES:[Lcom/wuyouwin/core/GeneralComponents$InstallMode;

    invoke-virtual {v0}, [Lcom/wuyouwin/core/GeneralComponents$InstallMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wuyouwin/core/GeneralComponents$InstallMode;

    return-object v0
.end method
