.class public Lcom/wuyouwin/widget/FrameRating;
.super Landroid/widget/FrameLayout;
.source "FrameRating.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/widget/FrameRating$Mode;
    }
.end annotation


# instance fields
.field private activityManager:Landroid/app/ActivityManager;

.field private cpuInfo:Ljava/lang/String;

.field private final cpuPanel:Landroid/widget/LinearLayout;

.field private final fpsPanel:Landroid/widget/LinearLayout;

.field private frameCount:S

.field private final gpuPanel:Landroid/widget/LinearLayout;

.field private lastFPS:F

.field private lastTime:J

.field private memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

.field private mode:Lcom/wuyouwin/widget/FrameRating$Mode;

.field private final ramPanel:Landroid/widget/LinearLayout;

.field private tick:B


# direct methods
.method public static synthetic $r8$lambda$uW5vcu9geUFE715PzskD24RQQWM(Lcom/wuyouwin/widget/FrameRating;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/wuyouwin/widget/FrameRating;->lambda$setGPUInfo$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wuyouwin/widget/FrameRating;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wuyouwin/widget/FrameRating;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wuyouwin/widget/FrameRating;->lastTime:J

    .line 23
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/wuyouwin/widget/FrameRating;->frameCount:S

    .line 24
    const/4 v1, 0x0

    iput v1, p0, Lcom/wuyouwin/widget/FrameRating;->lastFPS:F

    .line 29
    sget-object v1, Lcom/wuyouwin/widget/FrameRating$Mode;->SIMPLE:Lcom/wuyouwin/widget/FrameRating$Mode;

    iput-object v1, p0, Lcom/wuyouwin/widget/FrameRating;->mode:Lcom/wuyouwin/widget/FrameRating$Mode;

    .line 32
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/wuyouwin/widget/FrameRating;->cpuInfo:Ljava/lang/String;

    .line 33
    iput-byte v0, p0, Lcom/wuyouwin/widget/FrameRating;->tick:B

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c004d

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090074

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/wuyouwin/widget/FrameRating;->fpsPanel:Landroid/widget/LinearLayout;

    .line 48
    const v1, 0x7f090075

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/wuyouwin/widget/FrameRating;->gpuPanel:Landroid/widget/LinearLayout;

    .line 49
    const v1, 0x7f09007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/wuyouwin/widget/FrameRating;->ramPanel:Landroid/widget/LinearLayout;

    .line 50
    const v1, 0x7f09006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/wuyouwin/widget/FrameRating;->cpuPanel:Landroid/widget/LinearLayout;

    .line 51
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 52
    invoke-direct {p0}, Lcom/wuyouwin/widget/FrameRating;->setupPanels()V

    .line 53
    return-void
.end method

.method private synthetic lambda$setGPUInfo$0(Ljava/lang/String;)V
    .locals 2
    .param p1, "gpuInfo"    # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/wuyouwin/widget/FrameRating;->gpuPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setupPanels()V
    .locals 4

    .line 56
    sget-object v0, Lcom/wuyouwin/widget/FrameRating$1;->$SwitchMap$com$winlator$widget$FrameRating$Mode:[I

    iget-object v1, p0, Lcom/wuyouwin/widget/FrameRating;->mode:Lcom/wuyouwin/widget/FrameRating$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 76
    :pswitch_0
    iget-object v0, p0, Lcom/wuyouwin/widget/FrameRating;->fpsPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/wuyouwin/widget/FrameRating;->gpuPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/wuyouwin/widget/FrameRating;->ramPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/wuyouwin/widget/FrameRating;->cpuPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    .local v0, "context":Landroid/content/Context;
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/wuyouwin/widget/FrameRating;->activityManager:Landroid/app/ActivityManager;

    .line 83
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iput-object v1, p0, Lcom/wuyouwin/widget/FrameRating;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    goto :goto_0

    .line 67
    .end local v0    # "context":Landroid/content/Context;
    :pswitch_1
    iget-object v0, p0, Lcom/wuyouwin/widget/FrameRating;->fpsPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/wuyouwin/widget/FrameRating;->gpuPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/wuyouwin/widget/FrameRating;->ramPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/wuyouwin/widget/FrameRating;->cpuPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iput-object v1, p0, Lcom/wuyouwin/widget/FrameRating;->activityManager:Landroid/app/ActivityManager;

    .line 73
    iput-object v1, p0, Lcom/wuyouwin/widget/FrameRating;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 74
    goto :goto_0

    .line 58
    :pswitch_2
    iget-object v0, p0, Lcom/wuyouwin/widget/FrameRating;->fpsPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/wuyouwin/widget/FrameRating;->gpuPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/wuyouwin/widget/FrameRating;->ramPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/wuyouwin/widget/FrameRating;->cpuPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iput-object v1, p0, Lcom/wuyouwin/widget/FrameRating;->activityManager:Landroid/app/ActivityManager;

    .line 64
    iput-object v1, p0, Lcom/wuyouwin/widget/FrameRating;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 65
    nop

    .line 86
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getMode()Lcom/wuyouwin/widget/FrameRating$Mode;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/wuyouwin/widget/FrameRating;->mode:Lcom/wuyouwin/widget/FrameRating$Mode;

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 102
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/wuyouwin/widget/FrameRating;->frameCount:S

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wuyouwin/widget/FrameRating;->lastTime:J

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/wuyouwin/widget/FrameRating;->lastFPS:F

    .line 105
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/wuyouwin/widget/FrameRating;->tick:B

    .line 106
    return-void
.end method

.method public run()V
    .locals 9

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/widget/FrameRating;->fpsPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v4, p0, Lcom/wuyouwin/widget/FrameRating;->lastFPS:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%.1f"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/wuyouwin/widget/FrameRating;->mode:Lcom/wuyouwin/widget/FrameRating$Mode;

    sget-object v3, Lcom/wuyouwin/widget/FrameRating$Mode;->FULL:Lcom/wuyouwin/widget/FrameRating$Mode;

    if-ne v0, v3, :cond_3

    iget-byte v0, p0, Lcom/wuyouwin/widget/FrameRating;->tick:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/wuyouwin/widget/FrameRating;->tick:B

    const/4 v3, 0x2

    if-lt v0, v3, :cond_3

    .line 126
    iput-byte v2, p0, Lcom/wuyouwin/widget/FrameRating;->tick:B

    .line 127
    iget-object v0, p0, Lcom/wuyouwin/widget/FrameRating;->activityManager:Landroid/app/ActivityManager;

    iget-object v3, p0, Lcom/wuyouwin/widget/FrameRating;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 128
    iget-object v0, p0, Lcom/wuyouwin/widget/FrameRating;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v3, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iget-object v0, p0, Lcom/wuyouwin/widget/FrameRating;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v5, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long/2addr v3, v5

    .line 129
    .local v3, "usedMem":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v4, v2}, Lcom/wuyouwin/core/StringUtils;->formatBytes(JZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/wuyouwin/widget/FrameRating;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v5, v5, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v5, v6}, Lcom/wuyouwin/core/StringUtils;->formatBytes(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "ramText":Ljava/lang/String;
    iget-object v5, p0, Lcom/wuyouwin/widget/FrameRating;->ramPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v5, p0, Lcom/wuyouwin/widget/FrameRating;->cpuInfo:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Box64 v"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/wuyouwin/widget/FrameRating;->cpuPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/wuyouwin/box64/Box64Utils;->extractBinVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/wuyouwin/widget/FrameRating;->cpuInfo:Ljava/lang/String;

    .line 136
    :cond_1
    invoke-static {}, Lcom/wuyouwin/core/CPUStatus;->getCurrentClockSpeeds()[S

    move-result-object v5

    .line 137
    .local v5, "clockSpeeds":[S
    const/4 v6, 0x0

    .line 138
    .local v6, "maxClockSpeed":I
    array-length v7, v5

    :goto_0
    if-ge v2, v7, :cond_2

    aget-short v8, v5, v2

    .local v8, "clockSpeed":S
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .end local v8    # "clockSpeed":S
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :cond_2
    iget-object v2, p0, Lcom/wuyouwin/widget/FrameRating;->cpuPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/wuyouwin/core/CPUStatus;->formatClockSpeed(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " | "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/wuyouwin/widget/FrameRating;->cpuInfo:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .end local v0    # "ramText":Ljava/lang/String;
    .end local v3    # "usedMem":J
    .end local v5    # "clockSpeeds":[S
    .end local v6    # "maxClockSpeed":I
    :cond_3
    return-void
.end method

.method public setGPUInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "gpuInfo"    # Ljava/lang/String;

    .line 98
    new-instance v0, Lcom/wuyouwin/widget/FrameRating$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/wuyouwin/widget/FrameRating$$ExternalSyntheticLambda0;-><init>(Lcom/wuyouwin/widget/FrameRating;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
.end method

.method public setMode(Lcom/wuyouwin/widget/FrameRating$Mode;)V
    .locals 0
    .param p1, "mode"    # Lcom/wuyouwin/widget/FrameRating$Mode;

    .line 93
    iput-object p1, p0, Lcom/wuyouwin/widget/FrameRating;->mode:Lcom/wuyouwin/widget/FrameRating$Mode;

    .line 94
    invoke-direct {p0}, Lcom/wuyouwin/widget/FrameRating;->setupPanels()V

    .line 95
    return-void
.end method

.method public update()V
    .locals 6

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 110
    .local v0, "time":J
    iget-wide v2, p0, Lcom/wuyouwin/widget/FrameRating;->lastTime:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 111
    iget-short v2, p0, Lcom/wuyouwin/widget/FrameRating;->frameCount:S

    mul-int/lit16 v2, v2, 0x3e8

    int-to-float v2, v2

    iget-wide v3, p0, Lcom/wuyouwin/widget/FrameRating;->lastTime:J

    sub-long v3, v0, v3

    long-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/wuyouwin/widget/FrameRating;->lastFPS:F

    .line 112
    invoke-virtual {p0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 113
    iput-wide v0, p0, Lcom/wuyouwin/widget/FrameRating;->lastTime:J

    .line 114
    const/4 v2, 0x0

    iput-short v2, p0, Lcom/wuyouwin/widget/FrameRating;->frameCount:S

    .line 117
    :cond_0
    iget-short v2, p0, Lcom/wuyouwin/widget/FrameRating;->frameCount:S

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lcom/wuyouwin/widget/FrameRating;->frameCount:S

    .line 118
    return-void
.end method
