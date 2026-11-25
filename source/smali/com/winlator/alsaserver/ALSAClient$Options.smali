.class public Lcom/winlator/alsaserver/ALSAClient$Options;
.super Ljava/lang/Object;
.source "ALSAClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/alsaserver/ALSAClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public latencyMillis:S

.field public performanceMode:B

.field public volume:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0x10

    iput-short v0, p0, Lcom/winlator/alsaserver/ALSAClient$Options;->latencyMillis:S

    .line 43
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/winlator/alsaserver/ALSAClient$Options;->performanceMode:B

    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/winlator/alsaserver/ALSAClient$Options;->volume:F

    return-void
.end method

.method public static fromKeyValueSet(Lcom/winlator/core/KeyValueSet;)Lcom/winlator/alsaserver/ALSAClient$Options;
    .locals 6
    .param p0, "config"    # Lcom/winlator/core/KeyValueSet;

    .line 47
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/winlator/core/KeyValueSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_3

    .line 48
    :cond_1
    new-instance v0, Lcom/winlator/alsaserver/ALSAClient$Options;

    invoke-direct {v0}, Lcom/winlator/alsaserver/ALSAClient$Options;-><init>()V

    .line 49
    .local v0, "options":Lcom/winlator/alsaserver/ALSAClient$Options;
    const-string v1, "performanceMode"

    invoke-virtual {p0, v1}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    packed-switch v2, :pswitch_data_0

    :cond_2
    goto :goto_0

    :pswitch_0
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v5

    goto :goto_1

    :pswitch_1
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_1

    :pswitch_2
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 57
    :pswitch_3
    iput-byte v5, v0, Lcom/winlator/alsaserver/ALSAClient$Options;->performanceMode:B

    goto :goto_2

    .line 54
    :pswitch_4
    iput-byte v4, v0, Lcom/winlator/alsaserver/ALSAClient$Options;->performanceMode:B

    .line 55
    goto :goto_2

    .line 51
    :pswitch_5
    iput-byte v3, v0, Lcom/winlator/alsaserver/ALSAClient$Options;->performanceMode:B

    .line 52
    nop

    .line 61
    :goto_2
    const-string v1, "volume"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v2}, Lcom/winlator/core/KeyValueSet;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Lcom/winlator/alsaserver/ALSAClient$Options;->volume:F

    .line 62
    const-string v1, "latencyMillis"

    const/16 v2, 0x10

    invoke-virtual {p0, v1, v2}, Lcom/winlator/core/KeyValueSet;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Lcom/winlator/alsaserver/ALSAClient$Options;->latencyMillis:S

    .line 63
    return-object v0

    .line 47
    .end local v0    # "options":Lcom/winlator/alsaserver/ALSAClient$Options;
    :goto_3
    new-instance v0, Lcom/winlator/alsaserver/ALSAClient$Options;

    invoke-direct {v0}, Lcom/winlator/alsaserver/ALSAClient$Options;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
