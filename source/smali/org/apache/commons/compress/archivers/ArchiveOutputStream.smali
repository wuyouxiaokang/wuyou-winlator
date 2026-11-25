.class public abstract Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
.super Ljava/io/OutputStream;
.source "ArchiveOutputStream.java"


# instance fields
.field private bytesWritten:J

.field private final oneByte:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->oneByte:[B

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->bytesWritten:J

    return-void
.end method


# virtual methods
.method public abstract closeArchiveEntry()V
.end method

.method public abstract createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveEntry;
.end method

.method public abstract putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I

    .line 108
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->oneByte:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 109
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->oneByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 110
    return-void
.end method
