.class abstract Lkotlin/ranges/RangesKt___RangesKt;
.super Lkotlin/ranges/RangesKt__RangesKt;
.source "_Ranges.kt"


# direct methods
.method public static coerceAtLeast(II)I
    .locals 1
    .param p0, "$this$coerceAtLeast"    # I
    .param p1, "minimumValue"    # I

    .line 934
    if-ge p0, p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method public static coerceAtMost(II)I
    .locals 1
    .param p0, "$this$coerceAtMost"    # I
    .param p1, "maximumValue"    # I

    .line 1011
    if-le p0, p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method public static coerceAtMost(JJ)J
    .locals 2
    .param p0, "$this$coerceAtMost"    # J
    .param p2, "maximumValue"    # J

    .line 1022
    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    move-wide v0, p2

    goto :goto_0

    :cond_0
    move-wide v0, p0

    :goto_0
    return-wide v0
.end method
