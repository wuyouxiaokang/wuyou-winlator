.class public abstract Lcom/github/luben/zstd/Zstd;
.super Ljava/lang/Object;
.source "Zstd.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 13
    invoke-static {}, Lcom/github/luben/zstd/util/Native;->load()V

    .line 14
    return-void
.end method

.method static final extractArray(Ljava/nio/ByteBuffer;)[B
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1300
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    if-nez v0, :cond_0

    .line 1303
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 1301
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provided ByteBuffer lacks array or has non-zero arrayOffset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native getErrorName(J)Ljava/lang/String;
.end method

.method public static native isError(J)Z
.end method

.method public static native setCompressionLevel(JI)I
.end method
