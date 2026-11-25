.class public Lcom/winlator/contentdialog/DXVKConfigDialog;
.super Lcom/winlator/contentdialog/ContentDialog;
.source "DXVKConfigDialog.java"


# direct methods
.method public static synthetic $r8$lambda$Q8J0tZnUaK1RxbTCKHnd635XKd8(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/winlator/contentdialog/DXVKConfigDialog;->lambda$new$0(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .locals 20
    .param p1, "graphicsDriver"    # Ljava/lang/String;
    .param p2, "anchor"    # Landroid/view/View;

    .line 23
    move-object/from16 v1, p0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0c0044

    invoke-direct {v1, v0, v2}, Lcom/winlator/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 24
    const v0, 0x7f08009f

    invoke-virtual {v1, v0}, Lcom/winlator/contentdialog/ContentDialog;->setIcon(I)V

    .line 25
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 26
    .local v2, "context":Landroid/content/Context;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DXVK "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f100056

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/winlator/contentdialog/ContentDialog;->setTitle(Ljava/lang/String;)V

    .line 28
    const v0, 0x7f0900da

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/Spinner;

    .line 29
    .local v10, "sVersion":Landroid/widget/Spinner;
    const v0, 0x7f0900bd

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/Spinner;

    .line 30
    .local v11, "sFramerate":Landroid/widget/Spinner;
    const v0, 0x7f0900c9

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/Spinner;

    .line 31
    .local v12, "sMaxDeviceMemory":Landroid/widget/Spinner;
    const v0, 0x7f0900b8

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/Spinner;

    .line 32
    .local v13, "sCustomDevice":Landroid/widget/Spinner;
    const v0, 0x7f0900b9

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/Spinner;

    .line 34
    .local v14, "sDDrawWrapper":Landroid/widget/Spinner;
    new-instance v0, Lcom/winlator/core/KeyValueSet;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/winlator/core/KeyValueSet;-><init>(Ljava/lang/Object;)V

    move-object v15, v0

    .line 35
    .local v15, "config":Lcom/winlator/core/KeyValueSet;
    const-string v0, "framerate"

    const-string v3, "0"

    invoke-virtual {v15, v0, v3}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/winlator/core/AppUtils;->setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 36
    const-string v0, "maxDeviceMemory"

    invoke-virtual {v15, v0, v3}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/winlator/core/AppUtils;->setSpinnerSelectionFromMemorySize(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 37
    const-string v0, "ddrawWrapper"

    const-string v3, "wined3d"

    invoke-virtual {v15, v0, v3}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/winlator/core/AppUtils;->setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 39
    const-string v0, "version"

    invoke-virtual {v15, v0}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 40
    .local v9, "version":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/winlator/core/DefaultVersion;->DXVK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 41
    .local v8, "defaultVersion":Ljava/lang/String;
    sget-object v0, Lcom/winlator/core/GeneralComponents$Type;->DXVK:Lcom/winlator/core/GeneralComponents$Type;

    const v3, 0x7f090050

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v0, v3, v10, v9, v8}, Lcom/winlator/core/GeneralComponents;->initViews(Lcom/winlator/core/GeneralComponents$Type;Landroid/view/View;Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/winlator/widget/GPUCardAdapter;

    const v3, 0x1090009

    const v4, 0x7f100134

    invoke-direct {v0, v2, v3, v4}, Lcom/winlator/widget/GPUCardAdapter;-><init>(Landroid/content/Context;II)V

    move-object v7, v0

    .line 44
    .local v7, "adapter":Lcom/winlator/widget/GPUCardAdapter;
    invoke-virtual {v13, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 46
    const-string v0, "customDevice"

    invoke-virtual {v15, v0}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 47
    .local v6, "customDevice":Ljava/lang/String;
    const-string v0, ":"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    :try_start_0
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 50
    .local v0, "deviceId":I
    invoke-virtual {v7, v0}, Lcom/winlator/widget/GPUCardAdapter;->getPositionByDeviceId(I)I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/widget/AdapterView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0    # "deviceId":I
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 55
    :cond_0
    :goto_1
    new-instance v0, Lcom/winlator/contentdialog/DXVKConfigDialog$$ExternalSyntheticLambda0;

    move-object v3, v0

    move-object v4, v10

    move-object v5, v11

    move-object/from16 v16, v6

    .end local v6    # "customDevice":Ljava/lang/String;
    .local v16, "customDevice":Ljava/lang/String;
    move-object v6, v12

    move-object/from16 v17, v7

    .end local v7    # "adapter":Lcom/winlator/widget/GPUCardAdapter;
    .local v17, "adapter":Lcom/winlator/widget/GPUCardAdapter;
    move-object v7, v14

    move-object/from16 v18, v8

    .end local v8    # "defaultVersion":Ljava/lang/String;
    .local v18, "defaultVersion":Ljava/lang/String;
    move-object v8, v13

    move-object/from16 v19, v9

    .end local v9    # "version":Ljava/lang/String;
    .local v19, "version":Ljava/lang/String;
    move-object/from16 v9, p2

    invoke-direct/range {v3 .. v9}, Lcom/winlator/contentdialog/DXVKConfigDialog$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Lcom/winlator/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method private static getDXVKConfigContent(Lcom/winlator/core/KeyValueSet;)Ljava/lang/String;
    .locals 10
    .param p0, "config"    # Lcom/winlator/core/KeyValueSet;

    .line 89
    const-string v0, ""

    .line 91
    .local v0, "content":Ljava/lang/String;
    const-string v1, "maxDeviceMemory"

    invoke-virtual {p0, v1}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "maxDeviceMemory":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "0"

    const-string v4, "\n"

    if-nez v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "dxgi.maxDeviceMemory = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "dxgi.maxSharedMemory = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_0
    const-string v2, "framerate"

    invoke-virtual {p0, v2}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "framerate":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "dxgi.maxFrameRate = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "d3d9.maxFrameRate = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_1
    const-string v3, "customDevice"

    invoke-virtual {p0, v3}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "customDevice":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 105
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "parts":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "dxgi.customDeviceId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    aget-object v8, v5, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "dxgi.customVendorId = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    aget-object v9, v5, v8

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "d3d9.customDeviceId = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "d3d9.customVendorId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v5, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "dxgi.customDeviceDesc = \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    aget-object v7, v5, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\"\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "d3d9.customDeviceDesc = \""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v5, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .end local v5    # "parts":[Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "d3d11.constantBufferRangeCheck = \"True\"\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "[GTA5.exe]\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "dxgi.maxDeviceMemory = 512\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "dxgi.maxSharedMemory = 512\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    return-object v0
.end method

.method private static synthetic lambda$new$0(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 7
    .param p0, "sVersion"    # Landroid/widget/Spinner;
    .param p1, "sFramerate"    # Landroid/widget/Spinner;
    .param p2, "sMaxDeviceMemory"    # Landroid/widget/Spinner;
    .param p3, "sDDrawWrapper"    # Landroid/widget/Spinner;
    .param p4, "sCustomDevice"    # Landroid/widget/Spinner;
    .param p5, "anchor"    # Landroid/view/View;

    .line 56
    new-instance v0, Lcom/winlator/core/KeyValueSet;

    invoke-direct {v0}, Lcom/winlator/core/KeyValueSet;-><init>()V

    .line 57
    .local v0, "newConfig":Lcom/winlator/core/KeyValueSet;
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 58
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/winlator/core/StringUtils;->parseNumber(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "framerate"

    invoke-virtual {v0, v2, v1}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 59
    invoke-virtual {p2}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/winlator/core/StringUtils;->parseMemorySize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "maxDeviceMemory"

    invoke-virtual {v0, v2, v1}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 61
    invoke-virtual {p3}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/winlator/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "ddrawWrapper":Ljava/lang/String;
    const-string v2, "wined3d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ddrawWrapper"

    invoke-virtual {v0, v2, v1}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 64
    :cond_0
    invoke-virtual {p4}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/widget/GPUCardAdapter$GPUCard;

    .line 65
    .local v2, "gpuCard":Lcom/winlator/widget/GPUCardAdapter$GPUCard;
    iget v3, v2, Lcom/winlator/widget/GPUCardAdapter$GPUCard;->deviceId:I

    if-lez v3, :cond_1

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Lcom/winlator/widget/GPUCardAdapter$GPUCard;->deviceId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%04x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/winlator/widget/GPUCardAdapter$GPUCard;->vendorId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/winlator/widget/GPUCardAdapter$GPUCard;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "customDevice"

    invoke-virtual {v0, v4, v3}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 69
    :cond_1
    invoke-virtual {v0}, Lcom/winlator/core/KeyValueSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public static setEnvVars(Landroid/content/Context;Lcom/winlator/core/KeyValueSet;Lcom/winlator/core/EnvVars;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/winlator/core/KeyValueSet;
    .param p2, "envVars"    # Lcom/winlator/core/EnvVars;

    .line 74
    const-string v0, "version"

    invoke-virtual {p1, v0}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "async"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DXVK_ASYNC"

    const-string v1, "1"

    invoke-virtual {p2, v0, v1}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 75
    :cond_0
    const-string v0, "DXVK_STATE_CACHE_PATH"

    invoke-static {}, Lcom/winlator/xenvironment/RootFS;->getDosUserCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 76
    const-string v0, "DXVK_LOG_LEVEL"

    const-string v1, "none"

    invoke-virtual {p2, v0, v1}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 78
    invoke-static {p0}, Lcom/winlator/xenvironment/RootFS;->find(Landroid/content/Context;)Lcom/winlator/xenvironment/RootFS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/xenvironment/RootFS;->getRootDir()Ljava/io/File;

    move-result-object v0

    .line 79
    .local v0, "rootDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/home/xuser/.config/dxvk.conf"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    .local v1, "dxvkConfigFile":Ljava/io/File;
    invoke-static {v1}, Lcom/winlator/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 82
    invoke-static {p1}, Lcom/winlator/contentdialog/DXVKConfigDialog;->getDXVKConfigContent(Lcom/winlator/core/KeyValueSet;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "content":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/winlator/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/winlator/xenvironment/RootFS;->getDosUserConfigPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\\dxvk.conf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DXVK_CONFIG_FILE"

    invoke-virtual {p2, v4, v3}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 86
    :cond_1
    return-void
.end method
