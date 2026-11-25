.class public final enum Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;
.super Ljava/lang/Enum;
.source "XInputExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/xserver/extensions/XInputExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceClass"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;

.field public static final enum BUTTON_CLASS:Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;

.field public static final enum KEY_CLASS:Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;

.field public static final enum VALUATOR_CLASS:Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;


# direct methods
.method private static synthetic $values()[Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;
    .locals 3

    .line 30
    sget-object v0, Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;->KEY_CLASS:Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;

    sget-object v1, Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;->BUTTON_CLASS:Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;

    sget-object v2, Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;->VALUATOR_CLASS:Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;

    filled-new-array {v0, v1, v2}, [Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;

    const-string v1, "KEY_CLASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;->KEY_CLASS:Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;

    new-instance v0, Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;

    const-string v1, "BUTTON_CLASS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;->BUTTON_CLASS:Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;

    new-instance v0, Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;

    const-string v1, "VALUATOR_CLASS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;->VALUATOR_CLASS:Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;

    invoke-static {}, Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;->$values()[Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;

    move-result-object v0

    sput-object v0, Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;->$VALUES:[Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;

    return-object v0
.end method

.method public static values()[Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;
    .locals 1

    .line 30
    sget-object v0, Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;->$VALUES:[Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;

    invoke-virtual {v0}, [Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/xserver/extensions/XInputExtension$DeviceClass;

    return-object v0
.end method
