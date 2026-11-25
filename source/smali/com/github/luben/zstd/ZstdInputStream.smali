.class public Lcom/github/luben/zstd/ZstdInputStream;
.super Ljava/io/FilterInputStream;
.source "ZstdInputStream.java"


# instance fields
.field private inner:Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inStream"    # Ljava/io/InputStream;

    .line 23
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 24
    new-instance v0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;

    invoke-direct {v0, p1}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/github/luben/zstd/ZstdInputStream;->inner:Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;

    .line 25
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdInputStream;->inner:Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdInputStream;->inner:Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->close()V

    .line 112
    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdInputStream;->close()V

    .line 53
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdInputStream;->inner:Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdInputStream;->inner:Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 88
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdInputStream;->inner:Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->read([BII)I

    move-result v0

    return v0
.end method

.method public skip(J)J
    .locals 2
    .param p1, "numBytes"    # J

    .line 102
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdInputStream;->inner:Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;

    invoke-virtual {v0, p1, p2}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
