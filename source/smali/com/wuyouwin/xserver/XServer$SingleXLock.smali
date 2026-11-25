.class Lcom/wuyouwin/xserver/XServer$SingleXLock;
.super Ljava/lang/Object;
.source "XServer.java"

# interfaces
.implements Lcom/wuyouwin/xserver/XLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/xserver/XServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleXLock"
.end annotation


# instance fields
.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic this$0:Lcom/wuyouwin/xserver/XServer;


# direct methods
.method private constructor <init>(Lcom/wuyouwin/xserver/XServer;Lcom/wuyouwin/xserver/XServer$Lockable;)V
    .locals 0
    .param p2, "lockable"    # Lcom/wuyouwin/xserver/XServer$Lockable;

    .line 104
    iput-object p1, p0, Lcom/wuyouwin/xserver/XServer$SingleXLock;->this$0:Lcom/wuyouwin/xserver/XServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-static {p1}, Lcom/wuyouwin/xserver/XServer;->access$000(Lcom/wuyouwin/xserver/XServer;)Ljava/util/EnumMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p1, p0, Lcom/wuyouwin/xserver/XServer$SingleXLock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 106
    iget-object p1, p0, Lcom/wuyouwin/xserver/XServer$SingleXLock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lcom/wuyouwin/xserver/XServer;Lcom/wuyouwin/xserver/XServer$Lockable;Lcom/wuyouwin/xserver/XServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/wuyouwin/xserver/XServer;
    .param p2, "x1"    # Lcom/wuyouwin/xserver/XServer$Lockable;
    .param p3, "x2"    # Lcom/wuyouwin/xserver/XServer$1;

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/xserver/XServer$SingleXLock;-><init>(Lcom/wuyouwin/xserver/XServer;Lcom/wuyouwin/xserver/XServer$Lockable;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/wuyouwin/xserver/XServer$SingleXLock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 112
    return-void
.end method
