.class public final enum Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;
.super Ljava/lang/Enum;
.source "XInputExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/xserver/extensions/XInputExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceID"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;

.field public static final enum ALL_DEVICES:Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;

.field public static final enum ALL_MASTER_DEVICES:Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;

.field public static final enum MASTER_KEYBOARD:Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;

.field public static final enum MASTER_POINTER:Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;


# direct methods
.method private static synthetic $values()[Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;
    .locals 4

    .line 31
    sget-object v0, Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;->ALL_DEVICES:Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;

    sget-object v1, Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;->ALL_MASTER_DEVICES:Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;

    sget-object v2, Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;->MASTER_POINTER:Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;

    sget-object v3, Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;->MASTER_KEYBOARD:Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;

    filled-new-array {v0, v1, v2, v3}, [Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;

    const-string v1, "ALL_DEVICES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;->ALL_DEVICES:Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;

    new-instance v0, Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;

    const-string v1, "ALL_MASTER_DEVICES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;->ALL_MASTER_DEVICES:Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;

    new-instance v0, Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;

    const-string v1, "MASTER_POINTER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;->MASTER_POINTER:Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;

    new-instance v0, Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;

    const-string v1, "MASTER_KEYBOARD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;->MASTER_KEYBOARD:Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;

    invoke-static {}, Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;->$values()[Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;

    move-result-object v0

    sput-object v0, Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;->$VALUES:[Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;

    return-object v0
.end method

.method public static values()[Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;
    .locals 1

    .line 31
    sget-object v0, Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;->$VALUES:[Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;

    invoke-virtual {v0}, [Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/xserver/extensions/XInputExtension$DeviceID;

    return-object v0
.end method
