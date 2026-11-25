.class public Lcom/winlator/core/KeyValueSet;
.super Ljava/lang/Object;
.source "KeyValueSet.java"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private data:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/winlator/core/KeyValueSet;->data:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .line 13
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/winlator/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/winlator/core/KeyValueSet;->data:Ljava/lang/String;

    .line 17
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p1

    :cond_0
    iput-object v0, p0, Lcom/winlator/core/KeyValueSet;->data:Ljava/lang/String;

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/winlator/core/KeyValueSet;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/winlator/core/KeyValueSet;

    .line 7
    iget-object v0, p0, Lcom/winlator/core/KeyValueSet;->data:Ljava/lang/String;

    return-object v0
.end method

.method private indexOfKey(Ljava/lang/String;)[I
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "start":I
    iget-object v1, p0, Lcom/winlator/core/KeyValueSet;->data:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 23
    .local v1, "end":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    iget-object v4, p0, Lcom/winlator/core/KeyValueSet;->data:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 25
    :cond_0
    :goto_0
    if-ge v0, v1, :cond_3

    .line 26
    iget-object v4, p0, Lcom/winlator/core/KeyValueSet;->data:Ljava/lang/String;

    const-string v5, "="

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 27
    .local v4, "index":I
    iget-object v5, p0, Lcom/winlator/core/KeyValueSet;->data:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 28
    .local v5, "currKey":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    filled-new-array {v0, v1}, [I

    move-result-object v2

    return-object v2

    .line 29
    :cond_1
    add-int/lit8 v0, v1, 0x1

    .line 30
    iget-object v6, p0, Lcom/winlator/core/KeyValueSet;->data:Ljava/lang/String;

    invoke-virtual {v6, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 31
    if-ne v1, v3, :cond_2

    iget-object v6, p0, Lcom/winlator/core/KeyValueSet;->data:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    .line 32
    .end local v4    # "index":I
    .end local v5    # "currKey":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 34
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 38
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fallback"    # Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/winlator/core/KeyValueSet;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/core/KeyValueSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .local v1, "keyValue":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    aget-object v0, v1, v0

    return-object v0

    .end local v1    # "keyValue":[Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 44
    :cond_2
    return-object p2
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/winlator/core/KeyValueSet;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fallback"    # Z

    .line 92
    invoke-virtual {p0, p1}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    move v1, p2

    :goto_1
    return v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fallback"    # F

    .line 53
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    .end local v0    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 54
    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    move v1, p2

    :goto_0
    return v1

    .line 56
    .end local v0    # "value":Ljava/lang/String;
    :goto_1
    nop

    .line 57
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public getHexString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fallback"    # I

    .line 78
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v0    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 79
    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    move v1, p2

    :goto_0
    move v0, v1

    .line 83
    .local v0, "result":I
    goto :goto_2

    .line 81
    .end local v0    # "result":I
    :goto_1
    nop

    .line 82
    .local v0, "e":Ljava/lang/NumberFormatException;
    move v1, p2

    move v0, v1

    .line 84
    .local v0, "result":I
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%08x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/winlator/core/KeyValueSet;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fallback"    # I

    .line 67
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/winlator/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    .end local v0    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 68
    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    move v1, p2

    :goto_0
    return v1

    .line 70
    .end local v0    # "value":Ljava/lang/String;
    :goto_1
    nop

    .line 71
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public isEmpty()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/winlator/core/KeyValueSet;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5

    .line 108
    iget-object v0, p0, Lcom/winlator/core/KeyValueSet;->data:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 109
    .local v0, "index":I
    const/4 v1, 0x0

    filled-new-array {v1}, [I

    move-result-object v1

    .line 110
    .local v1, "start":[I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/winlator/core/KeyValueSet;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    filled-new-array {v2}, [I

    move-result-object v2

    .line 111
    .local v2, "end":[I
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 112
    .local v3, "item":[Ljava/lang/String;
    new-instance v4, Lcom/winlator/core/KeyValueSet$1;

    invoke-direct {v4, p0, v1, v2, v3}, Lcom/winlator/core/KeyValueSet$1;-><init>(Lcom/winlator/core/KeyValueSet;[I[I[Ljava/lang/String;)V

    return-object v4
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 97
    invoke-direct {p0, p1}, Lcom/winlator/core/KeyValueSet;->indexOfKey(Ljava/lang/String;)[I

    move-result-object v0

    .line 98
    .local v0, "range":[I
    const-string v1, "="

    if-eqz v0, :cond_0

    .line 99
    iget-object v2, p0, Lcom/winlator/core/KeyValueSet;->data:Ljava/lang/String;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lcom/winlator/core/StringUtils;->replace(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/winlator/core/KeyValueSet;->data:Ljava/lang/String;

    goto :goto_1

    .line 101
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/winlator/core/KeyValueSet;->data:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/winlator/core/KeyValueSet;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/winlator/core/KeyValueSet;->data:Ljava/lang/String;

    .line 102
    :goto_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/winlator/core/KeyValueSet;->data:Ljava/lang/String;

    return-object v0
.end method
