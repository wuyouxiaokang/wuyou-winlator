.class abstract synthetic Lcom/wuyouwin/core/GeneralComponents$1;
.super Ljava/lang/Object;
.source "GeneralComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/core/GeneralComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$winlator$core$GeneralComponents$InstallMode:[I

.field static final synthetic $SwitchMap$com$winlator$core$GeneralComponents$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 359
    invoke-static {}, Lcom/wuyouwin/core/GeneralComponents$InstallMode;->values()[Lcom/wuyouwin/core/GeneralComponents$InstallMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/wuyouwin/core/GeneralComponents$1;->$SwitchMap$com$winlator$core$GeneralComponents$InstallMode:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/wuyouwin/core/GeneralComponents$1;->$SwitchMap$com$winlator$core$GeneralComponents$InstallMode:[I

    sget-object v2, Lcom/wuyouwin/core/GeneralComponents$InstallMode;->DOWNLOAD:Lcom/wuyouwin/core/GeneralComponents$InstallMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/wuyouwin/core/GeneralComponents$1;->$SwitchMap$com$winlator$core$GeneralComponents$InstallMode:[I

    sget-object v3, Lcom/wuyouwin/core/GeneralComponents$InstallMode;->FILE:Lcom/wuyouwin/core/GeneralComponents$InstallMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/wuyouwin/core/GeneralComponents$1;->$SwitchMap$com$winlator$core$GeneralComponents$InstallMode:[I

    sget-object v4, Lcom/wuyouwin/core/GeneralComponents$InstallMode;->BOTH:Lcom/wuyouwin/core/GeneralComponents$InstallMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .line 38
    :goto_2
    invoke-static {}, Lcom/wuyouwin/core/GeneralComponents$Type;->values()[Lcom/wuyouwin/core/GeneralComponents$Type;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/wuyouwin/core/GeneralComponents$1;->$SwitchMap$com$winlator$core$GeneralComponents$Type:[I

    :try_start_3
    sget-object v3, Lcom/wuyouwin/core/GeneralComponents$1;->$SwitchMap$com$winlator$core$GeneralComponents$Type:[I

    sget-object v4, Lcom/wuyouwin/core/GeneralComponents$Type;->BOX64:Lcom/wuyouwin/core/GeneralComponents$Type;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lcom/wuyouwin/core/GeneralComponents$1;->$SwitchMap$com$winlator$core$GeneralComponents$Type:[I

    sget-object v3, Lcom/wuyouwin/core/GeneralComponents$Type;->TURNIP:Lcom/wuyouwin/core/GeneralComponents$Type;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Lcom/wuyouwin/core/GeneralComponents$1;->$SwitchMap$com$winlator$core$GeneralComponents$Type:[I

    sget-object v1, Lcom/wuyouwin/core/GeneralComponents$Type;->DXVK:Lcom/wuyouwin/core/GeneralComponents$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    :try_start_6
    sget-object v0, Lcom/wuyouwin/core/GeneralComponents$1;->$SwitchMap$com$winlator$core$GeneralComponents$Type:[I

    sget-object v1, Lcom/wuyouwin/core/GeneralComponents$Type;->VKD3D:Lcom/wuyouwin/core/GeneralComponents$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_6
    :try_start_7
    sget-object v0, Lcom/wuyouwin/core/GeneralComponents$1;->$SwitchMap$com$winlator$core$GeneralComponents$Type:[I

    sget-object v1, Lcom/wuyouwin/core/GeneralComponents$Type;->WINED3D:Lcom/wuyouwin/core/GeneralComponents$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    :goto_7
    :try_start_8
    sget-object v0, Lcom/wuyouwin/core/GeneralComponents$1;->$SwitchMap$com$winlator$core$GeneralComponents$Type:[I

    sget-object v1, Lcom/wuyouwin/core/GeneralComponents$Type;->SOUNDFONT:Lcom/wuyouwin/core/GeneralComponents$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    :goto_8
    :try_start_9
    sget-object v0, Lcom/wuyouwin/core/GeneralComponents$1;->$SwitchMap$com$winlator$core$GeneralComponents$Type:[I

    sget-object v1, Lcom/wuyouwin/core/GeneralComponents$Type;->ADRENOTOOLS_DRIVER:Lcom/wuyouwin/core/GeneralComponents$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    :goto_9
    return-void
.end method
