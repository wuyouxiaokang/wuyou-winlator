.class public Lcom/winlator/xserver/SelectionManager$Selection;
.super Ljava/lang/Object;
.source "SelectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/xserver/SelectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Selection"
.end annotation


# instance fields
.field private client:Lcom/winlator/xserver/XClient;

.field public owner:Lcom/winlator/xserver/Window;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/winlator/xserver/SelectionManager$Selection;)Lcom/winlator/xserver/XClient;
    .locals 1
    .param p0, "x0"    # Lcom/winlator/xserver/SelectionManager$Selection;

    .line 14
    iget-object v0, p0, Lcom/winlator/xserver/SelectionManager$Selection;->client:Lcom/winlator/xserver/XClient;

    return-object v0
.end method

.method static synthetic access$002(Lcom/winlator/xserver/SelectionManager$Selection;Lcom/winlator/xserver/XClient;)Lcom/winlator/xserver/XClient;
    .locals 0
    .param p0, "x0"    # Lcom/winlator/xserver/SelectionManager$Selection;
    .param p1, "x1"    # Lcom/winlator/xserver/XClient;

    .line 14
    iput-object p1, p0, Lcom/winlator/xserver/SelectionManager$Selection;->client:Lcom/winlator/xserver/XClient;

    return-object p1
.end method
