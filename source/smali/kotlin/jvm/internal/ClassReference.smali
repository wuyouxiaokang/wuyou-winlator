.class public final Lkotlin/jvm/internal/ClassReference;
.super Ljava/lang/Object;
.source "ClassReference.kt"

# interfaces
.implements Lkotlin/reflect/KClass;
.implements Lkotlin/jvm/internal/ClassBasedDeclarationContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/jvm/internal/ClassReference$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/jvm/internal/ClassReference$Companion;

.field private static final FUNCTION_CLASSES:Ljava/util/Map;

.field private static final classFqNames:Ljava/util/HashMap;

.field private static final primitiveFqNames:Ljava/util/HashMap;

.field private static final primitiveWrapperFqNames:Ljava/util/HashMap;

.field private static final simpleNames:Ljava/util/Map;


# instance fields
.field private final jClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    new-instance v0, Lkotlin/jvm/internal/ClassReference$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/ClassReference$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/jvm/internal/ClassReference;->Companion:Lkotlin/jvm/internal/ClassReference$Companion;

    .line 107
    nop

    .line 102
    const-class v23, Lkotlin/jvm/functions/Function21;

    const-class v24, Lkotlin/jvm/functions/Function22;

    const-class v2, Lkotlin/jvm/functions/Function0;

    const-class v3, Lkotlin/jvm/functions/Function1;

    const-class v4, Lkotlin/jvm/functions/Function2;

    const-class v5, Lkotlin/jvm/functions/Function3;

    const-class v6, Lkotlin/jvm/functions/Function4;

    const-class v7, Lkotlin/jvm/functions/Function5;

    const-class v8, Lkotlin/jvm/functions/Function6;

    const-class v9, Lkotlin/jvm/functions/Function7;

    const-class v10, Lkotlin/jvm/functions/Function8;

    const-class v11, Lkotlin/jvm/functions/Function9;

    const-class v12, Lkotlin/jvm/functions/Function10;

    const-class v13, Lkotlin/jvm/functions/Function11;

    const-class v14, Lkotlin/jvm/functions/Function12;

    const-class v15, Lkotlin/jvm/functions/Function13;

    const-class v16, Lkotlin/jvm/functions/Function14;

    const-class v17, Lkotlin/jvm/functions/Function15;

    const-class v18, Lkotlin/jvm/functions/Function16;

    const-class v19, Lkotlin/jvm/functions/Function17;

    const-class v20, Lkotlin/jvm/functions/Function18;

    const-class v21, Lkotlin/jvm/functions/Function19;

    const-class v22, Lkotlin/jvm/functions/Function20;

    filled-new-array/range {v2 .. v24}, [Ljava/lang/Class;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 107
    nop

    .local v0, "$this$mapIndexed$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1557
    .local v2, "$i$f$mapIndexed":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v0

    .local v4, "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 1588
    .local v5, "$i$f$mapIndexedTo":I
    const/4 v6, 0x0

    .line 1589
    .local v6, "index$iv$iv":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1590
    .local v8, "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "index$iv$iv":I
    .local v9, "index$iv$iv":I
    if-gez v6, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    move-object v10, v8

    check-cast v10, Ljava/lang/Class;

    .local v6, "i":I
    .local v10, "clazz":Ljava/lang/Class;
    const/4 v11, 0x0

    .line 107
    .local v11, "$i$a$-mapIndexed-ClassReference$Companion$FUNCTION_CLASSES$1":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .end local v6    # "i":I
    .end local v10    # "clazz":Ljava/lang/Class;
    .end local v11    # "$i$a$-mapIndexed-ClassReference$Companion$FUNCTION_CLASSES$1":I
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v6, v9

    goto :goto_0

    .line 1591
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    .end local v9    # "index$iv$iv":I
    .local v6, "index$iv$iv":I
    :cond_1
    nop

    .line 1557
    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapIndexedTo":I
    .end local v6    # "index$iv$iv":I
    nop

    .line 107
    .end local v0    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$mapIndexed":I
    invoke-static {v3}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lkotlin/jvm/internal/ClassReference;->FUNCTION_CLASSES:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .local v2, "$this$primitiveFqNames_u24lambda_u2d1":Ljava/util/HashMap;
    const/4 v3, 0x0

    .line 110
    .local v3, "$i$a$-apply-ClassReference$Companion$primitiveFqNames$1":I
    const-string v4, "boolean"

    const-string v5, "kotlin.Boolean"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v4, "char"

    const-string v6, "kotlin.Char"

    invoke-virtual {v2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v4, "byte"

    const-string v7, "kotlin.Byte"

    invoke-virtual {v2, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v4, "short"

    const-string v8, "kotlin.Short"

    invoke-virtual {v2, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v4, "int"

    const-string v9, "kotlin.Int"

    invoke-virtual {v2, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v4, "float"

    const-string v10, "kotlin.Float"

    invoke-virtual {v2, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v4, "long"

    const-string v11, "kotlin.Long"

    invoke-virtual {v2, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v4, "double"

    const-string v12, "kotlin.Double"

    invoke-virtual {v2, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    nop

    .line 109
    .end local v2    # "$this$primitiveFqNames_u24lambda_u2d1":Ljava/util/HashMap;
    .end local v3    # "$i$a$-apply-ClassReference$Companion$primitiveFqNames$1":I
    sput-object v0, Lkotlin/jvm/internal/ClassReference;->primitiveFqNames:Ljava/util/HashMap;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .local v2, "$this$primitiveWrapperFqNames_u24lambda_u2d2":Ljava/util/HashMap;
    const/4 v3, 0x0

    .line 121
    .local v3, "$i$a$-apply-ClassReference$Companion$primitiveWrapperFqNames$1":I
    const-string v4, "java.lang.Boolean"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v4, "java.lang.Character"

    invoke-virtual {v2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v4, "java.lang.Byte"

    invoke-virtual {v2, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v4, "java.lang.Short"

    invoke-virtual {v2, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v4, "java.lang.Integer"

    invoke-virtual {v2, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v4, "java.lang.Float"

    invoke-virtual {v2, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v4, "java.lang.Long"

    invoke-virtual {v2, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v4, "java.lang.Double"

    invoke-virtual {v2, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    nop

    .line 120
    .end local v2    # "$this$primitiveWrapperFqNames_u24lambda_u2d2":Ljava/util/HashMap;
    .end local v3    # "$i$a$-apply-ClassReference$Companion$primitiveWrapperFqNames$1":I
    sput-object v0, Lkotlin/jvm/internal/ClassReference;->primitiveWrapperFqNames:Ljava/util/HashMap;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .local v2, "$this$classFqNames_u24lambda_u2d4":Ljava/util/HashMap;
    const/4 v3, 0x0

    .line 133
    .local v3, "$i$a$-apply-ClassReference$Companion$classFqNames$1":I
    const-string v4, "java.lang.Object"

    const-string v5, "kotlin.Any"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v4, "java.lang.String"

    const-string v5, "kotlin.String"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v4, "java.lang.CharSequence"

    const-string v5, "kotlin.CharSequence"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v4, "java.lang.Throwable"

    const-string v5, "kotlin.Throwable"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v4, "java.lang.Cloneable"

    const-string v5, "kotlin.Cloneable"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v4, "java.lang.Number"

    const-string v5, "kotlin.Number"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v4, "java.lang.Comparable"

    const-string v5, "kotlin.Comparable"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v4, "java.lang.Enum"

    const-string v5, "kotlin.Enum"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v4, "java.lang.annotation.Annotation"

    const-string v5, "kotlin.Annotation"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v4, "java.lang.Iterable"

    const-string v5, "kotlin.collections.Iterable"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v4, "java.util.Iterator"

    const-string v5, "kotlin.collections.Iterator"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v4, "java.util.Collection"

    const-string v5, "kotlin.collections.Collection"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v4, "java.util.List"

    const-string v5, "kotlin.collections.List"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v4, "java.util.Set"

    const-string v5, "kotlin.collections.Set"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v4, "java.util.ListIterator"

    const-string v5, "kotlin.collections.ListIterator"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v4, "java.util.Map"

    const-string v5, "kotlin.collections.Map"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v4, "java.util.Map$Entry"

    const-string v5, "kotlin.collections.Map.Entry"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v4, "kotlin.jvm.internal.StringCompanionObject"

    const-string v5, "kotlin.String.Companion"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v4, "kotlin.jvm.internal.EnumCompanionObject"

    const-string v5, "kotlin.Enum.Companion"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v4, Lkotlin/jvm/internal/ClassReference;->primitiveFqNames:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 154
    sget-object v4, Lkotlin/jvm/internal/ClassReference;->primitiveWrapperFqNames:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 155
    sget-object v4, Lkotlin/jvm/internal/ClassReference;->primitiveFqNames:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    const-string v5, "primitiveFqNames.values"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v4, "$this$associateTo$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 1251
    .local v5, "$i$f$associateTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x2

    const/16 v9, 0x2e

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1252
    .local v7, "element$iv":Ljava/lang/Object;
    move-object v10, v7

    check-cast v10, Ljava/lang/String;

    .local v10, "kotlinName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 156
    .local v11, "$i$a$-associateTo-ClassReference$Companion$classFqNames$1$1":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "kotlin.jvm.internal."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "kotlinName"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v9, v1, v8, v1}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "CompanionObject"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".Companion"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .end local v10    # "kotlinName":Ljava/lang/String;
    .end local v11    # "$i$a$-associateTo-ClassReference$Companion$classFqNames$1$1":I
    invoke-virtual {v8}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1254
    .end local v7    # "element$iv":Ljava/lang/Object;
    :cond_2
    nop

    .line 158
    .end local v4    # "$this$associateTo$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$associateTo":I
    sget-object v4, Lkotlin/jvm/internal/ClassReference;->FUNCTION_CLASSES:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .local v6, "klass":Ljava/lang/Class;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 159
    .local v5, "arity":I
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "kotlin.Function"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 161
    .end local v5    # "arity":I
    .end local v6    # "klass":Ljava/lang/Class;
    :cond_3
    nop

    .line 132
    .end local v2    # "$this$classFqNames_u24lambda_u2d4":Ljava/util/HashMap;
    .end local v3    # "$i$a$-apply-ClassReference$Companion$classFqNames$1":I
    sput-object v0, Lkotlin/jvm/internal/ClassReference;->classFqNames:Ljava/util/HashMap;

    .line 163
    sget-object v0, Lkotlin/jvm/internal/ClassReference;->classFqNames:Ljava/util/HashMap;

    .local v0, "$this$mapValues$iv":Ljava/util/Map;
    const/4 v2, 0x0

    .line 438
    .local v2, "$i$f$mapValues":I
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .local v3, "destination$iv$iv":Ljava/util/Map;
    move-object v4, v0

    .local v4, "$this$mapValuesTo$iv$iv":Ljava/util/Map;
    const/4 v5, 0x0

    .line 388
    .local v5, "$i$f$mapValuesTo":I
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    .local v6, "$this$associateByTo$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 1236
    .local v7, "$i$f$associateByTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 1237
    .local v11, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/util/Map$Entry;

    .local v12, "it$iv$iv":Ljava/util/Map$Entry;
    const/4 v13, 0x0

    .line 388
    .local v13, "$i$a$-associateByTo-MapsKt__MapsKt$mapValuesTo$1$iv$iv":I
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "it$iv$iv":Ljava/util/Map$Entry;
    .end local v13    # "$i$a$-associateByTo-MapsKt__MapsKt$mapValuesTo$1$iv$iv":I
    move-object v13, v11

    check-cast v13, Ljava/util/Map$Entry;

    const/4 v14, 0x0

    .line 163
    .local v14, "$i$a$-mapValues-ClassReference$Companion$simpleNames$1":I
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .local v13, "fqName":Ljava/lang/String;
    invoke-static {v13, v9, v1, v8, v1}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .end local v13    # "fqName":Ljava/lang/String;
    .end local v14    # "$i$a$-mapValues-ClassReference$Companion$simpleNames$1":I
    invoke-interface {v3, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1239
    .end local v11    # "element$iv$iv$iv":Ljava/lang/Object;
    :cond_4
    nop

    .line 388
    .end local v6    # "$this$associateByTo$iv$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$associateByTo":I
    nop

    .line 438
    .end local v3    # "destination$iv$iv":Ljava/util/Map;
    .end local v4    # "$this$mapValuesTo$iv$iv":Ljava/util/Map;
    .end local v5    # "$i$f$mapValuesTo":I
    nop

    .line 163
    .end local v0    # "$this$mapValues$iv":Ljava/util/Map;
    .end local v2    # "$i$f$mapValues":I
    sput-object v3, Lkotlin/jvm/internal/ClassReference;->simpleNames:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .param p1, "jClass"    # Ljava/lang/Class;

    const-string v0, "jClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/ClassReference;->jClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 91
    instance-of v0, p1, Lkotlin/jvm/internal/ClassReference;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lkotlin/reflect/KClass;

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getJClass()Ljava/lang/Class;
    .locals 1

    .line 10
    iget-object v0, p0, Lkotlin/jvm/internal/ClassReference;->jClass:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 94
    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getJClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Kotlin reflection is not available)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
