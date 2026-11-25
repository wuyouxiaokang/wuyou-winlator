.class public Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;
.super Ljava/util/zip/ZipException;
.source "UnsupportedZipFeatureException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;
    }
.end annotation


# instance fields
.field private final transient entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

.field private final reason:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 2
    .param p1, "reason"    # Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;
    .param p2, "entry"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " used in entry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;->reason:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;

    .line 44
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipMethod;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 2
    .param p1, "method"    # Lorg/apache/commons/compress/archivers/zip/ZipMethod;
    .param p2, "entry"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported compression method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") used in entry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 58
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;->METHOD:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;->reason:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;

    .line 59
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 60
    return-void
.end method
