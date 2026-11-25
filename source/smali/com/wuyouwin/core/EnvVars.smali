.class public Lcom/wuyouwin/core/EnvVars;
.super Ljava/lang/Object;
.source "EnvVars.java"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private final data:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/core/EnvVars;->data:Ljava/util/LinkedHashMap;

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "values"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/core/EnvVars;->data:Ljava/util/LinkedHashMap;

    .line 14
    invoke-virtual {p0, p1}, Lcom/wuyouwin/core/EnvVars;->putAll(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/wuyouwin/core/EnvVars;->data:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 55
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/wuyouwin/core/EnvVars;->data:Ljava/util/LinkedHashMap;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/wuyouwin/core/EnvVars;->data:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/wuyouwin/core/EnvVars;->data:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Lcom/wuyouwin/core/EnvVars;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/wuyouwin/core/EnvVars;->data:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-object p0
.end method

.method public putAll(Lcom/wuyouwin/core/EnvVars;)V
    .locals 2
    .param p1, "envVars"    # Lcom/wuyouwin/core/EnvVars;

    .line 38
    iget-object v0, p0, Lcom/wuyouwin/core/EnvVars;->data:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/wuyouwin/core/EnvVars;->data:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 39
    return-void
.end method

.method public putAll(Ljava/lang/String;)V
    .locals 1
    .param p1, "values"    # Ljava/lang/String;

    .line 33
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    .line 34
    :cond_1
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wuyouwin/core/EnvVars;->putAll([Ljava/lang/String;)V

    .line 35
    return-void

    .line 33
    :goto_0
    return-void
.end method

.method public putAll([Ljava/lang/String;)V
    .locals 8
    .param p1, "items"    # [Ljava/lang/String;

    .line 23
    if-nez p1, :cond_0

    return-void

    .line 24
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 25
    .local v3, "item":Ljava/lang/String;
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 26
    .local v4, "index":I
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 27
    .local v5, "name":Ljava/lang/String;
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 28
    .local v6, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/wuyouwin/core/EnvVars;->data:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .end local v3    # "item":Ljava/lang/String;
    .end local v4    # "index":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/wuyouwin/core/EnvVars;->data:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    const-string v0, " "

    invoke-virtual {p0}, Lcom/wuyouwin/core/EnvVars;->toStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringArray()[Ljava/lang/String;
    .locals 7

    .line 78
    iget-object v0, p0, Lcom/wuyouwin/core/EnvVars;->data:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 79
    .local v0, "stringArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 80
    .local v1, "index":I
    iget-object v2, p0, Lcom/wuyouwin/core/EnvVars;->data:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "key":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "index":I
    .local v4, "index":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/wuyouwin/core/EnvVars;->data:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    move v1, v4

    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 81
    .end local v4    # "index":I
    .restart local v1    # "index":I
    :cond_0
    return-object v0
.end method
