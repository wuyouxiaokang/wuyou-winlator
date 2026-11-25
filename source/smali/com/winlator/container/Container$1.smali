.class Lcom/winlator/container/Container$1;
.super Ljava/lang/Object;
.source "Container.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/container/Container;->drivesIterator(Ljava/lang/String;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$drives:Ljava/lang/String;

.field final synthetic val$index:[I


# direct methods
.method constructor <init>([ILjava/lang/String;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/winlator/container/Container$1;->val$index:[I

    iput-object p2, p0, Lcom/winlator/container/Container$1;->val$drives:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/winlator/container/Container$1;->val$index:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public next()Lcom/winlator/container/Drive;
    .locals 6

    .line 276
    iget-object v0, p0, Lcom/winlator/container/Container$1;->val$drives:Ljava/lang/String;

    iget-object v1, p0, Lcom/winlator/container/Container$1;->val$index:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "letter":Ljava/lang/String;
    iget-object v1, p0, Lcom/winlator/container/Container$1;->val$drives:Ljava/lang/String;

    iget-object v3, p0, Lcom/winlator/container/Container$1;->val$index:[I

    aget v3, v3, v2

    add-int/lit8 v3, v3, 0x1

    const-string v4, ":"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 278
    .local v1, "nextIndex":I
    iget-object v3, p0, Lcom/winlator/container/Container$1;->val$drives:Ljava/lang/String;

    iget-object v4, p0, Lcom/winlator/container/Container$1;->val$index:[I

    aget v4, v4, v2

    add-int/lit8 v4, v4, 0x1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    add-int/lit8 v5, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/winlator/container/Container$1;->val$drives:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    :goto_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, "path":Ljava/lang/String;
    iget-object v4, p0, Lcom/winlator/container/Container$1;->val$index:[I

    aput v1, v4, v2

    .line 280
    new-instance v2, Lcom/winlator/container/Drive;

    invoke-direct {v2, v0, v3}, Lcom/winlator/container/Drive;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 268
    invoke-virtual {p0}, Lcom/winlator/container/Container$1;->next()Lcom/winlator/container/Drive;

    move-result-object v0

    return-object v0
.end method
