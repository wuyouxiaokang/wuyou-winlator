.class public Lcom/github/luben/zstd/ZstdOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ZstdOutputStream.java"


# instance fields
.field private inner:Lcom/github/luben/zstd/ZstdOutputStreamNoFinalizer;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .param p2, "level"    # I

    .line 46
    sget-object v0, Lcom/github/luben/zstd/NoPool;->INSTANCE:Lcom/github/luben/zstd/BufferPool;

    invoke-direct {p0, p1, v0}, Lcom/github/luben/zstd/ZstdOutputStream;-><init>(Ljava/io/OutputStream;Lcom/github/luben/zstd/BufferPool;)V

    .line 47
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdOutputStream;->inner:Lcom/github/luben/zstd/ZstdOutputStreamNoFinalizer;

    invoke-virtual {v0, p2}, Lcom/github/luben/zstd/ZstdOutputStreamNoFinalizer;->setLevel(I)Lcom/github/luben/zstd/ZstdOutputStreamNoFinalizer;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/github/luben/zstd/BufferPool;)V
    .locals 1
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .param p2, "bufferPool"    # Lcom/github/luben/zstd/BufferPool;

    .line 74
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 75
    new-instance v0, Lcom/github/luben/zstd/ZstdOutputStreamNoFinalizer;

    invoke-direct {v0, p1, p2}, Lcom/github/luben/zstd/ZstdOutputStreamNoFinalizer;-><init>(Ljava/io/OutputStream;Lcom/github/luben/zstd/BufferPool;)V

    iput-object v0, p0, Lcom/github/luben/zstd/ZstdOutputStream;->inner:Lcom/github/luben/zstd/ZstdOutputStreamNoFinalizer;

    .line 76
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdOutputStream;->inner:Lcom/github/luben/zstd/ZstdOutputStreamNoFinalizer;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdOutputStreamNoFinalizer;->close()V

    .line 182
    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 94
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdOutputStream;->close()V

    .line 95
    return-void
.end method

.method public flush()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdOutputStream;->inner:Lcom/github/luben/zstd/ZstdOutputStreamNoFinalizer;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdOutputStreamNoFinalizer;->flush()V

    .line 178
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "i"    # I

    .line 170
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdOutputStream;->inner:Lcom/github/luben/zstd/ZstdOutputStreamNoFinalizer;

    invoke-virtual {v0, p1}, Lcom/github/luben/zstd/ZstdOutputStreamNoFinalizer;->write(I)V

    .line 171
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 166
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdOutputStream;->inner:Lcom/github/luben/zstd/ZstdOutputStreamNoFinalizer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/github/luben/zstd/ZstdOutputStreamNoFinalizer;->write([BII)V

    .line 167
    return-void
.end method
