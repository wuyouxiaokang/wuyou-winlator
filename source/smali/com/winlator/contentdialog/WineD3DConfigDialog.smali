.class public Lcom/winlator/contentdialog/WineD3DConfigDialog;
.super Lcom/winlator/contentdialog/ContentDialog;
.source "WineD3DConfigDialog.java"


# direct methods
.method public static synthetic $r8$lambda$W_bkNoRKCb7yZsxUs_ABWcJPdK0(Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p8}, Lcom/winlator/contentdialog/WineD3DConfigDialog;->lambda$new$0(Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 26
    .param p1, "anchor"    # Landroid/view/View;

    .line 25
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c00c1

    invoke-direct {v0, v1, v2}, Lcom/winlator/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 27
    .local v1, "context":Landroid/content/Context;
    const v2, 0x7f08009f

    invoke-virtual {v0, v2}, Lcom/winlator/contentdialog/ContentDialog;->setIcon(I)V

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WineD3D "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f100056

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/winlator/contentdialog/ContentDialog;->setTitle(Ljava/lang/String;)V

    .line 30
    const v2, 0x7f0900da

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 31
    .local v2, "sVersion":Landroid/widget/Spinner;
    const v3, 0x7f0900b9

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/Spinner;

    .line 32
    .local v13, "sDDrawWrapper":Landroid/widget/Spinner;
    const v3, 0x7f0900d1

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/Spinner;

    .line 34
    .local v14, "sRenderer":Landroid/widget/Spinner;
    new-instance v3, Lcom/winlator/core/KeyValueSet;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/winlator/core/KeyValueSet;-><init>(Ljava/lang/Object;)V

    move-object v15, v3

    .line 36
    .local v15, "config":Lcom/winlator/core/KeyValueSet;
    const-string v3, "version"

    invoke-virtual {v15, v3}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 37
    .local v12, "version":Ljava/lang/String;
    sget-object v3, Lcom/winlator/core/GeneralComponents$Type;->WINED3D:Lcom/winlator/core/GeneralComponents$Type;

    const v4, 0x7f0900ff

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "10.10"

    invoke-static {v3, v4, v2, v12, v5}, Lcom/winlator/core/GeneralComponents;->initViews(Lcom/winlator/core/GeneralComponents$Type;Landroid/view/View;Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v3, "ddrawWrapper"

    const-string v4, "wined3d"

    invoke-virtual {v15, v3, v4}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/winlator/core/AppUtils;->setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 40
    const-string v3, "renderer"

    const-string v4, "gl"

    invoke-virtual {v15, v3, v4}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/winlator/core/AppUtils;->setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 42
    const v3, 0x7f090033

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/CheckBox;

    .line 43
    .local v11, "cbCSMT":Landroid/widget/CheckBox;
    const-string v3, "csmt"

    const/4 v4, 0x3

    invoke-virtual {v15, v3, v4}, Lcom/winlator/core/KeyValueSet;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v11, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 45
    new-instance v3, Lcom/winlator/widget/GPUCardAdapter;

    const v6, 0x1090009

    invoke-direct {v3, v1, v6}, Lcom/winlator/widget/GPUCardAdapter;-><init>(Landroid/content/Context;I)V

    move-object v10, v3

    .line 46
    .local v10, "adapter":Lcom/winlator/widget/GPUCardAdapter;
    const v3, 0x7f0900be

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/Spinner;

    .line 47
    .local v9, "sGPUName":Landroid/widget/Spinner;
    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 48
    const-string v3, "VideoPciDeviceID"

    const/16 v7, 0x6c0

    invoke-virtual {v15, v3, v7}, Lcom/winlator/core/KeyValueSet;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v10, v3}, Lcom/winlator/widget/GPUCardAdapter;->getPositionByDeviceId(I)I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 50
    const-string v3, "Backbuffer"

    const-string v7, "FBO"

    filled-new-array {v3, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 51
    .local v8, "offscreenRenderingModeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v3, 0x7f0900cc

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/widget/Spinner;

    .line 52
    .local v7, "sOffscreenRenderingMode":Landroid/widget/Spinner;
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-direct {v3, v1, v6, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v7, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 53
    const-string v3, "OffscreenRenderingMode"

    const-string v6, "fbo"

    invoke-virtual {v15, v3, v6}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/winlator/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 55
    const v3, 0x7f090046

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/widget/CheckBox;

    .line 56
    .local v6, "cbStrictShaderMath":Landroid/widget/CheckBox;
    const-string v3, "strict_shader_math"

    invoke-virtual {v15, v3, v5}, Lcom/winlator/core/KeyValueSet;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {v6, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 58
    const v3, 0x7f0900db

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/widget/Spinner;

    .line 59
    .local v5, "sVideoMemorySize":Landroid/widget/Spinner;
    const-string v3, "VideoMemorySize"

    const-string v4, "2048"

    invoke-virtual {v15, v3, v4}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "videoMemorySize":Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/winlator/core/AppUtils;->setSpinnerSelectionFromMemorySize(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 62
    new-instance v3, Lcom/winlator/contentdialog/WineD3DConfigDialog$$ExternalSyntheticLambda0;

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .end local v4    # "videoMemorySize":Ljava/lang/String;
    .local v17, "videoMemorySize":Ljava/lang/String;
    move-object v4, v2

    move-object/from16 v18, v5

    .end local v5    # "sVideoMemorySize":Landroid/widget/Spinner;
    .local v18, "sVideoMemorySize":Landroid/widget/Spinner;
    move-object v5, v11

    move-object/from16 v19, v6

    .end local v6    # "cbStrictShaderMath":Landroid/widget/CheckBox;
    .local v19, "cbStrictShaderMath":Landroid/widget/CheckBox;
    move-object v6, v13

    move-object/from16 v20, v7

    .end local v7    # "sOffscreenRenderingMode":Landroid/widget/Spinner;
    .local v20, "sOffscreenRenderingMode":Landroid/widget/Spinner;
    move-object v7, v14

    move-object/from16 v21, v8

    .end local v8    # "offscreenRenderingModeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v21, "offscreenRenderingModeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v8, v9

    move-object/from16 v22, v9

    .end local v9    # "sGPUName":Landroid/widget/Spinner;
    .local v22, "sGPUName":Landroid/widget/Spinner;
    move-object/from16 v9, v20

    move-object/from16 v23, v10

    .end local v10    # "adapter":Lcom/winlator/widget/GPUCardAdapter;
    .local v23, "adapter":Lcom/winlator/widget/GPUCardAdapter;
    move-object/from16 v10, v19

    move-object/from16 v24, v11

    .end local v11    # "cbCSMT":Landroid/widget/CheckBox;
    .local v24, "cbCSMT":Landroid/widget/CheckBox;
    move-object/from16 v11, v18

    move-object/from16 v25, v12

    .end local v12    # "version":Ljava/lang/String;
    .local v25, "version":Ljava/lang/String;
    move-object/from16 v12, p1

    invoke-direct/range {v3 .. v12}, Lcom/winlator/contentdialog/WineD3DConfigDialog$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Lcom/winlator/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method private static synthetic lambda$new$0(Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 7
    .param p0, "sVersion"    # Landroid/widget/Spinner;
    .param p1, "cbCSMT"    # Landroid/widget/CheckBox;
    .param p2, "sDDrawWrapper"    # Landroid/widget/Spinner;
    .param p3, "sRenderer"    # Landroid/widget/Spinner;
    .param p4, "sGPUName"    # Landroid/widget/Spinner;
    .param p5, "sOffscreenRenderingMode"    # Landroid/widget/Spinner;
    .param p6, "cbStrictShaderMath"    # Landroid/widget/CheckBox;
    .param p7, "sVideoMemorySize"    # Landroid/widget/Spinner;
    .param p8, "anchor"    # Landroid/view/View;

    .line 63
    new-instance v0, Lcom/winlator/core/KeyValueSet;

    invoke-direct {v0}, Lcom/winlator/core/KeyValueSet;-><init>()V

    .line 64
    .local v0, "newConfig":Lcom/winlator/core/KeyValueSet;
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 65
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    const-string v2, "0"

    if-eqz v1, :cond_0

    const-string v1, "3"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "csmt"

    invoke-virtual {v0, v3, v1}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 67
    invoke-virtual {p2}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/winlator/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "ddrawWrapper":Ljava/lang/String;
    const-string v3, "wined3d"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "ddrawWrapper"

    invoke-virtual {v0, v3, v1}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 70
    :cond_1
    invoke-virtual {p3}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/winlator/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "renderer":Ljava/lang/String;
    const-string v4, "gl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "renderer"

    invoke-virtual {v0, v4, v3}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 73
    :cond_2
    invoke-virtual {p4}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/winlator/widget/GPUCardAdapter$GPUCard;

    .line 74
    .local v4, "gpuCard":Lcom/winlator/widget/GPUCardAdapter$GPUCard;
    iget v5, v4, Lcom/winlator/widget/GPUCardAdapter$GPUCard;->deviceId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "VideoPciDeviceID"

    invoke-virtual {v0, v6, v5}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 75
    iget v5, v4, Lcom/winlator/widget/GPUCardAdapter$GPUCard;->vendorId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "VideoPciVendorID"

    invoke-virtual {v0, v6, v5}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 76
    invoke-virtual {p5}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "OffscreenRenderingMode"

    invoke-virtual {v0, v6, v5}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 77
    invoke-virtual {p6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v2, "1"

    :cond_3
    const-string v5, "strict_shader_math"

    invoke-virtual {v0, v5, v2}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 78
    invoke-virtual {p7}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/winlator/core/StringUtils;->parseMemorySize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "VideoMemorySize"

    invoke-virtual {v0, v5, v2}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 80
    invoke-virtual {v0}, Lcom/winlator/core/KeyValueSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p8, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public static setEnvVars(Lcom/winlator/core/KeyValueSet;Lcom/winlator/core/EnvVars;)V
    .locals 11
    .param p0, "config"    # Lcom/winlator/core/KeyValueSet;
    .param p1, "envVars"    # Lcom/winlator/core/EnvVars;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "renderer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, "renderer"

    const-string v2, "gl"

    invoke-virtual {p0, v1, v2}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "csmt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v2, "csmt"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/winlator/core/KeyValueSet;->getHexString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VideoPciDeviceID="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v4, "VideoPciDeviceID"

    const/16 v5, 0x6c0

    invoke-virtual {p0, v4, v5}, Lcom/winlator/core/KeyValueSet;->getHexString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VideoPciVendorID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v5, "VideoPciVendorID"

    const/16 v6, 0x10de

    invoke-virtual {p0, v5, v6}, Lcom/winlator/core/KeyValueSet;->getHexString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OffscreenRenderingMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v6, "OffscreenRenderingMode"

    const-string v7, "fbo"

    invoke-virtual {p0, v6, v7}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "strict_shader_math="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v7, "strict_shader_math"

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/winlator/core/KeyValueSet;->getHexString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VideoMemorySize="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v9, "VideoMemorySize"

    const-string v10, "2048"

    invoke-virtual {p0, v9, v10}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    aput-object v1, v9, v8

    const/4 v0, 0x2

    aput-object v2, v9, v0

    aput-object v4, v9, v3

    const/4 v0, 0x4

    aput-object v5, v9, v0

    const/4 v0, 0x5

    aput-object v6, v9, v0

    const/4 v0, 0x6

    aput-object v7, v9, v0

    .line 85
    const-string v0, ","

    invoke-static {v0, v9}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WINE_D3D_CONFIG"

    invoke-virtual {p1, v1, v0}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 94
    return-void
.end method
