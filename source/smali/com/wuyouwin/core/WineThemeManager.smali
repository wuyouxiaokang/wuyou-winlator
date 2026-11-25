.class public abstract Lcom/wuyouwin/core/WineThemeManager;
.super Ljava/lang/Object;
.source "WineThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/core/WineThemeManager$ThemeInfo;,
        Lcom/wuyouwin/core/WineThemeManager$BackgroundType;,
        Lcom/wuyouwin/core/WineThemeManager$Theme;
    }
.end annotation


# static fields
.field public static final DEFAULT_DESKTOP_THEME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wuyouwin/core/WineThemeManager$Theme;->LIGHT:Lcom/wuyouwin/core/WineThemeManager$Theme;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/wuyouwin/core/WineThemeManager$BackgroundType;->IMAGE:Lcom/wuyouwin/core/WineThemeManager$BackgroundType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",#ffffff,wallpaper-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wuyouwin/core/WineThemeManager;->DEFAULT_DESKTOP_THEME:Ljava/lang/String;

    return-void
.end method

.method public static apply(Landroid/content/Context;Lcom/wuyouwin/core/WineThemeManager$ThemeInfo;Lcom/wuyouwin/xserver/ScreenInfo;)V
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeInfo"    # Lcom/wuyouwin/core/WineThemeManager$ThemeInfo;
    .param p2, "screenInfo"    # Lcom/wuyouwin/xserver/ScreenInfo;

    .line 52
    move-object/from16 v1, p1

    const-string v0, "96 125 139"

    const-string v2, "158 158 158"

    const-string v3, "33 33 33"

    const-string v4, "48 48 48"

    const-string v5, "245 245 245"

    invoke-static/range {p0 .. p0}, Lcom/wuyouwin/xenvironment/RootFS;->find(Landroid/content/Context;)Lcom/wuyouwin/xenvironment/RootFS;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wuyouwin/xenvironment/RootFS;->getRootDir()Ljava/io/File;

    move-result-object v6

    .line 53
    .local v6, "rootDir":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string v8, "/home/xuser/.wine/user.reg"

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .local v7, "userRegFile":Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v1, Lcom/wuyouwin/core/WineThemeManager$ThemeInfo;->backgroundColor:I

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/wuyouwin/core/WineThemeManager$ThemeInfo;->backgroundColor:I

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/wuyouwin/core/WineThemeManager$ThemeInfo;->backgroundColor:I

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 56
    .local v8, "background":Ljava/lang/String;
    iget-object v9, v1, Lcom/wuyouwin/core/WineThemeManager$ThemeInfo;->backgroundType:Lcom/wuyouwin/core/WineThemeManager$BackgroundType;

    sget-object v10, Lcom/wuyouwin/core/WineThemeManager$BackgroundType;->IMAGE:Lcom/wuyouwin/core/WineThemeManager$BackgroundType;

    if-ne v9, v10, :cond_0

    iget-object v9, v1, Lcom/wuyouwin/core/WineThemeManager$ThemeInfo;->wallpaperId:Ljava/lang/String;

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    invoke-static {v10, v9, v11}, Lcom/wuyouwin/core/WineThemeManager;->createWallpaperBMPFile(Landroid/content/Context;Ljava/lang/String;Lcom/wuyouwin/xserver/ScreenInfo;)V

    goto :goto_0

    :cond_0
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    .line 58
    :goto_0
    new-instance v9, Lcom/wuyouwin/core/WineRegistryEditor;

    invoke-direct {v9, v7}, Lcom/wuyouwin/core/WineRegistryEditor;-><init>(Ljava/io/File;)V

    .line 59
    .local v9, "registryEditor":Lcom/wuyouwin/core/WineRegistryEditor;
    :try_start_0
    iget-object v12, v1, Lcom/wuyouwin/core/WineThemeManager$ThemeInfo;->backgroundType:Lcom/wuyouwin/core/WineThemeManager$BackgroundType;

    sget-object v13, Lcom/wuyouwin/core/WineThemeManager$BackgroundType;->IMAGE:Lcom/wuyouwin/core/WineThemeManager$BackgroundType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v14, "Wallpaper"

    const-string v15, "Control Panel\\Desktop"

    if-ne v12, v13, :cond_1

    .line 60
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wuyouwin/xenvironment/RootFS;->getDosUserCachePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\\wallpaper.bmp"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v15, v14, v12}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 58
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    goto/16 :goto_3

    .line 62
    :cond_1
    :try_start_2
    invoke-virtual {v9, v15, v14}, Lcom/wuyouwin/core/WineRegistryEditor;->removeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_1
    iget-object v12, v1, Lcom/wuyouwin/core/WineThemeManager$ThemeInfo;->theme:Lcom/wuyouwin/core/WineThemeManager$Theme;

    sget-object v13, Lcom/wuyouwin/core/WineThemeManager$Theme;->LIGHT:Lcom/wuyouwin/core/WineThemeManager$Theme;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v14, "ButtonShadow"

    const-string v15, "ButtonLight"

    move-object/from16 v16, v6

    .end local v6    # "rootDir":Ljava/io/File;
    .local v16, "rootDir":Ljava/io/File;
    const-string v6, "ButtonHilight"

    move-object/from16 v17, v7

    .end local v7    # "userRegFile":Ljava/io/File;
    .local v17, "userRegFile":Ljava/io/File;
    const-string v7, "ButtonFace"

    const-string v10, "ButtonDkShadow"

    const-string v11, "ButtonAlternateFace"

    move-object/from16 v18, v3

    const-string v3, "Background"

    move-object/from16 v19, v4

    const-string v4, "ActiveTitle"

    const-string v1, "ActiveBorder"

    move-object/from16 v20, v14

    const-string v14, "117 117 117"

    move-object/from16 v21, v14

    const-string v14, "2 136 209"

    move-object/from16 v22, v14

    const-string v14, "0 0 0"

    move-object/from16 v23, v14

    const-string v14, "255 255 255"

    move-object/from16 v24, v14

    const-string v14, "Control Panel\\Colors"

    if-ne v12, v13, :cond_2

    .line 65
    :try_start_3
    invoke-virtual {v9, v14, v1, v5}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v9, v14, v4, v0}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v9, v14, v3, v8}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v9, v14, v11, v5}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v9, v14, v10, v2}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v9, v14, v7, v5}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "224 224 224"

    invoke-virtual {v9, v14, v6, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    move-object/from16 v12, v24

    invoke-virtual {v9, v14, v15, v12}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    move-object/from16 v13, v20

    invoke-virtual {v9, v14, v13, v2}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "ButtonText"

    move-object/from16 v3, v23

    invoke-virtual {v9, v14, v1, v3}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "GradientActiveTitle"

    invoke-virtual {v9, v14, v1, v0}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "GradientInactiveTitle"

    move-object/from16 v1, v21

    invoke-virtual {v9, v14, v0, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "GrayText"

    invoke-virtual {v9, v14, v0, v2}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "Hilight"

    move-object/from16 v4, v22

    invoke-virtual {v9, v14, v0, v4}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "HilightText"

    invoke-virtual {v9, v14, v0, v12}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "HotTrackingColor"

    invoke-virtual {v9, v14, v0, v4}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "InactiveBorder"

    invoke-virtual {v9, v14, v0, v12}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "InactiveTitle"

    invoke-virtual {v9, v14, v0, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "InactiveTitleText"

    const-string v1, "200 200 200"

    invoke-virtual {v9, v14, v0, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "InfoText"

    invoke-virtual {v9, v14, v0, v3}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "InfoWindow"

    invoke-virtual {v9, v14, v0, v12}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "Menu"

    invoke-virtual {v9, v14, v0, v5}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "MenuBar"

    invoke-virtual {v9, v14, v0, v5}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "MenuHilight"

    invoke-virtual {v9, v14, v0, v4}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "MenuText"

    invoke-virtual {v9, v14, v0, v3}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "Scrollbar"

    invoke-virtual {v9, v14, v0, v5}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "TitleText"

    invoke-virtual {v9, v14, v0, v12}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "Window"

    invoke-virtual {v9, v14, v0, v5}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "WindowFrame"

    invoke-virtual {v9, v14, v0, v2}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "WindowText"

    invoke-virtual {v9, v14, v0, v3}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 58
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_3

    .line 96
    :cond_2
    move-object/from16 v13, v20

    move-object/from16 v0, v21

    move-object/from16 v2, v22

    move-object/from16 v5, v23

    move-object/from16 v12, v24

    move-object v2, v1

    move-object/from16 v1, p1

    iget-object v0, v1, Lcom/wuyouwin/core/WineThemeManager$ThemeInfo;->theme:Lcom/wuyouwin/core/WineThemeManager$Theme;

    sget-object v1, Lcom/wuyouwin/core/WineThemeManager$Theme;->DARK:Lcom/wuyouwin/core/WineThemeManager$Theme;

    if-ne v0, v1, :cond_3

    .line 97
    move-object/from16 v0, v19

    invoke-virtual {v9, v14, v2, v0}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    move-object/from16 v1, v18

    invoke-virtual {v9, v14, v4, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v9, v14, v3, v8}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v9, v14, v11, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v9, v14, v10, v5}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v9, v14, v7, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v9, v14, v6, v0}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v9, v14, v15, v0}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v9, v14, v13, v5}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v2, "ButtonText"

    invoke-virtual {v9, v14, v2, v12}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v2, "GradientActiveTitle"

    invoke-virtual {v9, v14, v2, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v2, "GradientInactiveTitle"

    invoke-virtual {v9, v14, v2, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v2, "GrayText"

    move-object/from16 v3, v21

    invoke-virtual {v9, v14, v2, v3}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v2, "Hilight"

    move-object/from16 v4, v22

    invoke-virtual {v9, v14, v2, v4}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v2, "HilightText"

    invoke-virtual {v9, v14, v2, v12}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v2, "HotTrackingColor"

    invoke-virtual {v9, v14, v2, v4}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v2, "InactiveBorder"

    invoke-virtual {v9, v14, v2, v0}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v2, "InactiveTitle"

    invoke-virtual {v9, v14, v2, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v2, "InactiveTitleText"

    invoke-virtual {v9, v14, v2, v3}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v2, "InfoText"

    invoke-virtual {v9, v14, v2, v12}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v2, "InfoWindow"

    invoke-virtual {v9, v14, v2, v12}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v2, "Menu"

    invoke-virtual {v9, v14, v2, v1}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "MenuBar"

    invoke-virtual {v9, v14, v1, v0}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "MenuHilight"

    invoke-virtual {v9, v14, v1, v4}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v1, "MenuText"

    invoke-virtual {v9, v14, v1, v12}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v1, "Scrollbar"

    invoke-virtual {v9, v14, v1, v0}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "TitleText"

    invoke-virtual {v9, v14, v1, v12}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "Window"

    invoke-virtual {v9, v14, v1, v0}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "WindowFrame"

    invoke-virtual {v9, v14, v0, v5}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "WindowText"

    invoke-virtual {v9, v14, v0, v12}, Lcom/wuyouwin/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 128
    :cond_3
    :goto_2
    invoke-virtual {v9}, Lcom/wuyouwin/core/WineRegistryEditor;->close()V

    .line 129
    .end local v9    # "registryEditor":Lcom/wuyouwin/core/WineRegistryEditor;
    return-void

    .line 58
    .end local v16    # "rootDir":Ljava/io/File;
    .end local v17    # "userRegFile":Ljava/io/File;
    .restart local v6    # "rootDir":Ljava/io/File;
    .restart local v7    # "userRegFile":Ljava/io/File;
    .restart local v9    # "registryEditor":Lcom/wuyouwin/core/WineRegistryEditor;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object v1, v0

    .end local v6    # "rootDir":Ljava/io/File;
    .end local v7    # "userRegFile":Ljava/io/File;
    .restart local v16    # "rootDir":Ljava/io/File;
    .restart local v17    # "userRegFile":Ljava/io/File;
    :goto_3
    :try_start_4
    invoke-virtual {v9}, Lcom/wuyouwin/core/WineRegistryEditor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1
.end method

.method private static createWallpaperBMPFile(Landroid/content/Context;Ljava/lang/String;Lcom/wuyouwin/xserver/ScreenInfo;)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wallpaperId"    # Ljava/lang/String;
    .param p2, "screenInfo"    # Lcom/wuyouwin/xserver/ScreenInfo;

    .line 132
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/16 v4, 0x1e0

    .line 133
    .local v4, "outputHeight":I
    iget-short v0, v3, Lcom/wuyouwin/xserver/ScreenInfo;->height:S

    int-to-float v0, v0

    const/high16 v5, 0x43f00000    # 480.0f

    div-float v0, v5, v0

    iget-short v6, v3, Lcom/wuyouwin/xserver/ScreenInfo;->width:S

    int-to-float v6, v6

    mul-float/2addr v0, v6

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 135
    .local v6, "outputWidth":I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v7, 0x1e0

    invoke-static {v6, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 136
    .local v8, "outputBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v0, v9}, Landroid/graphics/Paint;-><init>(I)V

    move-object v9, v0

    .line 137
    .local v9, "paint":Landroid/graphics/Paint;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v15, v0

    .line 139
    .local v15, "canvas":Landroid/graphics/Canvas;
    invoke-static/range {p0 .. p0}, Lcom/wuyouwin/core/WineThemeManager;->getUserWallpaperFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v16

    .line 140
    .local v16, "userWallpaperFile":Ljava/io/File;
    const-string v0, "user-wallpaper"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v14, 0x0

    if-eqz v0, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 142
    .local v0, "image":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v5, v14, v14, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 143
    .local v5, "srcRect":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v14, v14, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v10

    .line 144
    .local v7, "dstRect":Landroid/graphics/Rect;
    invoke-virtual {v15, v0, v5, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 145
    .end local v0    # "image":Landroid/graphics/Bitmap;
    .end local v5    # "srcRect":Landroid/graphics/Rect;
    .end local v7    # "dstRect":Landroid/graphics/Rect;
    move-object v13, v15

    goto/16 :goto_1

    .line 146
    :cond_0
    const-string v0, "wallpaper-"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wallpapers/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 150
    .local v7, "wallpaperDir":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/config.json"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/wuyouwin/core/FileUtils;->readString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .local v0, "config":Lorg/json/JSONObject;
    nop

    .line 156
    const-string v10, "primaryColor"

    const-string v11, "#ffffff"

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    .line 157
    .local v13, "primaryColor":I
    const-string v10, "secondaryColor"

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    .line 158
    .local v12, "secondaryColor":I
    const-string v10, "orientation"

    const-string v11, "none"

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 159
    .local v11, "orientation":Ljava/lang/String;
    const-string v10, "scale"

    move-object/from16 v17, v15

    .end local v15    # "canvas":Landroid/graphics/Canvas;
    .local v17, "canvas":Landroid/graphics/Canvas;
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v10, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    double-to-float v15, v14

    .line 160
    .local v15, "scale":F
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/image.png"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/wuyouwin/core/ImageUtils;->getBitmapFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 161
    .local v14, "wallpaperBitmap":Landroid/graphics/Bitmap;
    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 163
    const-string v10, "horizontal"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/high16 v19, 0x3f000000    # 0.5f

    if-eqz v10, :cond_1

    .line 164
    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    int-to-float v10, v6

    mul-float v20, v10, v19

    const/high16 v21, 0x43f00000    # 480.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v10, v17

    move-object v5, v11

    .end local v11    # "orientation":Ljava/lang/String;
    .local v5, "orientation":Ljava/lang/String;
    move/from16 v11, v22

    move/from16 v24, v12

    .end local v12    # "secondaryColor":I
    .local v24, "secondaryColor":I
    move/from16 v12, v23

    move/from16 v25, v13

    .end local v13    # "primaryColor":I
    .local v25, "primaryColor":I
    move/from16 v13, v20

    move-object/from16 v18, v14

    .end local v14    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    .local v18, "wallpaperBitmap":Landroid/graphics/Bitmap;
    move/from16 v14, v21

    move-object/from16 v20, v17

    move/from16 v17, v15

    .end local v15    # "scale":F
    .local v17, "scale":F
    .local v20, "canvas":Landroid/graphics/Canvas;
    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 166
    move/from16 v15, v24

    .end local v24    # "secondaryColor":I
    .local v15, "secondaryColor":I
    invoke-virtual {v9, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    int-to-float v10, v6

    mul-float v11, v10, v19

    int-to-float v13, v6

    const/high16 v14, 0x43f00000    # 480.0f

    const/4 v12, 0x0

    move-object/from16 v10, v20

    move-object/from16 v21, v0

    move v0, v15

    .end local v15    # "secondaryColor":I
    .local v0, "secondaryColor":I
    .local v21, "config":Lorg/json/JSONObject;
    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move/from16 v22, v25

    goto :goto_0

    .line 169
    .end local v5    # "orientation":Ljava/lang/String;
    .end local v18    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    .end local v20    # "canvas":Landroid/graphics/Canvas;
    .end local v21    # "config":Lorg/json/JSONObject;
    .end local v25    # "primaryColor":I
    .local v0, "config":Lorg/json/JSONObject;
    .restart local v11    # "orientation":Ljava/lang/String;
    .restart local v12    # "secondaryColor":I
    .restart local v13    # "primaryColor":I
    .restart local v14    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    .local v15, "scale":F
    .local v17, "canvas":Landroid/graphics/Canvas;
    :cond_1
    move-object/from16 v21, v0

    move-object v5, v11

    move v0, v12

    move/from16 v25, v13

    move-object/from16 v18, v14

    move-object/from16 v20, v17

    move/from16 v17, v15

    .end local v11    # "orientation":Ljava/lang/String;
    .end local v12    # "secondaryColor":I
    .end local v13    # "primaryColor":I
    .end local v14    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "scale":F
    .local v0, "secondaryColor":I
    .restart local v5    # "orientation":Ljava/lang/String;
    .local v17, "scale":F
    .restart local v18    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    .restart local v20    # "canvas":Landroid/graphics/Canvas;
    .restart local v21    # "config":Lorg/json/JSONObject;
    .restart local v25    # "primaryColor":I
    const-string v10, "vertical"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 170
    move/from16 v15, v25

    .end local v25    # "primaryColor":I
    .local v15, "primaryColor":I
    invoke-virtual {v9, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    int-to-float v13, v6

    const/high16 v14, 0x43700000    # 240.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v10, v20

    move/from16 v22, v15

    .end local v15    # "primaryColor":I
    .local v22, "primaryColor":I
    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 172
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    int-to-float v13, v6

    const/high16 v14, 0x43f00000    # 480.0f

    const/high16 v12, 0x43700000    # 240.0f

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 169
    .end local v22    # "primaryColor":I
    .restart local v25    # "primaryColor":I
    :cond_2
    move/from16 v22, v25

    .line 176
    .end local v25    # "primaryColor":I
    .restart local v22    # "primaryColor":I
    :goto_0
    const/high16 v10, 0x43f00000    # 480.0f

    mul-float v15, v17, v10

    .line 177
    .local v15, "targetSize":F
    int-to-float v11, v6

    sub-float/2addr v11, v15

    mul-float v11, v11, v19

    .line 178
    .local v11, "centerX":F
    sub-float/2addr v10, v15

    mul-float v10, v10, v19

    .line 179
    .local v10, "centerY":F
    new-instance v12, Landroid/graphics/Rect;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    move/from16 v24, v0

    const/4 v0, 0x0

    .end local v0    # "secondaryColor":I
    .restart local v24    # "secondaryColor":I
    invoke-direct {v12, v0, v0, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v12

    .line 180
    .local v0, "srcRect":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/RectF;

    add-float v13, v11, v15

    add-float v14, v10, v15

    invoke-direct {v12, v11, v10, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 181
    .local v12, "dstRect":Landroid/graphics/RectF;
    move-object/from16 v14, v18

    move-object/from16 v13, v20

    .end local v18    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    .end local v20    # "canvas":Landroid/graphics/Canvas;
    .local v13, "canvas":Landroid/graphics/Canvas;
    .restart local v14    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v13, v14, v0, v12, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 152
    .end local v0    # "srcRect":Landroid/graphics/Rect;
    .end local v5    # "orientation":Ljava/lang/String;
    .end local v10    # "centerY":F
    .end local v11    # "centerX":F
    .end local v12    # "dstRect":Landroid/graphics/RectF;
    .end local v13    # "canvas":Landroid/graphics/Canvas;
    .end local v14    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    .end local v17    # "scale":F
    .end local v21    # "config":Lorg/json/JSONObject;
    .end local v22    # "primaryColor":I
    .end local v24    # "secondaryColor":I
    .local v15, "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v0

    move-object v13, v15

    .line 153
    .end local v15    # "canvas":Landroid/graphics/Canvas;
    .local v0, "e":Lorg/json/JSONException;
    .restart local v13    # "canvas":Landroid/graphics/Canvas;
    return-void

    .line 146
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v7    # "wallpaperDir":Ljava/lang/String;
    .end local v13    # "canvas":Landroid/graphics/Canvas;
    .restart local v15    # "canvas":Landroid/graphics/Canvas;
    :cond_3
    move-object v13, v15

    .line 184
    .end local v15    # "canvas":Landroid/graphics/Canvas;
    .restart local v13    # "canvas":Landroid/graphics/Canvas;
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/wuyouwin/xenvironment/RootFS;->find(Landroid/content/Context;)Lcom/wuyouwin/xenvironment/RootFS;

    move-result-object v0

    .line 185
    .local v0, "rootFS":Lcom/wuyouwin/xenvironment/RootFS;
    new-instance v5, Ljava/io/File;

    invoke-virtual {v0}, Lcom/wuyouwin/xenvironment/RootFS;->getRootDir()Ljava/io/File;

    move-result-object v7

    const-string v10, "/home/xuser/.cache/wallpaper.bmp"

    invoke-direct {v5, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8, v5}, Lcom/wuyouwin/win32/MSBitmap;->create(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    .line 186
    return-void
.end method

.method public static getUserWallpaperFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 189
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/wuyouwin/xenvironment/RootFS;->find(Landroid/content/Context;)Lcom/wuyouwin/xenvironment/RootFS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wuyouwin/xenvironment/RootFS;->getRootDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "/home/xuser/.config/user-wallpaper.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
