.class public abstract Lkotlin/jvm/internal/Reflection;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static final EMPTY_K_CLASS_ARRAY:[Lkotlin/reflect/KClass;

.field private static final factory:Lkotlin/jvm/internal/ReflectionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 27
    .local v1, "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/internal/ReflectionFactory;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 32
    .end local v1    # "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v0, "impl":Lkotlin/jvm/internal/ReflectionFactory;
    :goto_0
    goto :goto_5

    .end local v0    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    :catch_0
    move-exception v1

    .restart local v0    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    goto :goto_1

    .line 31
    .end local v0    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    :catch_1
    move-exception v1

    .restart local v0    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    goto :goto_2

    .line 30
    .end local v0    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    :catch_2
    move-exception v1

    .restart local v0    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    goto :goto_3

    .line 29
    .end local v0    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    :catch_3
    move-exception v1

    .restart local v0    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    goto :goto_4

    .line 32
    :goto_1
    nop

    .local v1, "e":Ljava/lang/IllegalAccessException;
    const/4 v0, 0x0

    goto :goto_5

    .line 31
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :goto_2
    nop

    .local v1, "e":Ljava/lang/InstantiationException;
    const/4 v0, 0x0

    .end local v1    # "e":Ljava/lang/InstantiationException;
    goto :goto_0

    .line 30
    :goto_3
    nop

    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const/4 v0, 0x0

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 29
    :goto_4
    nop

    .local v1, "e":Ljava/lang/ClassCastException;
    const/4 v0, 0x0

    .end local v1    # "e":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 34
    :goto_5
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_6

    :cond_0
    new-instance v1, Lkotlin/jvm/internal/ReflectionFactory;

    invoke-direct {v1}, Lkotlin/jvm/internal/ReflectionFactory;-><init>()V

    :goto_6
    sput-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 39
    .end local v0    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/reflect/KClass;

    sput-object v0, Lkotlin/jvm/internal/Reflection;->EMPTY_K_CLASS_ARRAY:[Lkotlin/reflect/KClass;

    return-void
.end method

.method public static getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 1
    .param p0, "javaClass"    # Ljava/lang/Class;

    .line 59
    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method public static getOrCreateKotlinPackage(Ljava/lang/Class;)Lkotlin/reflect/KDeclarationContainer;
    .locals 2
    .param p0, "javaClass"    # Ljava/lang/Class;

    .line 51
    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object v0

    return-object v0
.end method

.method public static property0(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;
    .locals 1
    .param p0, "p"    # Lkotlin/jvm/internal/PropertyReference0;

    .line 95
    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->property0(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;

    move-result-object v0

    return-object v0
.end method

.method public static renderLambdaToString(Lkotlin/jvm/internal/FunctionBase;)Ljava/lang/String;
    .locals 1
    .param p0, "lambda"    # Lkotlin/jvm/internal/FunctionBase;

    .line 83
    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->renderLambdaToString(Lkotlin/jvm/internal/FunctionBase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static renderLambdaToString(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;
    .locals 1
    .param p0, "lambda"    # Lkotlin/jvm/internal/Lambda;

    .line 78
    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->renderLambdaToString(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
