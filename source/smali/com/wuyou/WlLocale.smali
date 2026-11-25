.class public final Lcom/wuyou/WlLocale;
.super Ljava/lang/Object;
.source "WlLocale.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static force(Lcom/wuyouwin/core/EnvVars;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "zh_CN.UTF-8"

    const-string v1, "LC_ALL"

    invoke-virtual {p0, v1, v0}, Lcom/wuyouwin/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/EnvVars;

    const-string v1, "LANG"

    invoke-virtual {p0, v1, v0}, Lcom/wuyouwin/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/EnvVars;

    const-string v1, "LANGUAGE"

    const-string v0, "zh_CN"

    invoke-virtual {p0, v1, v0}, Lcom/wuyouwin/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/EnvVars;

    return-void
.end method
