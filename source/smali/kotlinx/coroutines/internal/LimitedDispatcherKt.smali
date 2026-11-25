.class public abstract Lkotlinx/coroutines/internal/LimitedDispatcherKt;
.super Ljava/lang/Object;
.source "LimitedDispatcher.kt"


# direct methods
.method public static final checkParallelism(I)V
    .locals 3
    .param p0, "$this$checkParallelism"    # I

    .line 106
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 108
    :cond_1
    const/4 v0, 0x0

    .line 106
    .local v0, "$i$a$-require-LimitedDispatcherKt$checkParallelism$1":I
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Expected positive parallelism level, but got "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-LimitedDispatcherKt$checkParallelism$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
