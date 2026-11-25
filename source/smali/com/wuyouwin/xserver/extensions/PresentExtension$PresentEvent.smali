.class Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;
.super Ljava/lang/Object;
.source "PresentExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/xserver/extensions/PresentExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PresentEvent"
.end annotation


# instance fields
.field private client:Lcom/wuyouwin/xserver/XClient;

.field private id:I

.field private mask:Lcom/wuyouwin/core/Bitmask;

.field private window:Lcom/wuyouwin/xserver/Window;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wuyouwin/xserver/extensions/PresentExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/wuyouwin/xserver/extensions/PresentExtension$1;

    .line 53
    invoke-direct {p0}, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;)Lcom/wuyouwin/xserver/Window;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;

    .line 53
    iget-object v0, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->window:Lcom/wuyouwin/xserver/Window;

    return-object v0
.end method

.method static synthetic access$002(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;Lcom/wuyouwin/xserver/Window;)Lcom/wuyouwin/xserver/Window;
    .locals 0
    .param p0, "x0"    # Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;
    .param p1, "x1"    # Lcom/wuyouwin/xserver/Window;

    .line 53
    iput-object p1, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->window:Lcom/wuyouwin/xserver/Window;

    return-object p1
.end method

.method static synthetic access$100(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;)Lcom/wuyouwin/core/Bitmask;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;

    .line 53
    iget-object v0, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->mask:Lcom/wuyouwin/core/Bitmask;

    return-object v0
.end method

.method static synthetic access$102(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;Lcom/wuyouwin/core/Bitmask;)Lcom/wuyouwin/core/Bitmask;
    .locals 0
    .param p0, "x0"    # Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;
    .param p1, "x1"    # Lcom/wuyouwin/core/Bitmask;

    .line 53
    iput-object p1, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->mask:Lcom/wuyouwin/core/Bitmask;

    return-object p1
.end method

.method static synthetic access$200(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;)I
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;

    .line 53
    iget v0, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->id:I

    return v0
.end method

.method static synthetic access$202(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;I)I
    .locals 0
    .param p0, "x0"    # Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;
    .param p1, "x1"    # I

    .line 53
    iput p1, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->id:I

    return p1
.end method

.method static synthetic access$300(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;)Lcom/wuyouwin/xserver/XClient;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;

    .line 53
    iget-object v0, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->client:Lcom/wuyouwin/xserver/XClient;

    return-object v0
.end method

.method static synthetic access$302(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;Lcom/wuyouwin/xserver/XClient;)Lcom/wuyouwin/xserver/XClient;
    .locals 0
    .param p0, "x0"    # Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;
    .param p1, "x1"    # Lcom/wuyouwin/xserver/XClient;

    .line 53
    iput-object p1, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->client:Lcom/wuyouwin/xserver/XClient;

    return-object p1
.end method
