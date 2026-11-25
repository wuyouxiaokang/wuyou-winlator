.class public Lcom/winlator/widget/GPUCardAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GPUCardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/widget/GPUCardAdapter$GPUCard;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/winlator/widget/GPUCardAdapter;-><init>(Landroid/content/Context;II)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "defaultItemTextId"    # I

    .line 42
    invoke-static {p1, p3}, Lcom/winlator/widget/GPUCardAdapter;->loadData(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 43
    return-void
.end method

.method private static loadData(Landroid/content/Context;I)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultItemTextId"    # I

    .line 47
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    const-string v1, "gpu_cards.json"

    invoke-static {p0, v1}, Lcom/winlator/core/FileUtils;->readString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "gpuCards":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/widget/GPUCardAdapter$GPUCard;>;"
    if-lez p1, :cond_0

    new-instance v2, Lcom/winlator/widget/GPUCardAdapter$GPUCard;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Lcom/winlator/widget/GPUCardAdapter$GPUCard;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    .end local v0    # "gpuCards":Lorg/json/JSONArray;
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/widget/GPUCardAdapter$GPUCard;>;"
    :catch_0
    move-exception v0

    goto :goto_2

    .line 52
    .restart local v0    # "gpuCards":Lorg/json/JSONArray;
    .restart local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/widget/GPUCardAdapter$GPUCard;>;"
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 53
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 54
    .local v3, "item":Lorg/json/JSONObject;
    new-instance v4, Lcom/winlator/widget/GPUCardAdapter$GPUCard;

    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "deviceID"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "vendorID"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/winlator/widget/GPUCardAdapter$GPUCard;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    nop

    .end local v3    # "item":Lorg/json/JSONObject;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 57
    .end local v2    # "i":I
    return-object v1

    .line 59
    .end local v0    # "gpuCards":Lorg/json/JSONArray;
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/widget/GPUCardAdapter$GPUCard;>;"
    :goto_2
    nop

    .line 60
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getPositionByDeviceId(I)I
    .locals 3
    .param p1, "deviceId"    # I

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 66
    invoke-interface {p0, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/widget/GPUCardAdapter$GPUCard;

    .line 67
    .local v1, "gpuCard":Lcom/winlator/widget/GPUCardAdapter$GPUCard;
    iget v2, v1, Lcom/winlator/widget/GPUCardAdapter$GPUCard;->deviceId:I

    if-ne v2, p1, :cond_0

    return v0

    .line 65
    .end local v1    # "gpuCard":Lcom/winlator/widget/GPUCardAdapter$GPUCard;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 70
    .end local v0    # "i":I
    const/4 v0, 0x0

    return v0
.end method
