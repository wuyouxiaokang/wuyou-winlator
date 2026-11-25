.class abstract Lkotlin/text/StringsKt__StringsKt;
.super Lkotlin/text/StringsKt__StringsJVMKt;
.source "Strings.kt"


# direct methods
.method public static final getLastIndex(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "$this$lastIndex"    # Ljava/lang/CharSequence;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static final indexOf(Ljava/lang/CharSequence;CIZ)I
    .locals 2
    .param p0, "$this$indexOf"    # Ljava/lang/CharSequence;
    .param p1, "char"    # C
    .param p2, "startIndex"    # I
    .param p3, "ignoreCase"    # Z

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1087
    if-nez p3, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 1090
    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_1

    .line 1088
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    invoke-static {p0, v0, p2, p3}, Lkotlin/text/StringsKt__StringsKt;->indexOfAny(Ljava/lang/CharSequence;[CIZ)I

    move-result v0

    .line 1087
    :goto_1
    return v0
.end method

.method public static synthetic indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I
    .locals 1

    .line 1086
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlin/text/StringsKt__StringsKt;->indexOf(Ljava/lang/CharSequence;CIZ)I

    move-result p0

    return p0
.end method

.method public static final indexOfAny(Ljava/lang/CharSequence;[CIZ)I
    .locals 12
    .param p0, "$this$indexOfAny"    # Ljava/lang/CharSequence;
    .param p1, "chars"    # [C
    .param p2, "startIndex"    # I
    .param p3, "ignoreCase"    # Z

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chars"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 933
    const/4 v0, 0x1

    if-nez p3, :cond_0

    array-length v1, p1

    if-ne v1, v0, :cond_0

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 934
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->single([C)C

    move-result v0

    .line 935
    .local v0, "char":C
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    return v1

    .line 938
    .end local v0    # "char":C
    :cond_0
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .local v2, "index":I
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v3

    if-gt v2, v3, :cond_4

    .line 939
    :goto_0
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 940
    .local v4, "charAtIndex":C
    move-object v5, p1

    .local v5, "$this$any$iv":[C
    const/4 v6, 0x0

    .line 12781
    .local v6, "$i$f$any":I
    array-length v7, v5

    move v8, v1

    :goto_1
    if-ge v8, v7, :cond_2

    aget-char v9, v5, v8

    .local v9, "element$iv":C
    move v10, v9

    .local v10, "it":C
    const/4 v11, 0x0

    .line 940
    .local v11, "$i$a$-any-StringsKt__StringsKt$indexOfAny$1":I
    invoke-static {v10, v4, p3}, Lkotlin/text/CharsKt__CharKt;->equals(CCZ)Z

    move-result v10

    .end local v10    # "it":C
    .end local v11    # "$i$a$-any-StringsKt__StringsKt$indexOfAny$1":I
    if-eqz v10, :cond_1

    move v5, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 12782
    .end local v9    # "element$iv":C
    :cond_2
    move v5, v1

    .line 940
    .end local v5    # "$this$any$iv":[C
    .end local v6    # "$i$f$any":I
    :goto_2
    if-eqz v5, :cond_3

    .line 941
    return v2

    .line 940
    :cond_3
    nop

    .line 938
    .end local v4    # "charAtIndex":C
    if-eq v2, v3, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 943
    .end local v2    # "index":I
    :cond_4
    const/4 v0, -0x1

    return v0
.end method

.method public static final lastIndexOf(Ljava/lang/CharSequence;CIZ)I
    .locals 2
    .param p0, "$this$lastIndexOf"    # Ljava/lang/CharSequence;
    .param p1, "char"    # C
    .param p2, "startIndex"    # I
    .param p3, "ignoreCase"    # Z

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1117
    if-nez p3, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 1120
    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    goto :goto_1

    .line 1118
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    invoke-static {p0, v0, p2, p3}, Lkotlin/text/StringsKt__StringsKt;->lastIndexOfAny(Ljava/lang/CharSequence;[CIZ)I

    move-result v0

    .line 1117
    :goto_1
    return v0
.end method

.method public static synthetic lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I
    .locals 0

    .line 1116
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlin/text/StringsKt__StringsKt;->lastIndexOf(Ljava/lang/CharSequence;CIZ)I

    move-result p0

    return p0
.end method

.method public static final lastIndexOfAny(Ljava/lang/CharSequence;[CIZ)I
    .locals 11
    .param p0, "$this$lastIndexOfAny"    # Ljava/lang/CharSequence;
    .param p1, "chars"    # [C
    .param p2, "startIndex"    # I
    .param p3, "ignoreCase"    # Z

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chars"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 956
    const/4 v0, 0x1

    if-nez p3, :cond_0

    array-length v1, p1

    if-ne v1, v0, :cond_0

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 957
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->single([C)C

    move-result v0

    .line 958
    .local v0, "char":C
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    return v1

    .line 962
    .end local v0    # "char":C
    :cond_0
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {p2, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v1

    .local v1, "index":I
    :goto_0
    const/4 v2, -0x1

    if-ge v2, v1, :cond_4

    .line 963
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 964
    .local v2, "charAtIndex":C
    move-object v3, p1

    .local v3, "$this$any$iv":[C
    const/4 v4, 0x0

    .line 12781
    .local v4, "$i$f$any":I
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_2

    aget-char v8, v3, v7

    .local v8, "element$iv":C
    move v9, v8

    .local v9, "it":C
    const/4 v10, 0x0

    .line 964
    .local v10, "$i$a$-any-StringsKt__StringsKt$lastIndexOfAny$1":I
    invoke-static {v9, v2, p3}, Lkotlin/text/CharsKt__CharKt;->equals(CCZ)Z

    move-result v9

    .end local v9    # "it":C
    .end local v10    # "$i$a$-any-StringsKt__StringsKt$lastIndexOfAny$1":I
    if-eqz v9, :cond_1

    move v6, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 12782
    .end local v8    # "element$iv":C
    :cond_2
    nop

    .line 964
    .end local v3    # "$this$any$iv":[C
    .end local v4    # "$i$f$any":I
    :goto_2
    if-eqz v6, :cond_3

    .line 965
    return v1

    .line 964
    :cond_3
    nop

    .line 962
    .end local v2    # "charAtIndex":C
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    nop

    .line 968
    .end local v1    # "index":I
    return v2
.end method

.method public static final substringAfterLast(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "$this$substringAfterLast"    # Ljava/lang/String;
    .param p1, "delimiter"    # C
    .param p2, "missingDelimiterValue"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingDelimiterValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    .line 485
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public static synthetic substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 483
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    move-object p2, p0

    :cond_0
    invoke-static {p0, p1, p2}, Lkotlin/text/StringsKt__StringsKt;->substringAfterLast(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
