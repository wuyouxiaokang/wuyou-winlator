.class public abstract Lkotlinx/coroutines/CoroutineScopeKt;
.super Ljava/lang/Object;
.source "CoroutineScope.kt"


# direct methods
.method public static final coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p0, "block"    # Lkotlin/jvm/functions/Function2;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 259
    nop

    .line 262
    move-object v0, p1

    .local v0, "uCont":Lkotlin/coroutines/Continuation;
    const/4 v1, 0x0

    .line 263
    .local v1, "$i$a$-suspendCoroutineUninterceptedOrReturn-CoroutineScopeKt$coroutineScope$3":I
    new-instance v2, Lkotlinx/coroutines/internal/ScopeCoroutine;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lkotlinx/coroutines/internal/ScopeCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V

    .line 264
    .local v2, "coroutine":Lkotlinx/coroutines/internal/ScopeCoroutine;
    invoke-static {v2, v2, p0}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->startUndispatchedOrReturn(Lkotlinx/coroutines/internal/ScopeCoroutine;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    .line 262
    .end local v0    # "uCont":Lkotlin/coroutines/Continuation;
    .end local v1    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CoroutineScopeKt$coroutineScope$3":I
    .end local v2    # "coroutine":Lkotlinx/coroutines/internal/ScopeCoroutine;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0
.end method
