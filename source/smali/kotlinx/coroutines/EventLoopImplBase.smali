.class public abstract Lkotlinx/coroutines/EventLoopImplBase;
.super Lkotlinx/coroutines/EventLoopImplPlatform;
.source "EventLoop.common.kt"

# interfaces
.implements Lkotlinx/coroutines/Delay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;
    }
.end annotation


# static fields
.field private static final synthetic _delayed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic _queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _delayed:Ljava/lang/Object;

.field private volatile synthetic _isCompleted:I

.field private volatile synthetic _queue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 0
    const-string v0, "_queue"

    const-class v1, Lkotlinx/coroutines/EventLoopImplBase;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/EventLoopImplBase;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_delayed"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 184
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplPlatform;-><init>()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Ljava/lang/Object;

    .line 189
    iput-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed:Ljava/lang/Object;

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_isCompleted:I

    .line 184
    return-void
.end method

.method private final closeQueue()V
    .locals 7

    .line 342
    nop

    .line 343
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/EventLoopImplBase;
    const/4 v1, 0x0

    .line 560
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 561
    iget-object v2, v0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Ljava/lang/Object;

    .local v2, "queue":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 344
    .local v3, "$i$a$-loop-EventLoopImplBase$closeQueue$2":I
    nop

    .line 345
    if-nez v2, :cond_0

    sget-object v4, Lkotlinx/coroutines/EventLoopImplBase;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v5, 0x0

    invoke-static {}, Lkotlinx/coroutines/EventLoop_commonKt;->access$getCLOSED_EMPTY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v6

    invoke-static {v4, p0, v5, v6}, Lkotlinx/coroutines/EventLoopImplBase$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    .line 346
    :cond_0
    instance-of v4, v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    if-eqz v4, :cond_1

    .line 347
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {v4}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->close()Z

    .line 348
    return-void

    .line 350
    :cond_1
    nop

    .line 351
    invoke-static {}, Lkotlinx/coroutines/EventLoop_commonKt;->access$getCLOSED_EMPTY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-ne v2, v4, :cond_2

    return-void

    .line 354
    :cond_2
    new-instance v4, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    const/16 v5, 0x8

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;-><init>(IZ)V

    .line 355
    .local v4, "newQueue":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    move-object v5, v2

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->addLast(Ljava/lang/Object;)I

    .line 356
    sget-object v5, Lkotlinx/coroutines/EventLoopImplBase;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v5, p0, v2, v4}, Lkotlinx/coroutines/EventLoopImplBase$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    return-void

    .line 360
    .end local v4    # "newQueue":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    :cond_3
    nop

    .line 560
    .end local v2    # "queue":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop-EventLoopImplBase$closeQueue$2":I
    goto :goto_0
.end method

.method private final dequeue()Ljava/lang/Runnable;
    .locals 7

    .line 325
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/EventLoopImplBase;
    const/4 v1, 0x0

    .line 557
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 558
    iget-object v2, v0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Ljava/lang/Object;

    .local v2, "queue":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 326
    .local v3, "$i$a$-loop-EventLoopImplBase$dequeue$1":I
    nop

    .line 327
    const/4 v4, 0x0

    if-nez v2, :cond_0

    return-object v4

    .line 328
    :cond_0
    instance-of v5, v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    if-eqz v5, :cond_2

    .line 329
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {v4}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v4

    .line 330
    .local v4, "result":Ljava/lang/Object;
    sget-object v5, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;

    if-eq v4, v5, :cond_1

    move-object v5, v4

    check-cast v5, Ljava/lang/Runnable;

    return-object v5

    .line 331
    :cond_1
    sget-object v5, Lkotlinx/coroutines/EventLoopImplBase;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v6, v2

    check-cast v6, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {v6}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v6

    invoke-static {v5, p0, v2, v6}, Lkotlinx/coroutines/EventLoopImplBase$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 333
    .end local v4    # "result":Ljava/lang/Object;
    :cond_2
    nop

    .line 334
    invoke-static {}, Lkotlinx/coroutines/EventLoop_commonKt;->access$getCLOSED_EMPTY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v5

    if-ne v2, v5, :cond_3

    return-object v4

    .line 335
    :cond_3
    sget-object v5, Lkotlinx/coroutines/EventLoopImplBase;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v5, p0, v2, v4}, Lkotlinx/coroutines/EventLoopImplBase$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v2

    check-cast v4, Ljava/lang/Runnable;

    return-object v4

    .line 338
    :cond_4
    :goto_1
    nop

    .line 557
    .end local v2    # "queue":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop-EventLoopImplBase$dequeue$1":I
    goto :goto_0
.end method

.method private final enqueueImpl(Ljava/lang/Runnable;)Z
    .locals 7
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 298
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/EventLoopImplBase;
    const/4 v1, 0x0

    .line 555
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 556
    iget-object v2, v0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Ljava/lang/Object;

    .local v2, "queue":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 299
    .local v3, "$i$a$-loop-EventLoopImplBase$enqueueImpl$1":I
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;->isCompleted()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return v5

    .line 300
    :cond_0
    nop

    .line 301
    const/4 v4, 0x1

    if-nez v2, :cond_1

    sget-object v5, Lkotlinx/coroutines/EventLoopImplBase;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v6, 0x0

    invoke-static {v5, p0, v6, p1}, Lkotlinx/coroutines/EventLoopImplBase$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    return v4

    .line 302
    :cond_1
    instance-of v6, v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    if-eqz v6, :cond_2

    .line 303
    move-object v6, v2

    check-cast v6, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {v6, p1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->addLast(Ljava/lang/Object;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 305
    :pswitch_0
    return v5

    .line 306
    :pswitch_1
    sget-object v4, Lkotlinx/coroutines/EventLoopImplBase;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v5, v2

    check-cast v5, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {v5}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v5

    invoke-static {v4, p0, v2, v5}, Lkotlinx/coroutines/EventLoopImplBase$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_1
    goto :goto_2

    .line 304
    :pswitch_2
    return v4

    .line 309
    :cond_2
    nop

    .line 310
    invoke-static {}, Lkotlinx/coroutines/EventLoop_commonKt;->access$getCLOSED_EMPTY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v6

    if-ne v2, v6, :cond_3

    return v5

    .line 313
    :cond_3
    new-instance v5, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    const/16 v6, 0x8

    invoke-direct {v5, v6, v4}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;-><init>(IZ)V

    .line 314
    .local v5, "newQueue":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    move-object v6, v2

    check-cast v6, Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->addLast(Ljava/lang/Object;)I

    .line 315
    invoke-virtual {v5, p1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->addLast(Ljava/lang/Object;)I

    .line 316
    sget-object v6, Lkotlinx/coroutines/EventLoopImplBase;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v6, p0, v2, v5}, Lkotlinx/coroutines/EventLoopImplBase$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    return v4

    .line 320
    .end local v5    # "newQueue":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    :cond_4
    :goto_2
    nop

    .line 555
    .end local v2    # "queue":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop-EventLoopImplBase$enqueueImpl$1":I
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final isCompleted()Z
    .locals 1

    .line 193
    iget v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_isCompleted:I

    return v0
.end method

.method private final rescheduleAllDelayed()V
    .locals 3

    .line 392
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 393
    .local v0, "now":J
    nop

    .line 401
    iget-object v2, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    .line 404
    return-void
.end method

.method private final setCompleted(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 194
    iput p1, p0, Lkotlinx/coroutines/EventLoopImplBase;->_isCompleted:I

    return-void
.end method


# virtual methods
.method public final dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "block"    # Ljava/lang/Runnable;

    .line 285
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/EventLoopImplBase;->enqueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public enqueue(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 288
    invoke-direct {p0, p1}, Lkotlinx/coroutines/EventLoopImplBase;->enqueueImpl(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplPlatform;->unpark()V

    goto :goto_0

    .line 292
    :cond_0
    sget-object v0, Lkotlinx/coroutines/DefaultExecutor;->INSTANCE:Lkotlinx/coroutines/DefaultExecutor;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/DefaultExecutor;->enqueue(Ljava/lang/Runnable;)V

    .line 294
    :goto_0
    return-void
.end method

.method protected getNextTime()J
    .locals 6

    .line 209
    invoke-super {p0}, Lkotlinx/coroutines/EventLoop;->getNextTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    .line 210
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Ljava/lang/Object;

    .line 211
    .local v0, "queue":Ljava/lang/Object;
    nop

    .line 212
    const-wide v4, 0x7fffffffffffffffL

    if-nez v0, :cond_1

    goto :goto_0

    .line 213
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    return-wide v2

    .line 217
    :cond_2
    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    return-wide v4

    .line 214
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/EventLoop_commonKt;->access$getCLOSED_EMPTY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_4

    return-wide v4

    .line 215
    :cond_4
    return-wide v2
.end method

.method protected isEmpty()Z
    .locals 5

    .line 197
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoop;->isUnconfinedQueueEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 198
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    .line 199
    .local v0, "delayed":Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 200
    :cond_1
    iget-object v2, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Ljava/lang/Object;

    .line 201
    .local v2, "queue":Ljava/lang/Object;
    const/4 v3, 0x1

    if-nez v2, :cond_2

    move v1, v3

    goto :goto_0

    .line 202
    :cond_2
    instance-of v4, v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    if-eqz v4, :cond_3

    move-object v1, v2

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->isEmpty()Z

    move-result v1

    goto :goto_0

    .line 203
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/EventLoop_commonKt;->access$getCLOSED_EMPTY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-ne v2, v4, :cond_4

    move v1, v3

    .line 200
    .end local v2    # "queue":Ljava/lang/Object;
    :cond_4
    :goto_0
    return v1
.end method

.method public processNextEvent()J
    .locals 9

    .line 259
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoop;->processUnconfinedEvent()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 261
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    .line 262
    .local v0, "delayed":Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 263
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 264
    .local v3, "now":J
    nop

    .line 268
    move-object v5, v0

    .local v5, "this_$iv":Lkotlinx/coroutines/internal/ThreadSafeHeap;
    const/4 v6, 0x0

    .line 51
    .local v6, "$i$f$removeFirstIf":I
    const/4 v7, 0x0

    .line 20
    .local v7, "$i$f$synchronized":I
    monitor-enter v5

    const/4 v8, 0x0

    .line 52
    .local v8, "$i$a$-synchronized-ThreadSafeHeap$removeFirstIf$1$iv":I
    :try_start_0
    invoke-virtual {v5}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->firstImpl()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v7    # "$i$f$synchronized":I
    .end local v8    # "$i$a$-synchronized-ThreadSafeHeap$removeFirstIf$1$iv":I
    monitor-exit v5

    .line 268
    .end local v5    # "this_$iv":Lkotlinx/coroutines/internal/ThreadSafeHeap;
    .end local v6    # "$i$f$removeFirstIf":I
    nop

    .line 273
    goto :goto_0

    .line 53
    .restart local v5    # "this_$iv":Lkotlinx/coroutines/internal/ThreadSafeHeap;
    .restart local v6    # "$i$f$removeFirstIf":I
    .restart local v7    # "$i$f$synchronized":I
    :catchall_0
    move-exception v1

    monitor-exit v5

    throw v1

    .line 277
    .end local v3    # "now":J
    .end local v5    # "this_$iv":Lkotlinx/coroutines/internal/ThreadSafeHeap;
    .end local v6    # "$i$f$removeFirstIf":I
    .end local v7    # "$i$f$synchronized":I
    :cond_1
    :goto_0
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;->dequeue()Ljava/lang/Runnable;

    move-result-object v3

    .line 278
    .local v3, "task":Ljava/lang/Runnable;
    if-eqz v3, :cond_2

    .line 279
    const/4 v4, 0x0

    .line 50
    .local v4, "$i$f$platformAutoreleasePool":I
    const/4 v5, 0x0

    .line 279
    .local v5, "$i$a$-platformAutoreleasePool-EventLoopImplBase$processNextEvent$2":I
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 280
    .end local v4    # "$i$f$platformAutoreleasePool":I
    .end local v5    # "$i$a$-platformAutoreleasePool-EventLoopImplBase$processNextEvent$2":I
    return-wide v1

    .line 282
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplBase;->getNextTime()J

    move-result-wide v1

    return-wide v1
.end method

.method protected final resetAll()V
    .locals 1

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Ljava/lang/Object;

    .line 387
    iput-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed:Ljava/lang/Object;

    .line 388
    return-void
.end method

.method public shutdown()V
    .locals 4

    .line 223
    sget-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->INSTANCE:Lkotlinx/coroutines/ThreadLocalEventLoop;

    invoke-virtual {v0}, Lkotlinx/coroutines/ThreadLocalEventLoop;->resetEventLoop$kotlinx_coroutines_core()V

    .line 226
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlinx/coroutines/EventLoopImplBase;->setCompleted(Z)V

    .line 227
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;->closeQueue()V

    .line 229
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplBase;->processNextEvent()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;->rescheduleAllDelayed()V

    .line 232
    return-void
.end method
