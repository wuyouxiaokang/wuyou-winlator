.class public Lcom/winlator/xserver/ScreenInfo;
.super Ljava/lang/Object;
.source "ScreenInfo.java"


# instance fields
.field public final height:S

.field public final width:S


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, p0, Lcom/winlator/xserver/ScreenInfo;->width:S

    .line 16
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, p0, Lcom/winlator/xserver/ScreenInfo;->height:S

    .line 17
    return-void
.end method


# virtual methods
.method public aspectRatio()Landroid/util/Rational;
    .locals 2

    .line 33
    iget-short v0, p0, Lcom/winlator/xserver/ScreenInfo;->width:S

    int-to-float v0, v0

    iget-short v1, p0, Lcom/winlator/xserver/ScreenInfo;->height:S

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/winlator/math/Mathf;->farey(FF)Landroid/util/Rational;

    move-result-object v0

    return-object v0
.end method

.method public getHeightInMillimeters()S
    .locals 1

    .line 29
    iget-short v0, p0, Lcom/winlator/xserver/ScreenInfo;->height:S

    div-int/lit8 v0, v0, 0xa

    int-to-short v0, v0

    return v0
.end method

.method public getWidthInMillimeters()S
    .locals 1

    .line 25
    iget-short v0, p0, Lcom/winlator/xserver/ScreenInfo;->width:S

    div-int/lit8 v0, v0, 0xa

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-short v1, p0, Lcom/winlator/xserver/ScreenInfo;->width:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/winlator/xserver/ScreenInfo;->height:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
