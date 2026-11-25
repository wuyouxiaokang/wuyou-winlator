.class public final Lkotlinx/coroutines/ThreadLocalEventLoop;
.super Ljava/lang/Object;
.source "EventLoop.common.kt"


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/ThreadLocalEventLoop;

.field private static final ref:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/ThreadLocalEventLoop;

    invoke-direct {v0}, Lkotlinx/coroutines/ThreadLocalEventLoop;-><init>()V

    sput-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->INSTANCE:Lkotlinx/coroutines/ThreadLocalEventLoop;

    .line 128
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->ref:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEventLoop$kotlinx_coroutines_core()Lkotlinx/coroutines/EventLoop;
    .locals 4

    .line 131
    sget-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->ref:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/EventLoop;

    nop

    if-nez v0, :cond_0

    invoke-static {}, Lkotlinx/coroutines/EventLoopKt;->createEventLoop()Lkotlinx/coroutines/EventLoop;

    move-result-object v0

    move-object v1, v0

    .line 545
    .local v1, "it":Lkotlinx/coroutines/EventLoop;
    const/4 v2, 0x0

    .line 131
    .local v2, "$i$a$-also-ThreadLocalEventLoop$eventLoop$1":I
    sget-object v3, Lkotlinx/coroutines/ThreadLocalEventLoop;->ref:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .end local v1    # "it":Lkotlinx/coroutines/EventLoop;
    .end local v2    # "$i$a$-also-ThreadLocalEventLoop$eventLoop$1":I
    :cond_0
    return-object v0
.end method

.method public final resetEventLoop$kotlinx_coroutines_core()V
    .locals 2

    .line 137
    sget-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->ref:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public final setEventLoop$kotlinx_coroutines_core(Lkotlinx/coroutines/EventLoop;)V
    .locals 1
    .param p1, "eventLoop"    # Lkotlinx/coroutines/EventLoop;

    .line 141
    sget-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->ref:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 142
    return-void
.end method
