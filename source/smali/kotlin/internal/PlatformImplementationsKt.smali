.class public abstract Lkotlin/internal/PlatformImplementationsKt;
.super Ljava/lang/Object;
.source "PlatformImplementations.kt"


# static fields
.field public static final IMPLEMENTATIONS:Lkotlin/internal/PlatformImplementations;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    invoke-static {}, Lkotlin/internal/PlatformImplementationsKt;->getJavaVersion()I

    move-result v1

    .line 52
    .local v1, "version":I
    const v2, 0x10008

    const/high16 v3, 0x10000

    const-string v4, ", base type classloader: "

    const-string v5, "Instance class was loaded from a different classloader: "

    const-class v6, Lkotlin/internal/PlatformImplementations;

    const-string v7, "null cannot be cast to non-null type kotlin.internal.PlatformImplementations"

    const-string v8, "forName(\"kotlin.internal\u2026entations\").newInstance()"

    if-ge v1, v2, :cond_0

    if-ge v1, v3, :cond_5

    .line 53
    :cond_0
    nop

    .line 54
    :try_start_0
    const-class v2, Lkotlin/internal/jdk8/JDK8PlatformImplementations;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-eqz v2, :cond_1

    :try_start_1
    check-cast v2, Lkotlin/internal/PlatformImplementations;

    goto/16 :goto_8

    .line 55
    :catch_0
    move-exception v2

    goto :goto_1

    .line 54
    :catch_1
    move-exception v9

    goto :goto_0

    :cond_1
    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .end local v1    # "version":I
    throw v9
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .restart local v1    # "version":I
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    nop

    if-nez v11, :cond_2

    new-instance v11, Ljava/lang/ClassNotFoundException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2, v9}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .end local v1    # "version":I
    throw v11

    :cond_2
    throw v9
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 56
    .restart local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .restart local v1    # "version":I
    :goto_1
    nop

    .line 57
    :try_start_3
    const-string v2, "kotlin.internal.JRE8PlatformImplementations"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    nop

    if-eqz v2, :cond_3

    :try_start_4
    check-cast v2, Lkotlin/internal/PlatformImplementations;

    goto/16 :goto_8

    .line 58
    :catch_2
    move-exception v2

    goto :goto_3

    .line 57
    :catch_3
    move-exception v9

    goto :goto_2

    :cond_3
    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .end local v1    # "version":I
    throw v9
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .restart local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .restart local v1    # "version":I
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    nop

    if-nez v11, :cond_4

    new-instance v11, Ljava/lang/ClassNotFoundException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2, v9}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .end local v1    # "version":I
    throw v11

    :cond_4
    throw v9
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    .line 61
    .restart local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .restart local v1    # "version":I
    :cond_5
    :goto_3
    const v2, 0x10007

    if-ge v1, v2, :cond_6

    if-ge v1, v3, :cond_b

    .line 62
    :cond_6
    nop

    .line 63
    :try_start_6
    const-class v2, Lkotlin/internal/jdk7/JDK7PlatformImplementations;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    nop

    if-eqz v2, :cond_7

    :try_start_7
    check-cast v2, Lkotlin/internal/PlatformImplementations;

    goto/16 :goto_8

    .line 64
    :catch_4
    move-exception v2

    goto :goto_5

    .line 63
    :catch_5
    move-exception v3

    goto :goto_4

    :cond_7
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .end local v1    # "version":I
    throw v3
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_4

    .restart local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .restart local v1    # "version":I
    :goto_4
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    nop

    if-nez v10, :cond_8

    new-instance v10, Ljava/lang/ClassNotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .end local v1    # "version":I
    throw v10

    :cond_8
    throw v3
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_4

    .line 65
    .restart local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .restart local v1    # "version":I
    :goto_5
    nop

    .line 66
    :try_start_9
    const-string v2, "kotlin.internal.JRE7PlatformImplementations"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_6

    nop

    if-eqz v2, :cond_9

    :try_start_a
    check-cast v2, Lkotlin/internal/PlatformImplementations;

    goto :goto_8

    .line 67
    :catch_6
    move-exception v2

    goto :goto_7

    .line 66
    :catch_7
    move-exception v3

    goto :goto_6

    :cond_9
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .end local v1    # "version":I
    throw v3
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_6

    .restart local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .restart local v1    # "version":I
    :goto_6
    :try_start_b
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    nop

    if-nez v7, :cond_a

    new-instance v7, Ljava/lang/ClassNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .end local v1    # "version":I
    throw v7

    :cond_a
    throw v3
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_b} :catch_6

    .line 70
    .restart local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .restart local v1    # "version":I
    :cond_b
    :goto_7
    new-instance v2, Lkotlin/internal/PlatformImplementations;

    invoke-direct {v2}, Lkotlin/internal/PlatformImplementations;-><init>()V

    .line 50
    .end local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .end local v1    # "version":I
    :goto_8
    sput-object v2, Lkotlin/internal/PlatformImplementationsKt;->IMPLEMENTATIONS:Lkotlin/internal/PlatformImplementations;

    return-void
.end method

.method private static final getJavaVersion()I
    .locals 10

    .line 88
    const v0, 0x10006

    .line 89
    .local v0, "default":I
    const-string v1, "java.specification.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 90
    .local v1, "version":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x6

    const/4 v7, 0x0

    const/16 v3, 0x2e

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v8

    .line 91
    .local v8, "firstDot":I
    const/high16 v9, 0x10000

    if-gez v8, :cond_1

    .line 92
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/2addr v2, v9

    goto :goto_0

    :catch_0
    move-exception v2

    move v2, v0

    :goto_0
    return v2

    .line 94
    :cond_1
    add-int/lit8 v4, v8, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/16 v3, 0x2e

    const/4 v5, 0x0

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v2

    .line 95
    .local v2, "secondDot":I
    if-gez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 97
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .local v3, "firstPart":Ljava/lang/String;
    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v5

    .line 99
    .local v4, "secondPart":Ljava/lang/String;
    nop

    .line 100
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/2addr v5, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/2addr v5, v6

    goto :goto_1

    .line 101
    :catch_1
    move-exception v5

    .line 102
    .local v5, "e":Ljava/lang/NumberFormatException;
    move v5, v0

    .line 99
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    return v5
.end method
