.class public abstract Lorg/apache/commons/compress/archivers/zip/UnicodePathExtraField;
.super Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;
.source "UnicodePathExtraField.java"


# static fields
.field public static final UPATH_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x7075

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/UnicodePathExtraField;->UPATH_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-void
.end method
