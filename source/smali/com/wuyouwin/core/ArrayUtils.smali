.class public abstract Lcom/wuyouwin/core/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method public static varargs concat([[B)[B
    .locals 7
    .param p0, "elements"    # [[B

    .line 12
    const/4 v0, 0x0

    aget-object v1, p0, v0

    aget-object v2, p0, v0

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 13
    .local v1, "result":[B
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 14
    array-length v3, v1

    aget-object v4, p0, v2

    array-length v4, v4

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 15
    .local v3, "newArray":[B
    aget-object v4, p0, v2

    array-length v5, v1

    aget-object v6, p0, v2

    array-length v6, v6

    invoke-static {v4, v0, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    move-object v1, v3

    .line 13
    .end local v3    # "newArray":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 18
    .end local v2    # "i":I
    return-object v1
.end method

.method public static varargs concat([[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7

    .line 23
    .local p0, "elements":[[Ljava/lang/Object;, "[[TT;"
    const/4 v0, 0x0

    aget-object v1, p0, v0

    aget-object v2, p0, v0

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 24
    .local v1, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 25
    array-length v3, v1

    aget-object v4, p0, v2

    array-length v4, v4

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 26
    .local v3, "newArray":[Ljava/lang/Object;, "[TT;"
    aget-object v4, p0, v2

    array-length v5, v1

    aget-object v6, p0, v2

    array-length v6, v6

    invoke-static {v4, v0, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    move-object v1, v3

    .line 24
    .end local v3    # "newArray":[Ljava/lang/Object;, "[TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 29
    .end local v2    # "i":I
    return-object v1
.end method

.method public static contains([II)Z
    .locals 2
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .line 57
    invoke-static {p0, p1}, Lcom/wuyouwin/core/ArrayUtils;->indexOf([II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static varargs indexOf([BII[B)I
    .locals 7
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "value"    # [B

    .line 77
    const/4 v0, 0x0

    aget-byte v0, p3, v0

    .line 78
    .local v0, "first":B
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_3

    .line 79
    aget-byte v2, p0, v1

    nop

    if-eq v2, v0, :cond_0

    .line 80
    :goto_1
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p2, :cond_0

    aget-byte v2, p0, v1

    if-eq v2, v0, :cond_0

    goto :goto_1

    .line 83
    :cond_0
    if-ge v1, p2, :cond_2

    .line 84
    add-int/lit8 v2, v1, 0x1

    .line 85
    .local v2, "j":I
    array-length v3, p3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 86
    .local v3, "end":I
    const/4 v4, 0x1

    .local v4, "k":I
    :goto_2
    if-ge v2, v3, :cond_1

    aget-byte v5, p0, v2

    aget-byte v6, p3, v4

    if-ne v5, v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 87
    .end local v4    # "k":I
    :cond_1
    if-ne v2, v3, :cond_2

    return v1

    .line 78
    .end local v2    # "j":I
    .end local v3    # "end":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 90
    .end local v1    # "i":I
    const/4 v1, -0x1

    return v1
.end method

.method public static indexOf([II)I
    .locals 3
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .line 65
    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 66
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget v2, p0, v1

    if-ne p1, v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .line 71
    const/4 v0, -0x1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    goto :goto_1

    .line 72
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "i":I
    :cond_3
    return v0

    .line 71
    :goto_1
    return v0
.end method

.method public static startsWith([B[B)Z
    .locals 4
    .param p0, "prefix"    # [B
    .param p1, "array"    # [B

    .line 51
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v1, p1

    array-length v2, p0

    if-ge v1, v2, :cond_1

    :cond_0
    goto :goto_1

    .line 52
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    aget-byte v2, p1, v1

    aget-byte v3, p0, v1

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v1    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 51
    :goto_1
    return v0
.end method

.method public static toStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 3
    .param p0, "data"    # Lorg/json/JSONArray;

    .line 33
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 34
    .local v0, "stringArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 36
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    .line 34
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 40
    .end local v1    # "i":I
    return-object v0
.end method
