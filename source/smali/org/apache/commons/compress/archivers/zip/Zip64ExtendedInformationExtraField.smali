.class public abstract Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
.super Ljava/lang/Object;
.source "Zip64ExtendedInformationExtraField.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# static fields
.field private static final EMPTY:[B

.field static final HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->EMPTY:[B

    return-void
.end method


# virtual methods
.method public abstract getCompressedSize()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
.end method

.method public abstract getDiskStartNumber()Lorg/apache/commons/compress/archivers/zip/ZipLong;
.end method

.method public abstract getRelativeHeaderOffset()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
.end method

.method public abstract getSize()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
.end method

.method public abstract reparseCentralDirectoryData(ZZZZ)V
.end method

.method public abstract setCompressedSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V
.end method

.method public abstract setSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V
.end method
