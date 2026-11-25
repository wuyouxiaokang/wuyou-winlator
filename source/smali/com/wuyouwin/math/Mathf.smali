.class public abstract Lcom/wuyouwin/math/Mathf;
.super Ljava/lang/Object;
.source "Mathf.java"


# direct methods
.method public static clamp(FFF)F
    .locals 1
    .param p0, "x"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 9
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method public static clamp(III)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 13
    if-ge p0, p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method public static distance(FFFF)F
    .locals 4
    .param p0, "x0"    # F
    .param p1, "y0"    # F
    .param p2, "x1"    # F
    .param p3, "y1"    # F

    .line 37
    sub-float v0, p0, p2

    float-to-double v0, v0

    sub-float v2, p1, p3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static farey(FF)Landroid/util/Rational;
    .locals 8
    .param p0, "x"    # F
    .param p1, "N"    # F

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "a":I
    const/4 v1, 0x1

    .line 47
    .local v1, "b":I
    const/4 v2, 0x1

    .line 48
    .local v2, "c":I
    const/4 v3, 0x0

    .line 51
    .local v3, "d":I
    :goto_0
    int-to-float v4, v1

    cmpg-float v4, v4, p1

    if-gtz v4, :cond_4

    int-to-float v4, v3

    cmpg-float v4, v4, p1

    if-gtz v4, :cond_4

    .line 52
    add-int v4, v0, v2

    int-to-float v4, v4

    add-int v5, v1, v3

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 53
    .local v4, "mediant":F
    sub-float v5, p0, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3727c5ac    # 1.0E-5f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    .line 54
    add-int v5, v1, v3

    int-to-float v5, v5

    cmpg-float v5, v5, p1

    if-gtz v5, :cond_0

    .line 55
    new-instance v5, Landroid/util/Rational;

    add-int v6, v0, v2

    add-int v7, v1, v3

    invoke-direct {v5, v6, v7}, Landroid/util/Rational;-><init>(II)V

    return-object v5

    .line 57
    :cond_0
    if-le v3, v1, :cond_1

    .line 58
    new-instance v5, Landroid/util/Rational;

    invoke-direct {v5, v2, v3}, Landroid/util/Rational;-><init>(II)V

    return-object v5

    .line 60
    :cond_1
    new-instance v5, Landroid/util/Rational;

    invoke-direct {v5, v0, v1}, Landroid/util/Rational;-><init>(II)V

    return-object v5

    .line 62
    :cond_2
    cmpl-float v5, p0, v4

    if-lez v5, :cond_3

    .line 63
    add-int/2addr v0, v2

    .line 64
    add-int/2addr v1, v3

    goto :goto_0

    .line 67
    :cond_3
    add-int/2addr v2, v0

    .line 68
    add-int/2addr v3, v1

    goto :goto_0

    .line 72
    .end local v4    # "mediant":F
    :cond_4
    int-to-float v4, v1

    cmpl-float v4, v4, p1

    if-lez v4, :cond_5

    new-instance v4, Landroid/util/Rational;

    invoke-direct {v4, v2, v3}, Landroid/util/Rational;-><init>(II)V

    goto :goto_1

    :cond_5
    new-instance v4, Landroid/util/Rational;

    invoke-direct {v4, v0, v1}, Landroid/util/Rational;-><init>(II)V

    :goto_1
    return-object v4
.end method

.method public static fract(F)F
    .locals 2
    .param p0, "x"    # F

    .line 41
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v0, v0

    sub-float v0, p0, v0

    return v0
.end method

.method public static lengthSq(FF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .line 33
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public static roundPoint(F)I
    .locals 2
    .param p0, "x"    # F

    .line 25
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    :goto_0
    double-to-int v0, v0

    return v0
.end method

.method public static roundTo(FF)F
    .locals 1
    .param p0, "x"    # F
    .param p1, "step"    # F

    .line 17
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/wuyouwin/math/Mathf;->roundTo(FFZ)F

    move-result v0

    return v0
.end method

.method public static roundTo(FFZ)F
    .locals 4
    .param p0, "x"    # F
    .param p1, "step"    # F
    .param p2, "roundHalfDown"    # Z

    .line 21
    div-float v0, p0, p1

    if-eqz p2, :cond_0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    :goto_0
    float-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static sign(F)B
    .locals 2
    .param p0, "x"    # F

    .line 29
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    int-to-byte v0, v0

    return v0
.end method
