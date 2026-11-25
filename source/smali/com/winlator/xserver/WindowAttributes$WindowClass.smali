.class public final enum Lcom/winlator/xserver/WindowAttributes$WindowClass;
.super Ljava/lang/Enum;
.source "WindowAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/xserver/WindowAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WindowClass"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/xserver/WindowAttributes$WindowClass;

.field public static final enum COPY_FROM_PARENT:Lcom/winlator/xserver/WindowAttributes$WindowClass;

.field public static final enum INPUT_ONLY:Lcom/winlator/xserver/WindowAttributes$WindowClass;

.field public static final enum INPUT_OUTPUT:Lcom/winlator/xserver/WindowAttributes$WindowClass;


# direct methods
.method private static synthetic $values()[Lcom/winlator/xserver/WindowAttributes$WindowClass;
    .locals 3

    .line 28
    sget-object v0, Lcom/winlator/xserver/WindowAttributes$WindowClass;->COPY_FROM_PARENT:Lcom/winlator/xserver/WindowAttributes$WindowClass;

    sget-object v1, Lcom/winlator/xserver/WindowAttributes$WindowClass;->INPUT_OUTPUT:Lcom/winlator/xserver/WindowAttributes$WindowClass;

    sget-object v2, Lcom/winlator/xserver/WindowAttributes$WindowClass;->INPUT_ONLY:Lcom/winlator/xserver/WindowAttributes$WindowClass;

    filled-new-array {v0, v1, v2}, [Lcom/winlator/xserver/WindowAttributes$WindowClass;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcom/winlator/xserver/WindowAttributes$WindowClass;

    const-string v1, "COPY_FROM_PARENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/WindowAttributes$WindowClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/WindowAttributes$WindowClass;->COPY_FROM_PARENT:Lcom/winlator/xserver/WindowAttributes$WindowClass;

    new-instance v0, Lcom/winlator/xserver/WindowAttributes$WindowClass;

    const-string v1, "INPUT_OUTPUT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/WindowAttributes$WindowClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/WindowAttributes$WindowClass;->INPUT_OUTPUT:Lcom/winlator/xserver/WindowAttributes$WindowClass;

    new-instance v0, Lcom/winlator/xserver/WindowAttributes$WindowClass;

    const-string v1, "INPUT_ONLY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/WindowAttributes$WindowClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/WindowAttributes$WindowClass;->INPUT_ONLY:Lcom/winlator/xserver/WindowAttributes$WindowClass;

    invoke-static {}, Lcom/winlator/xserver/WindowAttributes$WindowClass;->$values()[Lcom/winlator/xserver/WindowAttributes$WindowClass;

    move-result-object v0

    sput-object v0, Lcom/winlator/xserver/WindowAttributes$WindowClass;->$VALUES:[Lcom/winlator/xserver/WindowAttributes$WindowClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/xserver/WindowAttributes$WindowClass;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lcom/winlator/xserver/WindowAttributes$WindowClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/xserver/WindowAttributes$WindowClass;

    return-object v0
.end method

.method public static values()[Lcom/winlator/xserver/WindowAttributes$WindowClass;
    .locals 1

    .line 28
    sget-object v0, Lcom/winlator/xserver/WindowAttributes$WindowClass;->$VALUES:[Lcom/winlator/xserver/WindowAttributes$WindowClass;

    invoke-virtual {v0}, [Lcom/winlator/xserver/WindowAttributes$WindowClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/xserver/WindowAttributes$WindowClass;

    return-object v0
.end method
