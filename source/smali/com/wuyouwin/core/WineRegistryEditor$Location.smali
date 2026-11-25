.class public Lcom/wuyouwin/core/WineRegistryEditor$Location;
.super Ljava/lang/Object;
.source "WineRegistryEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/core/WineRegistryEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Location"
.end annotation


# instance fields
.field public final end:I

.field public mbCount:I

.field public final offset:I

.field public final start:I

.field private tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/wuyouwin/core/WineRegistryEditor$Location;->offset:I

    .line 42
    iput p2, p0, Lcom/wuyouwin/core/WineRegistryEditor$Location;->start:I

    .line 43
    iput p3, p0, Lcom/wuyouwin/core/WineRegistryEditor$Location;->end:I

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/wuyouwin/core/WineRegistryEditor$Location;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/core/WineRegistryEditor$Location;

    .line 33
    iget-object v0, p0, Lcom/wuyouwin/core/WineRegistryEditor$Location;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$002(Lcom/wuyouwin/core/WineRegistryEditor$Location;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/wuyouwin/core/WineRegistryEditor$Location;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 33
    iput-object p1, p0, Lcom/wuyouwin/core/WineRegistryEditor$Location;->tag:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 62
    instance-of v0, p1, Lcom/wuyouwin/core/WineRegistryEditor$Location;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 63
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/wuyouwin/core/WineRegistryEditor$Location;

    .line 64
    .local v0, "other":Lcom/wuyouwin/core/WineRegistryEditor$Location;
    iget v2, p0, Lcom/wuyouwin/core/WineRegistryEditor$Location;->offset:I

    iget v3, v0, Lcom/wuyouwin/core/WineRegistryEditor$Location;->offset:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/wuyouwin/core/WineRegistryEditor$Location;->start:I

    iget v3, v0, Lcom/wuyouwin/core/WineRegistryEditor$Location;->start:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/wuyouwin/core/WineRegistryEditor$Location;->end:I

    iget v3, v0, Lcom/wuyouwin/core/WineRegistryEditor$Location;->end:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public length()I
    .locals 2

    .line 47
    iget v0, p0, Lcom/wuyouwin/core/WineRegistryEditor$Location;->end:I

    iget v1, p0, Lcom/wuyouwin/core/WineRegistryEditor$Location;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public toIntArray()[I
    .locals 4

    .line 57
    iget v0, p0, Lcom/wuyouwin/core/WineRegistryEditor$Location;->offset:I

    iget v1, p0, Lcom/wuyouwin/core/WineRegistryEditor$Location;->start:I

    iget v2, p0, Lcom/wuyouwin/core/WineRegistryEditor$Location;->end:I

    iget v3, p0, Lcom/wuyouwin/core/WineRegistryEditor$Location;->mbCount:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/wuyouwin/core/WineRegistryEditor$Location;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/wuyouwin/core/WineRegistryEditor$Location;->start:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/wuyouwin/core/WineRegistryEditor$Location;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
