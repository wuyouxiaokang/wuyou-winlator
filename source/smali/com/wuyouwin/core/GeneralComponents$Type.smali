.class public final enum Lcom/wuyouwin/core/GeneralComponents$Type;
.super Ljava/lang/Enum;
.source "GeneralComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/core/GeneralComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wuyouwin/core/GeneralComponents$Type;

.field public static final enum ADRENOTOOLS_DRIVER:Lcom/wuyouwin/core/GeneralComponents$Type;

.field public static final enum BOX64:Lcom/wuyouwin/core/GeneralComponents$Type;

.field public static final enum DXVK:Lcom/wuyouwin/core/GeneralComponents$Type;

.field public static final enum SOUNDFONT:Lcom/wuyouwin/core/GeneralComponents$Type;

.field public static final enum TURNIP:Lcom/wuyouwin/core/GeneralComponents$Type;

.field public static final enum VKD3D:Lcom/wuyouwin/core/GeneralComponents$Type;

.field public static final enum WINED3D:Lcom/wuyouwin/core/GeneralComponents$Type;


# direct methods
.method private static synthetic $values()[Lcom/wuyouwin/core/GeneralComponents$Type;
    .locals 7

    .line 30
    sget-object v0, Lcom/wuyouwin/core/GeneralComponents$Type;->BOX64:Lcom/wuyouwin/core/GeneralComponents$Type;

    sget-object v1, Lcom/wuyouwin/core/GeneralComponents$Type;->TURNIP:Lcom/wuyouwin/core/GeneralComponents$Type;

    sget-object v2, Lcom/wuyouwin/core/GeneralComponents$Type;->DXVK:Lcom/wuyouwin/core/GeneralComponents$Type;

    sget-object v3, Lcom/wuyouwin/core/GeneralComponents$Type;->VKD3D:Lcom/wuyouwin/core/GeneralComponents$Type;

    sget-object v4, Lcom/wuyouwin/core/GeneralComponents$Type;->WINED3D:Lcom/wuyouwin/core/GeneralComponents$Type;

    sget-object v5, Lcom/wuyouwin/core/GeneralComponents$Type;->SOUNDFONT:Lcom/wuyouwin/core/GeneralComponents$Type;

    sget-object v6, Lcom/wuyouwin/core/GeneralComponents$Type;->ADRENOTOOLS_DRIVER:Lcom/wuyouwin/core/GeneralComponents$Type;

    filled-new-array/range {v0 .. v6}, [Lcom/wuyouwin/core/GeneralComponents$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lcom/wuyouwin/core/GeneralComponents$Type;

    const-string v1, "BOX64"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/core/GeneralComponents$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/core/GeneralComponents$Type;->BOX64:Lcom/wuyouwin/core/GeneralComponents$Type;

    new-instance v0, Lcom/wuyouwin/core/GeneralComponents$Type;

    const-string v1, "TURNIP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/core/GeneralComponents$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/core/GeneralComponents$Type;->TURNIP:Lcom/wuyouwin/core/GeneralComponents$Type;

    new-instance v0, Lcom/wuyouwin/core/GeneralComponents$Type;

    const-string v1, "DXVK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/core/GeneralComponents$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/core/GeneralComponents$Type;->DXVK:Lcom/wuyouwin/core/GeneralComponents$Type;

    new-instance v0, Lcom/wuyouwin/core/GeneralComponents$Type;

    const-string v1, "VKD3D"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/core/GeneralComponents$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/core/GeneralComponents$Type;->VKD3D:Lcom/wuyouwin/core/GeneralComponents$Type;

    new-instance v0, Lcom/wuyouwin/core/GeneralComponents$Type;

    const-string v1, "WINED3D"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/core/GeneralComponents$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/core/GeneralComponents$Type;->WINED3D:Lcom/wuyouwin/core/GeneralComponents$Type;

    new-instance v0, Lcom/wuyouwin/core/GeneralComponents$Type;

    const-string v1, "SOUNDFONT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/core/GeneralComponents$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/core/GeneralComponents$Type;->SOUNDFONT:Lcom/wuyouwin/core/GeneralComponents$Type;

    new-instance v0, Lcom/wuyouwin/core/GeneralComponents$Type;

    const-string v1, "ADRENOTOOLS_DRIVER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wuyouwin/core/GeneralComponents$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wuyouwin/core/GeneralComponents$Type;->ADRENOTOOLS_DRIVER:Lcom/wuyouwin/core/GeneralComponents$Type;

    .line 30
    invoke-static {}, Lcom/wuyouwin/core/GeneralComponents$Type;->$values()[Lcom/wuyouwin/core/GeneralComponents$Type;

    move-result-object v0

    sput-object v0, Lcom/wuyouwin/core/GeneralComponents$Type;->$VALUES:[Lcom/wuyouwin/core/GeneralComponents$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/wuyouwin/core/GeneralComponents$Type;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/core/GeneralComponents$Type;

    .line 30
    invoke-direct {p0}, Lcom/wuyouwin/core/GeneralComponents$Type;->lowerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/wuyouwin/core/GeneralComponents$Type;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/core/GeneralComponents$Type;

    .line 30
    invoke-direct {p0}, Lcom/wuyouwin/core/GeneralComponents$Type;->assetFolder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/wuyouwin/core/GeneralComponents$Type;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/core/GeneralComponents$Type;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/core/GeneralComponents$Type;->getSource(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/wuyouwin/core/GeneralComponents$Type;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/core/GeneralComponents$Type;

    .line 30
    invoke-direct {p0}, Lcom/wuyouwin/core/GeneralComponents$Type;->isVersioned()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/wuyouwin/core/GeneralComponents$Type;)Lcom/wuyouwin/core/GeneralComponents$InstallMode;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/core/GeneralComponents$Type;

    .line 30
    invoke-direct {p0}, Lcom/wuyouwin/core/GeneralComponents$Type;->getInstallMode()Lcom/wuyouwin/core/GeneralComponents$InstallMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/wuyouwin/core/GeneralComponents$Type;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/core/GeneralComponents$Type;

    .line 30
    invoke-direct {p0}, Lcom/wuyouwin/core/GeneralComponents$Type;->title()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private assetFolder()Ljava/lang/String;
    .locals 2

    .line 59
    sget-object v0, Lcom/wuyouwin/core/GeneralComponents$1;->$SwitchMap$com$winlator$core$GeneralComponents$Type:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 72
    const-string v0, ""

    return-object v0

    .line 69
    :pswitch_0
    const-string v0, "soundfont"

    return-object v0

    .line 67
    :pswitch_1
    const-string v0, "dxwrapper"

    return-object v0

    .line 63
    :pswitch_2
    const-string v0, "graphics_driver"

    return-object v0

    .line 61
    :pswitch_3
    const-string v0, "box64"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getInstallMode()Lcom/wuyouwin/core/GeneralComponents$InstallMode;
    .locals 1

    .line 105
    sget-object v0, Lcom/wuyouwin/core/GeneralComponents$Type;->SOUNDFONT:Lcom/wuyouwin/core/GeneralComponents$Type;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/wuyouwin/core/GeneralComponents$Type;->ADRENOTOOLS_DRIVER:Lcom/wuyouwin/core/GeneralComponents$Type;

    if-ne p0, v0, :cond_1

    :cond_0
    goto :goto_1

    .line 108
    :cond_1
    sget-object v0, Lcom/wuyouwin/core/GeneralComponents$Type;->WINED3D:Lcom/wuyouwin/core/GeneralComponents$Type;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/wuyouwin/core/GeneralComponents$Type;->DXVK:Lcom/wuyouwin/core/GeneralComponents$Type;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/wuyouwin/core/GeneralComponents$Type;->VKD3D:Lcom/wuyouwin/core/GeneralComponents$Type;

    if-ne p0, v0, :cond_3

    :cond_2
    goto :goto_0

    .line 111
    :cond_3
    sget-object v0, Lcom/wuyouwin/core/GeneralComponents$InstallMode;->DOWNLOAD:Lcom/wuyouwin/core/GeneralComponents$InstallMode;

    .local v0, "installMode":Lcom/wuyouwin/core/GeneralComponents$InstallMode;
    goto :goto_2

    .line 109
    .end local v0    # "installMode":Lcom/wuyouwin/core/GeneralComponents$InstallMode;
    :goto_0
    sget-object v0, Lcom/wuyouwin/core/GeneralComponents$InstallMode;->BOTH:Lcom/wuyouwin/core/GeneralComponents$InstallMode;

    .restart local v0    # "installMode":Lcom/wuyouwin/core/GeneralComponents$InstallMode;
    goto :goto_2

    .line 106
    .end local v0    # "installMode":Lcom/wuyouwin/core/GeneralComponents$InstallMode;
    :goto_1
    sget-object v0, Lcom/wuyouwin/core/GeneralComponents$InstallMode;->FILE:Lcom/wuyouwin/core/GeneralComponents$InstallMode;

    .line 112
    .restart local v0    # "installMode":Lcom/wuyouwin/core/GeneralComponents$InstallMode;
    :goto_2
    return-object v0
.end method

.method private getSource(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "identifier"    # Ljava/lang/String;

    .line 76
    invoke-static {p0, p1}, Lcom/wuyouwin/core/GeneralComponents;->getComponentDir(Lcom/wuyouwin/core/GeneralComponents$Type;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 77
    .local v0, "componentDir":Ljava/io/File;
    sget-object v1, Lcom/wuyouwin/core/GeneralComponents$1;->$SwitchMap$com$winlator$core$GeneralComponents$Type:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 83
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/wuyouwin/core/GeneralComponents$Type;->lowerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tzst"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 81
    :pswitch_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 79
    :pswitch_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".sf2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isVersioned()Z
    .locals 1

    .line 116
    sget-object v0, Lcom/wuyouwin/core/GeneralComponents$Type;->BOX64:Lcom/wuyouwin/core/GeneralComponents$Type;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/wuyouwin/core/GeneralComponents$Type;->TURNIP:Lcom/wuyouwin/core/GeneralComponents$Type;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/wuyouwin/core/GeneralComponents$Type;->DXVK:Lcom/wuyouwin/core/GeneralComponents$Type;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/wuyouwin/core/GeneralComponents$Type;->VKD3D:Lcom/wuyouwin/core/GeneralComponents$Type;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/wuyouwin/core/GeneralComponents$Type;->WINED3D:Lcom/wuyouwin/core/GeneralComponents$Type;

    if-ne p0, v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private lowerName()Ljava/lang/String;
    .locals 2

    .line 34
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private title()Ljava/lang/String;
    .locals 2

    .line 38
    sget-object v0, Lcom/wuyouwin/core/GeneralComponents$1;->$SwitchMap$com$winlator$core$GeneralComponents$Type:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 55
    const-string v0, ""

    return-object v0

    .line 52
    :pswitch_0
    const-string v0, "Adrenotools Driver"

    return-object v0

    .line 50
    :pswitch_1
    const-string v0, "SoundFont"

    return-object v0

    .line 48
    :pswitch_2
    const-string v0, "WineD3D"

    return-object v0

    .line 46
    :pswitch_3
    const-string v0, "VKD3D"

    return-object v0

    .line 44
    :pswitch_4
    const-string v0, "DXVK"

    return-object v0

    .line 42
    :pswitch_5
    const-string v0, "Turnip"

    return-object v0

    .line 40
    :pswitch_6
    const-string v0, "Box64"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wuyouwin/core/GeneralComponents$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Lcom/wuyouwin/core/GeneralComponents$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/core/GeneralComponents$Type;

    return-object v0
.end method

.method public static values()[Lcom/wuyouwin/core/GeneralComponents$Type;
    .locals 1

    .line 30
    sget-object v0, Lcom/wuyouwin/core/GeneralComponents$Type;->$VALUES:[Lcom/wuyouwin/core/GeneralComponents$Type;

    invoke-virtual {v0}, [Lcom/wuyouwin/core/GeneralComponents$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wuyouwin/core/GeneralComponents$Type;

    return-object v0
.end method


# virtual methods
.method public getDestination(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    invoke-static {p1}, Lcom/wuyouwin/xenvironment/RootFS;->find(Landroid/content/Context;)Lcom/wuyouwin/xenvironment/RootFS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wuyouwin/xenvironment/RootFS;->getRootDir()Ljava/io/File;

    move-result-object v0

    .line 89
    .local v0, "rootDir":Ljava/io/File;
    sget-object v1, Lcom/wuyouwin/core/GeneralComponents$1;->$SwitchMap$com$winlator$core$GeneralComponents$Type:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 99
    return-object v0

    .line 95
    :pswitch_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "soundfont"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    .local v1, "destination":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 97
    :cond_0
    return-object v1

    .line 93
    .end local v1    # "destination":Ljava/io/File;
    :pswitch_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/home/xuser/.wine/drive_c/windows"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
