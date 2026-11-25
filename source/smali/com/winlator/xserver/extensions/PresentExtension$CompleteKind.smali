.class public final enum Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;
.super Ljava/lang/Enum;
.source "PresentExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/xserver/extensions/PresentExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompleteKind"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;

.field public static final enum MSC_NOTIFY:Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;

.field public static final enum PIXMAP:Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;


# direct methods
.method private static synthetic $values()[Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;
    .locals 2

    .line 39
    sget-object v0, Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;->PIXMAP:Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;

    sget-object v1, Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;->MSC_NOTIFY:Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;

    filled-new-array {v0, v1}, [Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;

    const-string v1, "PIXMAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;->PIXMAP:Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;

    new-instance v0, Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;

    const-string v1, "MSC_NOTIFY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;->MSC_NOTIFY:Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;

    invoke-static {}, Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;->$values()[Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;

    move-result-object v0

    sput-object v0, Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;->$VALUES:[Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 39
    const-class v0, Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;

    return-object v0
.end method

.method public static values()[Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;
    .locals 1

    .line 39
    sget-object v0, Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;->$VALUES:[Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;

    invoke-virtual {v0}, [Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/xserver/extensions/PresentExtension$CompleteKind;

    return-object v0
.end method
