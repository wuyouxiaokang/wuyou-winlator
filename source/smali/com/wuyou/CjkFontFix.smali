.class public final Lcom/wuyou/CjkFontFix;
.super Ljava/lang/Object;
.source "CjkFontFix.java"


# static fields
.field private static final STAMP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "wuyou-cjk-6"

    sput-object v0, Lcom/wuyou/CjkFontFix;->STAMP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/content/Context;Lcom/wuyouwin/container/Container;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/wuyouwin/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, ".wine/drive_c/windows/Fonts"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, ".wine/drive_c/windows/Fonts/.wl-fontfix"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v3, Lcom/wuyou/CjkFontFix;->STAMP:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2}, Lcom/wuyouwin/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0, v1}, Lcom/wuyou/CjkFontFix;->installFonts(Landroid/content/Context;Ljava/io/File;)Z

    move-result v7

    new-instance v4, Ljava/io/File;

    const-string v5, ".wine/system.reg"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/wuyou/CjkFontFix;->patchReg(Ljava/io/File;Z)Z

    move-result v4

    new-instance v5, Ljava/io/File;

    const-string v6, ".wine/user.reg"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/wuyou/CjkFontFix;->patchReg(Ljava/io/File;Z)Z

    move-result v5

    if-eqz v4, :cond_3

    if-nez v5, :cond_3

    if-eqz v7, :cond_3

    invoke-static {v2, v3}, Lcom/wuyouwin/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static installFonts(Landroid/content/Context;Ljava/io/File;)Z
    .locals 9

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "wqy-microhei.ttf"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "msyh.ttf"

    aput-object v2, v0, v1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/32 v7, 0x100000

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fonts/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v5, v6}, Lcom/wuyouwin/core/FileUtils;->copy(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static patchReg(Ljava/io/File;Z)Z
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Lcom/wuyouwin/core/WineRegistryEditor;

    invoke-direct {v0, p0}, Lcom/wuyouwin/core/WineRegistryEditor;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-static {v0}, Lcom/wuyou/CjkFontFix;->putFonts(Lcom/wuyouwin/core/WineRegistryEditor;)V

    invoke-static {v0}, Lcom/wuyou/CjkFontFix;->putSubstitutes(Lcom/wuyouwin/core/WineRegistryEditor;)V

    invoke-static {v0}, Lcom/wuyou/CjkFontFix;->putSystemLinks(Lcom/wuyouwin/core/WineRegistryEditor;)V

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/wuyou/CjkFontFix;->patchThemeFonts(Lcom/wuyouwin/core/WineRegistryEditor;)V

    :cond_1
    invoke-static {v0}, Lcom/wuyou/CjkFontFix;->patchReplacements(Lcom/wuyouwin/core/WineRegistryEditor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/wuyouwin/core/WineRegistryEditor;->close()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/wuyouwin/core/WineRegistryEditor;->close()V

    throw v1
.end method

.method private static patchReplacements(Lcom/wuyouwin/core/WineRegistryEditor;)V
    .locals 8

    const-string v0, "Software\\Wine\\Fonts\\Replacements"

    const-string v1, "WenQuanYi Micro Hei"

    const/16 v2, 0xd

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Microsoft YaHei"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Microsoft YaHei UI"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "Microsoft YaHei Light"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "Microsoft JhengHei"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "SimSun"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "NSimSun"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "SimHei"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "KaiTi"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "FangSong"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "MS Shell Dlg"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "MS Shell Dlg 2"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "Tahoma"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "Microsoft Sans Serif"

    aput-object v5, v3, v4

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    invoke-virtual {p0, v0, v6, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static patchThemeFonts(Lcom/wuyouwin/core/WineRegistryEditor;)V
    .locals 3

    const-string v0, "Control Panel\\Desktop\\WindowMetrics"

    const-string v1, "CaptionFont"

    const-string v2, "f3ffffff00000000000000000000000090010000000000010000000041007200690061006c00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {p0, v0, v1, v2}, Lcom/wuyouwin/core/WineRegistryEditor;->setHexValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IconFont"

    const-string v2, "f5ffffff00000000000000000000000090010000000000010000000041007200690061006c00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {p0, v0, v1, v2}, Lcom/wuyouwin/core/WineRegistryEditor;->setHexValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MenuFont"

    const-string v2, "f5ffffff00000000000000000000000090010000000000010000000041007200690061006c00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {p0, v0, v1, v2}, Lcom/wuyouwin/core/WineRegistryEditor;->setHexValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MessageFont"

    const-string v2, "f5ffffff00000000000000000000000090010000000000010000000041007200690061006c00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {p0, v0, v1, v2}, Lcom/wuyouwin/core/WineRegistryEditor;->setHexValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SmCaptionFont"

    const-string v2, "f5ffffff00000000000000000000000090010000000000010000000041007200690061006c00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {p0, v0, v1, v2}, Lcom/wuyouwin/core/WineRegistryEditor;->setHexValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "StatusFont"

    const-string v2, "f5ffffff00000000000000000000000090010000000000010000000041007200690061006c00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {p0, v0, v1, v2}, Lcom/wuyouwin/core/WineRegistryEditor;->setHexValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IconTitleFont"

    const-string v2, "f5ffffff00000000000000000000000090010000000000010000000041007200690061006c00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {p0, v0, v1, v2}, Lcom/wuyouwin/core/WineRegistryEditor;->setHexValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static putFonts(Lcom/wuyouwin/core/WineRegistryEditor;)V
    .locals 4

    const-string v0, "C:\\windows\\Fonts\\wqy-microhei.ttf"

    const-string v1, "C:\\windows\\Fonts\\msyh.ttf"

    const-string v2, "Software\\Microsoft\\Windows NT\\CurrentVersion\\Fonts"

    const-string v3, "WenQuanYi Micro Hei (TrueType)"

    invoke-virtual {p0, v2, v3, v0}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "SimSun (TrueType)"

    invoke-virtual {p0, v2, v3, v0}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "NSimSun (TrueType)"

    invoke-virtual {p0, v2, v3, v0}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "SimHei (TrueType)"

    invoke-virtual {p0, v2, v3, v0}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "KaiTi (TrueType)"

    invoke-virtual {p0, v2, v3, v0}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "FangSong (TrueType)"

    invoke-virtual {p0, v2, v3, v0}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Microsoft YaHei (TrueType)"

    invoke-virtual {p0, v2, v3, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Microsoft YaHei UI (TrueType)"

    invoke-virtual {p0, v2, v3, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Microsoft JhengHei (TrueType)"

    invoke-virtual {p0, v2, v3, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Software\\Microsoft\\Windows\\CurrentVersion\\Fonts"

    const-string v3, "WenQuanYi Micro Hei (TrueType)"

    invoke-virtual {p0, v2, v3, v0}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "SimSun (TrueType)"

    invoke-virtual {p0, v2, v3, v0}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "NSimSun (TrueType)"

    invoke-virtual {p0, v2, v3, v0}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "SimHei (TrueType)"

    invoke-virtual {p0, v2, v3, v0}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Microsoft YaHei (TrueType)"

    invoke-virtual {p0, v2, v3, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Microsoft YaHei UI (TrueType)"

    invoke-virtual {p0, v2, v3, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static putSubstitutes(Lcom/wuyouwin/core/WineRegistryEditor;)V
    .locals 3

    const-string v0, "Software\\Microsoft\\Windows NT\\CurrentVersion\\FontSubstitutes"

    const-string v1, "WenQuanYi Micro Hei"

    const-string v2, "SimSun"

    invoke-virtual {p0, v0, v2, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "NSimSun"

    invoke-virtual {p0, v0, v2, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SimHei"

    invoke-virtual {p0, v0, v2, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "KaiTi"

    invoke-virtual {p0, v0, v2, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "FangSong"

    invoke-virtual {p0, v0, v2, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Microsoft YaHei"

    invoke-virtual {p0, v0, v2, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Microsoft YaHei UI"

    invoke-virtual {p0, v0, v2, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Microsoft YaHei Light"

    invoke-virtual {p0, v0, v2, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Microsoft JhengHei"

    invoke-virtual {p0, v0, v2, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static putSystemLinks(Lcom/wuyouwin/core/WineRegistryEditor;)V
    .locals 3

    const-string v0, "Software\\Microsoft\\Windows NT\\CurrentVersion\\FontLink\\SystemLink"

    const-string v1, "wqy-microhei.ttf,WenQuanYi Micro Hei"

    const-string v2, "Tahoma"

    invoke-virtual {p0, v0, v2, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MS Shell Dlg"

    invoke-virtual {p0, v0, v2, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MS Shell Dlg 2"

    invoke-virtual {p0, v0, v2, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Microsoft Sans Serif"

    invoke-virtual {p0, v0, v2, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Segoe UI"

    invoke-virtual {p0, v0, v2, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Arial"

    invoke-virtual {p0, v0, v2, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "System"

    invoke-virtual {p0, v0, v2, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
