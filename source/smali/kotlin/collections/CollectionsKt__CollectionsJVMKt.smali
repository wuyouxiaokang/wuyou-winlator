.class abstract Lkotlin/collections/CollectionsKt__CollectionsJVMKt;
.super Ljava/lang/Object;
.source "CollectionsJVM.kt"


# direct methods
.method public static final listOf(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .param p0, "element"    # Ljava/lang/Object;

    .line 20
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "singletonList(element)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
