.class public abstract Lcom/winlator/core/WineUtils;
.super Ljava/lang/Object;
.source "WineUtils.java"


# direct methods
.method public static synthetic $r8$lambda$L7Wi2nubBBsyU72lshMOBVVMo1U(Ljava/io/File;Lcom/winlator/core/Callback;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/winlator/core/WineUtils;->lambda$updateWineprefix$0(Ljava/io/File;Lcom/winlator/core/Callback;Ljava/lang/Integer;)V

    return-void
.end method

.method public static applySystemTweaks(Landroid/content/Context;Lcom/winlator/core/WineInfo;)V
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wineInfo"    # Lcom/winlator/core/WineInfo;

    .line 67
    const-string v0, "Software\\Classes\\.reg"

    const-string v1, "Software\\Winlator\\WFM\\ContextMenu\\7-Zip"

    invoke-static/range {p0 .. p0}, Lcom/winlator/xenvironment/RootFS;->find(Landroid/content/Context;)Lcom/winlator/xenvironment/RootFS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/winlator/xenvironment/RootFS;->getRootDir()Ljava/io/File;

    move-result-object v2

    .line 69
    .local v2, "rootDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "/home/xuser/.cache"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    .local v3, "userCacheDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 71
    :cond_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/home/xuser/.config"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    .local v4, "userConfigDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 74
    :cond_1
    new-instance v5, Ljava/io/File;

    const-string v6, "/home/xuser/.wine/system.reg"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    .local v5, "systemRegFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v7, "/home/xuser/.wine/user.reg"

    invoke-direct {v6, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    .local v6, "userRegFile":Ljava/io/File;
    new-instance v7, Lcom/winlator/core/WineRegistryEditor;

    invoke-direct {v7, v5}, Lcom/winlator/core/WineRegistryEditor;-><init>(Ljava/io/File;)V

    .line 78
    .local v7, "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    :try_start_0
    const-string v8, "Software\\Wine\\Drives"

    const-string v9, "x:"

    const-string v10, "cdrom"

    invoke-virtual {v7, v8, v9, v10}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v8, "REGfile"

    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v8}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v8, "Content Type"

    const-string v10, "application/reg"

    invoke-virtual {v7, v0, v8, v10}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "Software\\Classes\\REGfile\\Shell\\Open\\command"

    const-string v8, "C:\\windows\\regedit.exe /C \"%1\""

    invoke-virtual {v7, v0, v9, v8}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "Software\\Classes\\dllfile\\DefaultIcon"

    const-string v8, "shell32.dll,-154"

    invoke-virtual {v7, v0, v9, v8}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "Software\\Classes\\lnkfile\\DefaultIcon"

    const-string v8, "shell32.dll,-30"

    invoke-virtual {v7, v0, v9, v8}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "Software\\Classes\\inifile\\DefaultIcon"

    const-string v8, "shell32.dll,-151"

    invoke-virtual {v7, v0, v9, v8}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/io/File;

    const-string v8, "corefonts.added"

    invoke-direct {v0, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    .local v0, "corefontsAddedFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_2

    .line 89
    invoke-static {v7}, Lcom/winlator/core/WineUtils;->setupSystemFonts(Lcom/winlator/core/WineRegistryEditor;)V

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/winlator/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 77
    .end local v0    # "corefontsAddedFile":Ljava/io/File;
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_4

    .line 92
    :cond_2
    :goto_0
    invoke-virtual {v7}, Lcom/winlator/core/WineRegistryEditor;->close()V

    .line 94
    .end local v7    # "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    const-string v19, "dxgi"

    const-string v20, "wined3d"

    const-string v10, "d3d8"

    const-string v11, "d3d9"

    const-string v12, "d3d10"

    const-string v13, "d3d10_1"

    const-string v14, "d3d10core"

    const-string v15, "d3d11"

    const-string v16, "d3d12"

    const-string v17, "d3d12core"

    const-string v18, "ddraw"

    filled-new-array/range {v10 .. v20}, [Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 95
    .local v7, "direct3dLibs":[Ljava/lang/String;
    const-string v8, "Software\\Wine\\DllOverrides"

    .line 97
    .local v8, "dllOverridesKey":Ljava/lang/String;
    new-instance v0, Lcom/winlator/core/WineRegistryEditor;

    invoke-direct {v0, v6}, Lcom/winlator/core/WineRegistryEditor;-><init>(Ljava/io/File;)V

    move-object v10, v0

    .line 98
    .local v10, "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    :try_start_1
    array-length v0, v7

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v0, :cond_3

    aget-object v12, v7, v11

    .local v12, "name":Ljava/lang/String;
    const-string v13, "Software\\Wine\\DllOverrides"

    const-string v14, "native,builtin"

    invoke-virtual {v10, v13, v12, v14}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v12    # "name":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 97
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_2

    .line 100
    :cond_3
    invoke-virtual {v10, v1}, Lcom/winlator/core/WineRegistryEditor;->removeKey(Ljava/lang/String;)Z

    .line 101
    const-string v0, "Open Archive"

    const-string v11, "Z:\\opt\\apps\\7-Zip\\7zFM.exe \"%FILE%\""

    invoke-virtual {v10, v1, v0, v11}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "Extract Here"

    const-string v11, "Z:\\opt\\apps\\7-Zip\\7zG.exe x \"%FILE%\" -r -o\"%DIR%\" -y"

    invoke-virtual {v10, v1, v0, v11}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "Extract to Folder"

    const-string v11, "Z:\\opt\\apps\\7-Zip\\7zG.exe x \"%FILE%\" -r -o\"%DIR%\\%BASENAME%\" -y"

    invoke-virtual {v10, v1, v0, v11}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "Software\\Wine\\AddonsURL"

    const-string v1, "https://raw.githubusercontent.com/brunodev85/winlator/main/wine_addons/"

    invoke-virtual {v10, v0, v9, v1}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "Software\\Wine\\Drivers"

    const-string v1, "Graphics"

    const-string v9, "x11"

    invoke-virtual {v10, v0, v1, v9}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    invoke-virtual {v10}, Lcom/winlator/core/WineRegistryEditor;->close()V

    .line 107
    .end local v10    # "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    return-void

    .line 97
    .restart local v10    # "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    :goto_2
    :try_start_2
    invoke-virtual {v10}, Lcom/winlator/core/WineRegistryEditor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v9, v0

    invoke-virtual {v1, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1

    .line 77
    .end local v8    # "dllOverridesKey":Ljava/lang/String;
    .end local v10    # "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    .local v7, "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    :goto_4
    :try_start_3
    invoke-virtual {v7}, Lcom/winlator/core/WineRegistryEditor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v8, v0

    invoke-virtual {v1, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1
.end method

.method public static changeBrowsersRegistryKey(Lcom/winlator/container/Container;Z)V
    .locals 5
    .param p0, "container"    # Lcom/winlator/container/Container;
    .param p1, "useAndroidBrowser"    # Z

    .line 110
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/winlator/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".wine/user.reg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    .local v0, "userRegFile":Ljava/io/File;
    new-instance v1, Lcom/winlator/core/WineRegistryEditor;

    invoke-direct {v1, v0}, Lcom/winlator/core/WineRegistryEditor;-><init>(Ljava/io/File;)V

    .line 113
    .local v1, "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    const-string v2, "Browsers"

    const-string v3, "Software\\Wine\\WineBrowser"

    if-eqz p1, :cond_0

    .line 114
    :try_start_0
    const-string v4, "C:\\windows\\winhandler.exe /url"

    invoke-virtual {v1, v3, v2, v4}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 116
    :cond_0
    const-string v4, "C:\\windows\\system32\\iexplore.exe"

    invoke-virtual {v1, v3, v2, v4}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :goto_0
    invoke-virtual {v1}, Lcom/winlator/core/WineRegistryEditor;->close()V

    .line 118
    .end local v1    # "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    return-void

    .line 112
    .restart local v1    # "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Lcom/winlator/core/WineRegistryEditor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
.end method

.method public static changeServicesStatus(Lcom/winlator/container/Container;B)V
    .locals 18
    .param p0, "container"    # Lcom/winlator/container/Container;
    .param p1, "startupSelection"    # B

    .line 222
    move/from16 v1, p1

    const-string v0, "System\\CurrentControlSet"

    const/4 v2, 0x4

    .line 223
    .local v2, "SERVICE_DISABLED":B
    const-string v16, "wuauserv:3"

    const-string v17, "winebth:3"

    const-string v3, "BITS:3"

    const-string v4, "Eventlog:2"

    const-string v5, "HTTP:3"

    const-string v6, "LanmanServer:3"

    const-string v7, "NDIS:2"

    const-string v8, "PlugPlay:2"

    const-string v9, "RpcSs:3"

    const-string v10, "scardsvr:3"

    const-string v11, "Schedule:3"

    const-string v12, "Spooler:3"

    const-string v13, "StiSvc:3"

    const-string v14, "TermService:3"

    const-string v15, "Winmgmt:3"

    filled-new-array/range {v3 .. v17}, [Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "services":[Ljava/lang/String;
    const-string v4, "MSIServer:3"

    const-string v5, "FontCache:3"

    const-string v6, "nsiproxy:2"

    filled-new-array {v6, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "extraServices":[Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v6

    const-string v7, ".wine/system.reg"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 227
    .local v5, "systemRegFile":Ljava/io/File;
    new-instance v6, Lcom/winlator/core/WineRegistryEditor;

    invoke-direct {v6, v5}, Lcom/winlator/core/WineRegistryEditor;-><init>(Ljava/io/File;)V

    .line 228
    .local v6, "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v6, v7}, Lcom/winlator/core/WineRegistryEditor;->setCreateKeyIfNotExist(Z)V

    .line 230
    const-string v8, "SymbolicLinkValue"

    invoke-virtual {v6, v0, v8}, Lcom/winlator/core/WineRegistryEditor;->getSymlinkValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 231
    .local v8, "controlSetPath":Ljava/lang/String;
    if-nez v8, :cond_0

    move-object v8, v0

    .line 233
    :cond_0
    array-length v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v7

    :goto_0
    const-string v10, "Start"

    const-string v11, "\\Services\\"

    const-string v13, ":"

    if-ge v9, v0, :cond_2

    :try_start_1
    aget-object v14, v3, v9

    .line 234
    .local v14, "service":Ljava/lang/String;
    invoke-virtual {v14, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v14, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 235
    .local v13, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    const/4 v12, 0x4

    goto :goto_1

    :cond_1
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v14, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v12

    .line 236
    .local v12, "value":I
    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v10, v12}, Lcom/winlator/core/WineRegistryEditor;->setDwordValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 233
    .end local v12    # "value":I
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "service":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 227
    .end local v8    # "controlSetPath":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v7, v0

    goto :goto_4

    .line 239
    .restart local v8    # "controlSetPath":Ljava/lang/String;
    :cond_2
    array-length v0, v4

    move v9, v7

    :goto_2
    if-ge v9, v0, :cond_4

    aget-object v14, v4, v9

    .line 240
    .restart local v14    # "service":Ljava/lang/String;
    invoke-virtual {v14, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v7, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 241
    .local v15, "name":Ljava/lang/String;
    const/4 v7, 0x2

    if-ne v1, v7, :cond_3

    const/4 v7, 0x4

    goto :goto_3

    :cond_3
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v14, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v7

    .line 242
    .local v7, "value":I
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12, v10, v7}, Lcom/winlator/core/WineRegistryEditor;->setDwordValue(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    .end local v7    # "value":I
    .end local v14    # "service":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    nop

    .line 244
    .end local v8    # "controlSetPath":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/winlator/core/WineRegistryEditor;->close()V

    .line 245
    .end local v6    # "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    return-void

    .line 227
    .restart local v6    # "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    :goto_4
    :try_start_2
    invoke-virtual {v6}, Lcom/winlator/core/WineRegistryEditor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v7
.end method

.method public static createDosdevicesSymlinks(Lcom/winlator/container/Container;Z)V
    .locals 11
    .param p0, "container"    # Lcom/winlator/container/Container;
    .param p1, "addDriveCDRom"    # Z

    .line 24
    invoke-virtual {p0}, Lcom/winlator/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v0

    .line 25
    .local v0, "rootDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, ".wine/dosdevices"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "dosdevicesPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 27
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[a-z]:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .end local v5    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 29
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/c:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "../drive_c"

    invoke-static {v4, v3}, Lcom/winlator/core/FileUtils;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/z:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "../../../../"

    invoke-static {v4, v3}, Lcom/winlator/core/FileUtils;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/16 v3, 0x1f9

    if-eqz p1, :cond_3

    .line 33
    new-instance v4, Ljava/io/File;

    const-string v5, ".wine/drive_x"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .local v4, "driveX":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    .line 35
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 36
    invoke-static {v4, v3}, Lcom/winlator/core/FileUtils;->chmod(Ljava/io/File;I)V

    .line 39
    :cond_2
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v6, 0x58

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%-8x"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    const/16 v7, 0x30

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 40
    .local v5, "serial":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    const-string v7, ".windows-serial"

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/winlator/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z

    .line 41
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/x:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "../drive_x"

    invoke-static {v7, v6}, Lcom/winlator/core/FileUtils;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .end local v4    # "driveX":Ljava/io/File;
    .end local v5    # "serial":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/winlator/container/Container;->drivesIterator()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/winlator/container/Drive;

    .line 45
    .local v5, "drive":Lcom/winlator/container/Drive;
    new-instance v6, Ljava/io/File;

    iget-object v7, v5, Lcom/winlator/container/Drive;->path:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v6, "linkTarget":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 47
    .local v7, "path":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "/data/data/com.winlator/storage"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 48
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 49
    invoke-static {v6, v3}, Lcom/winlator/core/FileUtils;->chmod(Ljava/io/File;I)V

    .line 51
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/winlator/container/Drive;->letter:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/winlator/core/FileUtils;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v5    # "drive":Lcom/winlator/container/Drive;
    .end local v6    # "linkTarget":Ljava/io/File;
    .end local v7    # "path":Ljava/lang/String;
    goto :goto_1

    .line 53
    :cond_5
    return-void
.end method

.method public static dosToUnixPath(Ljava/lang/String;Lcom/winlator/container/Container;)Ljava/lang/String;
    .locals 8
    .param p0, "dosPath"    # Ljava/lang/String;
    .param p1, "container"    # Lcom/winlator/container/Container;

    .line 274
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 275
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v1, ""

    return-object v1

    .line 277
    :cond_0
    const-string v1, ""

    .line 278
    .local v1, "unixPath":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "driveLetter":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\"

    const-string v5, "/"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/winlator/core/StringUtils;->removeStartSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, "relativePath":Ljava/lang/String;
    const-string v4, "C"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/winlator/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/.wine/drive_c/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 284
    :cond_1
    const-string v4, "Z"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 285
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Lcom/winlator/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "../../"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 287
    .local v4, "rootDir":Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    .line 289
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_0

    .line 290
    .end local v4    # "rootDir":Ljava/io/File;
    :goto_1
    goto :goto_3

    .line 292
    :cond_2
    invoke-virtual {p1}, Lcom/winlator/container/Container;->drivesIterator()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/winlator/container/Drive;

    .line 293
    .local v6, "drive":Lcom/winlator/container/Drive;
    iget-object v7, v6, Lcom/winlator/container/Drive;->letter:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 294
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v6, Lcom/winlator/container/Drive;->path:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 295
    goto :goto_3

    .line 293
    :cond_3
    nop

    .line 297
    .end local v6    # "drive":Lcom/winlator/container/Drive;
    goto :goto_2

    .line 300
    :cond_4
    :goto_3
    return-object v1
.end method

.method public static isWineprefixWasUpdated(Lcom/winlator/container/Container;)Z
    .locals 4
    .param p0, "container"    # Lcom/winlator/container/Container;

    .line 207
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/winlator/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "/.wine/.update-timestamp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/winlator/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "content":Ljava/lang/String;
    const-string v2, "disable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 211
    const-string v2, "[\r\n]+"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 214
    .local v2, "updateTimestamp":I
    if-eqz v2, :cond_0

    const-string v3, "disable\n"

    invoke-static {v0, v3}, Lcom/winlator/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 216
    .end local v2    # "updateTimestamp":I
    :catch_0
    move-exception v2

    goto :goto_0

    .line 214
    .restart local v2    # "updateTimestamp":I
    :cond_0
    nop

    .line 216
    .end local v2    # "updateTimestamp":I
    :goto_0
    nop

    .line 218
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private static synthetic lambda$updateWineprefix$0(Ljava/io/File;Lcom/winlator/core/Callback;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "rootDir"    # Ljava/io/File;
    .param p1, "terminationCallback"    # Lcom/winlator/core/Callback;
    .param p2, "status"    # Ljava/lang/Integer;

    .line 199
    new-instance v0, Ljava/io/File;

    const-string v1, "/home/xuser/.wine/.update-timestamp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "disable\n"

    invoke-static {v0, v1}, Lcom/winlator/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z

    .line 200
    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/winlator/core/Callback;->call(Ljava/lang/Object;)V

    .line 201
    :cond_0
    return-void
.end method

.method public static overrideWinComponentDlls(Landroid/content/Context;Lcom/winlator/container/Container;Ljava/lang/String;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "container"    # Lcom/winlator/container/Container;
    .param p2, "wincomponents"    # Ljava/lang/String;

    .line 121
    const-string v1, "Software\\Wine\\DllOverrides"

    .line 122
    .local v1, "dllOverridesKey":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/winlator/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".wine/user.reg"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v0

    .line 123
    .local v2, "userRegFile":Ljava/io/File;
    new-instance v0, Lcom/winlator/core/KeyValueSet;

    const-string v3, "wincomponents"

    const-string v4, "direct3d=0,directsound=0,directmusic=0,directshow=0,directplay=0,xaudio=0,vcrun2005=0,vcrun2010=0,wmdecoder=0"

    move-object/from16 v5, p1

    invoke-virtual {v5, v3, v4}, Lcom/winlator/container/Container;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/winlator/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/winlator/core/KeyValueSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 125
    .local v3, "oldWinComponentsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<[Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Lcom/winlator/core/WineRegistryEditor;

    invoke-direct {v0, v2}, Lcom/winlator/core/WineRegistryEditor;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v0

    .line 126
    .local v4, "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    const-string v6, "wincomponents/wincomponents.json"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object/from16 v7, p0

    :try_start_2
    invoke-static {v7, v6}, Lcom/winlator/core/FileUtils;->readString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "wincomponentsJSONObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/winlator/core/KeyValueSet;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v8, p2

    :try_start_3
    invoke-direct {v6, v8}, Lcom/winlator/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/winlator/core/KeyValueSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 129
    .local v9, "wincomponent":[Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v11, v9, v10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    aget-object v12, v12, v10

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    const/4 v11, 0x0

    aget-object v11, v9, v11

    .line 131
    .local v11, "identifier":Ljava/lang/String;
    aget-object v10, v9, v10

    const-string v12, "1"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 133
    .local v10, "useNative":Z
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 134
    .local v12, "wincomponentJSONObject":Lorg/json/JSONObject;
    const-string v13, "dlnames"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 135
    .local v13, "dlnames":Lorg/json/JSONArray;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_2

    .line 136
    invoke-virtual {v13, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 137
    .local v15, "dlname":Ljava/lang/String;
    move-object/from16 v16, v0

    .end local v0    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .local v16, "wincomponentsJSONObject":Lorg/json/JSONObject;
    const-string v0, "Software\\Wine\\DllOverrides"

    if-eqz v10, :cond_1

    .line 138
    move-object/from16 v17, v1

    .end local v1    # "dllOverridesKey":Ljava/lang/String;
    .local v17, "dllOverridesKey":Ljava/lang/String;
    :try_start_4
    const-string v1, "native,builtin"

    invoke-virtual {v4, v0, v15, v1}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 125
    .end local v9    # "wincomponent":[Ljava/lang/String;
    .end local v10    # "useNative":Z
    .end local v11    # "identifier":Ljava/lang/String;
    .end local v12    # "wincomponentJSONObject":Lorg/json/JSONObject;
    .end local v13    # "dlnames":Lorg/json/JSONArray;
    .end local v14    # "i":I
    .end local v15    # "dlname":Ljava/lang/String;
    .end local v16    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_6

    .line 140
    .end local v17    # "dllOverridesKey":Ljava/lang/String;
    .restart local v1    # "dllOverridesKey":Ljava/lang/String;
    .restart local v9    # "wincomponent":[Ljava/lang/String;
    .restart local v10    # "useNative":Z
    .restart local v11    # "identifier":Ljava/lang/String;
    .restart local v12    # "wincomponentJSONObject":Lorg/json/JSONObject;
    .restart local v13    # "dlnames":Lorg/json/JSONArray;
    .restart local v14    # "i":I
    .restart local v15    # "dlname":Ljava/lang/String;
    .restart local v16    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    :cond_1
    move-object/from16 v17, v1

    .end local v1    # "dllOverridesKey":Ljava/lang/String;
    .restart local v17    # "dllOverridesKey":Ljava/lang/String;
    invoke-virtual {v4, v0, v15}, Lcom/winlator/core/WineRegistryEditor;->removeValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 135
    .end local v15    # "dlname":Ljava/lang/String;
    :goto_2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    goto :goto_1

    .line 125
    .end local v9    # "wincomponent":[Ljava/lang/String;
    .end local v10    # "useNative":Z
    .end local v11    # "identifier":Ljava/lang/String;
    .end local v12    # "wincomponentJSONObject":Lorg/json/JSONObject;
    .end local v13    # "dlnames":Lorg/json/JSONArray;
    .end local v14    # "i":I
    .end local v16    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .end local v17    # "dllOverridesKey":Ljava/lang/String;
    .restart local v1    # "dllOverridesKey":Ljava/lang/String;
    :catchall_1
    move-exception v0

    :goto_3
    move-object/from16 v17, v1

    move-object v1, v0

    .end local v1    # "dllOverridesKey":Ljava/lang/String;
    .restart local v17    # "dllOverridesKey":Ljava/lang/String;
    goto :goto_6

    .line 135
    .end local v17    # "dllOverridesKey":Ljava/lang/String;
    .restart local v0    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .restart local v1    # "dllOverridesKey":Ljava/lang/String;
    .restart local v9    # "wincomponent":[Ljava/lang/String;
    .restart local v10    # "useNative":Z
    .restart local v11    # "identifier":Ljava/lang/String;
    .restart local v12    # "wincomponentJSONObject":Lorg/json/JSONObject;
    .restart local v13    # "dlnames":Lorg/json/JSONArray;
    .restart local v14    # "i":I
    :cond_2
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .line 142
    .end local v0    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .end local v1    # "dllOverridesKey":Ljava/lang/String;
    .end local v9    # "wincomponent":[Ljava/lang/String;
    .end local v10    # "useNative":Z
    .end local v11    # "identifier":Ljava/lang/String;
    .end local v12    # "wincomponentJSONObject":Lorg/json/JSONObject;
    .end local v13    # "dlnames":Lorg/json/JSONArray;
    .end local v14    # "i":I
    .restart local v16    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .restart local v17    # "dllOverridesKey":Ljava/lang/String;
    goto :goto_0

    .line 128
    .end local v16    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .end local v17    # "dllOverridesKey":Ljava/lang/String;
    .restart local v0    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .restart local v1    # "dllOverridesKey":Ljava/lang/String;
    :cond_3
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .line 143
    .end local v0    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .end local v1    # "dllOverridesKey":Ljava/lang/String;
    .restart local v17    # "dllOverridesKey":Ljava/lang/String;
    :try_start_5
    invoke-virtual {v4}, Lcom/winlator/core/WineRegistryEditor;->close()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 144
    .end local v4    # "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    :goto_4
    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_4

    .line 125
    .end local v17    # "dllOverridesKey":Ljava/lang/String;
    .restart local v1    # "dllOverridesKey":Ljava/lang/String;
    .restart local v4    # "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    :catchall_2
    move-exception v0

    :goto_5
    move-object/from16 v8, p2

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_5

    .end local v1    # "dllOverridesKey":Ljava/lang/String;
    .restart local v17    # "dllOverridesKey":Ljava/lang/String;
    :goto_6
    :try_start_6
    invoke-virtual {v4}, Lcom/winlator/core/WineRegistryEditor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v6, v0

    :try_start_7
    invoke-virtual {v1, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "userRegFile":Ljava/io/File;
    .end local v3    # "oldWinComponentsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<[Ljava/lang/String;>;"
    .end local v17    # "dllOverridesKey":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "container":Lcom/winlator/container/Container;
    .end local p2    # "wincomponents":Ljava/lang/String;
    :goto_7
    throw v1
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    .line 144
    .end local v4    # "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    .restart local v1    # "dllOverridesKey":Ljava/lang/String;
    .restart local v2    # "userRegFile":Ljava/io/File;
    .restart local v3    # "oldWinComponentsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<[Ljava/lang/String;>;"
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "container":Lcom/winlator/container/Container;
    .restart local p2    # "wincomponents":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v17, v1

    .end local v1    # "dllOverridesKey":Ljava/lang/String;
    .restart local v17    # "dllOverridesKey":Ljava/lang/String;
    goto :goto_4

    .line 145
    :goto_8
    return-void
.end method

.method public static setSystemFont(Lcom/winlator/core/WineRegistryEditor;Ljava/lang/String;)V
    .locals 4
    .param p0, "userRegistry"    # Lcom/winlator/core/WineRegistryEditor;
    .param p1, "faceName"    # Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/winlator/win32/MSLogFont;

    invoke-direct {v0}, Lcom/winlator/win32/MSLogFont;-><init>()V

    invoke-virtual {v0, p1}, Lcom/winlator/win32/MSLogFont;->setFaceName(Ljava/lang/String;)Lcom/winlator/win32/MSLogFont;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/win32/MSLogFont;->toByteArray()[B

    move-result-object v0

    .line 57
    .local v0, "fontNormalData":[B
    new-instance v1, Lcom/winlator/win32/MSLogFont;

    invoke-direct {v1}, Lcom/winlator/win32/MSLogFont;-><init>()V

    invoke-virtual {v1, p1}, Lcom/winlator/win32/MSLogFont;->setFaceName(Ljava/lang/String;)Lcom/winlator/win32/MSLogFont;

    move-result-object v1

    const/16 v2, 0x2bc

    invoke-virtual {v1, v2}, Lcom/winlator/win32/MSLogFont;->setWeight(I)Lcom/winlator/win32/MSLogFont;

    move-result-object v1

    invoke-virtual {v1}, Lcom/winlator/win32/MSLogFont;->toByteArray()[B

    move-result-object v1

    .line 58
    .local v1, "fontBoldData":[B
    const-string v2, "CaptionFont"

    const-string v3, "Control Panel\\Desktop\\WindowMetrics"

    invoke-virtual {p0, v3, v2, v1}, Lcom/winlator/core/WineRegistryEditor;->setHexValues(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 59
    const-string v2, "IconFont"

    invoke-virtual {p0, v3, v2, v0}, Lcom/winlator/core/WineRegistryEditor;->setHexValues(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 60
    const-string v2, "MenuFont"

    invoke-virtual {p0, v3, v2, v0}, Lcom/winlator/core/WineRegistryEditor;->setHexValues(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 61
    const-string v2, "MessageFont"

    invoke-virtual {p0, v3, v2, v0}, Lcom/winlator/core/WineRegistryEditor;->setHexValues(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 62
    const-string v2, "SmCaptionFont"

    invoke-virtual {p0, v3, v2, v0}, Lcom/winlator/core/WineRegistryEditor;->setHexValues(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 63
    const-string v2, "StatusFont"

    invoke-virtual {p0, v3, v2, v0}, Lcom/winlator/core/WineRegistryEditor;->setHexValues(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 64
    return-void
.end method

.method public static setWinComponentRegistryKeys(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 11
    .param p0, "systemRegFile"    # Ljava/io/File;
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "useNative"    # Z

    .line 148
    const-string v0, "C:\\windows\\syswow64\\winegstreamer.dll"

    const-string v1, "Wave Audio Renderer"

    const-string v2, "FriendlyName"

    const-string v3, "02000000000080000100000000000000307069330200000000000000010000000000000000000000307479330000000038000000480000006175647300001000800000aa00389b710100000000001000800000aa00389b71"

    const-string v4, "FilterData"

    const-string v5, "{E30629D1-27E5-11CE-875D-00608CB78066}"

    const-string v6, "CLSID"

    const-string v7, "Software\\Classes\\CLSID\\{083863F1-70DE-11D0-BD40-00A0C911CE86}\\Instance\\{E30629D1-27E5-11CE-875D-00608CB78066}"

    const-string v8, "directsound"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 149
    new-instance v0, Lcom/winlator/core/WineRegistryEditor;

    invoke-direct {v0, p0}, Lcom/winlator/core/WineRegistryEditor;-><init>(Ljava/io/File;)V

    .line 150
    .local v0, "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    move-object v8, v7

    .line 151
    .local v8, "key64":Ljava/lang/String;
    const-string v9, "Software\\Classes\\Wow6432Node\\CLSID\\{083863F1-70DE-11D0-BD40-00A0C911CE86}\\Instance\\{E30629D1-27E5-11CE-875D-00608CB78066}"

    move-object v10, v9

    .line 153
    .local v10, "key32":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 154
    :try_start_0
    invoke-virtual {v0, v9, v6, v5}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, v9, v4, v3}, Lcom/winlator/core/WineRegistryEditor;->setHexValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, v9, v2, v1}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, v7, v6, v5}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, v7, v4, v3}, Lcom/winlator/core/WineRegistryEditor;->setHexValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0, v7, v2, v1}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    .end local v8    # "key64":Ljava/lang/String;
    .end local v10    # "key32":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 163
    .restart local v8    # "key64":Ljava/lang/String;
    .restart local v10    # "key32":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v9}, Lcom/winlator/core/WineRegistryEditor;->removeKey(Ljava/lang/String;)Z

    .line 164
    invoke-virtual {v0, v7}, Lcom/winlator/core/WineRegistryEditor;->removeKey(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .end local v8    # "key64":Ljava/lang/String;
    .end local v10    # "key32":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Lcom/winlator/core/WineRegistryEditor;->close()V

    .line 149
    .end local v0    # "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    goto :goto_6

    .restart local v0    # "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lcom/winlator/core/WineRegistryEditor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1

    .line 168
    .end local v0    # "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    :cond_1
    const-string v1, "wmdecoder"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 169
    new-instance v1, Lcom/winlator/core/WineRegistryEditor;

    invoke-direct {v1, p0}, Lcom/winlator/core/WineRegistryEditor;-><init>(Ljava/io/File;)V

    .line 170
    .local v1, "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    const-string v2, "Software\\Classes\\Wow6432Node\\CLSID\\{82D353DF-90BD-4382-8BC2-3F6192B76E34}\\InprocServer32"

    const-string v3, "Software\\Classes\\Wow6432Node\\CLSID\\{2EEB4ADF-4578-4D10-BCA7-BB955F56320A}\\InprocServer32"

    const/4 v4, 0x0

    if-eqz p2, :cond_2

    .line 171
    :try_start_2
    const-string v0, "C:\\windows\\syswow64\\wmadmod.dll"

    invoke-virtual {v1, v3, v4, v0}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "C:\\windows\\syswow64\\wmvdecod.dll"

    invoke-virtual {v1, v2, v4, v0}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 169
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 175
    :cond_2
    invoke-virtual {v1, v3, v4, v0}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1, v2, v4, v0}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 178
    :goto_3
    invoke-virtual {v1}, Lcom/winlator/core/WineRegistryEditor;->close()V

    goto :goto_6

    .line 169
    :goto_4
    :try_start_3
    invoke-virtual {v1}, Lcom/winlator/core/WineRegistryEditor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v0

    .line 180
    .end local v1    # "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    :cond_3
    :goto_6
    return-void
.end method

.method public static setWinVersion(Lcom/winlator/container/Container;I)V
    .locals 17
    .param p0, "container"    # Lcom/winlator/container/Container;
    .param p1, "winVersionIdx"    # I

    .line 304
    const-string v0, "Microsoft "

    const-string v1, "ProductName"

    const-string v2, "CurrentBuildNumber"

    const-string v3, "CurrentBuild"

    const-string v4, "CSDVersion"

    const-string v5, "CurrentMinorVersionNumber"

    const-string v6, "CurrentMajorVersionNumber"

    const-string v7, "CurrentVersion"

    invoke-static {}, Lcom/winlator/win32/WinVersions;->getWinVersions()[Lcom/winlator/win32/WinVersions$WinVersion;

    move-result-object v8

    aget-object v8, v8, p1

    .line 305
    .local v8, "winVersion":Lcom/winlator/win32/WinVersions$WinVersion;
    iget v9, v8, Lcom/winlator/win32/WinVersions$WinVersion;->buildNumber:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 306
    .local v9, "currentBuild":Ljava/lang/String;
    iget-object v10, v8, Lcom/winlator/win32/WinVersions$WinVersion;->currentVersion:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, v8, Lcom/winlator/win32/WinVersions$WinVersion;->currentVersion:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v11, v8, Lcom/winlator/win32/WinVersions$WinVersion;->majorVersion:B

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v11, v8, Lcom/winlator/win32/WinVersions$WinVersion;->minorVersion:B

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 308
    .local v10, "currentVersion":Ljava/lang/String;
    :goto_0
    new-instance v11, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v12

    const-string v13, ".wine/system.reg"

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 309
    .local v11, "systemRegFile":Ljava/io/File;
    new-instance v12, Lcom/winlator/core/WineRegistryEditor;

    invoke-direct {v12, v11}, Lcom/winlator/core/WineRegistryEditor;-><init>(Ljava/io/File;)V

    .line 310
    .local v12, "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    :try_start_0
    const-string v13, "Software\\Microsoft\\Windows NT\\CurrentVersion"

    .line 311
    .local v13, "key64":Ljava/lang/String;
    const-string v14, "Software\\Wow6432Node\\Microsoft\\Windows NT\\CurrentVersion"

    .line 313
    .local v14, "key32":Ljava/lang/String;
    invoke-virtual {v12, v14, v7, v10}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-byte v15, v8, Lcom/winlator/win32/WinVersions$WinVersion;->majorVersion:B

    invoke-virtual {v12, v14, v6, v15}, Lcom/winlator/core/WineRegistryEditor;->setDwordValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 315
    iget-byte v15, v8, Lcom/winlator/win32/WinVersions$WinVersion;->minorVersion:B

    invoke-virtual {v12, v14, v5, v15}, Lcom/winlator/core/WineRegistryEditor;->setDwordValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 316
    iget-object v15, v8, Lcom/winlator/win32/WinVersions$WinVersion;->csdVersion:Ljava/lang/String;

    invoke-virtual {v12, v14, v4, v15}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {v12, v14, v3, v9}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v12, v14, v2, v9}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v11

    .end local v11    # "systemRegFile":Ljava/io/File;
    .local v16, "systemRegFile":Ljava/io/File;
    :try_start_1
    iget-object v11, v8, Lcom/winlator/win32/WinVersions$WinVersion;->description:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v14, v1, v11}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v12, v13, v7, v10}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-byte v7, v8, Lcom/winlator/win32/WinVersions$WinVersion;->majorVersion:B

    invoke-virtual {v12, v13, v6, v7}, Lcom/winlator/core/WineRegistryEditor;->setDwordValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 323
    iget-byte v6, v8, Lcom/winlator/win32/WinVersions$WinVersion;->minorVersion:B

    invoke-virtual {v12, v13, v5, v6}, Lcom/winlator/core/WineRegistryEditor;->setDwordValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 324
    iget-object v5, v8, Lcom/winlator/win32/WinVersions$WinVersion;->csdVersion:Ljava/lang/String;

    invoke-virtual {v12, v13, v4, v5}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v12, v13, v3, v9}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v12, v13, v2, v9}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lcom/winlator/win32/WinVersions$WinVersion;->description:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v13, v1, v0}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    .end local v13    # "key64":Ljava/lang/String;
    .end local v14    # "key32":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/winlator/core/WineRegistryEditor;->close()V

    .line 329
    .end local v12    # "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    return-void

    .line 309
    .restart local v12    # "registryEditor":Lcom/winlator/core/WineRegistryEditor;
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_1

    .end local v16    # "systemRegFile":Ljava/io/File;
    .restart local v11    # "systemRegFile":Ljava/io/File;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v11

    move-object v1, v0

    .end local v11    # "systemRegFile":Ljava/io/File;
    .restart local v16    # "systemRegFile":Ljava/io/File;
    :goto_1
    :try_start_2
    invoke-virtual {v12}, Lcom/winlator/core/WineRegistryEditor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
.end method

.method private static setupSystemFonts(Lcom/winlator/core/WineRegistryEditor;)V
    .locals 33
    .param p0, "registryEditor"    # Lcom/winlator/core/WineRegistryEditor;

    .line 332
    move-object/from16 v0, p0

    const-string v1, "Andale Mono (TrueType)"

    const-string v2, "andalemo.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v1, "Arial (TrueType)"

    const-string v2, "arial.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v1, "Arial Black (TrueType)"

    const-string v2, "ariblk.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v1, "Arial Bold (TrueType)"

    const-string v2, "arialbd.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v6

    const-string v1, "Arial Bold Italic (TrueType)"

    const-string v2, "arialbi.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v7

    const-string v1, "Arial Italic (TrueType)"

    const-string v2, "ariali.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v8

    const-string v1, "Comic Sans MS (TrueType)"

    const-string v2, "comic.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v9

    const-string v1, "Comic Sans MS Bold (TrueType)"

    const-string v2, "comicbd.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v10

    const-string v1, "Courier New (TrueType)"

    const-string v2, "cour.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v11

    const-string v1, "Courier New Bold (TrueType)"

    const-string v2, "courbd.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v12

    const-string v1, "Courier New Bold Italic (TrueType)"

    const-string v2, "courbi.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v13

    const-string v1, "Courier New Italic (TrueType)"

    const-string v2, "couri.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v14

    const-string v1, "Georgia (TrueType)"

    const-string v2, "georgia.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v15

    const-string v1, "Georgia Bold (TrueType)"

    const-string v2, "georgiab.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v16

    const-string v1, "Georgia Bold Italic (TrueType)"

    const-string v2, "georgiaz.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v17

    const-string v1, "Georgia Italic (TrueType)"

    const-string v2, "georgiai.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v18

    const-string v1, "Impact (TrueType)"

    const-string v2, "impact.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v19

    const-string v1, "Times New Roman (TrueType)"

    const-string v2, "times.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v20

    const-string v1, "Times New Roman Bold (TrueType)"

    const-string v2, "timesbd.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v21

    const-string v1, "Times New Roman Bold Italic (TrueType)"

    const-string v2, "timesbi.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v22

    const-string v1, "Times New Roman Italic (TrueType)"

    const-string v2, "timesi.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v23

    const-string v1, "Trebuchet MS (TrueType)"

    const-string v2, "trebuc.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v24

    const-string v1, "Trebuchet MS Bold (TrueType)"

    const-string v2, "trebucbd.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v25

    const-string v1, "Trebuchet MS Bold Italic (TrueType)"

    const-string v2, "trebucbi.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v26

    const-string v1, "Trebuchet MS Italic (TrueType)"

    const-string v2, "trebucit.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v27

    const-string v1, "Verdana (TrueType)"

    const-string v2, "verdana.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v28

    const-string v1, "Verdana Bold (TrueType)"

    const-string v2, "verdanab.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v29

    const-string v1, "Verdana Bold Italic (TrueType)"

    const-string v2, "verdanaz.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v30

    const-string v1, "Verdana Italic (TrueType)"

    const-string v2, "verdanai.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v31

    const-string v1, "Webdings (TrueType)"

    const-string v2, "webdings.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v32

    filled-new-array/range {v3 .. v32}, [[Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "corefonts":[[Ljava/lang/String;
    const-string v2, "Software\\Microsoft\\Windows\\CurrentVersion\\Fonts"

    invoke-virtual {v0, v2, v1}, Lcom/winlator/core/WineRegistryEditor;->setStringValues(Ljava/lang/String;[[Ljava/lang/String;)V

    .line 366
    const-string v3, "Software\\Microsoft\\Windows NT\\CurrentVersion\\Fonts"

    invoke-virtual {v0, v3, v1}, Lcom/winlator/core/WineRegistryEditor;->setStringValues(Ljava/lang/String;[[Ljava/lang/String;)V

    .line 368
    const-string v4, "Marlett (TrueType)"

    const-string v5, "Z:\\opt\\wine\\share\\wine\\fonts\\marlett.ttf"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "Symbol (TrueType)"

    const-string v6, "Z:\\opt\\wine\\share\\wine\\fonts\\symbol.ttf"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "Tahoma (TrueType)"

    const-string v7, "Z:\\opt\\wine\\share\\wine\\fonts\\tahoma.ttf"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Tahoma Bold (TrueType)"

    const-string v8, "Z:\\opt\\wine\\share\\wine\\fonts\\tahomabd.ttf"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Wingdings (TrueType)"

    const-string v9, "Z:\\opt\\wine\\share\\wine\\fonts\\wingding.ttf"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    filled-new-array {v4, v5, v6, v7, v8}, [[Ljava/lang/String;

    move-result-object v4

    .line 376
    .local v4, "wineFonts":[[Ljava/lang/String;
    invoke-virtual {v0, v2, v4}, Lcom/winlator/core/WineRegistryEditor;->setStringValues(Ljava/lang/String;[[Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0, v3, v4}, Lcom/winlator/core/WineRegistryEditor;->setStringValues(Ljava/lang/String;[[Ljava/lang/String;)V

    const-string v5, "WenQuanYi Micro Hei (TrueType)"

    const-string v6, "wqy-microhei.ttf"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "Microsoft YaHei (TrueType)"

    const-string v7, "wqy-microhei.ttf"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "SimSun (TrueType)"

    const-string v8, "wqy-microhei.ttf"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "SimHei (TrueType)"

    const-string v9, "wqy-microhei.ttf"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    filled-new-array {v5, v6, v7, v8}, [[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/winlator/core/WineRegistryEditor;->setStringValues(Ljava/lang/String;[[Ljava/lang/String;)V

    invoke-virtual {v0, v3, v5}, Lcom/winlator/core/WineRegistryEditor;->setStringValues(Ljava/lang/String;[[Ljava/lang/String;)V

    const-string v5, "Software\\Wine\\Fonts\\Replacements"

    const-string v6, "Microsoft YaHei"

    const-string v7, "WenQuanYi Micro Hei"

    invoke-virtual {v0, v5, v6, v7}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Microsoft YaHei UI"

    invoke-virtual {v0, v5, v6, v7}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "SimSun"

    invoke-virtual {v0, v5, v6, v7}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "SimHei"

    invoke-virtual {v0, v5, v6, v7}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "NSimSun"

    invoke-virtual {v0, v5, v6, v7}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Microsoft JhengHei"

    invoke-virtual {v0, v5, v6, v7}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "MS Shell Dlg"

    invoke-virtual {v0, v5, v6, v7}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "MS Shell Dlg 2"

    invoke-virtual {v0, v5, v6, v7}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Tahoma"

    invoke-virtual {v0, v5, v6, v7}, Lcom/winlator/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method public static unixToDOSPath(Ljava/lang/String;Lcom/winlator/container/Container;)Ljava/lang/String;
    .locals 7
    .param p0, "unixPath"    # Ljava/lang/String;
    .param p1, "container"    # Lcom/winlator/container/Container;

    .line 248
    const-string v0, ""

    .line 249
    .local v0, "dosPath":Ljava/lang/String;
    const-string v1, ""

    .line 251
    .local v1, "driveLetter":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/winlator/container/Container;->drivesIterator()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "/"

    const-string v5, "\\"

    nop

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/winlator/container/Drive;

    .line 252
    .local v3, "drive":Lcom/winlator/container/Drive;
    iget-object v6, v3, Lcom/winlator/container/Drive;->path:Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/winlator/container/Drive;->letter:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    iget-object v2, v3, Lcom/winlator/container/Drive;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 255
    goto :goto_1

    .line 252
    :cond_0
    nop

    .line 257
    .end local v3    # "drive":Lcom/winlator/container/Drive;
    goto :goto_0

    .line 259
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 260
    const-string v2, "/.wine/drive_c"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 261
    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 262
    const-string v1, "C:"

    .line 263
    add-int/lit8 v3, v2, 0xe

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .end local v2    # "index":I
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/winlator/core/StringUtils;->removeEndSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    :cond_4
    return-object v0
.end method

.method public static updateWineprefix(Landroid/content/Context;Lcom/winlator/core/Callback;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 183
    .local p1, "terminationCallback":Lcom/winlator/core/Callback;, "Lcom/winlator/core/Callback<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lcom/winlator/xenvironment/RootFS;->find(Landroid/content/Context;)Lcom/winlator/xenvironment/RootFS;

    move-result-object v0

    .line 184
    .local v0, "rootFS":Lcom/winlator/xenvironment/RootFS;
    invoke-virtual {v0}, Lcom/winlator/xenvironment/RootFS;->getRootDir()Ljava/io/File;

    move-result-object v1

    .line 185
    .local v1, "rootDir":Ljava/io/File;
    invoke-virtual {v0}, Lcom/winlator/xenvironment/RootFS;->getTmpDir()Ljava/io/File;

    move-result-object v2

    .line 186
    .local v2, "tmpDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 188
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/home/xuser/.wine/.update-timestamp"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v4, "0\n"

    invoke-static {v3, v4}, Lcom/winlator/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z

    .line 190
    new-instance v3, Lcom/winlator/core/EnvVars;

    invoke-direct {v3}, Lcom/winlator/core/EnvVars;-><init>()V

    .line 191
    .local v3, "envVars":Lcom/winlator/core/EnvVars;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/home/xuser/.wine"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WINEPREFIX"

    invoke-virtual {v3, v5, v4}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 192
    const-string v4, "WINEDLLOVERRIDES"

    const-string v5, "mscoree,mshtml=d"

    invoke-virtual {v3, v4, v5}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 194
    new-instance v4, Lcom/winlator/xenvironment/XEnvironment;

    invoke-direct {v4, p0, v0}, Lcom/winlator/xenvironment/XEnvironment;-><init>(Landroid/content/Context;Lcom/winlator/xenvironment/RootFS;)V

    .line 195
    .local v4, "environment":Lcom/winlator/xenvironment/XEnvironment;
    new-instance v5, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;

    invoke-direct {v5}, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;-><init>()V

    .line 196
    .local v5, "guestProgramLauncherComponent":Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;
    invoke-virtual {v5, v3}, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->setEnvVars(Lcom/winlator/core/EnvVars;)V

    .line 197
    const-string v6, "wine wineboot -u"

    invoke-virtual {v5, v6}, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->setGuestExecutable(Ljava/lang/String;)V

    .line 198
    new-instance v6, Lcom/winlator/core/WineUtils$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1, p1}, Lcom/winlator/core/WineUtils$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;Lcom/winlator/core/Callback;)V

    invoke-virtual {v5, v6}, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->setTerminationCallback(Lcom/winlator/core/Callback;)V

    .line 202
    invoke-virtual {v4, v5}, Lcom/winlator/xenvironment/XEnvironment;->addComponent(Lcom/winlator/xenvironment/EnvironmentComponent;)V

    .line 203
    invoke-virtual {v4}, Lcom/winlator/xenvironment/XEnvironment;->startEnvironmentComponents()V

    .line 204
    return-void
.end method
