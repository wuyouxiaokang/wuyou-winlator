.class Lcom/winlator/xserver/extensions/PresentExtension$PresentEvent;
.super Ljava/lang/Object;
.source "PresentExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/xserver/extensions/PresentExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PresentEvent"
.end annotation


# instance fields
.field private client:Lcom/winlator/xserver/XClient;

.field private id:I

.field private mask:Lcom/winlator/core/Bitmask;

.field private window:Lcom/winlator/xserver/Window;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/winlator/xserver/extensions/PresentExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/winlator/xserver/extensions/PresentExtension$1;

    .line 53
    invoke-direct {p0}, Lcom/winlator/xserver/extensions/PresentExtension$PresentEvent;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/winlator/xserver/extensions/PresentExtension$PresentEvent;)Lcom/winlator/xserver/Window;
    .locals 1
    .param p0, "x0"    # Lcom/winlator/xserver/extensions/PresentExtension$PresentEvent;

    .line 53
    iget-object v0, p0, Lcom/winlator/xserver/extensions/PresentExtension$PresentEvent;->window:Lcom/winlator/xserver/Window;

    return-object v0
.end method

.method static synthetic access$002(Lcom/winlator/xserver/extensions/PresentExtension$PresentEvent;Lcom/winlator/xserver/Window;)Lcom/winlator/xserver/Window;
    .locals 0
    .param p0, "x0"    # Lcom/winlator/xserver/extensions/PresentExtension$PresentEvent;
    .param p1, "x1"    # Lcom/winlator/xserver/Window;

    .line 53
    iput-object p1, p0, Lcom/winlator/xserver/extensions/PresentExtension$PresentEvent;->window:Lcom/winlator/xserver/Window;

    return-object p1
.end method

.method static synthetic access$100(Lcom/winlator/xserver/extensions/PresentExtension$PresentEvent;)Lcom/winlator/core/Bitmask;
    .locals 1
    .param p0, "x0"    # Lcom/winlator/xserver/extensions/PresentExtension$PresentEvent;

    .line 53
    iget-object v0, p0, Lcom/winlator/xserver/extensions/PresentExtension$PresentEvent;->mask:Lcom/winlator/core/Bitmask;

    return-object v0
.end method

.method static synthetic access$102(Lcom/winlator/xserver/extensions/PresentExtension$PresentEvent;Lcom/winlator/core/Bitmask;)Lcom/winlator/core/Bitmask;
    .locals 0
    .param p0, "x0"    # Lcom/winlator/xserver/extensions/PresentExtension$PresentEvent;
    .param p1, "x1"    # Lcom/winlator/core/Bitmask;

    .line 53
    iput-object p1, p0, Lcom/winlator/xserver/extensions/PresentExtension$PresentEvent;->mask:Lcom/winlator/core/Bitmask;

    return-object p1
.end method

.method static synthetic access$200(Lcom/winlator/xserver/extensions/PresentExtension$PresentEvent;)I
    .locals 1
    .param p0, "x0"    # Lcom/winlator/xserver/extensions/PresentExtension$PresentEvent;

    .line 53
    iget v0, p0, Lcom/winlator/xserver/extensions/PresentExtension$PresentEvent;->id:I

    return v0
.end method

.method static synthetic access$202(Lcom/winlator/xserver/extensions/PresentExtension$PresentEvent;I)I
    .locals 0
    .param p0, "x0"    # Lcom/winlator/xserver/extensions/PresentExtension$PresentEvent;
    .param p1, "x1"    # I

    .line 53
    iput p1, p0, Lcom/winlator/xserver/extensions/PresentExtension$PresentEvent;->id:I

    return p1
.end method

.method static synthetic access$300(Lcom/winlator/xserver/extensions/PresentExtension$PresentEvent;)Lcom/winlator/xserver/XClient;
    .locals 1
    .param p0, "x0"    # Lcom/winlator/xserver/extensions/PresentExtension$PresentEvent;

    .line 53
    iget-object v0, p0, Lcom/winlator/xserver/extensions/PresentExtension$PresentEvent;->client:Lcom/winlator/xserver/XClient;

    return-object v0
.end method

.method static synthetic access$302(Lcom/winlator/xserver/extensions/PresentExtension$PresentEvent;Lcom/winlator/xserver/XClient;)Lcom/winlator/xserver/XClient;
    .locals 0
    .param p0, "x0"    # Lcom/winlator/xserver/extensions/PresentExtension$PresentEvent;
    .param p1, "x1"    # Lcom/winlator/xserver/XClient;

    .line 53
    iput-object p1, p0, Lcom/winlator/xserver/extensions/PresentExtension$PresentEvent;->client:Lcom/winlator/xserver/XClient;

    return-object p1
.end method
