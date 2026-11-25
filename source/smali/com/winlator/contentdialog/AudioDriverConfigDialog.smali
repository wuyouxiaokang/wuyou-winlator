.class public Lcom/winlator/contentdialog/AudioDriverConfigDialog;
.super Lcom/winlator/contentdialog/ContentDialog;
.source "AudioDriverConfigDialog.java"


# direct methods
.method public static synthetic $r8$lambda$DqXnz_GN9Ej6iTMcB4cCfTc1wPg(Landroid/widget/Spinner;Lcom/winlator/widget/SeekBar;Lcom/winlator/widget/SeekBar;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/winlator/contentdialog/AudioDriverConfigDialog;->lambda$new$0(Landroid/widget/Spinner;Lcom/winlator/widget/SeekBar;Lcom/winlator/widget/SeekBar;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 7
    .param p1, "anchor"    # Landroid/view/View;

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0020

    invoke-direct {p0, v0, v1}, Lcom/winlator/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 19
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f080099

    invoke-virtual {p0, v1}, Lcom/winlator/contentdialog/ContentDialog;->setIcon(I)V

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f100026

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f100056

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/winlator/contentdialog/ContentDialog;->setTitle(Ljava/lang/String;)V

    .line 22
    const v1, 0x7f0900cd

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 23
    .local v1, "sPerformanceMode":Landroid/widget/Spinner;
    const v2, 0x7f0900af

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/winlator/widget/SeekBar;

    .line 24
    .local v2, "sbVolume":Lcom/winlator/widget/SeekBar;
    const v3, 0x7f0900aa

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/winlator/widget/SeekBar;

    .line 26
    .local v3, "sbLatencyMillis":Lcom/winlator/widget/SeekBar;
    new-instance v4, Lcom/winlator/core/KeyValueSet;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/winlator/core/KeyValueSet;-><init>(Ljava/lang/Object;)V

    .line 27
    .local v4, "config":Lcom/winlator/core/KeyValueSet;
    const-string v5, "performanceMode"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/winlator/core/KeyValueSet;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 29
    const-string v5, "volume"

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6}, Lcom/winlator/core/KeyValueSet;->getFloat(Ljava/lang/String;F)F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    invoke-virtual {v2, v5}, Lcom/winlator/widget/SeekBar;->setValue(F)V

    .line 30
    const-string v5, "latencyMillis"

    const/16 v6, 0x10

    invoke-virtual {v4, v5, v6}, Lcom/winlator/core/KeyValueSet;->getInt(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Lcom/winlator/widget/SeekBar;->setValue(F)V

    .line 32
    new-instance v5, Lcom/winlator/contentdialog/AudioDriverConfigDialog$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1, v2, v3, p1}, Lcom/winlator/contentdialog/AudioDriverConfigDialog$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Spinner;Lcom/winlator/widget/SeekBar;Lcom/winlator/widget/SeekBar;Landroid/view/View;)V

    invoke-virtual {p0, v5}, Lcom/winlator/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method

.method private static synthetic lambda$new$0(Landroid/widget/Spinner;Lcom/winlator/widget/SeekBar;Lcom/winlator/widget/SeekBar;Landroid/view/View;)V
    .locals 3
    .param p0, "sPerformanceMode"    # Landroid/widget/Spinner;
    .param p1, "sbVolume"    # Lcom/winlator/widget/SeekBar;
    .param p2, "sbLatencyMillis"    # Lcom/winlator/widget/SeekBar;
    .param p3, "anchor"    # Landroid/view/View;

    .line 33
    new-instance v0, Lcom/winlator/core/KeyValueSet;

    invoke-direct {v0}, Lcom/winlator/core/KeyValueSet;-><init>()V

    .line 34
    .local v0, "newConfig":Lcom/winlator/core/KeyValueSet;
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "performanceMode"

    invoke-virtual {v0, v2, v1}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 35
    invoke-virtual {p1}, Lcom/winlator/widget/SeekBar;->getValue()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "volume"

    invoke-virtual {v0, v2, v1}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 36
    invoke-virtual {p2}, Lcom/winlator/widget/SeekBar;->getValue()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "latencyMillis"

    invoke-virtual {v0, v2, v1}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    .line 37
    invoke-virtual {v0}, Lcom/winlator/core/KeyValueSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 38
    return-void
.end method
