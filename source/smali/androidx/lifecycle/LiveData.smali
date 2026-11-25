.class public abstract Landroidx/lifecycle/LiveData;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LiveData$AlwaysActiveObserver;,
        Landroidx/lifecycle/LiveData$ObserverWrapper;,
        Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
    }
.end annotation


# static fields
.field static final NOT_SET:Ljava/lang/Object;


# instance fields
.field mActiveCount:I

.field private mChangingActiveState:Z

.field private volatile mData:Ljava/lang/Object;

.field final mDataLock:Ljava/lang/Object;

.field private mDispatchInvalidated:Z

.field private mDispatchingValue:Z

.field private mObservers:Landroidx/arch/core/internal/SafeIterableMap;

.field volatile mPendingData:Ljava/lang/Object;

.field private final mPostValueRunnable:Ljava/lang/Runnable;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 110
    .local p0, "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap;

    invoke-direct {v0}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    .line 77
    sget-object v0, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 84
    new-instance v0, Landroidx/lifecycle/LiveData$1;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LiveData$1;-><init>(Landroidx/lifecycle/LiveData;)V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    .line 111
    sget-object v0, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    .line 113
    return-void
.end method

.method static assertMainThread(Ljava/lang/String;)V
    .locals 3
    .param p0, "methodName"    # Ljava/lang/String;

    .line 486
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/arch/core/executor/ArchTaskExecutor;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    return-void

    .line 487
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on a background thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private considerNotify(Landroidx/lifecycle/LiveData$ObserverWrapper;)V
    .locals 2

    .line 117
    .local p0, "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    .local p1, "observer":Landroidx/lifecycle/LiveData$ObserverWrapper;, "Landroidx/lifecycle/LiveData<TT;>.ObserverWrapper;"
    iget-boolean v0, p1, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-nez v0, :cond_0

    .line 118
    return-void

    .line 125
    :cond_0
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData$ObserverWrapper;->shouldBeActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    .line 127
    return-void

    .line 129
    :cond_1
    iget v0, p1, Landroidx/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    iget v1, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    if-lt v0, v1, :cond_2

    .line 130
    return-void

    .line 132
    :cond_2
    iget v0, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    iput v0, p1, Landroidx/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    .line 133
    iget-object v0, p1, Landroidx/lifecycle/LiveData$ObserverWrapper;->mObserver:Landroidx/lifecycle/Observer;

    iget-object v1, p0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    .line 134
    return-void
.end method


# virtual methods
.method changeActiveCounter(I)V
    .locals 6
    .param p1, "change"    # I

    .line 378
    .local p0, "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    iget v0, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    .line 379
    .local v0, "previousActiveCount":I
    iget v1, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    .line 380
    iget-boolean v1, p0, Landroidx/lifecycle/LiveData;->mChangingActiveState:Z

    if-eqz v1, :cond_0

    .line 381
    return-void

    .line 383
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->mChangingActiveState:Z

    .line 385
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-eq v0, v3, :cond_5

    .line 386
    if-nez v0, :cond_1

    iget v3, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-lez v3, :cond_1

    move v3, v1

    goto :goto_1

    .line 396
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 386
    :cond_1
    move v3, v2

    :goto_1
    nop

    .line 387
    .local v3, "needToCallActive":Z
    if-lez v0, :cond_2

    iget v4, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-nez v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    nop

    .line 388
    .local v4, "needToCallInactive":Z
    iget v5, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    move v0, v5

    .line 389
    if-eqz v3, :cond_3

    .line 390
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->onActive()V

    goto :goto_3

    .line 391
    :cond_3
    if-eqz v4, :cond_4

    .line 392
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->onInactive()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    .end local v3    # "needToCallActive":Z
    .end local v4    # "needToCallInactive":Z
    :cond_4
    :goto_3
    goto :goto_0

    .line 396
    :cond_5
    iput-boolean v2, p0, Landroidx/lifecycle/LiveData;->mChangingActiveState:Z

    .line 397
    nop

    .line 398
    return-void

    .line 396
    :goto_4
    iput-boolean v2, p0, Landroidx/lifecycle/LiveData;->mChangingActiveState:Z

    .line 397
    throw v1
.end method

.method dispatchingValue(Landroidx/lifecycle/LiveData$ObserverWrapper;)V
    .locals 3

    .line 138
    .local p0, "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    .local p1, "initiator":Landroidx/lifecycle/LiveData$ObserverWrapper;, "Landroidx/lifecycle/LiveData<TT;>.ObserverWrapper;"
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData;->mDispatchingValue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 139
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    .line 140
    return-void

    .line 142
    :cond_0
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->mDispatchingValue:Z

    .line 144
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    .line 145
    if-eqz p1, :cond_2

    .line 146
    invoke-direct {p0, p1}, Landroidx/lifecycle/LiveData;->considerNotify(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    .line 147
    const/4 p1, 0x0

    goto :goto_0

    .line 149
    :cond_2
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    .line 150
    invoke-virtual {v1}, Landroidx/arch/core/internal/SafeIterableMap;->iteratorWithAdditions()Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroidx/lifecycle/Observer<-TT;>;Landroidx/lifecycle/LiveData<TT;>.ObserverWrapper;>;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 151
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LiveData$ObserverWrapper;

    invoke-direct {p0, v2}, Landroidx/lifecycle/LiveData;->considerNotify(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    .line 152
    iget-boolean v2, p0, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-eqz v2, :cond_3

    .line 153
    nop

    .line 157
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroidx/lifecycle/Observer<-TT;>;Landroidx/lifecycle/LiveData<TT;>.ObserverWrapper;>;>;"
    :cond_4
    :goto_0
    iget-boolean v1, p0, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-nez v1, :cond_1

    .line 158
    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->mDispatchingValue:Z

    .line 159
    return-void
.end method

.method public observeForever(Landroidx/lifecycle/Observer;)V
    .locals 4

    .line 224
    .local p0, "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    .local p1, "observer":Landroidx/lifecycle/Observer;, "Landroidx/lifecycle/Observer<-TT;>;"
    const-string v0, "observeForever"

    invoke-static {v0}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 225
    new-instance v0, Landroidx/lifecycle/LiveData$AlwaysActiveObserver;

    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/LiveData$AlwaysActiveObserver;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 226
    .local v0, "wrapper":Landroidx/lifecycle/LiveData$AlwaysActiveObserver;, "Landroidx/lifecycle/LiveData<TT;>.AlwaysActiveObserver;"
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v1, p1, v0}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LiveData$ObserverWrapper;

    .line 227
    .local v1, "existing":Landroidx/lifecycle/LiveData$ObserverWrapper;, "Landroidx/lifecycle/LiveData<TT;>.ObserverWrapper;"
    instance-of v2, v1, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    if-nez v2, :cond_1

    .line 231
    if-eqz v1, :cond_0

    .line 232
    return-void

    .line 234
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    .line 235
    return-void

    .line 228
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot add the same observer with different lifecycles"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected onActive()V
    .locals 0

    .line 341
    .local p0, "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    return-void
.end method

.method protected onInactive()V
    .locals 0

    .line 354
    .local p0, "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    return-void
.end method

.method public removeObserver(Landroidx/lifecycle/Observer;)V
    .locals 2

    .line 244
    .local p0, "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    .local p1, "observer":Landroidx/lifecycle/Observer;, "Landroidx/lifecycle/Observer<-TT;>;"
    const-string v0, "removeObserver"

    invoke-static {v0}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0, p1}, Landroidx/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData$ObserverWrapper;

    .line 246
    .local v0, "removed":Landroidx/lifecycle/LiveData$ObserverWrapper;, "Landroidx/lifecycle/LiveData<TT;>.ObserverWrapper;"
    if-nez v0, :cond_0

    .line 247
    return-void

    .line 249
    :cond_0
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData$ObserverWrapper;->detachObserver()V

    .line 250
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    .line 251
    return-void
.end method

.method protected setValue(Ljava/lang/Object;)V
    .locals 1

    .line 306
    .local p0, "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const-string v0, "setValue"

    invoke-static {v0}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 307
    iget v0, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    .line 308
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 309
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->dispatchingValue(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    .line 310
    return-void
.end method
