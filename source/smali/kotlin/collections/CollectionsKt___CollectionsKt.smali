.class abstract Lkotlin/collections/CollectionsKt___CollectionsKt;
.super Lkotlin/collections/CollectionsKt___CollectionsJvmKt;
.source "_Collections.kt"


# direct methods
.method public static zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 8
    .param p0, "$this$zip"    # Ljava/lang/Iterable;
    .param p1, "other"    # Ljava/lang/Iterable;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3279
    move-object v0, p0

    .local v0, "$this$zip$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 3290
    .local v1, "$i$f$zip":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3291
    .local v2, "first$iv":Ljava/util/Iterator;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3292
    .local v3, "second$iv":Ljava/util/Iterator;
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-static {p1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 3293
    .local v4, "list$iv":Ljava/util/ArrayList;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3294
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "t1":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "t2":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 3279
    .local v7, "$i$a$-zip-CollectionsKt___CollectionsKt$zip$2":I
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .end local v5    # "t1":Ljava/lang/Object;
    .end local v6    # "t2":Ljava/lang/Object;
    .end local v7    # "$i$a$-zip-CollectionsKt___CollectionsKt$zip$2":I
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3296
    :cond_0
    nop

    .line 3279
    .end local v0    # "$this$zip$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$zip":I
    .end local v2    # "first$iv":Ljava/util/Iterator;
    .end local v3    # "second$iv":Ljava/util/Iterator;
    .end local v4    # "list$iv":Ljava/util/ArrayList;
    return-object v4
.end method
