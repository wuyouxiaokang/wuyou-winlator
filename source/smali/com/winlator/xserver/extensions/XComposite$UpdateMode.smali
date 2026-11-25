.class public final enum Lcom/winlator/xserver/extensions/XComposite$UpdateMode;
.super Ljava/lang/Enum;
.source "XComposite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/xserver/extensions/XComposite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateMode"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/xserver/extensions/XComposite$UpdateMode;

.field public static final enum REDIRECT_AUTOMATIC:Lcom/winlator/xserver/extensions/XComposite$UpdateMode;

.field public static final enum REDIRECT_MANUAL:Lcom/winlator/xserver/extensions/XComposite$UpdateMode;


# direct methods
.method private static synthetic $values()[Lcom/winlator/xserver/extensions/XComposite$UpdateMode;
    .locals 2

    .line 27
    sget-object v0, Lcom/winlator/xserver/extensions/XComposite$UpdateMode;->REDIRECT_AUTOMATIC:Lcom/winlator/xserver/extensions/XComposite$UpdateMode;

    sget-object v1, Lcom/winlator/xserver/extensions/XComposite$UpdateMode;->REDIRECT_MANUAL:Lcom/winlator/xserver/extensions/XComposite$UpdateMode;

    filled-new-array {v0, v1}, [Lcom/winlator/xserver/extensions/XComposite$UpdateMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/winlator/xserver/extensions/XComposite$UpdateMode;

    const-string v1, "REDIRECT_AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/extensions/XComposite$UpdateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/extensions/XComposite$UpdateMode;->REDIRECT_AUTOMATIC:Lcom/winlator/xserver/extensions/XComposite$UpdateMode;

    new-instance v0, Lcom/winlator/xserver/extensions/XComposite$UpdateMode;

    const-string v1, "REDIRECT_MANUAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/extensions/XComposite$UpdateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/extensions/XComposite$UpdateMode;->REDIRECT_MANUAL:Lcom/winlator/xserver/extensions/XComposite$UpdateMode;

    invoke-static {}, Lcom/winlator/xserver/extensions/XComposite$UpdateMode;->$values()[Lcom/winlator/xserver/extensions/XComposite$UpdateMode;

    move-result-object v0

    sput-object v0, Lcom/winlator/xserver/extensions/XComposite$UpdateMode;->$VALUES:[Lcom/winlator/xserver/extensions/XComposite$UpdateMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/xserver/extensions/XComposite$UpdateMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lcom/winlator/xserver/extensions/XComposite$UpdateMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/xserver/extensions/XComposite$UpdateMode;

    return-object v0
.end method

.method public static values()[Lcom/winlator/xserver/extensions/XComposite$UpdateMode;
    .locals 1

    .line 27
    sget-object v0, Lcom/winlator/xserver/extensions/XComposite$UpdateMode;->$VALUES:[Lcom/winlator/xserver/extensions/XComposite$UpdateMode;

    invoke-virtual {v0}, [Lcom/winlator/xserver/extensions/XComposite$UpdateMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/xserver/extensions/XComposite$UpdateMode;

    return-object v0
.end method
