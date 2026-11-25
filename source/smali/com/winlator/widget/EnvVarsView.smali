.class public Lcom/winlator/widget/EnvVarsView;
.super Landroid/widget/FrameLayout;
.source "EnvVarsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/widget/EnvVarsView$GetValueCallback;
    }
.end annotation


# static fields
.field public static final knownEnvVars:[[Ljava/lang/String;


# instance fields
.field private final container:Landroid/widget/LinearLayout;

.field private final emptyTextView:Landroid/widget/TextView;

.field private final inflater:Landroid/view/LayoutInflater;


# direct methods
.method public static synthetic $r8$lambda$IuQPPQ9FWagSdXpVnSUSew4L86I(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/winlator/widget/EnvVarsView;->lambda$add$2(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MwST9bQQs4G6qy6Lfo_KbE4l2LI(Landroid/widget/ToggleButton;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/winlator/widget/EnvVarsView;->lambda$add$0(Landroid/widget/ToggleButton;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mdw8iUmjNVZXm3QnZLIvgyRmMEY(Landroid/widget/Spinner;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/winlator/widget/EnvVarsView;->lambda$add$1(Landroid/widget/Spinner;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$q4BU5EaUXQLJO1JScBqSzeE8ED4(Lcom/winlator/widget/EnvVarsView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/widget/EnvVarsView;->lambda$add$3(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 38

    .line 29
    const-string v4, "cached"

    const-string v5, "notemplates"

    const-string v0, "ZINK_DESCRIPTORS"

    const-string v1, "SELECT"

    const-string v2, "auto"

    const-string v3, "lazy"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v6

    const-string v14, "compact"

    const-string v15, "noreorder"

    const-string v7, "ZINK_DEBUG"

    const-string v8, "SELECT_MULTIPLE"

    const-string v9, "nir"

    const-string v10, "spirv"

    const-string v11, "tgsi"

    const-string v12, "validation"

    const-string v13, "sync"

    filled-new-array/range {v7 .. v15}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "ZINK_CONTEXT_THREADED"

    const-string v1, "CHECKBOX"

    const-string v2, "0"

    const-string v3, "1"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "WINEESYNC"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "WINEDLLOVERRIDES"

    const-string v4, "TEXT"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v10

    const-string v36, "noconform"

    const-string v37, "rd"

    const-string v11, "TU_DEBUG"

    const-string v12, "SELECT_MULTIPLE"

    const-string v13, "startup"

    const-string v14, "nir"

    const-string v15, "nobin"

    const-string v16, "sysmem"

    const-string v17, "gmem"

    const-string v18, "forcebin"

    const-string v19, "layout"

    const-string v20, "noubwc"

    const-string v21, "nomultipos"

    const-string v22, "nolrz"

    const-string v23, "nolrzfc"

    const-string v24, "perf"

    const-string v25, "perfc"

    const-string v26, "flushall"

    const-string v27, "syncdraw"

    const-string v28, "push_consts_per_stage"

    const-string v29, "rast_order"

    const-string v30, "unaligned_store"

    const-string v31, "log_skip_gmem_ops"

    const-string v32, "dynamic"

    const-string v33, "bos"

    const-string v34, "3d_load"

    const-string v35, "fdm"

    filled-new-array/range {v11 .. v37}, [Ljava/lang/String;

    move-result-object v11

    const-string v26, "compiler"

    const-string v27, "samplers"

    const-string v12, "DXVK_HUD"

    const-string v13, "SELECT_MULTIPLE"

    const-string v14, "devinfo"

    const-string v15, "fps"

    const-string v16, "frametimes"

    const-string v17, "submissions"

    const-string v18, "drawcalls"

    const-string v19, "pipelines"

    const-string v20, "descriptors"

    const-string v21, "memory"

    const-string v22, "gpuload"

    const-string v23, "version"

    const-string v24, "api"

    const-string v25, "cs"

    filled-new-array/range {v12 .. v27}, [Ljava/lang/String;

    move-result-object v12

    const-string v18, "info"

    const-string v19, "debug"

    const-string v13, "DXVK_LOG_LEVEL"

    const-string v14, "SELECT"

    const-string v15, "none"

    const-string v16, "error"

    const-string v17, "warn"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/String;

    move-result-object v13

    const-string v0, "DXVK_ASYNC"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v14

    const-string v0, "GALLIUM_HUD"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v15

    const-string v0, "MESA_SHADER_CACHE_DISABLE"

    const-string v2, "false"

    const-string v3, "true"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v16

    const-string v0, "mesa_glthread"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v17

    const-string v0, "MESA_EXTENSION_MAX_YEAR"

    const-string v1, "NUMBER"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v18

    const-string v0, "MESA_GL_VERSION_OVERRIDE"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v19

    const-string v0, "PULSE_LATENCY_MSEC"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v20

    filled-new-array/range {v6 .. v20}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/winlator/widget/EnvVarsView;->knownEnvVars:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/winlator/widget/EnvVarsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/winlator/widget/EnvVarsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/widget/EnvVarsView;->inflater:Landroid/view/LayoutInflater;

    .line 69
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/winlator/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    .line 70
    iget-object v0, p0, Lcom/winlator/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 71
    iget-object v0, p0, Lcom/winlator/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v0, p0, Lcom/winlator/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/winlator/widget/EnvVarsView;->emptyTextView:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/winlator/widget/EnvVarsView;->emptyTextView:Landroid/widget/TextView;

    const v2, 0x7f100131

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 76
    iget-object v0, p0, Lcom/winlator/widget/EnvVarsView;->emptyTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 77
    iget-object v0, p0, Lcom/winlator/widget/EnvVarsView;->emptyTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 78
    invoke-static {v2}, Lcom/winlator/core/UnitUtils;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 79
    .local v0, "padding":I
    iget-object v1, p0, Lcom/winlator/widget/EnvVarsView;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 80
    iget-object v1, p0, Lcom/winlator/widget/EnvVarsView;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    return-void
.end method

.method private findKnownEnvVar(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/winlator/widget/EnvVarsView;->knownEnvVars:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .local v4, "values":[Ljava/lang/String;
    aget-object v5, v4, v2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    .end local v4    # "values":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$add$0(Landroid/widget/ToggleButton;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "toggleButton"    # Landroid/widget/ToggleButton;
    .param p1, "knownEnvVar"    # [Ljava/lang/String;

    .line 124
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    aget-object v0, p1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    aget-object v0, p1, v0

    :goto_0
    return-object v0
.end method

.method private static synthetic lambda$add$1(Landroid/widget/Spinner;)Ljava/lang/String;
    .locals 1
    .param p0, "spinner"    # Landroid/widget/Spinner;

    .line 132
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$add$2(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 1
    .param p0, "editText"    # Landroid/widget/EditText;

    .line 148
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$add$3(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "v"    # Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcom/winlator/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 155
    iget-object v0, p0, Lcom/winlator/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/winlator/widget/EnvVarsView;->emptyTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 111
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/winlator/widget/EnvVarsView;->inflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/winlator/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    const v3, 0x7f0c0045

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 112
    .local v1, "itemView":Landroid/view/View;
    const v2, 0x7f0900f9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-direct {p0, p1}, Lcom/winlator/widget/EnvVarsView;->findKnownEnvVar(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "knownEnvVar":[Ljava/lang/String;
    const-string v3, "TEXT"

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    aget-object v6, v2, v5

    goto :goto_0

    :cond_0
    move-object v6, v3

    .line 119
    .local v6, "type":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const-string v8, "NUMBER"

    const/4 v9, 0x2

    sparse-switch v7, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v3, "SELECT_MULTIPLE"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v9

    goto :goto_2

    :sswitch_1
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_2
    const-string v3, "SELECT"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_2

    :sswitch_3
    const-string v3, "CHECKBOX"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_2

    :sswitch_4
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 144
    const v3, 0x7f09005b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 145
    .local v3, "editText":Landroid/widget/EditText;
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 146
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setInputType(I)V

    .line 148
    :cond_2
    new-instance v4, Lcom/winlator/widget/EnvVarsView$$ExternalSyntheticLambda3;

    invoke-direct {v4, v3}, Lcom/winlator/widget/EnvVarsView$$ExternalSyntheticLambda3;-><init>(Landroid/widget/EditText;)V

    .local v4, "getValueCallback":Lcom/winlator/widget/EnvVarsView$GetValueCallback;
    goto/16 :goto_3

    .line 135
    .end local v3    # "editText":Landroid/widget/EditText;
    .end local v4    # "getValueCallback":Lcom/winlator/widget/EnvVarsView$GetValueCallback;
    :pswitch_0
    const v3, 0x7f090093

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/winlator/widget/MultiSelectionComboBox;

    .line 136
    .local v3, "comboBox":Lcom/winlator/widget/MultiSelectionComboBox;
    array-length v5, v2

    invoke-static {v2, v9, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/winlator/widget/MultiSelectionComboBox;->setItems([Ljava/lang/String;)V

    .line 137
    const-string v5, ","

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/winlator/widget/MultiSelectionComboBox;->setSelectedItems([Ljava/lang/String;)V

    .line 138
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 139
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/winlator/widget/EnvVarsView$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3}, Lcom/winlator/widget/EnvVarsView$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/widget/MultiSelectionComboBox;)V

    .line 140
    .restart local v4    # "getValueCallback":Lcom/winlator/widget/EnvVarsView$GetValueCallback;
    goto :goto_3

    .line 127
    .end local v3    # "comboBox":Lcom/winlator/widget/MultiSelectionComboBox;
    .end local v4    # "getValueCallback":Lcom/winlator/widget/EnvVarsView$GetValueCallback;
    :pswitch_1
    array-length v3, v2

    invoke-static {v2, v9, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 128
    .local v3, "items":[Ljava/lang/String;
    const v5, 0x7f0900e2

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 129
    .local v5, "spinner":Landroid/widget/Spinner;
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x1090009

    invoke-direct {v7, v0, v8, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v5, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 130
    invoke-static {v5, p2}, Lcom/winlator/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 131
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 132
    new-instance v4, Lcom/winlator/widget/EnvVarsView$$ExternalSyntheticLambda1;

    invoke-direct {v4, v5}, Lcom/winlator/widget/EnvVarsView$$ExternalSyntheticLambda1;-><init>(Landroid/widget/Spinner;)V

    .line 133
    .restart local v4    # "getValueCallback":Lcom/winlator/widget/EnvVarsView$GetValueCallback;
    goto :goto_3

    .line 121
    .end local v3    # "items":[Ljava/lang/String;
    .end local v4    # "getValueCallback":Lcom/winlator/widget/EnvVarsView$GetValueCallback;
    .end local v5    # "spinner":Landroid/widget/Spinner;
    :pswitch_2
    const v3, 0x7f0900fa

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    .line 122
    .local v3, "toggleButton":Landroid/widget/ToggleButton;
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 123
    const-string v7, "1"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "true"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    move v4, v5

    :cond_4
    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 124
    new-instance v4, Lcom/winlator/widget/EnvVarsView$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v2}, Lcom/winlator/widget/EnvVarsView$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ToggleButton;[Ljava/lang/String;)V

    .line 125
    .restart local v4    # "getValueCallback":Lcom/winlator/widget/EnvVarsView$GetValueCallback;
    nop

    .line 152
    .end local v3    # "toggleButton":Landroid/widget/ToggleButton;
    :goto_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 153
    const v3, 0x7f090025

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/winlator/widget/EnvVarsView$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v1}, Lcom/winlator/widget/EnvVarsView$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/widget/EnvVarsView;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v3, p0, Lcom/winlator/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 158
    iget-object v3, p0, Lcom/winlator/widget/EnvVarsView;->emptyTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 159
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x761430b7 -> :sswitch_4
        -0x75bef43d -> :sswitch_3
        -0x6e6dd704 -> :sswitch_2
        0x273d2d -> :sswitch_1
        0x5fa9f9f3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public containsName(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/winlator/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/winlator/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 103
    .local v1, "child":Landroid/view/View;
    const v2, 0x7f0900f9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    .line 101
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 106
    .end local v0    # "i":I
    const/4 v0, 0x0

    return v0
.end method

.method public getEnvVars()Ljava/lang/String;
    .locals 8

    .line 89
    new-instance v0, Lcom/winlator/core/EnvVars;

    invoke-direct {v0}, Lcom/winlator/core/EnvVars;-><init>()V

    .line 90
    .local v0, "envVars":Lcom/winlator/core/EnvVars;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/winlator/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/winlator/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 92
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/winlator/widget/EnvVarsView$GetValueCallback;

    .line 93
    .local v3, "getValueCallback":Lcom/winlator/widget/EnvVarsView$GetValueCallback;
    const v4, 0x7f0900f9

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v3}, Lcom/winlator/widget/EnvVarsView$GetValueCallback;->call()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0, v4, v5}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 90
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "getValueCallback":Lcom/winlator/widget/EnvVarsView$GetValueCallback;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 97
    .end local v1    # "i":I
    invoke-virtual {v0}, Lcom/winlator/core/EnvVars;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setEnvVars(Lcom/winlator/core/EnvVars;)V
    .locals 3
    .param p1, "envVars"    # Lcom/winlator/core/EnvVars;

    .line 162
    iget-object v0, p0, Lcom/winlator/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 163
    invoke-virtual {p1}, Lcom/winlator/core/EnvVars;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/winlator/core/EnvVars;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/winlator/widget/EnvVarsView;->add(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method
