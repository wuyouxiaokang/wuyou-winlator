.class public abstract Lcom/wuyouwin/core/LocaleHelper;
.super Ljava/lang/Object;
.source "LocaleHelper.java"


# static fields
.field private static final appLocales:[Ljava/lang/String;

.field private static final supportedLocales:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 13
    const-string v0, "pt_BR"

    const-string v1, "ru_RU"

    const-string v2, "en_US"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/wuyouwin/core/LocaleHelper;->supportedLocales:[Ljava/lang/String;

    const-string v4, "zh_CN"

    const-string v5, "zh_TW"

    filled-new-array {v2, v0, v1, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/wuyouwin/core/LocaleHelper;->appLocales:[Ljava/lang/String;

    return-void
.end method

.method public static getLocaleIndex(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, "configuration":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .local v1, "localeList":Landroid/os/LocaleList;
    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "locale":Ljava/lang/String;
    :goto_0
    const-string v5, "zh"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "zh_TW"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "zh_HK"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "zh_Hant"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x3

    return v5

    :cond_1
    const/4 v5, 0x4

    return v5

    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    sget-object v5, Lcom/wuyouwin/core/LocaleHelper;->appLocales:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_4

    sget-object v5, Lcom/wuyouwin/core/LocaleHelper;->appLocales:[Ljava/lang/String;

    aget-object v5, v5, v4

    const/4 v6, 0x2

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    return v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return v3
.end method

.method public static setEnvVars(Lcom/wuyouwin/core/EnvVars;)V
    .locals 9
    .param p0, "envVars"    # Lcom/wuyouwin/core/EnvVars;

    .line 41
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 42
    .local v0, "locale":Ljava/util/Locale;
    sget-object v1, Lcom/wuyouwin/core/LocaleHelper;->appLocales:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "LC_ALL"

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 43
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v6, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lcom/wuyouwin/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/EnvVars;

    .line 45
    return-void

    .line 43
    :cond_0
    nop

    .line 42
    .end local v6    # "name":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 49
    :cond_1
    const-string v1, "en_US.UTF-8"

    invoke-virtual {p0, v5, v1}, Lcom/wuyouwin/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/EnvVars;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "zh_CN.UTF-8"

    goto :goto_1

    :cond_2
    const-string v1, "zh_TW.UTF-8"

    :goto_1
    invoke-virtual {p0, v5, v1}, Lcom/wuyouwin/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/EnvVars;

    .line 50
    :cond_3
    return-void
.end method

.method public static setSystemLocale(Landroid/content/Context;)Landroid/content/Context;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 27
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 28
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "lc_index"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 30
    .local v1, "index":I
    if-ltz v1, :cond_0

    sget-object v2, Lcom/wuyouwin/core/LocaleHelper;->appLocales:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    :cond_0
    goto :goto_0

    .line 31
    :cond_1
    new-instance v2, Ljava/util/Locale;

    sget-object v3, Lcom/wuyouwin/core/LocaleHelper;->appLocales:[Ljava/lang/String;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .local v2, "locale":Ljava/util/Locale;
    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 35
    .local v3, "configuration":Landroid/content/res/Configuration;
    invoke-virtual {v3, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 36
    invoke-virtual {v3, v2}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 37
    invoke-virtual {p0, v3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v4

    return-object v4

    .line 30
    .end local v2    # "locale":Ljava/util/Locale;
    .end local v3    # "configuration":Landroid/content/res/Configuration;
    :goto_0
    return-object p0
.end method
