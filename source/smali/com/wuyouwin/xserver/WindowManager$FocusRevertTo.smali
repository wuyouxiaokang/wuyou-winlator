.class public final enum Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;
.super Ljava/lang/Enum;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/xserver/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FocusRevertTo"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

.field public static final enum NONE:Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

.field public static final enum PARENT:Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

.field public static final enum POINTER_ROOT:Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;


# direct methods
.method private static synthetic $values()[Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;
    .locals 3

    .line 25
    sget-object v0, Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;->NONE:Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    sget-object v1, Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;->POINTER_ROOT:Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    sget-object v2, Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;->PARENT:Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    filled-new-array {v0, v1, v2}, [Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;->NONE:Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    new-instance v0, Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    const-string v1, "POINTER_ROOT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;->POINTER_ROOT:Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    new-instance v0, Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    const-string v1, "PARENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;->PARENT:Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    invoke-static {}, Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;->$values()[Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    move-result-object v0

    sput-object v0, Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;->$VALUES:[Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    return-object v0
.end method

.method public static values()[Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;
    .locals 1

    .line 25
    sget-object v0, Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;->$VALUES:[Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    invoke-virtual {v0}, [Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    return-object v0
.end method
