.class Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;
.super Ljava/lang/Object;
.source "XInputExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/xserver/extensions/XInputExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XIEvent"
.end annotation


# instance fields
.field private client:Lcom/wuyouwin/xserver/XClient;

.field private deviceId:I

.field private mask:Lcom/wuyouwin/core/Bitmask;

.field private window:Lcom/wuyouwin/xserver/Window;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wuyouwin/xserver/extensions/XInputExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/wuyouwin/xserver/extensions/XInputExtension$1;

    .line 55
    invoke-direct {p0}, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;)Lcom/wuyouwin/xserver/XClient;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;

    .line 55
    iget-object v0, p0, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;->client:Lcom/wuyouwin/xserver/XClient;

    return-object v0
.end method

.method static synthetic access$002(Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;Lcom/wuyouwin/xserver/XClient;)Lcom/wuyouwin/xserver/XClient;
    .locals 0
    .param p0, "x0"    # Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;
    .param p1, "x1"    # Lcom/wuyouwin/xserver/XClient;

    .line 55
    iput-object p1, p0, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;->client:Lcom/wuyouwin/xserver/XClient;

    return-object p1
.end method

.method static synthetic access$100(Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;)Lcom/wuyouwin/xserver/Window;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;

    .line 55
    iget-object v0, p0, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;->window:Lcom/wuyouwin/xserver/Window;

    return-object v0
.end method

.method static synthetic access$102(Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;Lcom/wuyouwin/xserver/Window;)Lcom/wuyouwin/xserver/Window;
    .locals 0
    .param p0, "x0"    # Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;
    .param p1, "x1"    # Lcom/wuyouwin/xserver/Window;

    .line 55
    iput-object p1, p0, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;->window:Lcom/wuyouwin/xserver/Window;

    return-object p1
.end method

.method static synthetic access$200(Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;)I
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;

    .line 55
    iget v0, p0, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;->deviceId:I

    return v0
.end method

.method static synthetic access$202(Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;I)I
    .locals 0
    .param p0, "x0"    # Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;
    .param p1, "x1"    # I

    .line 55
    iput p1, p0, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;->deviceId:I

    return p1
.end method

.method static synthetic access$400(Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;)Lcom/wuyouwin/core/Bitmask;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;

    .line 55
    iget-object v0, p0, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;->mask:Lcom/wuyouwin/core/Bitmask;

    return-object v0
.end method

.method static synthetic access$402(Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;Lcom/wuyouwin/core/Bitmask;)Lcom/wuyouwin/core/Bitmask;
    .locals 0
    .param p0, "x0"    # Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;
    .param p1, "x1"    # Lcom/wuyouwin/core/Bitmask;

    .line 55
    iput-object p1, p0, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;->mask:Lcom/wuyouwin/core/Bitmask;

    return-object p1
.end method
