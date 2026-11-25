# ============================================================================
# 已修改 (MODIFIED) - 无忧win虚拟机 / Wuyou Winlator Mod
# 修改者: wuyouxiaokang  <3266636647@qq.com>
# 修改日期: 2026-11-25
# 本项目: https://github.com/wuyouxiaokang/wuyou-winlator
#
# 本文件源自 Winlator (https://github.com/brunodev85/winlator)
# 原始版权: Copyright (c) BrunoSX / brunodev85
# 原始许可证: GNU Lesser General Public License v2.1 (见 LICENSE)
#
# 修改内容: 见仓库 CHANGES.md 中对应条目。主要涉及虚拟键盘接入、中文适配、
#           UI 增强等，均以 LGPL-2.1 同样条款开放。
# ============================================================================
.class public Lcom/winlator/XServerDisplayActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "XServerDisplayActivity.java"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;


# instance fields
.field private audioDriver:Ljava/lang/String;

.field private audioDriverConfig:Lcom/winlator/core/KeyValueSet;

.field private capturePointerOnExternalMouse:Z

.field private clipboardManager:Landroid/content/ClipboardManager;

.field private container:Lcom/winlator/container/Container;

.field private debugDialog:Lcom/winlator/contentdialog/DebugDialog;

.field private drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private dxwrapper:Ljava/lang/String;

.field private dxwrapperConfig:[Lcom/winlator/core/KeyValueSet;

.field private editInputControlsCallback:Ljava/lang/Runnable;

.field private final envVars:Lcom/winlator/core/EnvVars;

.field private environment:Lcom/winlator/xenvironment/XEnvironment;

.field private frameRating:Lcom/winlator/widget/FrameRating;

.field public frameRatingWindowId:I

.field private globalCursorSpeed:F

.field private graphicsDriver:[Ljava/lang/String;

.field private graphicsDriverConfig:[Lcom/winlator/core/KeyValueSet;

.field private inputControlsManager:Lcom/winlator/inputcontrols/InputControlsManager;

.field private inputControlsView:Lcom/winlator/widget/InputControlsView;

.field private wlHiddenInput:Landroid/widget/EditText;

.field private wlKbButton:Landroid/widget/TextView;

.field private magnifierView:Lcom/winlator/widget/MagnifierView;

.field private overrideEnvVars:Lcom/winlator/core/EnvVars;

.field private preferences:Landroid/content/SharedPreferences;

.field private rootFS:Lcom/winlator/xenvironment/RootFS;

.field private screenEffectProfile:Ljava/lang/String;

.field private screenInfo:Lcom/winlator/xserver/ScreenInfo;

.field private shortcut:Lcom/winlator/container/Shortcut;

.field private touchpadView:Lcom/winlator/widget/TouchpadView;

.field private win32AppWorkarounds:Lcom/winlator/core/Win32AppWorkarounds;

.field private final winHandler:Lcom/winlator/winhandler/WinHandler;

.field private wincomponents:Ljava/lang/String;

.field private wineInfo:Lcom/winlator/core/WineInfo;

.field private xServer:Lcom/winlator/xserver/XServer;

.field private xServerView:Lcom/winlator/widget/XServerView;


# direct methods
.method public static synthetic $r8$lambda$69LCCQrR9q7Fenj0CCUtqyQzp8A(Lcom/winlator/XServerDisplayActivity;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0

    .line 0
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/winlator/XServerDisplayActivity;->lambda$showInputControlsDialog$10(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Spinner;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7cjbKYT-AeN0E2c9eYC6syw0avM(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/winlator/XServerDisplayActivity;->lambda$onCreate$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FnxYuPyRXzqjwlPcgFoPyc0lVNI(Lcom/winlator/XServerDisplayActivity;Landroid/widget/Spinner;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/XServerDisplayActivity;->lambda$showInputControlsDialog$7(Landroid/widget/Spinner;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LBeqVHYwV8YXa_109GRyqoSYuus(Lcom/winlator/XServerDisplayActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/winlator/XServerDisplayActivity;->lambda$setupUI$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$LH3yEreB5z7uR85oxDbO9YxNYfo(Lcom/winlator/XServerDisplayActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/XServerDisplayActivity;->lambda$showInputControlsDialog$8(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RYGA-C_15AUrldPnHocR4c_cLhU([Z[ZLjava/io/File;J)Ljava/io/File;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/winlator/XServerDisplayActivity;->lambda$extractDXWrapperFiles$11([Z[ZLjava/io/File;J)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aB9ebUMK789M9GPTYnOyZeDpg90(Lcom/winlator/XServerDisplayActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/winlator/XServerDisplayActivity;->lambda$onCreate$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$bXCaazlHBi_QaR_zT64aqmm2kQ4(Lcom/winlator/XServerDisplayActivity;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/XServerDisplayActivity;->lambda$setupXEnvironment$5(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$falVF1nzeyhTYLvW0Cok7Q9W52w(Lcom/winlator/XServerDisplayActivity;Lcom/winlator/renderer/GLRenderer;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/XServerDisplayActivity;->lambda$onNavigationItemSelected$3(Lcom/winlator/renderer/GLRenderer;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k29yli_99S6R-tjiWvc22R5EyiE(Lcom/winlator/XServerDisplayActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/winlator/XServerDisplayActivity;->lambda$changeFrameRatingVisibility$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$mgIyCv8MHoFoN56jGdiDomnVzxA(Lcom/winlator/XServerDisplayActivity;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/XServerDisplayActivity;->lambda$onNavigationItemSelected$4(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oEYyRkPrYEsCkBYi0LrLqo-qh1w(Lcom/winlator/XServerDisplayActivity;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/XServerDisplayActivity;->lambda$onCreate$1(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$weOseK5zIH7LFuVNn3b8lK5bBVo(Lcom/winlator/XServerDisplayActivity;Landroid/widget/Spinner;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/XServerDisplayActivity;->lambda$showInputControlsDialog$9(Landroid/widget/Spinner;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yMZnIPrQHXcL7SGbetPtPc4FtM0(Ljava/io/File;J)Ljava/io/File;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/winlator/XServerDisplayActivity;->lambda$extractWinComponentFiles$12(Ljava/io/File;J)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 105
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 118
    const-string v0, "vortek"

    const-string v1, "gladio"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/XServerDisplayActivity;->graphicsDriver:[Ljava/lang/String;

    .line 119
    const-string v0, "alsa"

    iput-object v0, p0, Lcom/winlator/XServerDisplayActivity;->audioDriver:Ljava/lang/String;

    .line 120
    const-string v0, "dxvk"

    iput-object v0, p0, Lcom/winlator/XServerDisplayActivity;->dxwrapper:Ljava/lang/String;

    .line 121
    new-instance v0, Lcom/winlator/xserver/ScreenInfo;

    const-string v1, "1280x720"

    invoke-direct {v0, v1}, Lcom/winlator/xserver/ScreenInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/winlator/XServerDisplayActivity;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    .line 123
    new-instance v0, Lcom/winlator/core/KeyValueSet;

    invoke-direct {v0}, Lcom/winlator/core/KeyValueSet;-><init>()V

    new-instance v1, Lcom/winlator/core/KeyValueSet;

    invoke-direct {v1}, Lcom/winlator/core/KeyValueSet;-><init>()V

    filled-new-array {v0, v1}, [Lcom/winlator/core/KeyValueSet;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/XServerDisplayActivity;->graphicsDriverConfig:[Lcom/winlator/core/KeyValueSet;

    .line 127
    new-instance v0, Lcom/winlator/core/EnvVars;

    invoke-direct {v0}, Lcom/winlator/core/EnvVars;-><init>()V

    iput-object v0, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    .line 131
    new-instance v0, Lcom/winlator/winhandler/WinHandler;

    invoke-direct {v0, p0}, Lcom/winlator/winhandler/WinHandler;-><init>(Lcom/winlator/XServerDisplayActivity;)V

    iput-object v0, p0, Lcom/winlator/XServerDisplayActivity;->winHandler:Lcom/winlator/winhandler/WinHandler;

    .line 132
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/winlator/XServerDisplayActivity;->globalCursorSpeed:F

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/XServerDisplayActivity;->capturePointerOnExternalMouse:Z

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/winlator/XServerDisplayActivity;->frameRatingWindowId:I

    return-void
.end method

.method static synthetic access$000(Lcom/winlator/XServerDisplayActivity;)Lcom/winlator/widget/FrameRating;
    .locals 1
    .param p0, "x0"    # Lcom/winlator/XServerDisplayActivity;

    .line 105
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->frameRating:Lcom/winlator/widget/FrameRating;

    return-object v0
.end method

.method static synthetic access$100(Lcom/winlator/XServerDisplayActivity;)Lcom/winlator/widget/XServerView;
    .locals 1
    .param p0, "x0"    # Lcom/winlator/XServerDisplayActivity;

    .line 105
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->xServerView:Lcom/winlator/widget/XServerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/winlator/XServerDisplayActivity;)Lcom/winlator/core/Win32AppWorkarounds;
    .locals 1
    .param p0, "x0"    # Lcom/winlator/XServerDisplayActivity;

    .line 105
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->win32AppWorkarounds:Lcom/winlator/core/Win32AppWorkarounds;

    return-object v0
.end method

.method private applyGeneralPatches(Lcom/winlator/container/Container;)V
    .locals 5
    .param p1, "container"    # Lcom/winlator/container/Container;

    .line 1072
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->rootFS:Lcom/winlator/xenvironment/RootFS;

    invoke-virtual {v0}, Lcom/winlator/xenvironment/RootFS;->getRootDir()Ljava/io/File;

    move-result-object v0

    .line 1073
    .local v0, "rootDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/opt/apps"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/winlator/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 1074
    sget-object v1, Lcom/winlator/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/core/TarCompressorUtils$Type;

    const-string v2, "rootfs_patches.tzst"

    invoke-static {v1, p0, v2, v0}, Lcom/winlator/core/TarCompressorUtils;->extract(Lcom/winlator/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    .line 1075
    sget-object v1, Lcom/winlator/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/core/TarCompressorUtils$Type;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "pulseaudio"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "pulseaudio.tzst"

    invoke-static {v1, p0, v3, v2}, Lcom/winlator/core/TarCompressorUtils;->extract(Lcom/winlator/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    .line 1076
    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->wineInfo:Lcom/winlator/core/WineInfo;

    invoke-static {p0, v1}, Lcom/winlator/core/WineUtils;->applySystemTweaks(Landroid/content/Context;Lcom/winlator/core/WineInfo;)V

    .line 1077
    const-string v1, "dxwrapper"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/winlator/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1078
    const-string v1, "desktopTheme"

    invoke-virtual {p1, v1, v2}, Lcom/winlator/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1079
    invoke-static {p0}, Lcom/winlator/SettingsFragment;->resetPreferenceVersions(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 1080
    return-void
.end method

.method private changeWineAudioDriver()V
    .locals 8

    .line 1055
    const-string v0, "alsa"

    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->audioDriver:Ljava/lang/String;

    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    const-string v3, "audioDriver"

    invoke-virtual {v2, v3}, Lcom/winlator/container/Container;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1056
    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->rootFS:Lcom/winlator/xenvironment/RootFS;

    invoke-virtual {v1}, Lcom/winlator/xenvironment/RootFS;->getRootDir()Ljava/io/File;

    move-result-object v1

    .line 1057
    .local v1, "rootDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v4, "/home/xuser/.wine/user.reg"

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1058
    .local v2, "userRegFile":Ljava/io/File;
    new-instance v4, Lcom/winlator/core/WineRegistryEditor;

    invoke-direct {v4, v2}, Lcom/winlator/core/WineRegistryEditor;-><init>(Ljava/io/File;)V

    .line 1059
    .local v4, "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    :try_start_0
    iget-object v5, p0, Lcom/winlator/XServerDisplayActivity;->audioDriver:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "Audio"

    const-string v7, "Software\\Wine\\Drivers"

    if-eqz v5, :cond_0

    .line 1060
    :try_start_1
    invoke-virtual {v4, v7, v6, v0}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1058
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->audioDriver:Ljava/lang/String;

    const-string v5, "pulseaudio"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1063
    const-string v0, "pulse"

    invoke-virtual {v4, v7, v6, v0}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1065
    :cond_1
    :goto_0
    invoke-virtual {v4}, Lcom/winlator/core/WineRegistryEditor;->close()V

    .line 1066
    .end local v4    # "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    iget-object v4, p0, Lcom/winlator/XServerDisplayActivity;->audioDriver:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/winlator/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1067
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v0}, Lcom/winlator/container/Container;->saveData()V

    goto :goto_3

    .line 1058
    .restart local v4    # "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Lcom/winlator/core/WineRegistryEditor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0

    .line 1069
    .end local v1    # "rootDir":Ljava/io/File;
    .end local v2    # "userRegFile":Ljava/io/File;
    .end local v4    # "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    :cond_2
    :goto_3
    return-void
.end method

.method private exit()V
    .locals 4

    .line 427
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->winHandler:Lcom/winlator/winhandler/WinHandler;

    invoke-virtual {v0}, Lcom/winlator/winhandler/WinHandler;->stop()V

    .line 428
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->environment:Lcom/winlator/xenvironment/XEnvironment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->environment:Lcom/winlator/xenvironment/XEnvironment;

    invoke-virtual {v0}, Lcom/winlator/xenvironment/XEnvironment;->stopEnvironmentComponents()V

    .line 430
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 431
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "exec_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    new-instance v2, Lcom/winlator/core/AppUtils$RestartApplicationOptions;

    invoke-direct {v2}, Lcom/winlator/core/AppUtils$RestartApplicationOptions;-><init>()V

    .line 433
    .local v2, "options":Lcom/winlator/core/AppUtils$RestartApplicationOptions;
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    iget v3, v3, Lcom/winlator/container/Container;->id:I

    iput v3, v2, Lcom/winlator/core/AppUtils$RestartApplicationOptions;->containerId:I

    .line 434
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/winlator/core/FileUtils;->getDirname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/winlator/core/AppUtils$RestartApplicationOptions;->startPath:Ljava/lang/String;

    .line 435
    invoke-static {p0, v2}, Lcom/winlator/core/AppUtils;->restartApplication(Landroid/content/Context;Lcom/winlator/core/AppUtils$RestartApplicationOptions;)V

    .line 436
    .end local v2    # "options":Lcom/winlator/core/AppUtils$RestartApplicationOptions;
    goto :goto_0

    .line 437
    :cond_1
    invoke-static {p0}, Lcom/winlator/core/AppUtils;->restartApplication(Landroid/content/Context;)V

    .line 438
    :goto_0
    invoke-static {p0}, Lcom/winlator/services/ForegroundService;->stopSession(Landroid/content/Context;)V

    .line 439
    return-void
.end method

.method private extractDXWrapperFiles()Z
    .locals 25

    .line 805
    move-object/from16 v0, p0

    const/4 v1, 0x1

    const-string v2, ""

    .line 806
    .local v2, "cacheId":Ljava/lang/String;
    iget-object v3, v0, Lcom/winlator/XServerDisplayActivity;->dxwrapper:Ljava/lang/String;

    const-string v4, "dxvk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "wined3d"

    const-string v6, "-"

    const-string v7, "10.10"

    const-string v8, "version"

    const/4 v9, 0x0

    if-eqz v3, :cond_0

    .line 807
    iget-object v3, v0, Lcom/winlator/XServerDisplayActivity;->dxwrapperConfig:[Lcom/winlator/core/KeyValueSet;

    aget-object v3, v3, v9

    iget-object v10, v0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    invoke-static {v0, v3, v10}, Lcom/winlator/contentdialog/DXVKConfigDialog;->setEnvVars(Landroid/content/Context;Lcom/winlator/core/KeyValueSet;Lcom/winlator/core/EnvVars;)V

    .line 808
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/winlator/XServerDisplayActivity;->dxwrapper:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/winlator/XServerDisplayActivity;->dxwrapperConfig:[Lcom/winlator/core/KeyValueSet;

    aget-object v10, v10, v9

    iget-object v11, v0, Lcom/winlator/XServerDisplayActivity;->graphicsDriver:[Ljava/lang/String;

    aget-object v11, v11, v9

    invoke-static {v11}, Lcom/winlator/core/DefaultVersion;->DXVK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 810
    :cond_0
    iget-object v3, v0, Lcom/winlator/XServerDisplayActivity;->dxwrapper:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 811
    iget-object v3, v0, Lcom/winlator/XServerDisplayActivity;->dxwrapperConfig:[Lcom/winlator/core/KeyValueSet;

    aget-object v3, v3, v9

    iget-object v10, v0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    invoke-static {v3, v10}, Lcom/winlator/contentdialog/WineD3DConfigDialog;->setEnvVars(Lcom/winlator/core/KeyValueSet;Lcom/winlator/core/EnvVars;)V

    .line 812
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/winlator/XServerDisplayActivity;->dxwrapper:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/winlator/XServerDisplayActivity;->dxwrapperConfig:[Lcom/winlator/core/KeyValueSet;

    aget-object v10, v10, v9

    invoke-virtual {v10, v8, v7}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 815
    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/winlator/XServerDisplayActivity;->dxwrapperConfig:[Lcom/winlator/core/KeyValueSet;

    aget-object v3, v3, v9

    const-string v10, "ddrawWrapper"

    invoke-virtual {v3, v10, v5}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 816
    .local v3, "ddrawWrapper":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "-vkd3d-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/winlator/XServerDisplayActivity;->dxwrapperConfig:[Lcom/winlator/core/KeyValueSet;

    aget-object v11, v11, v1

    const-string v12, "2.14.1"

    invoke-virtual {v11, v8, v12}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 817
    iget-object v6, v0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    const-string v10, "dxwrapper"

    invoke-virtual {v6, v10}, Lcom/winlator/container/Container;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v1

    .line 818
    .local v6, "changed":Z
    iget-object v11, v0, Lcom/winlator/XServerDisplayActivity;->dxwrapperConfig:[Lcom/winlator/core/KeyValueSet;

    aget-object v11, v11, v1

    iget-object v13, v0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    invoke-static {v11, v13}, Lcom/winlator/contentdialog/VKD3DConfigDialog;->setEnvVars(Lcom/winlator/core/KeyValueSet;Lcom/winlator/core/EnvVars;)V

    .line 820
    const-string v11, "cnc-ddraw"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v13, v0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    const-string v14, "CNC_DDRAW_CONFIG_FILE"

    const-string v15, "C:\\ProgramData\\cnc-ddraw\\ddraw.ini"

    invoke-virtual {v13, v14, v15}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 822
    :cond_2
    if-nez v6, :cond_3

    return v9

    .line 823
    :cond_3
    iget-object v13, v0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v13, v10, v2}, Lcom/winlator/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 825
    iget-object v10, v0, Lcom/winlator/XServerDisplayActivity;->rootFS:Lcom/winlator/xenvironment/RootFS;

    invoke-virtual {v10}, Lcom/winlator/xenvironment/RootFS;->getRootDir()Ljava/io/File;

    move-result-object v10

    .line 826
    .local v10, "rootDir":Ljava/io/File;
    new-instance v13, Ljava/io/File;

    const-string v14, "/home/xuser/.wine/drive_c/windows"

    invoke-direct {v13, v10, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 828
    .local v13, "windowsDir":Ljava/io/File;
    iget-object v14, v0, Lcom/winlator/XServerDisplayActivity;->dxwrapper:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 829
    iget-object v4, v0, Lcom/winlator/XServerDisplayActivity;->dxwrapperConfig:[Lcom/winlator/core/KeyValueSet;

    aget-object v4, v4, v9

    invoke-virtual {v4, v8, v7}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 830
    .local v4, "version":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 831
    const-string v23, "ddraw.dll"

    const-string v24, "wined3d.dll"

    const-string v14, "d3d8.dll"

    const-string v15, "d3d9.dll"

    const-string v16, "d3d10.dll"

    const-string v17, "d3d10_1.dll"

    const-string v18, "d3d10core.dll"

    const-string v19, "d3d11.dll"

    const-string v20, "d3d12.dll"

    const-string v21, "d3d12core.dll"

    const-string v22, "dxgi.dll"

    filled-new-array/range {v14 .. v24}, [Ljava/lang/String;

    move-result-object v5

    .line 832
    .local v5, "dlls":[Ljava/lang/String;
    invoke-direct {v0, v5}, Lcom/winlator/XServerDisplayActivity;->restoreBuiltinDllFiles([Ljava/lang/String;)V

    .line 833
    .end local v5    # "dlls":[Ljava/lang/String;
    goto :goto_1

    .line 834
    :cond_4
    sget-object v5, Lcom/winlator/core/GeneralComponents$Type;->WINED3D:Lcom/winlator/core/GeneralComponents$Type;

    invoke-static {v5, v0, v4, v7}, Lcom/winlator/core/GeneralComponents;->extractFile(Lcom/winlator/core/GeneralComponents$Type;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    .end local v4    # "version":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 836
    :cond_5
    iget-object v5, v0, Lcom/winlator/XServerDisplayActivity;->dxwrapper:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 837
    new-array v4, v1, [Z

    aput-boolean v9, v4, v9

    .line 838
    .local v4, "hasD3D8DllFile":[Z
    new-array v5, v1, [Z

    aput-boolean v9, v5, v9

    .line 840
    .local v5, "hasD3D10DllFile":[Z
    sget-object v7, Lcom/winlator/core/GeneralComponents$Type;->DXVK:Lcom/winlator/core/GeneralComponents$Type;

    iget-object v14, v0, Lcom/winlator/XServerDisplayActivity;->dxwrapperConfig:[Lcom/winlator/core/KeyValueSet;

    aget-object v14, v14, v9

    invoke-virtual {v14, v8}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/winlator/XServerDisplayActivity;->graphicsDriver:[Ljava/lang/String;

    aget-object v15, v15, v9

    invoke-static {v15}, Lcom/winlator/core/DefaultVersion;->DXVK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v1, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, v5, v4}, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda12;-><init>([Z[Z)V

    invoke-static {v7, v0, v14, v15, v1}, Lcom/winlator/core/GeneralComponents;->extractFile(Lcom/winlator/core/GeneralComponents$Type;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/winlator/core/TarCompressorUtils$OnExtractFileListener;)V

    .line 851
    aget-boolean v1, v4, v9

    if-nez v1, :cond_6

    .line 852
    sget-object v1, Lcom/winlator/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/core/TarCompressorUtils$Type;

    const-string v7, "dxwrapper/d8vk-1.0.tzst"

    invoke-static {v1, v0, v7, v13}, Lcom/winlator/core/TarCompressorUtils;->extract(Lcom/winlator/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    .line 854
    :cond_6
    aget-boolean v1, v5, v9

    if-nez v1, :cond_7

    const-string v1, "d3d10.dll"

    const-string v7, "d3d10_1.dll"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/winlator/XServerDisplayActivity;->restoreBuiltinDllFiles([Ljava/lang/String;)V

    .line 857
    .end local v4    # "hasD3D8DllFile":[Z
    .end local v5    # "hasD3D10DllFile":[Z
    :cond_7
    :goto_2
    sget-object v1, Lcom/winlator/core/GeneralComponents$Type;->VKD3D:Lcom/winlator/core/GeneralComponents$Type;

    iget-object v4, v0, Lcom/winlator/XServerDisplayActivity;->dxwrapperConfig:[Lcom/winlator/core/KeyValueSet;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4, v8}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v4, v12}, Lcom/winlator/core/GeneralComponents;->extractFile(Lcom/winlator/core/GeneralComponents$Type;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    new-instance v1, Ljava/io/File;

    const-string v4, "/home/xuser/.wine/drive_c/windows/syswow64"

    invoke-direct {v1, v10, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 860
    .local v1, "containerSysWoW64Dir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "ddraw_.dll"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/winlator/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 862
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_8
    goto :goto_3

    :sswitch_0
    const-string v4, "d7vk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v9, 0x1

    goto :goto_4

    :sswitch_1
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_4

    :goto_3
    const/4 v9, -0x1

    :goto_4
    const-string v4, "ddraw.dll"

    packed-switch v9, :pswitch_data_0

    .line 878
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/winlator/XServerDisplayActivity;->restoreBuiltinDllFiles([Ljava/lang/String;)V

    goto :goto_5

    .line 873
    :pswitch_0
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/winlator/XServerDisplayActivity;->restoreBuiltinDllFiles([Ljava/lang/String;)V

    .line 874
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 875
    sget-object v4, Lcom/winlator/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/core/TarCompressorUtils$Type;

    const-string v5, "dxwrapper/d7vk-1.11.tzst"

    invoke-static {v4, v0, v5, v13}, Lcom/winlator/core/TarCompressorUtils;->extract(Lcom/winlator/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    .line 876
    goto :goto_5

    .line 864
    :pswitch_1
    const-string v4, "dxwrapper/cnc-ddraw-6.6"

    .line 865
    .local v4, "assetDir":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    const-string v7, "/home/xuser/.wine/drive_c/ProgramData/cnc-ddraw/ddraw.ini"

    invoke-direct {v5, v10, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 866
    .local v5, "configFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "dxwrapper/cnc-ddraw-6.6/ddraw.ini"

    invoke-static {v0, v7, v5}, Lcom/winlator/core/FileUtils;->copy(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 867
    :cond_9
    new-instance v7, Ljava/io/File;

    const-string v8, "/home/xuser/.wine/drive_c/ProgramData/cnc-ddraw/Shaders"

    invoke-direct {v7, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 868
    .local v7, "shadersDir":Ljava/io/File;
    invoke-static {v7}, Lcom/winlator/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 869
    const-string v8, "dxwrapper/cnc-ddraw-6.6/Shaders"

    invoke-static {v0, v8, v7}, Lcom/winlator/core/FileUtils;->copy(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 870
    sget-object v8, Lcom/winlator/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/core/TarCompressorUtils$Type;

    const-string v9, "dxwrapper/cnc-ddraw-6.6/ddraw.tzst"

    invoke-static {v8, v0, v9, v13}, Lcom/winlator/core/TarCompressorUtils;->extract(Lcom/winlator/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    .line 871
    nop

    .line 881
    .end local v4    # "assetDir":Ljava/lang/String;
    .end local v5    # "configFile":Ljava/io/File;
    .end local v7    # "shadersDir":Ljava/io/File;
    :goto_5
    const/4 v4, 0x1

    return v4

    :sswitch_data_0
    .sparse-switch
        -0x3f44710d -> :sswitch_1
        0x2e5248 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private extractGraphicsDriverFiles()V
    .locals 13

    .line 719
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    const-string v1, "vblank_mode"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 721
    const-string v0, ""

    .line 722
    .local v0, "cacheId":Ljava/lang/String;
    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->graphicsDriver:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v3, "turnip"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "version"

    const-string v5, "26.2.0"

    const-string v6, "-"

    if-eqz v1, :cond_0

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->graphicsDriver:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->graphicsDriverConfig:[Lcom/winlator/core/KeyValueSet;

    aget-object v7, v7, v2

    invoke-virtual {v7, v4, v5}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 725
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->graphicsDriver:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->graphicsDriver:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-static {v7}, Lcom/winlator/core/DefaultVersion;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 726
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->graphicsDriver:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/winlator/XServerDisplayActivity;->graphicsDriver:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-static {v6}, Lcom/winlator/core/DefaultVersion;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 728
    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v6, ""

    const-string v7, "current_graphics_driver"

    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 729
    .local v1, "currentGraphicsDriver":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v8

    .line 730
    .local v6, "changed":Z
    iget-object v9, p0, Lcom/winlator/XServerDisplayActivity;->rootFS:Lcom/winlator/xenvironment/RootFS;

    invoke-virtual {v9}, Lcom/winlator/xenvironment/RootFS;->getRootDir()Ljava/io/File;

    move-result-object v9

    .line 731
    .local v9, "rootDir":Ljava/io/File;
    iget-object v10, p0, Lcom/winlator/XServerDisplayActivity;->rootFS:Lcom/winlator/xenvironment/RootFS;

    invoke-virtual {v10}, Lcom/winlator/xenvironment/RootFS;->getLibDir()Ljava/io/File;

    move-result-object v10

    .line 733
    .local v10, "libDir":Ljava/io/File;
    if-eqz v6, :cond_1

    .line 734
    new-instance v11, Ljava/io/File;

    const-string v12, "libvulkan_freedreno.so"

    invoke-direct {v11, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v11}, Lcom/winlator/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 735
    new-instance v11, Ljava/io/File;

    const-string v12, "libvulkan_vortek.so"

    invoke-direct {v11, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v11}, Lcom/winlator/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 736
    new-instance v11, Ljava/io/File;

    const-string v12, "libGL.so.1.7.0"

    invoke-direct {v11, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v11}, Lcom/winlator/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 738
    new-instance v11, Ljava/io/File;

    const-string v12, "/usr/share/vulkan/icd.d"

    invoke-direct {v11, v9, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 739
    .local v11, "vulkanICDDir":Ljava/io/File;
    invoke-static {v11}, Lcom/winlator/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 740
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 742
    iget-object v12, p0, Lcom/winlator/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 745
    .end local v11    # "vulkanICDDir":Ljava/io/File;
    :cond_1
    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->graphicsDriver:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v7, "vortek"

    if-eqz v3, :cond_2

    .line 746
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->graphicsDriverConfig:[Lcom/winlator/core/KeyValueSet;

    aget-object v3, v3, v2

    iget-object v11, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    invoke-static {p0, v3, v11}, Lcom/winlator/contentdialog/TurnipConfigDialog;->setEnvVars(Landroid/content/Context;Lcom/winlator/core/KeyValueSet;Lcom/winlator/core/EnvVars;)V

    .line 748
    if-eqz v6, :cond_5

    .line 749
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->graphicsDriverConfig:[Lcom/winlator/core/KeyValueSet;

    aget-object v3, v3, v2

    invoke-virtual {v3, v4, v5}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 750
    .local v3, "version":Ljava/lang/String;
    sget-object v4, Lcom/winlator/core/GeneralComponents$Type;->TURNIP:Lcom/winlator/core/GeneralComponents$Type;

    invoke-static {v4, p0, v3, v5}, Lcom/winlator/core/GeneralComponents;->extractFile(Lcom/winlator/core/GeneralComponents$Type;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    .end local v3    # "version":Ljava/lang/String;
    goto :goto_1

    .line 753
    :cond_2
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->graphicsDriver:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v6, :cond_4

    :cond_3
    goto :goto_1

    .line 754
    :cond_4
    sget-object v3, Lcom/winlator/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/core/TarCompressorUtils$Type;

    const-string v4, "graphics_driver/vortek-2.1.tzst"

    invoke-static {v3, p0, v4, v9}, Lcom/winlator/core/TarCompressorUtils;->extract(Lcom/winlator/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    .line 757
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->graphicsDriver:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "zink"

    sparse-switch v4, :sswitch_data_0

    :cond_6
    goto :goto_2

    :sswitch_0
    const-string v4, "virgl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v8

    goto :goto_3

    :sswitch_1
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v2

    goto :goto_3

    :sswitch_2
    const-string v4, "gladio"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    goto :goto_3

    :goto_2
    const/4 v3, -0x1

    :goto_3
    const-string v4, "GALLIUM_DRIVER"

    const-string v11, "1"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    .line 774
    :pswitch_0
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    const-string v3, "GLADIO_NO_ERROR"

    invoke-virtual {v2, v3, v11}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 776
    if-nez v6, :cond_7

    goto :goto_4

    :cond_7
    sget-object v2, Lcom/winlator/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/core/TarCompressorUtils$Type;

    const-string v3, "graphics_driver/gladio-1.1.tzst"

    invoke-static {v2, p0, v3, v9}, Lcom/winlator/core/TarCompressorUtils;->extract(Lcom/winlator/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    goto :goto_4

    .line 766
    :pswitch_1
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    const-string v3, "virpipe"

    invoke-virtual {v2, v4, v3}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 767
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    const-string v3, "VIRGL_NO_READBACK"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 768
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/tmp/.virgl/V0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VIRGL_SERVER_PATH"

    invoke-virtual {v2, v4, v3}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 769
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->graphicsDriverConfig:[Lcom/winlator/core/KeyValueSet;

    aget-object v2, v2, v8

    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    invoke-static {v2, v3}, Lcom/winlator/contentdialog/VirGLConfigDialog;->setEnvVars(Lcom/winlator/core/KeyValueSet;Lcom/winlator/core/EnvVars;)V

    .line 771
    if-eqz v6, :cond_9

    sget-object v2, Lcom/winlator/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/core/TarCompressorUtils$Type;

    const-string v3, "graphics_driver/virgl-23.1.9.tzst"

    invoke-static {v2, p0, v3, v9}, Lcom/winlator/core/TarCompressorUtils;->extract(Lcom/winlator/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    goto :goto_4

    .line 759
    :pswitch_2
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    invoke-virtual {v3, v4, v5}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 760
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    const-string v4, "ZINK_CONTEXT_THREADED"

    invoke-virtual {v3, v4, v11}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 761
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->graphicsDriver:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    const-string v3, "MESA_GL_VERSION_OVERRIDE"

    const-string v4, "3.3"

    invoke-virtual {v2, v3, v4}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 763
    :cond_8
    if-eqz v6, :cond_9

    sget-object v2, Lcom/winlator/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/core/TarCompressorUtils$Type;

    const-string v3, "graphics_driver/zink-22.2.5.tzst"

    invoke-static {v2, p0, v3, v9}, Lcom/winlator/core/TarCompressorUtils;->extract(Lcom/winlator/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    .line 779
    :cond_9
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4a1d5112 -> :sswitch_2
        0x390d2c -> :sswitch_1
        0x6b04944 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private extractWinComponentFiles()V
    .locals 17

    .line 885
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/winlator/XServerDisplayActivity;->rootFS:Lcom/winlator/xenvironment/RootFS;

    invoke-virtual {v0}, Lcom/winlator/xenvironment/RootFS;->getRootDir()Ljava/io/File;

    move-result-object v2

    .line 886
    .local v2, "rootDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v3, "/home/xuser/.wine/drive_c/windows"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v0

    .line 887
    .local v3, "windowsDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v4, "/home/xuser/.wine/system.reg"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v0

    .line 890
    .local v4, "systemRegFile":Ljava/io/File;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v5, "wincomponents/wincomponents.json"

    invoke-static {v1, v5}, Lcom/winlator/core/FileUtils;->readString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 891
    .local v0, "wincomponentsJSONObject":Lorg/json/JSONObject;
    new-instance v5, Lcom/winlator/core/KeyValueSet;

    iget-object v6, v1, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    const-string v7, "wincomponents"

    const-string v8, "direct3d=0,directsound=0,directmusic=0,directshow=0,directplay=0,xaudio=0,vcrun2005=0,vcrun2010=0,wmdecoder=0"

    invoke-virtual {v6, v7, v8}, Lcom/winlator/container/Container;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/winlator/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/winlator/core/KeyValueSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 892
    .local v5, "oldWinComponentsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<[Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 894
    .local v6, "builtinDlls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Lcom/winlator/core/KeyValueSet;

    iget-object v8, v1, Lcom/winlator/XServerDisplayActivity;->wincomponents:Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/winlator/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/winlator/core/KeyValueSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 895
    .local v8, "wincomponent":[Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v11, v8, v10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    aget-object v12, v12, v10

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_0

    .line 896
    :cond_0
    aget-object v9, v8, v9

    .line 897
    .local v9, "identifier":Ljava/lang/String;
    aget-object v10, v8, v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    .local v10, "useNative":Z
    const-string v11, ".tzst"

    const-string v12, "wincomponents/"

    if-eqz v10, :cond_1

    .line 900
    :try_start_1
    sget-object v13, Lcom/winlator/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/core/TarCompressorUtils$Type;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v1, v11, v3}, Lcom/winlator/core/TarCompressorUtils;->extract(Lcom/winlator/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-object/from16 v16, v0

    goto :goto_3

    .line 926
    .end local v0    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .end local v5    # "oldWinComponentsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<[Ljava/lang/String;>;"
    .end local v6    # "builtinDlls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "wincomponent":[Ljava/lang/String;
    .end local v9    # "identifier":Ljava/lang/String;
    .end local v10    # "useNative":Z
    :catch_0
    move-exception v0

    goto/16 :goto_4

    .line 903
    .restart local v0    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .restart local v5    # "oldWinComponentsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<[Ljava/lang/String;>;"
    .restart local v6    # "builtinDlls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "wincomponent":[Ljava/lang/String;
    .restart local v9    # "identifier":Ljava/lang/String;
    .restart local v10    # "useNative":Z
    :cond_1
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 904
    .local v13, "wincomponentJSONObject":Lorg/json/JSONObject;
    const-string v14, "restoreBuiltinDlls"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 905
    const-string v11, "dlnames"

    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 906
    .local v11, "dlnames":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v12, v14, :cond_3

    .line 907
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 908
    .local v14, "dlname":Ljava/lang/String;
    const-string v15, ".exe"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    .end local v0    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .local v16, "wincomponentsJSONObject":Lorg/json/JSONObject;
    const-string v0, ".dll"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .end local v16    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .restart local v0    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    :cond_2
    move-object/from16 v16, v0

    .end local v0    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .restart local v16    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    move-object v0, v14

    :goto_2
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    nop

    .end local v14    # "dlname":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v16

    goto :goto_1

    .end local v16    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .restart local v0    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    :cond_3
    move-object/from16 v16, v0

    .line 910
    .end local v0    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .end local v11    # "dlnames":Lorg/json/JSONArray;
    .end local v12    # "i":I
    .restart local v16    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    goto :goto_3

    .line 912
    .end local v16    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .restart local v0    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    :cond_4
    move-object/from16 v16, v0

    .end local v0    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .restart local v16    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    sget-object v0, Lcom/winlator/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/core/TarCompressorUtils$Type;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda5;

    invoke-direct {v12}, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, v1, v11, v3, v12}, Lcom/winlator/core/TarCompressorUtils;->extract(Lcom/winlator/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/winlator/core/TarCompressorUtils$OnExtractFileListener;)Z

    .line 920
    .end local v13    # "wincomponentJSONObject":Lorg/json/JSONObject;
    :goto_3
    invoke-static {v4, v9, v10}, Lcom/winlator/core/WineUtils;->setWinComponentRegistryKeys(Ljava/io/File;Ljava/lang/String;Z)V

    .line 921
    .end local v8    # "wincomponent":[Ljava/lang/String;
    .end local v9    # "identifier":Ljava/lang/String;
    .end local v10    # "useNative":Z
    move-object/from16 v0, v16

    goto/16 :goto_0

    .line 923
    .end local v16    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .restart local v0    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    :cond_5
    move-object/from16 v16, v0

    .end local v0    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .restart local v16    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    new-array v0, v9, [Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/winlator/XServerDisplayActivity;->restoreBuiltinDllFiles([Ljava/lang/String;)V

    .line 924
    :cond_6
    iget-object v0, v1, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    iget-object v7, v1, Lcom/winlator/XServerDisplayActivity;->wincomponents:Ljava/lang/String;

    invoke-static {v1, v0, v7}, Lcom/winlator/core/WineUtils;->overrideWinComponentDlls(Landroid/content/Context;Lcom/winlator/container/Container;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 926
    .end local v5    # "oldWinComponentsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<[Ljava/lang/String;>;"
    .end local v6    # "builtinDlls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    :goto_4
    nop

    .line 927
    return-void
.end method

.method private getWineStartCommand()Ljava/lang/String;
    .locals 11

    .line 948
    const-string v0, ""

    .line 949
    .local v0, "cmdArgs":Ljava/lang/String;
    const/4 v1, 0x0

    .line 950
    .local v1, "execPath":Ljava/lang/String;
    const-string v2, ""

    .line 952
    .local v2, "execArgs":Ljava/lang/String;
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    const-string v4, " "

    const-string v5, "\""

    if-eqz v3, :cond_2

    .line 953
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    const-string v6, "execArgs"

    invoke-virtual {v3, v6}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 954
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    move-object v2, v3

    .line 956
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    invoke-virtual {v3}, Lcom/winlator/container/Shortcut;->isLinkPath()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 957
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v6, v6, Lcom/winlator/container/Shortcut;->path:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 959
    :cond_1
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v1, v3, Lcom/winlator/container/Shortcut;->path:Ljava/lang/String;

    goto :goto_1

    .line 962
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 963
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "exec_path"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 964
    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-static {v6, v7}, Lcom/winlator/core/WineUtils;->unixToDOSPath(Ljava/lang/String;Lcom/winlator/container/Container;)Ljava/lang/String;

    move-result-object v1

    .line 966
    const-string v6, ".lnk"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 967
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 968
    const/4 v1, 0x0

    .line 973
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    .line 974
    invoke-static {v1}, Lcom/winlator/core/FileUtils;->getDirname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 975
    .local v3, "execDir":Ljava/lang/String;
    invoke-static {v1}, Lcom/winlator/core/FileUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 977
    .local v6, "filename":Ljava/lang/String;
    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    move v8, v7

    .local v8, "dotIndex":I
    const/4 v9, -0x1

    nop

    if-eq v7, v9, :cond_4

    invoke-virtual {v6, v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    move v10, v7

    .local v10, "spaceIndex":I
    if-eq v7, v9, :cond_4

    .line 978
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v10, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 979
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 981
    .end local v10    # "spaceIndex":I
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/dir "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/winlator/core/StringUtils;->escapeDOSPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " \""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 984
    .end local v3    # "execDir":Ljava/lang/String;
    .end local v6    # "filename":Ljava/lang/String;
    .end local v8    # "dotIndex":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v0, "/dir C:\\windows \"wfm.exe\""

    .line 986
    :cond_6
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->overrideEnvVars:Lcom/winlator/core/EnvVars;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->overrideEnvVars:Lcom/winlator/core/EnvVars;

    const-string v5, "EXTRA_EXEC_ARGS"

    invoke-virtual {v3, v5}, Lcom/winlator/core/EnvVars;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 987
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/winlator/XServerDisplayActivity;->overrideEnvVars:Lcom/winlator/core/EnvVars;

    invoke-virtual {v4, v5}, Lcom/winlator/core/EnvVars;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 988
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->overrideEnvVars:Lcom/winlator/core/EnvVars;

    invoke-virtual {v3, v5}, Lcom/winlator/core/EnvVars;->remove(Ljava/lang/String;)V

    .line 990
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "C:\\windows\\winhandler.exe "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private hideInputControls()V
    .locals 3

    .line 702
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/winlator/widget/InputControlsView;->setShowTouchscreenControls(Z)V

    .line 703
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/winlator/widget/InputControlsView;->setProfile(Lcom/winlator/inputcontrols/ControlsProfile;)V

    .line 706
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->touchpadView:Lcom/winlator/widget/TouchpadView;

    iget v2, p0, Lcom/winlator/XServerDisplayActivity;->globalCursorSpeed:F

    invoke-virtual {v0, v2}, Lcom/winlator/widget/TouchpadView;->setSensitivity(F)V

    .line 707
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->touchpadView:Lcom/winlator/widget/TouchpadView;

    invoke-virtual {v0, v1}, Lcom/winlator/widget/TouchpadView;->setPointerButtonLeftEnabled(Z)V

    .line 708
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->touchpadView:Lcom/winlator/widget/TouchpadView;

    invoke-virtual {v0, v1}, Lcom/winlator/widget/TouchpadView;->setPointerButtonRightEnabled(Z)V

    .line 710
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->touchpadView:Lcom/winlator/widget/TouchpadView;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->touchpadView:Lcom/winlator/widget/TouchpadView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 712
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->xServerView:Lcom/winlator/widget/XServerView;

    invoke-virtual {v0}, Lcom/winlator/widget/XServerView;->getRenderer()Lcom/winlator/renderer/GLRenderer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/winlator/renderer/GLRenderer;->setCursorVisible(Z)V

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 716
    return-void
.end method

.method private isGenerateWineprefix()Z
    .locals 3

    .line 944
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "generate_wineprefix"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$changeFrameRatingVisibility$13()V
    .locals 2

    .line 1108
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->frameRating:Lcom/winlator/widget/FrameRating;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static synthetic lambda$extractDXWrapperFiles$11([Z[ZLjava/io/File;J)Ljava/io/File;
    .locals 4
    .param p0, "hasD3D10DllFile"    # [Z
    .param p1, "hasD3D8DllFile"    # [Z
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "size"    # J

    .line 841
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 842
    .local v0, "name":Ljava/lang/String;
    const-string v1, "d3d10.dll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 843
    aput-boolean v2, p0, v3

    goto :goto_0

    .line 845
    :cond_0
    const-string v1, "d3d8.dll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 846
    aput-boolean v2, p1, v3

    .line 848
    :cond_1
    :goto_0
    return-object p2
.end method

.method private static synthetic lambda$extractWinComponentFiles$12(Ljava/io/File;J)Ljava/io/File;
    .locals 2
    .param p0, "destination"    # Ljava/io/File;
    .param p1, "size"    # J

    .line 913
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 914
    .local v0, "name":Ljava/lang/String;
    const-string v1, ".dll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".manifest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "_deadbeef"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/winlator/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 915
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static synthetic lambda$onCreate$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "windowInsets"    # Landroid/view/WindowInsets;

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$onCreate$1(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "status"    # Ljava/lang/Integer;

    .line 177
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    const-string v1, "wineprefixNeedsUpdate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/winlator/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    const-string v1, "wincomponents"

    invoke-virtual {v0, v1, v2}, Lcom/winlator/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v0}, Lcom/winlator/container/Container;->saveData()V

    .line 181
    invoke-static {p0}, Lcom/winlator/core/AppUtils;->restartActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 184
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$2()V
    .locals 1

    .line 271
    invoke-direct {p0}, Lcom/winlator/XServerDisplayActivity;->isGenerateWineprefix()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/winlator/XServerDisplayActivity;->setupWineSystemFiles()V

    .line 273
    invoke-direct {p0}, Lcom/winlator/XServerDisplayActivity;->extractGraphicsDriverFiles()V

    .line 274
    invoke-direct {p0}, Lcom/winlator/XServerDisplayActivity;->changeWineAudioDriver()V

    .line 276
    :cond_0
    invoke-direct {p0}, Lcom/winlator/XServerDisplayActivity;->setupXEnvironment()V

    .line 277
    return-void
.end method

.method private synthetic lambda$onNavigationItemSelected$3(Lcom/winlator/renderer/GLRenderer;Ljava/lang/Float;)V
    .locals 3
    .param p1, "renderer"    # Lcom/winlator/renderer/GLRenderer;
    .param p2, "value"    # Ljava/lang/Float;

    .line 385
    invoke-virtual {p1}, Lcom/winlator/renderer/GLRenderer;->getMagnifierZoom()F

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v0, v1, v2}, Lcom/winlator/math/Mathf;->clamp(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/winlator/renderer/GLRenderer;->setMagnifierZoom(F)V

    .line 386
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->magnifierView:Lcom/winlator/widget/MagnifierView;

    invoke-virtual {p1}, Lcom/winlator/renderer/GLRenderer;->getMagnifierZoom()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winlator/widget/MagnifierView;->setZoomValue(F)V

    .line 387
    return-void
.end method

.method private synthetic lambda$onNavigationItemSelected$4(Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1, "container"    # Landroid/widget/FrameLayout;

    .line 390
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->magnifierView:Lcom/winlator/widget/MagnifierView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/XServerDisplayActivity;->magnifierView:Lcom/winlator/widget/MagnifierView;

    .line 392
    return-void
.end method

.method private synthetic lambda$setupUI$6()V
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    .line 597
    :cond_0
    return-void
.end method

.method private synthetic lambda$setupXEnvironment$5(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/Integer;

    .line 555
    invoke-direct {p0}, Lcom/winlator/XServerDisplayActivity;->exit()V

    return-void
.end method

.method private synthetic lambda$showInputControlsDialog$10(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Spinner;)V
    .locals 3
    .param p1, "cbRelativeMouseMovement"    # Landroid/widget/CheckBox;
    .param p2, "cbShowTouchscreenControls"    # Landroid/widget/CheckBox;
    .param p3, "cbWlDirectMapping"    # Landroid/widget/CheckBox;
    .param p4, "sProfile"    # Landroid/widget/Spinner;

    .line 668
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->xServer:Lcom/winlator/xserver/XServer;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winlator/xserver/XServer;->setRelativeMouseMovement(Z)V

    .line 669
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winlator/widget/InputControlsView;->setShowTouchscreenControls(Z)V

    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->touchpadView:Lcom/winlator/widget/TouchpadView;

    invoke-virtual {v1, v0}, Lcom/winlator/widget/TouchpadView;->setMoveCursorToTouchpoint(Z)V

    if-eqz v0, :cond_dm

    const/4 v1, 0x0

    goto :cond_dm_store

    :cond_dm
    const/4 v1, 0x1

    :cond_dm_store
    sput-boolean v1, Lcom/winlator/widget/TouchpadView;->wlTouchDirect:Z

    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "wl_direct_mapping"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const v1, 0x7f1001c0

    const v2, 0x7f1001c1

    if-eqz v0, :cond_dm_toast

    move v2, v1

    :cond_dm_toast
    invoke-static {p0, v2}, Lcom/winlator/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 670
    invoke-virtual {p4}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 671
    if-lez v0, :cond_0

    .line 672
    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->inputControlsManager:Lcom/winlator/inputcontrols/InputControlsManager;

    invoke-virtual {v1}, Lcom/winlator/inputcontrols/InputControlsManager;->getProfiles()Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/inputcontrols/ControlsProfile;

    invoke-direct {p0, v1}, Lcom/winlator/XServerDisplayActivity;->showInputControls(Lcom/winlator/inputcontrols/ControlsProfile;)V

    goto :goto_0

    .line 674
    :cond_0
    invoke-direct {p0}, Lcom/winlator/XServerDisplayActivity;->hideInputControls()V

    .line 675
    :goto_0
    return-void
.end method

.method private synthetic lambda$showInputControlsDialog$7(Landroid/widget/Spinner;)V
    .locals 6
    .param p1, "sProfile"    # Landroid/widget/Spinner;

    .line 633
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->inputControlsManager:Lcom/winlator/inputcontrols/InputControlsManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/winlator/inputcontrols/InputControlsManager;->getProfiles(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 634
    .local v0, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/inputcontrols/ControlsProfile;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .local v1, "profileItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 636
    .local v2, "selectedPosition":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f100079

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 638
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/winlator/inputcontrols/ControlsProfile;

    .line 639
    .local v4, "profile":Lcom/winlator/inputcontrols/ControlsProfile;
    iget-object v5, p0, Lcom/winlator/XServerDisplayActivity;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v5}, Lcom/winlator/widget/InputControlsView;->getProfile()Lcom/winlator/inputcontrols/ControlsProfile;

    move-result-object v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v2, v3, 0x1

    .line 640
    :cond_0
    invoke-virtual {v4}, Lcom/winlator/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    .end local v4    # "profile":Lcom/winlator/inputcontrols/ControlsProfile;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 643
    .end local v3    # "i":I
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    invoke-direct {v3, p0, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 644
    invoke-virtual {p1, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 645
    return-void
.end method

.method private synthetic lambda$showInputControlsDialog$8(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "loadProfileSpinner"    # Ljava/lang/Runnable;

    .line 660
    invoke-direct {p0}, Lcom/winlator/XServerDisplayActivity;->hideInputControls()V

    .line 661
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->inputControlsManager:Lcom/winlator/inputcontrols/InputControlsManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/winlator/inputcontrols/InputControlsManager;->loadProfiles(Z)V

    .line 662
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 663
    return-void
.end method

.method private synthetic lambda$showInputControlsDialog$9(Landroid/widget/Spinner;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 4
    .param p1, "sProfile"    # Landroid/widget/Spinner;
    .param p2, "loadProfileSpinner"    # Ljava/lang/Runnable;
    .param p3, "v"    # Landroid/view/View;

    .line 655
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 656
    .local v0, "position":I
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/winlator/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 657
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "edit_input_controls"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 658
    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->inputControlsManager:Lcom/winlator/inputcontrols/InputControlsManager;

    invoke-virtual {v2}, Lcom/winlator/inputcontrols/InputControlsManager;->getProfiles()Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/inputcontrols/ControlsProfile;

    iget v2, v2, Lcom/winlator/inputcontrols/ControlsProfile;->id:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "selected_profile_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 659
    new-instance v2, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, p2}, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda14;-><init>(Lcom/winlator/XServerDisplayActivity;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/winlator/XServerDisplayActivity;->editInputControlsCallback:Ljava/lang/Runnable;

    .line 664
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 665
    return-void
.end method

.method private varargs restoreBuiltinDllFiles([Ljava/lang/String;)V
    .locals 11
    .param p1, "dlls"    # [Ljava/lang/String;

    .line 930
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->rootFS:Lcom/winlator/xenvironment/RootFS;

    invoke-virtual {v0}, Lcom/winlator/xenvironment/RootFS;->getRootDir()Ljava/io/File;

    move-result-object v0

    .line 931
    .local v0, "rootDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->rootFS:Lcom/winlator/xenvironment/RootFS;

    invoke-virtual {v2}, Lcom/winlator/xenvironment/RootFS;->getWinePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 932
    .local v1, "wineDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "/lib/wine/x86_64-windows"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 933
    .local v2, "wineSystem32Dir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "/lib/wine/i386-windows"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 934
    .local v3, "wineSysWoW64Dir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "/home/xuser/.wine/drive_c/windows/system32"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 935
    .local v4, "containerSystem32Dir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v6, "/home/xuser/.wine/drive_c/windows/syswow64"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 937
    .local v5, "containerSysWoW64Dir":Ljava/io/File;
    array-length v6, p1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    aget-object v8, p1, v7

    .line 938
    .local v8, "dll":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9, v10}, Lcom/winlator/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 939
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9, v10}, Lcom/winlator/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 937
    .end local v8    # "dll":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 941
    :cond_0
    return-void
.end method

.method private setupUI()V
    .locals 8

    .line 579
    const v0, 0x7f09005f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 580
    .local v0, "rootView":Landroid/widget/FrameLayout;
    new-instance v1, Lcom/winlator/widget/XServerView;

    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->xServer:Lcom/winlator/xserver/XServer;

    invoke-direct {v1, p0, v2}, Lcom/winlator/widget/XServerView;-><init>(Landroid/content/Context;Lcom/winlator/xserver/XServer;)V

    iput-object v1, p0, Lcom/winlator/XServerDisplayActivity;->xServerView:Lcom/winlator/widget/XServerView;

    .line 581
    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->xServerView:Lcom/winlator/widget/XServerView;

    invoke-virtual {v1}, Lcom/winlator/widget/XServerView;->getRenderer()Lcom/winlator/renderer/GLRenderer;

    move-result-object v1

    .line 582
    .local v1, "renderer":Lcom/winlator/renderer/GLRenderer;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/winlator/renderer/GLRenderer;->setCursorVisible(Z)V

    .line 583
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "cursor_color"

    const v5, 0xffffff

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/winlator/renderer/GLRenderer;->setCursorColor(I)V

    .line 584
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "cursor_scale"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/winlator/renderer/GLRenderer;->setCursorScale(F)V

    .line 585
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    const-string v6, "forceFullscreen"

    const-string v7, "0"

    invoke-virtual {v3, v6, v7}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Lcom/winlator/renderer/GLRenderer;->setForceWindowsFullscreen(Z)V

    .line 587
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->xServer:Lcom/winlator/xserver/XServer;

    invoke-virtual {v3, v1}, Lcom/winlator/xserver/XServer;->setRenderer(Lcom/winlator/renderer/GLRenderer;)V

    .line 588
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->xServerView:Lcom/winlator/widget/XServerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 590
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v6, "cursor_speed"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/winlator/XServerDisplayActivity;->globalCursorSpeed:F

    .line 591
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "capture_pointer_on_external_mouse"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/winlator/XServerDisplayActivity;->capturePointerOnExternalMouse:Z

    .line 592
    new-instance v3, Lcom/winlator/widget/TouchpadView;

    iget-object v4, p0, Lcom/winlator/XServerDisplayActivity;->xServer:Lcom/winlator/xserver/XServer;

    iget-boolean v5, p0, Lcom/winlator/XServerDisplayActivity;->capturePointerOnExternalMouse:Z

    invoke-direct {v3, p0, v4, v5}, Lcom/winlator/widget/TouchpadView;-><init>(Landroid/content/Context;Lcom/winlator/xserver/XServer;Z)V

    iput-object v3, p0, Lcom/winlator/XServerDisplayActivity;->touchpadView:Lcom/winlator/widget/TouchpadView;

    .line 593
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->touchpadView:Lcom/winlator/widget/TouchpadView;

    iget v4, p0, Lcom/winlator/XServerDisplayActivity;->globalCursorSpeed:F

    invoke-virtual {v3, v4}, Lcom/winlator/widget/TouchpadView;->setSensitivity(F)V

    .line 594
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->touchpadView:Lcom/winlator/widget/TouchpadView;

    iget-object v4, p0, Lcom/winlator/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "move_cursor_to_touchpoint"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/winlator/widget/TouchpadView;->setMoveCursorToTouchpoint(Z)V

    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "wl_snap_to_touch"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/winlator/widget/InputControlsView;->wlSnapEnabled:Z

    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "wl_direct_mapping"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_dm

    const/4 v3, 0x0

    goto :cond_dm_store

    :cond_dm
    const/4 v3, 0x1

    :cond_dm_store
    sput-boolean v3, Lcom/winlator/widget/TouchpadView;->wlTouchDirect:Z

    .line 595
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->touchpadView:Lcom/winlator/widget/TouchpadView;

    new-instance v3, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda7;-><init>(Lcom/winlator/XServerDisplayActivity;)V

    invoke-virtual {v2, v3}, Lcom/winlator/widget/TouchpadView;->setFourFingersTapCallback(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->touchpadView:Lcom/winlator/widget/TouchpadView;

    new-instance v3, Lcom/wuyou/WlKeyboardRunnable;

    invoke-direct {v3, p0}, Lcom/wuyou/WlKeyboardRunnable;-><init>(Lcom/winlator/XServerDisplayActivity;)V

    sput-object v3, Lcom/winlator/renderer/GLRenderer;->wlTextInputListener:Ljava/lang/Runnable;

    .line 598
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->touchpadView:Lcom/winlator/widget/TouchpadView;

        iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->touchpadView:Lcom/winlator/widget/TouchpadView;

invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 600
    new-instance v2, Lcom/winlator/widget/InputControlsView;

    invoke-direct {v2, p0}, Lcom/winlator/widget/InputControlsView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/winlator/XServerDisplayActivity;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    .line 601
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "overlay_opacity"

    const v5, 0x3f59999a    # 0.85f

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/winlator/widget/InputControlsView;->setOverlayOpacity(F)V

    .line 602
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->touchpadView:Lcom/winlator/widget/TouchpadView;

    invoke-virtual {v2, v3}, Lcom/winlator/widget/InputControlsView;->setTouchpadView(Lcom/winlator/widget/TouchpadView;)V

    .line 603
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->xServer:Lcom/winlator/xserver/XServer;

    invoke-virtual {v2, v3}, Lcom/winlator/widget/InputControlsView;->setXServer(Lcom/winlator/xserver/XServer;)V

    .line 604
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 605
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 607
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v2}, Lcom/winlator/container/Container;->getHUDMode()B

    move-result v2

    sget-object v4, Lcom/winlator/widget/FrameRating$Mode;->DISABLED:Lcom/winlator/widget/FrameRating$Mode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v2, v4, :cond_1

    .line 608
    new-instance v2, Lcom/winlator/widget/FrameRating;

    invoke-direct {v2, p0}, Lcom/winlator/widget/FrameRating;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/winlator/XServerDisplayActivity;->frameRating:Lcom/winlator/widget/FrameRating;

    .line 609
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->frameRating:Lcom/winlator/widget/FrameRating;

    invoke-static {}, Lcom/winlator/widget/FrameRating$Mode;->values()[Lcom/winlator/widget/FrameRating$Mode;

    move-result-object v4

    iget-object v5, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v5}, Lcom/winlator/container/Container;->getHUDMode()B

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Lcom/winlator/widget/FrameRating;->setMode(Lcom/winlator/widget/FrameRating$Mode;)V

    .line 610
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->frameRating:Lcom/winlator/widget/FrameRating;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 611
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->frameRating:Lcom/winlator/widget/FrameRating;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 614
    :cond_1
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    if-eqz v2, :cond_2

    .line 615
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    const-string v3, "controlsProfile"

    invoke-virtual {v2, v3}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, "controlsProfile":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 617
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->inputControlsManager:Lcom/winlator/inputcontrols/InputControlsManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/winlator/inputcontrols/InputControlsManager;->getProfile(I)Lcom/winlator/inputcontrols/ControlsProfile;

    move-result-object v3

    .line 618
    .local v3, "profile":Lcom/winlator/inputcontrols/ControlsProfile;
    if-eqz v3, :cond_2

    invoke-direct {p0, v3}, Lcom/winlator/XServerDisplayActivity;->showInputControls(Lcom/winlator/inputcontrols/ControlsProfile;)V

    .line 623
    .end local v2    # "controlsProfile":Ljava/lang/String;
    .end local v3    # "profile":Lcom/winlator/inputcontrols/ControlsProfile;
    :cond_2
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda8;

    invoke-direct {v3, v1}, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda8;-><init>(Lcom/winlator/renderer/GLRenderer;)V

    invoke-static {v2, v3}, Lcom/winlator/core/AppUtils;->observeSoftKeyboardVisibility(Landroid/view/View;Lcom/winlator/core/Callback;)V

    invoke-direct {p0}, Lcom/winlator/XServerDisplayActivity;->wlAddKeyboardButton()V

    .line 624
    return-void
.end method

.method private setupWineSystemFiles()V
    .locals 10

    .line 442
    invoke-static {p0}, Lcom/winlator/core/AppUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "appVersion":Ljava/lang/String;
    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->rootFS:Lcom/winlator/xenvironment/RootFS;

    invoke-virtual {v1}, Lcom/winlator/xenvironment/RootFS;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, "rfsVersion":Ljava/lang/String;
    const/4 v2, 0x0

    .line 446
    .local v2, "containerDataChanged":Z
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-static {v3}, Lcom/winlator/core/WineUtils;->isWineprefixWasUpdated(Lcom/winlator/container/Container;)Z

    move-result v3

    .line 447
    .local v3, "wineprefixWasUpdated":Z
    iget-object v4, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    const-string v5, "appVersion"

    invoke-virtual {v4, v5}, Lcom/winlator/container/Container;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "rfsVersion"

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v4, v6}, Lcom/winlator/container/Container;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_1

    .line 448
    :cond_0
    iget-object v4, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-direct {p0, v4}, Lcom/winlator/XServerDisplayActivity;->applyGeneralPatches(Lcom/winlator/container/Container;)V

    .line 449
    iget-object v4, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v4, v5, v0}, Lcom/winlator/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 450
    iget-object v4, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v4, v6, v1}, Lcom/winlator/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 451
    const/4 v2, 0x1

    .line 454
    :cond_1
    invoke-virtual {p0}, Lcom/winlator/XServerDisplayActivity;->verifyUserRegistry()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    .line 455
    :cond_2
    invoke-direct {p0}, Lcom/winlator/XServerDisplayActivity;->extractDXWrapperFiles()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    .line 457
    :cond_3
    iget-object v4, p0, Lcom/winlator/XServerDisplayActivity;->wincomponents:Ljava/lang/String;

    iget-object v5, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    const-string v6, "wincomponents"

    invoke-virtual {v5, v6}, Lcom/winlator/container/Container;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 458
    invoke-direct {p0}, Lcom/winlator/XServerDisplayActivity;->extractWinComponentFiles()V

    .line 459
    iget-object v4, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    iget-object v5, p0, Lcom/winlator/XServerDisplayActivity;->wincomponents:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Lcom/winlator/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 460
    const/4 v2, 0x1

    .line 463
    :cond_4
    iget-object v4, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v4}, Lcom/winlator/container/Container;->getDesktopTheme()Ljava/lang/String;

    move-result-object v4

    .line 464
    .local v4, "desktopTheme":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    const-string v8, "desktopTheme"

    invoke-virtual {v7, v8}, Lcom/winlator/container/Container;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 465
    new-instance v5, Lcom/winlator/core/WineThemeManager$ThemeInfo;

    invoke-direct {v5, v4}, Lcom/winlator/core/WineThemeManager$ThemeInfo;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    invoke-static {p0, v5, v7}, Lcom/winlator/core/WineThemeManager;->apply(Landroid/content/Context;Lcom/winlator/core/WineThemeManager$ThemeInfo;Lcom/winlator/xserver/ScreenInfo;)V

    .line 466
    iget-object v5, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/winlator/XServerDisplayActivity;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lcom/winlator/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 467
    const/4 v2, 0x1

    .line 470
    :cond_5
    iget-object v5, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-static {p0, v5}, Lcom/winlator/core/WineStartMenuCreator;->create(Landroid/content/Context;Lcom/winlator/container/Container;)V

    iget-object v5, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-static {p0, v5}, Lcom/wuyou/WlDesktop;->create(Landroid/content/Context;Lcom/winlator/container/Container;)V

    .line 471
    iget-object v5, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/winlator/core/WineUtils;->createDosdevicesSymlinks(Lcom/winlator/container/Container;Z)V

    .line 473
    iget-object v5, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v5}, Lcom/winlator/container/Container;->getStartupSelection()B

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 474
    .local v5, "startupSelection":Ljava/lang/String;
    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    const-string v8, "startupSelection"

    invoke-virtual {v7, v8}, Lcom/winlator/container/Container;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v3, :cond_7

    .line 475
    :cond_6
    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    iget-object v9, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v9}, Lcom/winlator/container/Container;->getStartupSelection()B

    move-result v9

    invoke-static {v7, v9}, Lcom/winlator/core/WineUtils;->changeServicesStatus(Lcom/winlator/container/Container;B)V

    .line 476
    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v7, v8, v5}, Lcom/winlator/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 477
    const/4 v2, 0x1

    .line 480
    :cond_7
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "open_android_browser_from_wine"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 481
    .local v6, "openAndroidBrowserFromWine":Z
    if-eqz v6, :cond_8

    const-string v7, "t"

    goto :goto_0

    :cond_8
    const-string v7, "f"

    .line 482
    .local v7, "openAndroidBrowserFromWineStr":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    const-string v9, "openAndroidBrowserFromWine"

    invoke-virtual {v8, v9}, Lcom/winlator/container/Container;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    if-eqz v3, :cond_a

    .line 483
    :cond_9
    iget-object v8, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-static {v8, v6}, Lcom/winlator/core/WineUtils;->changeBrowsersRegistryKey(Lcom/winlator/container/Container;Z)V

    .line 484
    iget-object v8, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v8, v9, v7}, Lcom/winlator/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    const/4 v2, 0x1

    .line 488
    :cond_a
    if-eqz v2, :cond_b

    iget-object v8, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v8}, Lcom/winlator/container/Container;->saveData()V

    .line 489
    :cond_b
    return-void
.end method

.method private setupXEnvironment()V
    .locals 12

    .line 492
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->rootFS:Lcom/winlator/xenvironment/RootFS;

    invoke-virtual {v0}, Lcom/winlator/xenvironment/RootFS;->getRootDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "rootPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    const-string v2, "MESA_DEBUG"

    const-string v3, "silent"

    invoke-virtual {v1, v2, v3}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 494
    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    const-string v2, "MESA_NO_ERROR"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 495
    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/home/xuser/.wine"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "WINEPREFIX"

    invoke-virtual {v1, v4, v2}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 496
    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    const-string v2, "WINE_DO_NOT_CREATE_DXGI_DEVICE_MANAGER"

    invoke-virtual {v1, v2, v3}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 498
    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "enable_wine_debug"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 499
    .local v1, "enableWineDebug":Z
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "wine_debug_channels"

    const-string v6, "warn,err,fixme"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, "wineDebugChannels":Ljava/lang/String;
    iget-object v5, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    const-string v6, ","

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",+"

    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    const-string v7, "-all"

    :goto_0
    const-string v8, "WINEDEBUG"

    invoke-virtual {v5, v8, v7}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 502
    iget-object v5, p0, Lcom/winlator/XServerDisplayActivity;->rootFS:Lcom/winlator/xenvironment/RootFS;

    invoke-virtual {v5}, Lcom/winlator/xenvironment/RootFS;->getTmpDir()Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lcom/winlator/core/FileUtils;->clear(Ljava/io/File;)Z

    .line 504
    new-instance v5, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;

    invoke-direct {v5}, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;-><init>()V

    .line 506
    .local v5, "guestProgramLauncherComponent":Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;
    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    if-eqz v7, :cond_7

    .line 507
    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v7}, Lcom/winlator/container/Container;->getHUDMode()B

    move-result v7

    sget-object v8, Lcom/winlator/widget/FrameRating$Mode;->FULL:Lcom/winlator/widget/FrameRating$Mode;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    const-string v8, "X11_WND_GPU_INFO"

    invoke-virtual {v7, v8, v3}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 509
    :cond_1
    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    if-nez v7, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "exec_path"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string v7, "shell"

    goto :goto_2

    :goto_1
    const-string v7, "nogui"

    .line 510
    .local v7, "desktopName":Ljava/lang/String;
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wine explorer /desktop="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/winlator/XServerDisplayActivity;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/winlator/XServerDisplayActivity;->getWineStartCommand()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 511
    .local v6, "guestExecutable":Ljava/lang/String;
    invoke-virtual {v5, v6}, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->setGuestExecutable(Ljava/lang/String;)V

    .line 513
    iget-object v8, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    iget-object v9, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v9}, Lcom/winlator/container/Container;->getEnvVars()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/winlator/core/EnvVars;->putAll(Ljava/lang/String;)V

    .line 514
    iget-object v8, p0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    iget-object v9, p0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    const-string v10, "envVars"

    invoke-virtual {v9, v10}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/winlator/core/EnvVars;->putAll(Ljava/lang/String;)V

    .line 515
    :cond_4
    iget-object v8, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    const-string v9, "WINEESYNC"

    invoke-virtual {v8, v9}, Lcom/winlator/core/EnvVars;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    invoke-virtual {v8, v9, v3}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 517
    :cond_5
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v8, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v8}, Lcom/winlator/container/Container;->getBox64Preset()Ljava/lang/String;

    move-result-object v8

    const-string v9, "box64Preset"

    invoke-virtual {v3, v9, v8}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v3}, Lcom/winlator/container/Container;->getBox64Preset()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v5, v3}, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->setBox64Preset(Ljava/lang/String;)V

    .line 520
    .end local v6    # "guestExecutable":Ljava/lang/String;
    .end local v7    # "desktopName":Ljava/lang/String;
    :cond_7
    new-instance v3, Lcom/winlator/xenvironment/XEnvironment;

    iget-object v6, p0, Lcom/winlator/XServerDisplayActivity;->rootFS:Lcom/winlator/xenvironment/RootFS;

    invoke-direct {v3, p0, v6}, Lcom/winlator/xenvironment/XEnvironment;-><init>(Landroid/content/Context;Lcom/winlator/xenvironment/RootFS;)V

    iput-object v3, p0, Lcom/winlator/XServerDisplayActivity;->environment:Lcom/winlator/xenvironment/XEnvironment;

    .line 521
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->environment:Lcom/winlator/xenvironment/XEnvironment;

    new-instance v6, Lcom/winlator/xenvironment/components/SysVSharedMemoryComponent;

    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->xServer:Lcom/winlator/xserver/XServer;

    const-string v8, "/tmp/.sysvshm/SM0"

    invoke-static {v0, v8}, Lcom/winlator/xconnector/UnixSocketConfig;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/winlator/xconnector/UnixSocketConfig;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/winlator/xenvironment/components/SysVSharedMemoryComponent;-><init>(Lcom/winlator/xserver/XServer;Lcom/winlator/xconnector/UnixSocketConfig;)V

    invoke-virtual {v3, v6}, Lcom/winlator/xenvironment/XEnvironment;->addComponent(Lcom/winlator/xenvironment/EnvironmentComponent;)V

    .line 522
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->environment:Lcom/winlator/xenvironment/XEnvironment;

    new-instance v6, Lcom/winlator/xenvironment/components/XServerComponent;

    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->xServer:Lcom/winlator/xserver/XServer;

    const-string v8, "/tmp/.X11-unix/X0"

    invoke-static {v0, v8}, Lcom/winlator/xconnector/UnixSocketConfig;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/winlator/xconnector/UnixSocketConfig;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/winlator/xenvironment/components/XServerComponent;-><init>(Lcom/winlator/xserver/XServer;Lcom/winlator/xconnector/UnixSocketConfig;)V

    invoke-virtual {v3, v6}, Lcom/winlator/xenvironment/XEnvironment;->addComponent(Lcom/winlator/xenvironment/EnvironmentComponent;)V

    .line 523
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->environment:Lcom/winlator/xenvironment/XEnvironment;

    new-instance v6, Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;

    invoke-direct {v6}, Lcom/winlator/xenvironment/components/NetworkInfoUpdateComponent;-><init>()V

    invoke-virtual {v3, v6}, Lcom/winlator/xenvironment/XEnvironment;->addComponent(Lcom/winlator/xenvironment/EnvironmentComponent;)V

    .line 525
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->audioDriver:Ljava/lang/String;

    const-string v6, "alsa"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_8

    .line 526
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/tmp/.sound/AS0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "ANDROID_ALSA_SERVER"

    invoke-virtual {v3, v9, v7}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 527
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    const-string v7, "ANDROID_ASERVER_USE_SHM"

    const-string v9, "true"

    invoke-virtual {v3, v7, v9}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 529
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->audioDriverConfig:Lcom/winlator/core/KeyValueSet;

    invoke-static {v3}, Lcom/winlator/alsaserver/ALSAClient$Options;->fromKeyValueSet(Lcom/winlator/core/KeyValueSet;)Lcom/winlator/alsaserver/ALSAClient$Options;

    move-result-object v3

    .line 530
    .local v3, "options":Lcom/winlator/alsaserver/ALSAClient$Options;
    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->environment:Lcom/winlator/xenvironment/XEnvironment;

    new-instance v9, Lcom/winlator/xenvironment/components/ALSAServerComponent;

    invoke-static {v0, v8}, Lcom/winlator/xconnector/UnixSocketConfig;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/winlator/xconnector/UnixSocketConfig;

    move-result-object v8

    invoke-direct {v9, v8, v3}, Lcom/winlator/xenvironment/components/ALSAServerComponent;-><init>(Lcom/winlator/xconnector/UnixSocketConfig;Lcom/winlator/alsaserver/ALSAClient$Options;)V

    invoke-virtual {v7, v9}, Lcom/winlator/xenvironment/XEnvironment;->addComponent(Lcom/winlator/xenvironment/EnvironmentComponent;)V

    .line 531
    .end local v3    # "options":Lcom/winlator/alsaserver/ALSAClient$Options;
    goto :goto_5

    .line 532
    :cond_8
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->audioDriver:Ljava/lang/String;

    const-string v7, "pulseaudio"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 533
    new-instance v3, Lcom/winlator/xenvironment/components/PulseAudioComponent;

    const-string v7, "/tmp/.sound/PS0"

    invoke-static {v0, v7}, Lcom/winlator/xconnector/UnixSocketConfig;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/winlator/xconnector/UnixSocketConfig;

    move-result-object v8

    invoke-direct {v3, v8}, Lcom/winlator/xenvironment/components/PulseAudioComponent;-><init>(Lcom/winlator/xconnector/UnixSocketConfig;)V

    .line 534
    .local v3, "pulseAudioComponent":Lcom/winlator/xenvironment/components/PulseAudioComponent;
    iget-object v8, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "PULSE_SERVER"

    invoke-virtual {v8, v9, v7}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 536
    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->audioDriverConfig:Lcom/winlator/core/KeyValueSet;

    invoke-virtual {v7}, Lcom/winlator/core/KeyValueSet;->isEmpty()Z

    move-result v7

    const/16 v8, 0x10

    const-string v9, "PULSE_LATENCY_MSEC"

    if-nez v7, :cond_9

    .line 537
    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    iget-object v10, p0, Lcom/winlator/XServerDisplayActivity;->audioDriverConfig:Lcom/winlator/core/KeyValueSet;

    const-string v11, "latencyMillis"

    invoke-virtual {v10, v11, v8}, Lcom/winlator/core/KeyValueSet;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 538
    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->audioDriverConfig:Lcom/winlator/core/KeyValueSet;

    const-string v8, "volume"

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v9}, Lcom/winlator/core/KeyValueSet;->getFloat(Ljava/lang/String;F)F

    move-result v7

    invoke-virtual {v3, v7}, Lcom/winlator/xenvironment/components/PulseAudioComponent;->setVolume(F)V

    .line 539
    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->audioDriverConfig:Lcom/winlator/core/KeyValueSet;

    const-string v8, "performanceMode"

    invoke-virtual {v7, v8, v6}, Lcom/winlator/core/KeyValueSet;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/winlator/xenvironment/components/PulseAudioComponent;->setPerformanceMode(I)V

    goto :goto_4

    .line 541
    :cond_9
    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 542
    :goto_4
    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->environment:Lcom/winlator/xenvironment/XEnvironment;

    invoke-virtual {v7, v3}, Lcom/winlator/xenvironment/XEnvironment;->addComponent(Lcom/winlator/xenvironment/EnvironmentComponent;)V

    .line 545
    .end local v3    # "pulseAudioComponent":Lcom/winlator/xenvironment/components/PulseAudioComponent;
    :cond_a
    :goto_5
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->graphicsDriver:[Ljava/lang/String;

    aget-object v3, v3, v4

    const-string v7, "vortek"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 546
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->graphicsDriverConfig:[Lcom/winlator/core/KeyValueSet;

    aget-object v3, v3, v4

    invoke-static {p0, v3}, Lcom/winlator/xenvironment/components/VortekRendererComponent$Options;->fromKeyValueSet(Landroid/content/Context;Lcom/winlator/core/KeyValueSet;)Lcom/winlator/xenvironment/components/VortekRendererComponent$Options;

    move-result-object v3

    .line 547
    .local v3, "options":Lcom/winlator/xenvironment/components/VortekRendererComponent$Options;
    new-instance v4, Lcom/winlator/xenvironment/components/VortekRendererComponent;

    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->xServer:Lcom/winlator/xserver/XServer;

    const-string v8, "/tmp/.vortek/V0"

    invoke-static {v0, v8}, Lcom/winlator/xconnector/UnixSocketConfig;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/winlator/xconnector/UnixSocketConfig;

    move-result-object v8

    invoke-direct {v4, v7, v8, v3}, Lcom/winlator/xenvironment/components/VortekRendererComponent;-><init>(Lcom/winlator/xserver/XServer;Lcom/winlator/xconnector/UnixSocketConfig;Lcom/winlator/xenvironment/components/VortekRendererComponent$Options;)V

    .line 548
    .local v4, "vortekRendererComponent":Lcom/winlator/xenvironment/components/VortekRendererComponent;
    iget-object v7, p0, Lcom/winlator/XServerDisplayActivity;->environment:Lcom/winlator/xenvironment/XEnvironment;

    invoke-virtual {v7, v4}, Lcom/winlator/xenvironment/XEnvironment;->addComponent(Lcom/winlator/xenvironment/EnvironmentComponent;)V

    .line 550
    .end local v3    # "options":Lcom/winlator/xenvironment/components/VortekRendererComponent$Options;
    .end local v4    # "vortekRendererComponent":Lcom/winlator/xenvironment/components/VortekRendererComponent;
    :cond_b
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->graphicsDriver:[Ljava/lang/String;

    aget-object v3, v3, v6

    const-string v4, "virgl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 551
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->environment:Lcom/winlator/xenvironment/XEnvironment;

    new-instance v4, Lcom/winlator/xenvironment/components/VirGLRendererComponent;

    iget-object v6, p0, Lcom/winlator/XServerDisplayActivity;->xServer:Lcom/winlator/xserver/XServer;

    const-string v7, "/tmp/.virgl/V0"

    invoke-static {v0, v7}, Lcom/winlator/xconnector/UnixSocketConfig;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/winlator/xconnector/UnixSocketConfig;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/winlator/xenvironment/components/VirGLRendererComponent;-><init>(Lcom/winlator/xserver/XServer;Lcom/winlator/xconnector/UnixSocketConfig;)V

    invoke-virtual {v3, v4}, Lcom/winlator/xenvironment/XEnvironment;->addComponent(Lcom/winlator/xenvironment/EnvironmentComponent;)V

    .line 554
    :cond_c
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    invoke-virtual {v5, v3}, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->setEnvVars(Lcom/winlator/core/EnvVars;)V

    .line 555
    new-instance v3, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda6;-><init>(Lcom/winlator/XServerDisplayActivity;)V

    invoke-virtual {v5, v3}, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->setTerminationCallback(Lcom/winlator/core/Callback;)V

    .line 556
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->environment:Lcom/winlator/xenvironment/XEnvironment;

    invoke-virtual {v3, v5}, Lcom/winlator/xenvironment/XEnvironment;->addComponent(Lcom/winlator/xenvironment/EnvironmentComponent;)V

    .line 558
    invoke-direct {p0}, Lcom/winlator/XServerDisplayActivity;->isGenerateWineprefix()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 559
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "wine_info"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/winlator/core/WineInfo;

    iput-object v3, p0, Lcom/winlator/XServerDisplayActivity;->wineInfo:Lcom/winlator/core/WineInfo;

    .line 560
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->wineInfo:Lcom/winlator/core/WineInfo;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->wineInfo:Lcom/winlator/core/WineInfo;

    iget-object v4, p0, Lcom/winlator/XServerDisplayActivity;->environment:Lcom/winlator/xenvironment/XEnvironment;

    invoke-static {v3, v4}, Lcom/winlator/core/WineInstaller;->generateWineprefix(Lcom/winlator/core/WineInfo;Lcom/winlator/xenvironment/XEnvironment;)V

    .line 562
    :cond_d
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->overrideEnvVars:Lcom/winlator/core/EnvVars;

    const/4 v4, 0x0

    if-eqz v3, :cond_e

    .line 563
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    iget-object v6, p0, Lcom/winlator/XServerDisplayActivity;->overrideEnvVars:Lcom/winlator/core/EnvVars;

    invoke-virtual {v3, v6}, Lcom/winlator/core/EnvVars;->putAll(Lcom/winlator/core/EnvVars;)V

    .line 564
    iput-object v4, p0, Lcom/winlator/XServerDisplayActivity;->overrideEnvVars:Lcom/winlator/core/EnvVars;

    .line 566
    :cond_e
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->environment:Lcom/winlator/xenvironment/XEnvironment;

    invoke-virtual {v3}, Lcom/winlator/xenvironment/XEnvironment;->startEnvironmentComponents()V

    .line 568
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->winHandler:Lcom/winlator/winhandler/WinHandler;

    invoke-virtual {v3}, Lcom/winlator/winhandler/WinHandler;->start()V

    .line 569
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->envVars:Lcom/winlator/core/EnvVars;

    invoke-virtual {v3}, Lcom/winlator/core/EnvVars;->clear()V

    .line 570
    iput-object v4, p0, Lcom/winlator/XServerDisplayActivity;->graphicsDriver:[Ljava/lang/String;

    .line 571
    iput-object v4, p0, Lcom/winlator/XServerDisplayActivity;->dxwrapperConfig:[Lcom/winlator/core/KeyValueSet;

    .line 572
    iput-object v4, p0, Lcom/winlator/XServerDisplayActivity;->graphicsDriverConfig:[Lcom/winlator/core/KeyValueSet;

    .line 573
    iput-object v4, p0, Lcom/winlator/XServerDisplayActivity;->audioDriver:Ljava/lang/String;

    .line 574
    iput-object v4, p0, Lcom/winlator/XServerDisplayActivity;->audioDriverConfig:Lcom/winlator/core/KeyValueSet;

    .line 575
    iput-object v4, p0, Lcom/winlator/XServerDisplayActivity;->wincomponents:Ljava/lang/String;

    .line 576
    return-void
.end method

.method private showInputControls(Lcom/winlator/inputcontrols/ControlsProfile;)V
    .locals 4
    .param p1, "profile"    # Lcom/winlator/inputcontrols/ControlsProfile;

    .line 681
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 682
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 683
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v0, p1}, Lcom/winlator/widget/InputControlsView;->setProfile(Lcom/winlator/inputcontrols/ControlsProfile;)V

    .line 685
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->touchpadView:Lcom/winlator/widget/TouchpadView;

    invoke-virtual {p1}, Lcom/winlator/inputcontrols/ControlsProfile;->getCursorSpeed()F

    move-result v2

    iget v3, p0, Lcom/winlator/XServerDisplayActivity;->globalCursorSpeed:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/winlator/widget/TouchpadView;->setSensitivity(F)V

    .line 686
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->touchpadView:Lcom/winlator/widget/TouchpadView;

    invoke-virtual {v0, v1}, Lcom/winlator/widget/TouchpadView;->setPointerButtonRightEnabled(Z)V

    .line 688
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->xServerView:Lcom/winlator/widget/XServerView;

    invoke-virtual {v0}, Lcom/winlator/widget/XServerView;->getRenderer()Lcom/winlator/renderer/GLRenderer;

    move-result-object v0

    .line 689
    .local v0, "renderer":Lcom/winlator/renderer/GLRenderer;
    invoke-virtual {p1}, Lcom/winlator/inputcontrols/ControlsProfile;->isDisableMouseInput()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 690
    invoke-virtual {v0, v1}, Lcom/winlator/renderer/GLRenderer;->setCursorVisible(Z)V

    .line 691
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->touchpadView:Lcom/winlator/widget/TouchpadView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 694
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/winlator/renderer/GLRenderer;->setCursorVisible(Z)V

    .line 695
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->touchpadView:Lcom/winlator/widget/TouchpadView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 698
    :goto_0
    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 699
    return-void
.end method

.method private showInputControlsDialog()V
    .locals 7

    .line 627
    new-instance v0, Lcom/winlator/contentdialog/ContentDialog;

    const v1, 0x7f0c0052

    invoke-direct {v0, p0, v1}, Lcom/winlator/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 628
    .local v0, "dialog":Lcom/winlator/contentdialog/ContentDialog;
    const v1, 0x7f1000d2

    invoke-virtual {v0, v1}, Lcom/winlator/contentdialog/ContentDialog;->setTitle(I)V

    .line 629
    const v1, 0x7f0800ac

    invoke-virtual {v0, v1}, Lcom/winlator/contentdialog/ContentDialog;->setIcon(I)V

    .line 631
    const v1, 0x7f0900cf

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 632
    .local v1, "sProfile":Landroid/widget/Spinner;
    new-instance v2, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v1}, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda9;-><init>(Lcom/winlator/XServerDisplayActivity;Landroid/widget/Spinner;)V

    .line 646
    .local v2, "loadProfileSpinner":Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 648
    const v3, 0x7f090042

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 649
    .local v3, "cbRelativeMouseMovement":Landroid/widget/CheckBox;
    iget-object v4, p0, Lcom/winlator/XServerDisplayActivity;->xServer:Lcom/winlator/xserver/XServer;

    invoke-virtual {v4}, Lcom/winlator/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 651
    const v4, 0x7f090045

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 652
    .local v4, "cbShowTouchscreenControls":Landroid/widget/CheckBox;
    iget-object v5, p0, Lcom/winlator/XServerDisplayActivity;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v5}, Lcom/winlator/widget/InputControlsView;->isShowTouchscreenControls()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 654
    const v5, 0x7f09002e

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda10;

    invoke-direct {v6, p0, v1, v2}, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda10;-><init>(Lcom/winlator/XServerDisplayActivity;Landroid/widget/Spinner;Ljava/lang/Runnable;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/winlator/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "wl_direct_mapping"

    const/4 v5, 0x0

    invoke-interface {v6, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const v2, 0x7f0902da

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 667
    move-object v6, v2

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v2, p0

    new-instance v1, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda11;

    invoke-direct/range {v1 .. v6}, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda11;-><init>(Lcom/winlator/XServerDisplayActivity;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Lcom/winlator/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/winlator/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-static {v0, v5}, Lcom/wuyou/WlSnapBinder;->bindDialog(Landroid/app/Dialog;Landroid/content/SharedPreferences;)V

    .line 677
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 678
    return-void
.end method

.method private wlAddKeyboardButton()V
    .locals 9

    :try_start_0
    const v0, 0x7f09005f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "⌨"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const v2, -0xdd6c2c

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    new-instance v2, Lcom/wuyou/WlKbButtonListener;

    invoke-direct {v2, p0}, Lcom/wuyou/WlKbButtonListener;-><init>(Lcom/winlator/XServerDisplayActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x38

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x53

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v3, 0x18

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/16 v4, 0x78

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/winlator/XServerDisplayActivity;->wlKbButton:Landroid/widget/TextView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_0
    return-void
.end method



.method public wlHideKeyboard()V
    .locals 1

    invoke-static {p0}, Lcom/wuyou/WlKeyboardHelper;->hide(Lcom/winlator/XServerDisplayActivity;)V

    return-void
.end method

.method public wlGetHiddenInput()Lcom/wuyou/WlHiddenEditText;
    .locals 1

    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->wlHiddenInput:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    check-cast v0, Lcom/wuyou/WlHiddenEditText;

    return-object v0
.end method

.method public wlShowKeyboard()V
    .locals 6

    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->wlHiddenInput:Landroid/widget/EditText;

    if-nez v0, :cond_1

    new-instance v0, Lcom/wuyou/WlHiddenEditText;

    invoke-direct {v0, p0}, Lcom/wuyou/WlHiddenEditText;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/wuyou/WlImeBridgeSink;

    invoke-direct {v1, p0}, Lcom/wuyou/WlImeBridgeSink;-><init>(Lcom/winlator/XServerDisplayActivity;)V

    invoke-virtual {v0, v1}, Lcom/wuyou/WlHiddenEditText;->setTextSink(Lcom/wuyou/WlImeBridge$WlTextSink;)V

    const v2, 0x7f09005f

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    check-cast v2, Landroid/view/ViewGroup;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/winlator/XServerDisplayActivity;->wlHiddenInput:Landroid/widget/EditText;

    :cond_1
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->wlHiddenInput:Landroid/widget/EditText;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-nez v1, :cond_3

    return-void

    :cond_3
    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v2

    const-string v3, "wuyou_kb.txt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showSoftInput="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/wuyou/WlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method



.method public wlSendText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "wuyou_send.txt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recv len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :cp_loop
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cp_done

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :cp_loop

    :cp_done
    const-string v2, ""

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wuyou/WlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->xServer:Lcom/winlator/xserver/XServer;

    invoke-static {v0, p1}, Lcom/wuyou/WlTextInjector;->inject(Lcom/winlator/xserver/XServer;Ljava/lang/String;)V

    return-void
.end method

.method private showTouchpadHelpDialog()V
    .locals 4

    .line 782
    new-instance v0, Lcom/winlator/contentdialog/ContentDialog;

    const v1, 0x7f0c00b9

    invoke-direct {v0, p0, v1}, Lcom/winlator/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 783
    .local v0, "dialog":Lcom/winlator/contentdialog/ContentDialog;
    const v1, 0x7f100189

    invoke-virtual {v0, v1}, Lcom/winlator/contentdialog/ContentDialog;->setTitle(I)V

    .line 784
    const v1, 0x7f0800a8

    invoke-virtual {v0, v1}, Lcom/winlator/contentdialog/ContentDialog;->setIcon(I)V

    .line 785
    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f090061

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    const v3, 0.6f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 786
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 787
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "newBase"    # Landroid/content/Context;

    .line 282
    invoke-static {p1}, Lcom/winlator/core/LocaleHelper;->setSystemLocale(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 283
    return-void
.end method

.method public changeFrameRatingVisibility(Lcom/winlator/xserver/Window;Z)V
    .locals 7
    .param p1, "window"    # Lcom/winlator/xserver/Window;
    .param p2, "visible"    # Z

    .line 1083
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->frameRating:Lcom/winlator/widget/FrameRating;

    if-nez v0, :cond_0

    return-void

    .line 1084
    :cond_0
    if-eqz p2, :cond_a

    .line 1085
    iget v0, p1, Lcom/winlator/xserver/XResource;->id:I

    iget v1, p0, Lcom/winlator/XServerDisplayActivity;->frameRatingWindowId:I

    if-ne v0, v1, :cond_1

    return-void

    .line 1086
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/winlator/xserver/Window;->getChildAt(I)Lcom/winlator/xserver/Window;

    move-result-object v1

    .line 1087
    .local v1, "child":Lcom/winlator/xserver/Window;
    iget-object v2, p1, Lcom/winlator/xserver/Window;->attributes:Lcom/winlator/xserver/WindowAttributes;

    invoke-virtual {v2}, Lcom/winlator/xserver/WindowAttributes;->isMapped()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->getWidth()S

    move-result v2

    const/16 v3, 0x140

    if-lt v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->getHeight()S

    move-result v2

    const/16 v3, 0xa0

    if-lt v2, v3, :cond_2

    const/4 v0, 0x1

    .line 1088
    .local v0, "viewable":Z
    :cond_2
    const/4 v2, 0x0

    .line 1089
    .local v2, "frameRatingWindow":Lcom/winlator/xserver/Window;
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->isSurface()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/winlator/xserver/Window;->isSurface()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1090
    :cond_3
    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->isSurface()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, p1

    goto :goto_0

    :cond_4
    move-object v3, v1

    :goto_0
    move-object v2, v3

    goto :goto_1

    .line 1092
    :cond_5
    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->isSurface()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->isApplicationWindow()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1093
    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->getParent()Lcom/winlator/xserver/Window;

    move-result-object v3

    .line 1094
    .local v3, "parent":Lcom/winlator/xserver/Window;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/winlator/xserver/Window;->isApplicationWindow()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/winlator/xserver/Window;->isSurface()Z

    move-result v4

    if-nez v4, :cond_6

    move-object v2, p1

    .line 1097
    .end local v3    # "parent":Lcom/winlator/xserver/Window;
    :cond_6
    :goto_1
    if-eqz v2, :cond_9

    .line 1098
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->frameRating:Lcom/winlator/widget/FrameRating;

    invoke-virtual {v3}, Lcom/winlator/widget/FrameRating;->getMode()Lcom/winlator/widget/FrameRating$Mode;

    move-result-object v3

    sget-object v4, Lcom/winlator/widget/FrameRating$Mode;->FULL:Lcom/winlator/widget/FrameRating$Mode;

    if-ne v3, v4, :cond_8

    .line 1099
    const/16 v3, 0x4b

    invoke-virtual {v2, v3}, Lcom/winlator/xserver/Window;->getProperty(I)Lcom/winlator/xserver/Property;

    move-result-object v3

    .line 1100
    .local v3, "gpuInfo":Lcom/winlator/xserver/Property;
    iget-object v4, p0, Lcom/winlator/XServerDisplayActivity;->frameRating:Lcom/winlator/widget/FrameRating;

    if-eqz v3, :cond_7

    new-instance v5, Ljava/lang/String;

    iget-object v6, v3, Lcom/winlator/xserver/Property;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    goto :goto_2

    :cond_7
    const-string v5, "N/A"

    :goto_2
    invoke-virtual {v4, v5}, Lcom/winlator/widget/FrameRating;->setGPUInfo(Ljava/lang/String;)V

    .line 1102
    .end local v3    # "gpuInfo":Lcom/winlator/xserver/Property;
    :cond_8
    iget v3, v2, Lcom/winlator/xserver/XResource;->id:I

    iput v3, p0, Lcom/winlator/XServerDisplayActivity;->frameRatingWindowId:I

    .line 1103
    iget-object v3, p0, Lcom/winlator/XServerDisplayActivity;->frameRating:Lcom/winlator/widget/FrameRating;

    invoke-virtual {v3}, Lcom/winlator/widget/FrameRating;->reset()V

    .line 1105
    .end local v0    # "viewable":Z
    .end local v1    # "child":Lcom/winlator/xserver/Window;
    .end local v2    # "frameRatingWindow":Lcom/winlator/xserver/Window;
    :cond_9
    goto :goto_3

    .line 1106
    :cond_a
    iget v0, p1, Lcom/winlator/xserver/XResource;->id:I

    iget v1, p0, Lcom/winlator/XServerDisplayActivity;->frameRatingWindowId:I

    if-ne v0, v1, :cond_b

    .line 1107
    const/4 v0, -0x1

    iput v0, p0, Lcom/winlator/XServerDisplayActivity;->frameRatingWindowId:I

    .line 1108
    new-instance v0, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda13;-><init>(Lcom/winlator/XServerDisplayActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1110
    :cond_b
    :goto_3
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 791
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->winHandler:Lcom/winlator/winhandler/WinHandler;

    invoke-virtual {v0, p1}, Lcom/winlator/winhandler/WinHandler;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->touchpadView:Lcom/winlator/widget/TouchpadView;

    invoke-virtual {v0, p1}, Lcom/winlator/widget/TouchpadView;->onExternalMouseEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 796
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    invoke-virtual {v0, p1}, Lcom/winlator/widget/InputControlsView;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->winHandler:Lcom/winlator/winhandler/WinHandler;

    invoke-virtual {v0, p1}, Lcom/winlator/winhandler/WinHandler;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/xserver/XServer;->keyboard:Lcom/winlator/xserver/Keyboard;

    invoke-virtual {v0, p1}, Lcom/winlator/xserver/Keyboard;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 797
    :cond_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/inputcontrols/ExternalController;->isGameController(Landroid/view/InputDevice;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 796
    :goto_0
    return v0
.end method

.method public getContainer()Lcom/winlator/container/Container;
    .locals 1

    .line 1006
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    return-object v0
.end method

.method public getDebugDialog()Lcom/winlator/contentdialog/DebugDialog;
    .locals 1

    .line 1043
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->debugDialog:Lcom/winlator/contentdialog/DebugDialog;

    return-object v0
.end method

.method public getInputControlsView()Lcom/winlator/widget/InputControlsView;
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->inputControlsView:Lcom/winlator/widget/InputControlsView;

    return-object v0
.end method

.method public getOverrideEnvVars()Lcom/winlator/core/EnvVars;
    .locals 1

    .line 1014
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->overrideEnvVars:Lcom/winlator/core/EnvVars;

    if-nez v0, :cond_0

    new-instance v0, Lcom/winlator/core/EnvVars;

    invoke-direct {v0}, Lcom/winlator/core/EnvVars;-><init>()V

    iput-object v0, p0, Lcom/winlator/XServerDisplayActivity;->overrideEnvVars:Lcom/winlator/core/EnvVars;

    .line 1015
    :cond_0
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->overrideEnvVars:Lcom/winlator/core/EnvVars;

    return-object v0
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getScreenEffectProfile()Ljava/lang/String;
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->screenEffectProfile:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenInfo()Lcom/winlator/xserver/ScreenInfo;
    .locals 1

    .line 1027
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    return-object v0
.end method

.method public getWinHandler()Lcom/winlator/winhandler/WinHandler;
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->winHandler:Lcom/winlator/winhandler/WinHandler;

    return-object v0
.end method

.method public getXServer()Lcom/winlator/xserver/XServer;
    .locals 1

    .line 994
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->xServer:Lcom/winlator/xserver/XServer;

    return-object v0
.end method

.method public getXServerView()Lcom/winlator/widget/XServerView;
    .locals 1

    .line 1002
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->xServerView:Lcom/winlator/widget/XServerView;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 287
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 288
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->editInputControlsCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->editInputControlsCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/XServerDisplayActivity;->editInputControlsCallback:Ljava/lang/Runnable;

    .line 294
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->environment:Lcom/winlator/xenvironment/XEnvironment;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 354
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static/range {p0 .. p0}, Lcom/wuyou/WlCrash;->install(Landroid/content/Context;)V

    .line 142
    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-static/range {p0 .. p0}, Lcom/winlator/core/AppUtils;->setActivityTheme(Landroid/app/Activity;)V

    .line 143
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-static/range {p0 .. p0}, Lcom/winlator/core/AppUtils;->hideSystemUI(Landroid/app/Activity;)V

    .line 145
    invoke-static/range {p0 .. p0}, Lcom/winlator/core/AppUtils;->keepScreenOn(Landroid/app/Activity;)V

    .line 146
    const v2, 0x7f0c00c2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 147
    invoke-static/range {p0 .. p0}, Lcom/winlator/services/ForegroundService;->startSession(Landroid/content/Context;)V

    .line 149
    new-instance v2, Lcom/winlator/core/PreloaderDialog;

    invoke-direct {v2, v0}, Lcom/winlator/core/PreloaderDialog;-><init>(Landroid/app/Activity;)V

    .line 150
    .local v2, "preloaderDialog":Lcom/winlator/core/PreloaderDialog;
    invoke-static/range {p0 .. p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, v0, Lcom/winlator/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    .line 151
    iget-object v3, v0, Lcom/winlator/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "use_android_clipboard_on_wine"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 152
    .local v3, "useAndroidClipboardOnWine":Z
    if-eqz v3, :cond_0

    const-string v4, "clipboard"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipboardManager;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-object v4, v0, Lcom/winlator/XServerDisplayActivity;->clipboardManager:Landroid/content/ClipboardManager;

    .line 154
    const v4, 0x7f090051

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v4, v0, Lcom/winlator/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 155
    iget-object v4, v0, Lcom/winlator/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v6, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 156
    iget-object v4, v0, Lcom/winlator/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v4, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 158
    const v4, 0x7f090097

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/navigation/NavigationView;

    .line 159
    .local v4, "navigationView":Lcom/google/android/material/navigation/NavigationView;
    invoke-static {}, Lcom/winlator/core/ProcessHelper;->removeAllDebugCallbacks()V

    .line 160
    iget-object v6, v0, Lcom/winlator/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v7, "enable_wine_debug"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v0, Lcom/winlator/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v7, "box64_logs"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-lt v6, v1, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    move v6, v5

    goto :goto_2

    :goto_1
    move v6, v1

    .line 161
    .local v6, "enableLogs":Z
    :goto_2
    if-eqz v6, :cond_3

    new-instance v7, Lcom/winlator/contentdialog/DebugDialog;

    invoke-direct {v7, v0}, Lcom/winlator/contentdialog/DebugDialog;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/winlator/XServerDisplayActivity;->debugDialog:Lcom/winlator/contentdialog/DebugDialog;

    invoke-static {v7}, Lcom/winlator/core/ProcessHelper;->addDebugCallback(Lcom/winlator/core/Callback;)V

    .line 162
    :cond_3
    invoke-virtual {v4}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v7

    .line 163
    .local v7, "menu":Landroid/view/Menu;
    const v8, 0x7f0901ea

    invoke-interface {v7, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 164
    invoke-virtual {v4, v0}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    .line 166
    invoke-static/range {p0 .. p0}, Lcom/winlator/xenvironment/RootFS;->find(Landroid/content/Context;)Lcom/winlator/xenvironment/RootFS;

    move-result-object v8

    iput-object v8, v0, Lcom/winlator/XServerDisplayActivity;->rootFS:Lcom/winlator/xenvironment/RootFS;

    .line 168
    invoke-direct/range {p0 .. p0}, Lcom/winlator/XServerDisplayActivity;->isGenerateWineprefix()Z

    move-result v8

    const-string v9, "exec_path"

    if-nez v8, :cond_b

    .line 169
    new-instance v8, Lcom/winlator/container/ContainerManager;

    invoke-direct {v8, v0}, Lcom/winlator/container/ContainerManager;-><init>(Landroid/content/Context;)V

    .line 170
    .local v8, "containerManager":Lcom/winlator/container/ContainerManager;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "container_id"

    invoke-virtual {v10, v11, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/winlator/container/ContainerManager;->getContainerById(I)Lcom/winlator/container/Container;

    move-result-object v10

    iput-object v10, v0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    .line 171
    iget-object v10, v0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v8, v10}, Lcom/winlator/container/ContainerManager;->activateContainer(Lcom/winlator/container/Container;)V

    iget-object v10, v0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-static {v0, v10}, Lcom/wuyou/CjkFontFix;->apply(Landroid/content/Context;Lcom/winlator/container/Container;)V

    .line 173
    iget-object v10, v0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    const-string v11, "wineprefixNeedsUpdate"

    invoke-virtual {v10, v11}, Lcom/winlator/container/Container;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "t"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 174
    .local v10, "wineprefixNeedsUpdate":Z
    if-eqz v10, :cond_4

    .line 175
    const v1, 0x7f10019a

    invoke-virtual {v2, v1}, Lcom/winlator/core/PreloaderDialog;->show(I)V

    .line 176
    new-instance v1, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/XServerDisplayActivity;)V

    invoke-static {v0, v1}, Lcom/winlator/core/WineUtils;->updateWineprefix(Landroid/content/Context;Lcom/winlator/core/Callback;)V

    .line 185
    return-void

    .line 188
    :cond_4
    new-instance v11, Lcom/winlator/core/Win32AppWorkarounds;

    invoke-direct {v11, v0}, Lcom/winlator/core/Win32AppWorkarounds;-><init>(Lcom/winlator/XServerDisplayActivity;)V

    iput-object v11, v0, Lcom/winlator/XServerDisplayActivity;->win32AppWorkarounds:Lcom/winlator/core/Win32AppWorkarounds;

    .line 190
    iget-object v11, v0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v11}, Lcom/winlator/container/Container;->getWineVersion()Ljava/lang/String;

    move-result-object v11

    .line 191
    .local v11, "wineVersion":Ljava/lang/String;
    invoke-static {v0, v11}, Lcom/winlator/core/WineInfo;->fromIdentifier(Landroid/content/Context;Ljava/lang/String;)Lcom/winlator/core/WineInfo;

    move-result-object v12

    iput-object v12, v0, Lcom/winlator/XServerDisplayActivity;->wineInfo:Lcom/winlator/core/WineInfo;

    .line 193
    iget-object v12, v0, Lcom/winlator/XServerDisplayActivity;->wineInfo:Lcom/winlator/core/WineInfo;

    sget-object v13, Lcom/winlator/core/WineInfo;->MAIN_WINE_INFO:Lcom/winlator/core/WineInfo;

    if-eq v12, v13, :cond_5

    iget-object v12, v0, Lcom/winlator/XServerDisplayActivity;->rootFS:Lcom/winlator/xenvironment/RootFS;

    iget-object v13, v0, Lcom/winlator/XServerDisplayActivity;->wineInfo:Lcom/winlator/core/WineInfo;

    iget-object v13, v13, Lcom/winlator/core/WineInfo;->path:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/winlator/xenvironment/RootFS;->setWinePath(Ljava/lang/String;)V

    .line 195
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "shortcut_path"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 196
    .local v12, "shortcutPath":Ljava/lang/String;
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    new-instance v13, Lcom/winlator/container/Shortcut;

    iget-object v14, v0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14, v15}, Lcom/winlator/container/Shortcut;-><init>(Lcom/winlator/container/Container;Ljava/io/File;)V

    iput-object v13, v0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    .line 198
    :cond_6
    iget-object v13, v0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v13}, Lcom/winlator/container/Container;->getGraphicsDriver()Ljava/lang/String;

    move-result-object v13

    .line 199
    .local v13, "graphicsDriver":Ljava/lang/String;
    iget-object v14, v0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v14}, Lcom/winlator/container/Container;->getAudioDriver()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v0, Lcom/winlator/XServerDisplayActivity;->audioDriver:Ljava/lang/String;

    .line 200
    iget-object v14, v0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v14}, Lcom/winlator/container/Container;->getDXWrapper()Ljava/lang/String;

    move-result-object v14

    .line 201
    .local v14, "dxwrapper":Ljava/lang/String;
    iget-object v15, v0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v15}, Lcom/winlator/container/Container;->getWinComponents()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Lcom/winlator/XServerDisplayActivity;->wincomponents:Ljava/lang/String;

    .line 202
    iget-object v15, v0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v15}, Lcom/winlator/container/Container;->getDXWrapperConfig()Ljava/lang/String;

    move-result-object v15

    .line 203
    .local v15, "dxwrapperConfig":Ljava/lang/String;
    iget-object v1, v0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v1}, Lcom/winlator/container/Container;->getGraphicsDriverConfig()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "graphicsDriverConfig":Ljava/lang/String;
    new-instance v5, Lcom/winlator/core/KeyValueSet;

    move-object/from16 v16, v1

    .end local v1    # "graphicsDriverConfig":Ljava/lang/String;
    .local v16, "graphicsDriverConfig":Ljava/lang/String;
    iget-object v1, v0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v1}, Lcom/winlator/container/Container;->getAudioDriverConfig()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/winlator/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    iput-object v5, v0, Lcom/winlator/XServerDisplayActivity;->audioDriverConfig:Lcom/winlator/core/KeyValueSet;

    .line 205
    new-instance v1, Lcom/winlator/xserver/ScreenInfo;

    iget-object v5, v0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v5}, Lcom/winlator/container/Container;->getScreenSize()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/winlator/xserver/ScreenInfo;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/winlator/XServerDisplayActivity;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    .line 207
    iget-object v1, v0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    if-eqz v1, :cond_9

    .line 208
    iget-object v1, v0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v5, v0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v5}, Lcom/winlator/container/Container;->getGraphicsDriver()Ljava/lang/String;

    move-result-object v5

    move/from16 v17, v3

    .end local v3    # "useAndroidClipboardOnWine":Z
    .local v17, "useAndroidClipboardOnWine":Z
    const-string v3, "graphicsDriver"

    invoke-virtual {v1, v3, v5}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 209
    iget-object v1, v0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v3, v0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v3}, Lcom/winlator/container/Container;->getAudioDriver()Ljava/lang/String;

    move-result-object v3

    const-string v5, "audioDriver"

    invoke-virtual {v1, v5, v3}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/winlator/XServerDisplayActivity;->audioDriver:Ljava/lang/String;

    .line 210
    iget-object v1, v0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v3, v0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v3}, Lcom/winlator/container/Container;->getDXWrapper()Ljava/lang/String;

    move-result-object v3

    const-string v5, "dxwrapper"

    invoke-virtual {v1, v5, v3}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 211
    iget-object v1, v0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v3, v0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v3}, Lcom/winlator/container/Container;->getWinComponents()Ljava/lang/String;

    move-result-object v3

    const-string v5, "wincomponents"

    invoke-virtual {v1, v5, v3}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/winlator/XServerDisplayActivity;->wincomponents:Ljava/lang/String;

    .line 212
    iget-object v1, v0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v3, v0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v3}, Lcom/winlator/container/Container;->getDXWrapperConfig()Ljava/lang/String;

    move-result-object v3

    const-string v5, "dxwrapperConfig"

    invoke-virtual {v1, v5, v3}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 213
    iget-object v1, v0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v3, v0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v3}, Lcom/winlator/container/Container;->getGraphicsDriverConfig()Ljava/lang/String;

    move-result-object v3

    const-string v5, "graphicsDriverConfig"

    invoke-virtual {v1, v5, v3}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .end local v16    # "graphicsDriverConfig":Ljava/lang/String;
    .restart local v1    # "graphicsDriverConfig":Ljava/lang/String;
    new-instance v3, Lcom/winlator/core/KeyValueSet;

    iget-object v5, v0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    move-object/from16 v16, v1

    .end local v1    # "graphicsDriverConfig":Ljava/lang/String;
    .restart local v16    # "graphicsDriverConfig":Ljava/lang/String;
    iget-object v1, v0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v1}, Lcom/winlator/container/Container;->getAudioDriverConfig()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v18, v4

    .end local v4    # "navigationView":Lcom/google/android/material/navigation/NavigationView;
    .local v18, "navigationView":Lcom/google/android/material/navigation/NavigationView;
    const-string v4, "audioDriverConfig"

    invoke-virtual {v5, v4, v1}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/winlator/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/winlator/XServerDisplayActivity;->audioDriverConfig:Lcom/winlator/core/KeyValueSet;

    .line 215
    new-instance v1, Lcom/winlator/xserver/ScreenInfo;

    iget-object v3, v0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v4, v0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v4}, Lcom/winlator/container/Container;->getScreenSize()Ljava/lang/String;

    move-result-object v4

    const-string v5, "screenSize"

    invoke-virtual {v3, v5, v4}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/winlator/xserver/ScreenInfo;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/winlator/XServerDisplayActivity;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    .line 217
    iget-object v1, v0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    const-string v3, "dinputMapperType"

    invoke-virtual {v1, v3}, Lcom/winlator/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "dinputMapperType":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/winlator/XServerDisplayActivity;->winHandler:Lcom/winlator/winhandler/WinHandler;

    iget-object v3, v3, Lcom/winlator/winhandler/WinHandler;->gamepadHandler:Lcom/winlator/winhandler/GamepadHandler;

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    invoke-virtual {v3, v4}, Lcom/winlator/winhandler/GamepadHandler;->setDInputMapperType(B)V

    .line 220
    :cond_7
    iget-object v3, v0, Lcom/winlator/XServerDisplayActivity;->win32AppWorkarounds:Lcom/winlator/core/Win32AppWorkarounds;

    iget-object v4, v0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v4, v4, Lcom/winlator/container/Shortcut;->wmClass:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v4, v4, Lcom/winlator/container/Shortcut;->wmClass:Ljava/lang/String;

    goto :goto_3

    :cond_8
    iget-object v4, v0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    iget-object v4, v4, Lcom/winlator/container/Shortcut;->path:Ljava/lang/String;

    :goto_3
    invoke-virtual {v3, v4}, Lcom/winlator/core/Win32AppWorkarounds;->applyStartupWorkarounds(Ljava/lang/String;)V

    .line 221
    .end local v1    # "dinputMapperType":Ljava/lang/String;
    move-object/from16 v1, v16

    goto :goto_4

    .line 223
    .end local v17    # "useAndroidClipboardOnWine":Z
    .end local v18    # "navigationView":Lcom/google/android/material/navigation/NavigationView;
    .restart local v3    # "useAndroidClipboardOnWine":Z
    .restart local v4    # "navigationView":Lcom/google/android/material/navigation/NavigationView;
    :cond_9
    move/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3    # "useAndroidClipboardOnWine":Z
    .end local v4    # "navigationView":Lcom/google/android/material/navigation/NavigationView;
    .restart local v17    # "useAndroidClipboardOnWine":Z
    .restart local v18    # "navigationView":Lcom/google/android/material/navigation/NavigationView;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 224
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/winlator/XServerDisplayActivity;->win32AppWorkarounds:Lcom/winlator/core/Win32AppWorkarounds;

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/winlator/core/FileUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/winlator/core/Win32AppWorkarounds;->applyStartupWorkarounds(Ljava/lang/String;)V

    .line 227
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_a
    move-object/from16 v1, v16

    .end local v16    # "graphicsDriverConfig":Ljava/lang/String;
    .local v1, "graphicsDriverConfig":Ljava/lang/String;
    :goto_4
    invoke-static {v13}, Lcom/winlator/container/GraphicsDrivers;->parseIdentifiers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/winlator/XServerDisplayActivity;->graphicsDriver:[Ljava/lang/String;

    .line 228
    invoke-static {v13, v1}, Lcom/winlator/container/GraphicsDrivers;->parseConfigs(Ljava/lang/String;Ljava/lang/String;)[Lcom/winlator/core/KeyValueSet;

    move-result-object v3

    iput-object v3, v0, Lcom/winlator/XServerDisplayActivity;->graphicsDriverConfig:[Lcom/winlator/core/KeyValueSet;

    .line 229
    invoke-static {v14}, Lcom/winlator/container/DXWrappers;->parseIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/winlator/XServerDisplayActivity;->dxwrapper:Ljava/lang/String;

    .line 230
    invoke-static {v14, v15}, Lcom/winlator/container/DXWrappers;->parseConfigs(Ljava/lang/String;Ljava/lang/String;)[Lcom/winlator/core/KeyValueSet;

    move-result-object v3

    iput-object v3, v0, Lcom/winlator/XServerDisplayActivity;->dxwrapperConfig:[Lcom/winlator/core/KeyValueSet;

    goto :goto_5

    .line 168
    .end local v1    # "graphicsDriverConfig":Ljava/lang/String;
    .end local v8    # "containerManager":Lcom/winlator/container/ContainerManager;
    .end local v10    # "wineprefixNeedsUpdate":Z
    .end local v11    # "wineVersion":Ljava/lang/String;
    .end local v12    # "shortcutPath":Ljava/lang/String;
    .end local v13    # "graphicsDriver":Ljava/lang/String;
    .end local v14    # "dxwrapper":Ljava/lang/String;
    .end local v15    # "dxwrapperConfig":Ljava/lang/String;
    .end local v17    # "useAndroidClipboardOnWine":Z
    .end local v18    # "navigationView":Lcom/google/android/material/navigation/NavigationView;
    .restart local v3    # "useAndroidClipboardOnWine":Z
    .restart local v4    # "navigationView":Lcom/google/android/material/navigation/NavigationView;
    :cond_b
    move/from16 v17, v3

    move-object/from16 v18, v4

    .line 233
    .end local v3    # "useAndroidClipboardOnWine":Z
    .end local v4    # "navigationView":Lcom/google/android/material/navigation/NavigationView;
    .restart local v17    # "useAndroidClipboardOnWine":Z
    .restart local v18    # "navigationView":Lcom/google/android/material/navigation/NavigationView;
    :goto_5
    const v1, 0x7f100176

    invoke-virtual {v2, v1}, Lcom/winlator/core/PreloaderDialog;->show(I)V

    .line 235
    new-instance v1, Lcom/winlator/inputcontrols/InputControlsManager;

    invoke-direct {v1, v0}, Lcom/winlator/inputcontrols/InputControlsManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/winlator/XServerDisplayActivity;->inputControlsManager:Lcom/winlator/inputcontrols/InputControlsManager;

    .line 236
    new-instance v1, Lcom/winlator/xserver/XServer;

    iget-object v3, v0, Lcom/winlator/XServerDisplayActivity;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    invoke-direct {v1, v0, v3}, Lcom/winlator/xserver/XServer;-><init>(Lcom/winlator/XServerDisplayActivity;Lcom/winlator/xserver/ScreenInfo;)V

    iput-object v1, v0, Lcom/winlator/XServerDisplayActivity;->xServer:Lcom/winlator/xserver/XServer;

    .line 237
    iget-object v1, v0, Lcom/winlator/XServerDisplayActivity;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v3, v0, Lcom/winlator/XServerDisplayActivity;->winHandler:Lcom/winlator/winhandler/WinHandler;

    invoke-virtual {v1, v3}, Lcom/winlator/xserver/XServer;->setWinHandler(Lcom/winlator/winhandler/WinHandler;)V

    .line 238
    iget-object v1, v0, Lcom/winlator/XServerDisplayActivity;->shortcut:Lcom/winlator/container/Shortcut;

    if-nez v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    goto :goto_6

    :cond_d
    const/4 v1, 0x0

    goto :goto_7

    :goto_6
    const/4 v1, 0x1

    :goto_7
    const/4 v3, 0x2

    new-array v3, v3, [Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v4

    const/4 v4, 0x1

    aput-boolean v1, v3, v4

    move-object v1, v3

    .line 239
    .local v1, "flags":[Z
    iget-object v3, v0, Lcom/winlator/XServerDisplayActivity;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    new-instance v4, Lcom/winlator/XServerDisplayActivity$1;

    invoke-direct {v4, v0, v1, v2}, Lcom/winlator/XServerDisplayActivity$1;-><init>(Lcom/winlator/XServerDisplayActivity;[ZLcom/winlator/core/PreloaderDialog;)V

    invoke-virtual {v3, v4}, Lcom/winlator/xserver/WindowManager;->addOnWindowModificationListener(Lcom/winlator/xserver/WindowManager$OnWindowModificationListener;)V

    .line 268
    invoke-direct/range {p0 .. p0}, Lcom/winlator/XServerDisplayActivity;->setupUI()V

    .line 270
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/XServerDisplayActivity;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 278
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->winHandler:Lcom/winlator/winhandler/WinHandler;

    invoke-virtual {v0}, Lcom/winlator/winhandler/WinHandler;->stop()V

    .line 341
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->environment:Lcom/winlator/xenvironment/XEnvironment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->environment:Lcom/winlator/xenvironment/XEnvironment;

    invoke-virtual {v0}, Lcom/winlator/xenvironment/XEnvironment;->stopEnvironmentComponents()V

    .line 342
    :cond_0
    invoke-static {p0}, Lcom/winlator/services/ForegroundService;->stopSession(Landroid/content/Context;)V

    .line 343
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 344
    return-void
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 358
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->xServerView:Lcom/winlator/widget/XServerView;

    invoke-virtual {v0}, Lcom/winlator/widget/XServerView;->getRenderer()Lcom/winlator/renderer/GLRenderer;

    move-result-object v0

    .line 359
    .local v0, "renderer":Lcom/winlator/renderer/GLRenderer;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    .line 413
    :sswitch_0
    invoke-direct {p0}, Lcom/winlator/XServerDisplayActivity;->showTouchpadHelpDialog()V

    .line 414
    goto/16 :goto_0

    .line 369
    :sswitch_1
    invoke-virtual {v0}, Lcom/winlator/renderer/GLRenderer;->toggleFullscreen()V

    .line 370
    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 371
    goto/16 :goto_0

    .line 373
    :sswitch_2
    new-instance v1, Lcom/winlator/winhandler/TaskManagerDialog;

    invoke-direct {v1, p0}, Lcom/winlator/winhandler/TaskManagerDialog;-><init>(Lcom/winlator/XServerDisplayActivity;)V

    invoke-virtual {v1}, Lcom/winlator/winhandler/TaskManagerDialog;->show()V

    .line 374
    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 375
    goto/16 :goto_0

    .line 398
    :sswitch_3
    new-instance v1, Lcom/winlator/contentdialog/ScreenEffectDialog;

    invoke-direct {v1, p0}, Lcom/winlator/contentdialog/ScreenEffectDialog;-><init>(Lcom/winlator/XServerDisplayActivity;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 399
    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 400
    goto/16 :goto_0

    .line 402
    :sswitch_4
    new-instance v1, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v1}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    .line 403
    invoke-virtual {v2}, Lcom/winlator/xserver/ScreenInfo;->aspectRatio()Landroid/util/Rational;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    move-result-object v1

    .line 404
    invoke-virtual {v1}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v1

    .line 405
    .local v1, "pipParams":Landroid/app/PictureInPictureParams;
    invoke-virtual {p0, v1}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    .line 406
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 407
    goto :goto_0

    .line 381
    .end local v1    # "pipParams":Landroid/app/PictureInPictureParams;
    :sswitch_5
    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->magnifierView:Lcom/winlator/widget/MagnifierView;

    if-nez v1, :cond_0

    .line 382
    const v1, 0x7f09005f

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 383
    .local v1, "container":Landroid/widget/FrameLayout;
    new-instance v2, Lcom/winlator/widget/MagnifierView;

    invoke-direct {v2, p0}, Lcom/winlator/widget/MagnifierView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/winlator/XServerDisplayActivity;->magnifierView:Lcom/winlator/widget/MagnifierView;

    .line 384
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->magnifierView:Lcom/winlator/widget/MagnifierView;

    new-instance v3, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v0}, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/XServerDisplayActivity;Lcom/winlator/renderer/GLRenderer;)V

    invoke-virtual {v2, v3}, Lcom/winlator/widget/MagnifierView;->setZoomButtonCallback(Lcom/winlator/core/Callback;)V

    .line 388
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->magnifierView:Lcom/winlator/widget/MagnifierView;

    invoke-virtual {v0}, Lcom/winlator/renderer/GLRenderer;->getMagnifierZoom()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/winlator/widget/MagnifierView;->setZoomValue(F)V

    .line 389
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->magnifierView:Lcom/winlator/widget/MagnifierView;

    new-instance v3, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v1}, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/XServerDisplayActivity;Landroid/widget/FrameLayout;)V

    invoke-virtual {v2, v3}, Lcom/winlator/widget/MagnifierView;->setHideButtonCallback(Ljava/lang/Runnable;)V

    .line 393
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->magnifierView:Lcom/winlator/widget/MagnifierView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 395
    .end local v1    # "container":Landroid/widget/FrameLayout;
    :cond_0
    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 396
    goto :goto_0

    .line 409
    :sswitch_6
    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->debugDialog:Lcom/winlator/contentdialog/DebugDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 410
    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 411
    goto :goto_0

    .line 361
    :sswitch_7
    invoke-virtual {p0}, Lcom/winlator/XServerDisplayActivity;->wlShowKeyboard()V

    .line 362
    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 363
    goto :goto_0

    .line 365
    :sswitch_8
    invoke-direct {p0}, Lcom/winlator/XServerDisplayActivity;->showInputControlsDialog()V

    .line 366
    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 367
    goto :goto_0

    .line 416
    :sswitch_9
    invoke-direct {p0}, Lcom/winlator/XServerDisplayActivity;->exit()V

    goto :goto_0

    .line 377
    :sswitch_a
    new-instance v1, Lcom/winlator/contentdialog/ActiveWindowsDialog;

    invoke-direct {v1, p0}, Lcom/winlator/contentdialog/ActiveWindowsDialog;-><init>(Lcom/winlator/XServerDisplayActivity;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 378
    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 379
    nop

    .line 419
    :goto_0
    const/4 v1, 0x1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901d6 -> :sswitch_a
        0x7f0901e2 -> :sswitch_9
        0x7f0901e6 -> :sswitch_8
        0x7f0901e8 -> :sswitch_7
        0x7f0901ea -> :sswitch_6
        0x7f0901eb -> :sswitch_5
        0x7f0901ef -> :sswitch_4
        0x7f0901f3 -> :sswitch_3
        0x7f0901f6 -> :sswitch_2
        0x7f0901f7 -> :sswitch_1
        0x7f0901f8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .line 324
    invoke-static {p0}, Lcom/winlator/services/ForegroundService;->onPauseSession(Landroid/content/Context;)V

    .line 325
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 326
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->environment:Lcom/winlator/xenvironment/XEnvironment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->environment:Lcom/winlator/xenvironment/XEnvironment;

    invoke-virtual {v0}, Lcom/winlator/xenvironment/XEnvironment;->onPause()V

    .line 328
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->xServerView:Lcom/winlator/widget/XServerView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 330
    :cond_0
    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0
    .param p1, "isInPictureInPictureMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 334
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 335
    invoke-static {p1}, Lcom/winlator/services/ForegroundService;->setPipMode(Z)V

    .line 336
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 314
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 315
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->environment:Lcom/winlator/xenvironment/XEnvironment;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->xServerView:Lcom/winlator/widget/XServerView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 317
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->environment:Lcom/winlator/xenvironment/XEnvironment;

    invoke-virtual {v0}, Lcom/winlator/xenvironment/XEnvironment;->onResume()V

    .line 319
    :cond_0
    invoke-static {p0}, Lcom/winlator/services/ForegroundService;->onResumeSession(Landroid/content/Context;)V

    .line 320
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .line 298
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 300
    if-eqz p1, :cond_1

    .line 301
    iget-boolean v0, p0, Lcom/winlator/XServerDisplayActivity;->capturePointerOnExternalMouse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->touchpadView:Lcom/winlator/widget/TouchpadView;

    invoke-virtual {v0}, Landroid/view/View;->requestPointerCapture()V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->winHandler:Lcom/winlator/winhandler/WinHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity;->clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 305
    .local v0, "primaryClip":Landroid/content/ClipData;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 306
    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->winHandler:Lcom/winlator/winhandler/WinHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/winhandler/WinHandler;->setClipboardData(Ljava/lang/String;)V

    .line 310
    .end local v0    # "primaryClip":Landroid/content/ClipData;
    :cond_1
    return-void
.end method

.method public setDXWrapper(Ljava/lang/String;)V
    .locals 0
    .param p1, "dxwrapper"    # Ljava/lang/String;

    .line 1023
    iput-object p1, p0, Lcom/winlator/XServerDisplayActivity;->dxwrapper:Ljava/lang/String;

    .line 1024
    return-void
.end method

.method public setScreenEffectProfile(Ljava/lang/String;)V
    .locals 0
    .param p1, "screenEffectProfile"    # Ljava/lang/String;

    .line 1051
    iput-object p1, p0, Lcom/winlator/XServerDisplayActivity;->screenEffectProfile:Ljava/lang/String;

    .line 1052
    return-void
.end method

.method public setScreenInfo(Lcom/winlator/xserver/ScreenInfo;)V
    .locals 0
    .param p1, "screenInfo"    # Lcom/winlator/xserver/ScreenInfo;

    .line 1031
    iput-object p1, p0, Lcom/winlator/XServerDisplayActivity;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    .line 1032
    return-void
.end method

.method public setWinComponents(Ljava/lang/String;)V
    .locals 0
    .param p1, "wincomponents"    # Ljava/lang/String;

    .line 1039
    iput-object p1, p0, Lcom/winlator/XServerDisplayActivity;->wincomponents:Ljava/lang/String;

    .line 1040
    return-void
.end method

.method public verifyUserRegistry()Z
    .locals 6

    .line 1113
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity;->rootFS:Lcom/winlator/xenvironment/RootFS;

    invoke-virtual {v1}, Lcom/winlator/xenvironment/RootFS;->getRootDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "/home/xuser/.wine/user.reg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1114
    .local v0, "userRegFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1116
    .local v1, "lastModified":Ljava/lang/String;
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    const-string v3, "userRegLastModified"

    invoke-virtual {v2, v3}, Lcom/winlator/container/Container;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1117
    new-instance v2, Lcom/winlator/core/WineRegistryEditor;

    invoke-direct {v2, v0}, Lcom/winlator/core/WineRegistryEditor;-><init>(Ljava/io/File;)V

    .line 1118
    .local v2, "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    :try_start_0
    const-string v4, "Software\\Wow6432Node\\Wine"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/winlator/core/WineRegistryEditor;->removeKey(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1119
    invoke-virtual {v2}, Lcom/winlator/core/WineRegistryEditor;->close()V

    .line 1121
    .end local v2    # "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    iget-object v2, p0, Lcom/winlator/XServerDisplayActivity;->container:Lcom/winlator/container/Container;

    invoke-virtual {v2, v3, v1}, Lcom/winlator/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1122
    return v5

    .line 1117
    .restart local v2    # "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    :catchall_0
    move-exception v3

    :try_start_1
    invoke-virtual {v2}, Lcom/winlator/core/WineRegistryEditor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3

    .line 1124
    .end local v2    # "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
