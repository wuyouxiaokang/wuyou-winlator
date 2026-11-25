.class Lcom/winlator/core/Bitmask$1;
.super Ljava/lang/Object;
.source "Bitmask.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/core/Bitmask;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/core/Bitmask;

.field final synthetic val$bits:[I


# direct methods
.method constructor <init>(Lcom/winlator/core/Bitmask;[I)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/core/Bitmask;

    .line 59
    iput-object p1, p0, Lcom/winlator/core/Bitmask$1;->this$0:Lcom/winlator/core/Bitmask;

    iput-object p2, p0, Lcom/winlator/core/Bitmask$1;->val$bits:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/winlator/core/Bitmask$1;->val$bits:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public next()Ljava/lang/Integer;
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/winlator/core/Bitmask$1;->val$bits:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result v0

    .line 68
    .local v0, "index":I
    iget-object v2, p0, Lcom/winlator/core/Bitmask$1;->val$bits:[I

    aget v3, v2, v1

    not-int v4, v0

    and-int/2addr v3, v4

    aput v3, v2, v1

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/winlator/core/Bitmask$1;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
