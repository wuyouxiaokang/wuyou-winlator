.class public abstract Lcom/wuyouwin/win32/WinVersions;
.super Ljava/lang/Object;
.source "WinVersions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/win32/WinVersions$WinVersion;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$1AdIsDn9rIKqun1AGZEzvyD-Law(Landroid/widget/Spinner;B)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/wuyouwin/win32/WinVersions;->lambda$loadSpinner$0(Landroid/widget/Spinner;B)V

    return-void
.end method

.method public static synthetic $r8$lambda$i9nrlFntCdL1U16U-PFty7VGrtM(Landroid/widget/Spinner;Ljava/io/File;[Lcom/wuyouwin/win32/WinVersions$WinVersion;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/wuyouwin/win32/WinVersions;->lambda$loadSpinner$1(Landroid/widget/Spinner;Ljava/io/File;[Lcom/wuyouwin/win32/WinVersions$WinVersion;)V

    return-void
.end method

.method public static getWinVersions()[Lcom/wuyouwin/win32/WinVersions$WinVersion;
    .locals 35

    .line 45
    new-instance v8, Lcom/wuyouwin/win32/WinVersions$WinVersion;

    const/16 v6, 0x55f0

    const-string v7, ""

    const-string v1, "win11"

    const-string v2, "Windows 11"

    const-string v3, "6.3"

    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/wuyouwin/win32/WinVersions$WinVersion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    new-instance v1, Lcom/wuyouwin/win32/WinVersions$WinVersion;

    const/16 v15, 0x4a63

    const-string v16, ""

    const-string v10, "win10"

    const-string v11, "Windows 10"

    const-string v12, "6.3"

    const/16 v13, 0xa

    const/4 v14, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lcom/wuyouwin/win32/WinVersions$WinVersion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    new-instance v2, Lcom/wuyouwin/win32/WinVersions$WinVersion;

    const/16 v23, 0x2580

    const-string v24, ""

    const-string v18, "win81"

    const-string v19, "Windows 8.1"

    const/16 v20, 0x0

    const/16 v21, 0x6

    const/16 v22, 0x3

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v24}, Lcom/wuyouwin/win32/WinVersions$WinVersion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    new-instance v3, Lcom/wuyouwin/win32/WinVersions$WinVersion;

    const/16 v15, 0x23f0

    const-string v16, ""

    const-string v10, "win8"

    const-string v11, "Windows 8"

    const/4 v12, 0x0

    const/4 v13, 0x6

    const/4 v14, 0x2

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Lcom/wuyouwin/win32/WinVersions$WinVersion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    new-instance v4, Lcom/wuyouwin/win32/WinVersions$WinVersion;

    const/16 v23, 0x1db1

    const-string v24, "Service Pack 1"

    const-string v18, "win2008r2"

    const-string v19, "Windows 2008 R2"

    const/16 v22, 0x1

    move-object/from16 v17, v4

    invoke-direct/range {v17 .. v24}, Lcom/wuyouwin/win32/WinVersions$WinVersion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    new-instance v5, Lcom/wuyouwin/win32/WinVersions$WinVersion;

    const/16 v15, 0x1db1

    const-string v16, "Service Pack 1"

    const-string v10, "win7"

    const-string v11, "Windows 7"

    const/4 v14, 0x1

    move-object v9, v5

    invoke-direct/range {v9 .. v16}, Lcom/wuyouwin/win32/WinVersions$WinVersion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    new-instance v6, Lcom/wuyouwin/win32/WinVersions$WinVersion;

    const/16 v23, 0x1772

    const-string v24, "Service Pack 2"

    const-string v18, "win2008"

    const-string v19, "Windows 2008"

    const/16 v22, 0x0

    move-object/from16 v17, v6

    invoke-direct/range {v17 .. v24}, Lcom/wuyouwin/win32/WinVersions$WinVersion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    new-instance v7, Lcom/wuyouwin/win32/WinVersions$WinVersion;

    const/16 v15, 0x1772

    const-string v16, "Service Pack 2"

    const-string v10, "vista"

    const-string v11, "Windows Vista"

    const/4 v14, 0x0

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lcom/wuyouwin/win32/WinVersions$WinVersion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    new-instance v9, Lcom/wuyouwin/win32/WinVersions$WinVersion;

    const/16 v23, 0xece

    const-string v24, "Service Pack 2"

    const-string v18, "win2003"

    const-string v19, "Windows 2003"

    const/16 v21, 0x5

    const/16 v22, 0x2

    move-object/from16 v17, v9

    invoke-direct/range {v17 .. v24}, Lcom/wuyouwin/win32/WinVersions$WinVersion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    new-instance v18, Lcom/wuyouwin/win32/WinVersions$WinVersion;

    const/16 v16, 0xece

    const-string v17, "Service Pack 2"

    const-string v11, "winxp64"

    const-string v12, "Windows XP 64"

    const/4 v13, 0x0

    const/4 v14, 0x5

    const/4 v15, 0x2

    move-object/from16 v10, v18

    invoke-direct/range {v10 .. v17}, Lcom/wuyouwin/win32/WinVersions$WinVersion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    new-instance v10, Lcom/wuyouwin/win32/WinVersions$WinVersion;

    const/16 v25, 0xa28

    const-string v26, "Service Pack 3"

    const-string v20, "winxp"

    const-string v21, "Windows XP"

    const/16 v22, 0x0

    const/16 v23, 0x5

    const/16 v24, 0x1

    move-object/from16 v19, v10

    invoke-direct/range {v19 .. v26}, Lcom/wuyouwin/win32/WinVersions$WinVersion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    new-instance v11, Lcom/wuyouwin/win32/WinVersions$WinVersion;

    const/16 v33, 0x893

    const-string v34, "Service Pack 4"

    const-string v28, "win2k"

    const-string v29, "Windows 2000"

    const/16 v30, 0x0

    const/16 v31, 0x5

    const/16 v32, 0x0

    move-object/from16 v27, v11

    invoke-direct/range {v27 .. v34}, Lcom/wuyouwin/win32/WinVersions$WinVersion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    move-object v8, v9

    move-object/from16 v9, v18

    filled-new-array/range {v0 .. v11}, [Lcom/wuyouwin/win32/WinVersions$WinVersion;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$loadSpinner$0(Landroid/widget/Spinner;B)V
    .locals 1
    .param p0, "sWinVersion"    # Landroid/widget/Spinner;
    .param p1, "newPosition"    # B

    .line 98
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 99
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 101
    return-void
.end method

.method private static synthetic lambda$loadSpinner$1(Landroid/widget/Spinner;Ljava/io/File;[Lcom/wuyouwin/win32/WinVersions$WinVersion;)V
    .locals 5
    .param p0, "sWinVersion"    # Landroid/widget/Spinner;
    .param p1, "systemRegFile"    # Ljava/io/File;
    .param p2, "winVersions"    # [Lcom/wuyouwin/win32/WinVersions$WinVersion;

    .line 83
    const-string v0, ""

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    int-to-byte v1, v1

    .line 84
    .local v1, "position":B
    new-instance v2, Lcom/wuyouwin/core/WineRegistryEditor;

    invoke-direct {v2, p1}, Lcom/wuyouwin/core/WineRegistryEditor;-><init>(Ljava/io/File;)V

    .line 85
    .local v2, "registryEditor":Lcom/wuyouwin/core/WineRegistryEditor;
    :try_start_0
    const-string v3, "Software\\Microsoft\\Windows NT\\CurrentVersion"

    const-string v4, "ProductName"

    invoke-virtual {v2, v3, v4, v0}, Lcom/wuyouwin/core/WineRegistryEditor;->getStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "productName":Ljava/lang/String;
    const-string v4, "(Microsoft )|( Pro)"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .end local v3    # "productName":Ljava/lang/String;
    .local v0, "productName":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_1

    .line 89
    aget-object v4, p2, v3

    iget-object v4, v4, Lcom/wuyouwin/win32/WinVersions$WinVersion;->description:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 90
    int-to-byte v1, v3

    .line 91
    goto :goto_1

    .line 88
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "productName":Ljava/lang/String;
    .end local v3    # "i":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 94
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/wuyouwin/core/WineRegistryEditor;->close()V

    .line 96
    .end local v2    # "registryEditor":Lcom/wuyouwin/core/WineRegistryEditor;
    move v0, v1

    .line 97
    .local v0, "newPosition":B
    new-instance v2, Lcom/wuyouwin/win32/WinVersions$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/wuyouwin/win32/WinVersions$$ExternalSyntheticLambda1;-><init>(Landroid/widget/Spinner;B)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 102
    return-void

    .line 84
    .end local v0    # "newPosition":B
    .restart local v2    # "registryEditor":Lcom/wuyouwin/core/WineRegistryEditor;
    :goto_2
    :try_start_1
    invoke-virtual {v2}, Lcom/wuyouwin/core/WineRegistryEditor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v0
.end method

.method public static loadSpinner(Lcom/wuyouwin/container/Container;Landroid/widget/Spinner;)V
    .locals 6
    .param p0, "container"    # Lcom/wuyouwin/container/Container;
    .param p1, "sWinVersion"    # Landroid/widget/Spinner;

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/wuyouwin/win32/WinVersions;->getWinVersions()[Lcom/wuyouwin/win32/WinVersions$WinVersion;

    move-result-object v1

    .line 65
    .local v1, "winVersions":[Lcom/wuyouwin/win32/WinVersions$WinVersion;
    const/4 v2, 0x0

    .line 66
    .local v2, "oldPosition":B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 67
    aget-object v4, v1, v3

    iget-object v4, v4, Lcom/wuyouwin/win32/WinVersions$WinVersion;->version:Ljava/lang/String;

    const-string v5, "win10"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    int-to-byte v2, v3

    .line 69
    goto :goto_1

    .line 66
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    .end local v3    # "i":I
    :cond_1
    :goto_1
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    invoke-direct {v3, v0, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 74
    invoke-virtual {p1, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 75
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    if-eqz p0, :cond_3

    .line 78
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/wuyouwin/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v4

    const-string v5, ".wine/system.reg"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    .local v3, "systemRegFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_2

    return-void

    .line 81
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 82
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    new-instance v5, Lcom/wuyouwin/win32/WinVersions$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1, v3, v1}, Lcom/wuyouwin/win32/WinVersions$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Spinner;Ljava/io/File;[Lcom/wuyouwin/win32/WinVersions$WinVersion;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 104
    .end local v3    # "systemRegFile":Ljava/io/File;
    :cond_3
    return-void
.end method
