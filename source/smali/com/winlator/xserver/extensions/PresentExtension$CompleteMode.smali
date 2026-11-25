.class public final enum Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;
.super Ljava/lang/Enum;
.source "PresentExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/xserver/extensions/PresentExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompleteMode"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;

.field public static final enum COPY:Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;

.field public static final enum FLIP:Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;

.field public static final enum SKIP:Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;


# direct methods
.method private static synthetic $values()[Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;
    .locals 3

    .line 40
    sget-object v0, Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;->COPY:Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;

    sget-object v1, Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;->FLIP:Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;

    sget-object v2, Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;->SKIP:Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;

    filled-new-array {v0, v1, v2}, [Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;

    const-string v1, "COPY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;->COPY:Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;

    new-instance v0, Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;

    const-string v1, "FLIP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;->FLIP:Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;

    new-instance v0, Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;

    const-string v1, "SKIP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;->SKIP:Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;

    invoke-static {}, Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;->$values()[Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;

    move-result-object v0

    sput-object v0, Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;->$VALUES:[Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 40
    const-class v0, Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;

    return-object v0
.end method

.method public static values()[Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;
    .locals 1

    .line 40
    sget-object v0, Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;->$VALUES:[Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;

    invoke-virtual {v0}, [Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/xserver/extensions/PresentExtension$CompleteMode;

    return-object v0
.end method
