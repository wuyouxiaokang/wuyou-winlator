.class public abstract Lkotlin/jvm/internal/TypeIntrinsics;
.super Ljava/lang/Object;
.source "TypeIntrinsics.java"


# direct methods
.method public static beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "arity"    # I

    .line 341
    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/TypeIntrinsics;->isFunctionOfArity(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kotlin.jvm.functions.Function"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    :cond_0
    return-object p0
.end method

.method public static getFunctionArity(Ljava/lang/Object;)I
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 258
    instance-of v0, p0, Lkotlin/jvm/internal/FunctionBase;

    if-eqz v0, :cond_0

    .line 259
    move-object v0, p0

    check-cast v0, Lkotlin/jvm/internal/FunctionBase;

    invoke-interface {v0}, Lkotlin/jvm/internal/FunctionBase;->getArity()I

    move-result v0

    return v0

    .line 261
    :cond_0
    instance-of v0, p0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1

    .line 262
    const/4 v0, 0x0

    return v0

    .line 264
    :cond_1
    instance-of v0, p0, Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_2

    .line 265
    const/4 v0, 0x1

    return v0

    .line 267
    :cond_2
    instance-of v0, p0, Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_3

    .line 268
    const/4 v0, 0x2

    return v0

    .line 270
    :cond_3
    nop

    .line 273
    nop

    .line 276
    nop

    .line 279
    nop

    .line 282
    nop

    .line 285
    nop

    .line 288
    nop

    .line 291
    nop

    .line 294
    nop

    .line 297
    nop

    .line 300
    nop

    .line 303
    nop

    .line 306
    nop

    .line 309
    nop

    .line 312
    nop

    .line 315
    nop

    .line 318
    nop

    .line 321
    nop

    .line 324
    nop

    .line 327
    nop

    .line 331
    const/4 v0, -0x1

    return v0
.end method

.method public static isFunctionOfArity(Ljava/lang/Object;I)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "arity"    # I

    .line 336
    instance-of v0, p0, Lkotlin/Function;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->getFunctionArity(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    .line 17
    .local p0, "throwable":Ljava/lang/Throwable;, "TT;"
    const-class v0, Lkotlin/jvm/internal/TypeIntrinsics;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static throwCce(Ljava/lang/ClassCastException;)Ljava/lang/ClassCastException;
    .locals 1
    .param p0, "e"    # Ljava/lang/ClassCastException;

    .line 30
    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassCastException;

    throw v0
.end method

.method public static throwCce(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "argument"    # Ljava/lang/Object;
    .param p1, "requestedClassName"    # Ljava/lang/String;

    .line 21
    if-nez p0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "argumentClassName":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be cast to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static throwCce(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/ClassCastException;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0
.end method
