.class public Lcom/winlator/core/Bitmask;
.super Ljava/lang/Object;
.source "Bitmask.java"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private bits:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/core/Bitmask;->bits:I

    .line 10
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "bits"    # I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/core/Bitmask;->bits:I

    .line 13
    iput p1, p0, Lcom/winlator/core/Bitmask;->bits:I

    .line 14
    return-void
.end method

.method public constructor <init>([I)V
    .locals 3
    .param p1, "flags"    # [I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/core/Bitmask;->bits:I

    .line 17
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    .local v2, "flag":I
    invoke-virtual {p0, v2}, Lcom/winlator/core/Bitmask;->set(I)V

    .end local v2    # "flag":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public getBits()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/winlator/core/Bitmask;->bits:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/winlator/core/Bitmask;->bits:I

    return v0
.end method

.method public intersects(Lcom/winlator/core/Bitmask;)Z
    .locals 2
    .param p1, "mask"    # Lcom/winlator/core/Bitmask;

    .line 25
    iget v0, p1, Lcom/winlator/core/Bitmask;->bits:I

    iget v1, p0, Lcom/winlator/core/Bitmask;->bits:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 44
    iget v0, p0, Lcom/winlator/core/Bitmask;->bits:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 21
    iget v0, p0, Lcom/winlator/core/Bitmask;->bits:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 58
    iget v0, p0, Lcom/winlator/core/Bitmask;->bits:I

    filled-new-array {v0}, [I

    move-result-object v0

    .line 59
    .local v0, "bits":[I
    new-instance v1, Lcom/winlator/core/Bitmask$1;

    invoke-direct {v1, p0, v0}, Lcom/winlator/core/Bitmask$1;-><init>(Lcom/winlator/core/Bitmask;[I)V

    return-object v1
.end method

.method public join(Lcom/winlator/core/Bitmask;)V
    .locals 2
    .param p1, "mask"    # Lcom/winlator/core/Bitmask;

    .line 52
    iget v0, p1, Lcom/winlator/core/Bitmask;->bits:I

    iget v1, p0, Lcom/winlator/core/Bitmask;->bits:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/winlator/core/Bitmask;->bits:I

    .line 53
    return-void
.end method

.method public set(I)V
    .locals 1
    .param p1, "flag"    # I

    .line 29
    iget v0, p0, Lcom/winlator/core/Bitmask;->bits:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/winlator/core/Bitmask;->bits:I

    .line 30
    return-void
.end method

.method public set(IZ)V
    .locals 0
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    .line 33
    if-eqz p2, :cond_0

    .line 34
    invoke-virtual {p0, p1}, Lcom/winlator/core/Bitmask;->set(I)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0, p1}, Lcom/winlator/core/Bitmask;->unset(I)V

    .line 37
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 82
    iget v0, p0, Lcom/winlator/core/Bitmask;->bits:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unset(I)V
    .locals 2
    .param p1, "flag"    # I

    .line 40
    iget v0, p0, Lcom/winlator/core/Bitmask;->bits:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/winlator/core/Bitmask;->bits:I

    .line 41
    return-void
.end method
