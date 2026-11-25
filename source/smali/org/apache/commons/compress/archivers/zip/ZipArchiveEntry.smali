.class public abstract Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
.super Ljava/util/zip/ZipEntry;
.source "ZipArchiveEntry.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/ArchiveEntry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$ExtraFieldParsingMode;,
        Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;,
        Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;
    }
.end annotation


# static fields
.field private static final EMPTY:[B

.field private static final noExtraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# instance fields
.field private alignment:I

.field private commentSource:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

.field private dataOffset:J

.field private diskNumberStart:J

.field private externalAttributes:J

.field private extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

.field private gpb:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

.field private internalAttributes:I

.field private isStreamContiguous:Z

.field private localHeaderOffset:J

.field private method:I

.field private name:Ljava/lang/String;

.field private nameSource:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;

.field private platform:I

.field private rawFlag:I

.field private rawName:[B

.field private size:J

.field private unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

.field private versionMadeBy:I

.field private versionRequired:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->EMPTY:[B

    .line 141
    new-array v0, v0, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->noExtraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 207
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 158
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->method:I

    .line 127
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->size:J

    .line 129
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalAttributes:I

    .line 132
    iput v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->platform:I

    .line 134
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->externalAttributes:J

    .line 135
    iput v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->alignment:I

    .line 137
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 138
    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->name:Ljava/lang/String;

    .line 139
    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->rawName:[B

    .line 140
    new-instance v3, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    invoke-direct {v3}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;-><init>()V

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->gpb:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 142
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->localHeaderOffset:J

    .line 143
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->dataOffset:J

    .line 144
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isStreamContiguous:Z

    .line 145
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;->NAME:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->nameSource:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;

    .line 146
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;->COMMENT:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->commentSource:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

    .line 159
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setName(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method private copyOf([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;I)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 3
    .param p1, "src"    # [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .param p2, "length"    # I

    .line 1104
    new-array v0, p2, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 1105
    .local v0, "cpy":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    array-length v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1106
    return-object v0
.end method

.method private getAllExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 1

    .line 510
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    if-nez v0, :cond_0

    .line 511
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getUnparseableOnly()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    return-object v0

    .line 513
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMergedFields()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    :goto_0
    return-object v0
.end method

.method private getMergedFields()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 3

    .line 517
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->copyOf([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;I)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    .line 518
    .local v0, "zipExtraFields":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    array-length v1, v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    aput-object v2, v0, v1

    .line 519
    return-object v0
.end method

.method private getUnparseableOnly()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 3

    .line 523
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->noExtraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    aput-object v2, v0, v1

    :goto_0
    return-object v0
.end method

.method private mergeExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;Z)V
    .locals 9
    .param p1, "f"    # [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .param p2, "local"    # Z

    .line 892
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    if-nez v0, :cond_0

    .line 893
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    goto/16 :goto_7

    .line 895
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v3, p1, v2

    .line 897
    .local v3, "element":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    instance-of v4, v3, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-eqz v4, :cond_1

    .line 898
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .local v4, "existing":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    goto :goto_1

    .line 900
    .end local v4    # "existing":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :cond_1
    invoke-interface {v3}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v4

    .line 902
    .restart local v4    # "existing":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :goto_1
    if-nez v4, :cond_2

    .line 903
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->addExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    goto :goto_6

    .line 905
    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {v3}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getLocalFileDataData()[B

    move-result-object v5

    goto :goto_2

    .line 906
    :cond_3
    invoke-interface {v3}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getCentralDirectoryData()[B

    move-result-object v5

    :goto_2
    nop

    .line 908
    .local v5, "b":[B
    if-eqz p2, :cond_4

    .line 909
    :try_start_0
    array-length v6, v5

    invoke-interface {v4, v5, v1, v6}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->parseFromLocalFileData([BII)V

    goto :goto_3

    .line 913
    :catch_0
    move-exception v6

    goto :goto_4

    .line 911
    :cond_4
    array-length v6, v5

    invoke-interface {v4, v5, v1, v6}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->parseFromCentralDirectoryData([BII)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    :goto_3
    goto :goto_6

    .line 913
    :goto_4
    nop

    .line 915
    .local v6, "ex":Ljava/util/zip/ZipException;
    new-instance v7, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;

    invoke-direct {v7}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;-><init>()V

    .line 916
    .local v7, "u":Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;
    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->setHeaderId(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    .line 917
    if-eqz p2, :cond_5

    .line 918
    invoke-virtual {v7, v5}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->setLocalFileDataData([B)V

    .line 919
    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getCentralDirectoryData()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->setCentralDirectoryData([B)V

    goto :goto_5

    .line 921
    :cond_5
    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getLocalFileDataData()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->setLocalFileDataData([B)V

    .line 922
    invoke-virtual {v7, v5}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->setCentralDirectoryData([B)V

    .line 924
    :goto_5
    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->removeExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    .line 925
    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->addExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 895
    .end local v3    # "element":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .end local v4    # "existing":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .end local v5    # "b":[B
    .end local v6    # "ex":Ljava/util/zip/ZipException;
    .end local v7    # "u":Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 929
    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 931
    :goto_7
    return-void
.end method


# virtual methods
.method public addExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V
    .locals 3
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 559
    const/4 v0, 0x1

    instance-of v1, p1, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-eqz v1, :cond_0

    .line 560
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    goto :goto_0

    .line 562
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    if-nez v1, :cond_1

    .line 563
    new-array v0, v0, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    goto :goto_0

    .line 565
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 566
    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->removeExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    .line 568
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    array-length v2, v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->copyOf([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;I)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v1

    .line 569
    .local v1, "zipExtraFields":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    array-length v2, v1

    sub-int/2addr v2, v0

    aput-object p1, v1, v2

    .line 570
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 573
    .end local v1    # "zipExtraFields":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 574
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .line 237
    invoke-super {p0}, Ljava/util/zip/ZipEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 239
    .local v0, "e":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getInternalAttributes()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setInternalAttributes(I)V

    .line 240
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExternalAttributes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExternalAttributes(J)V

    .line 241
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getAllExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 242
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;

    .line 951
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 952
    return v0

    .line 954
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    goto/16 :goto_1

    .line 957
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 958
    .local v2, "other":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 959
    .local v3, "myName":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 960
    .local v4, "otherName":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 961
    if-eqz v4, :cond_4

    .line 962
    return v1

    .line 964
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 965
    return v1

    .line 967
    :cond_4
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v5

    .line 968
    .local v5, "myComment":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v6

    .line 969
    .local v6, "otherComment":Ljava/lang/String;
    if-nez v5, :cond_5

    .line 970
    const-string v5, ""

    .line 972
    :cond_5
    if-nez v6, :cond_6

    .line 973
    const-string v6, ""

    .line 975
    :cond_6
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_7

    .line 976
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 977
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getInternalAttributes()I

    move-result v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getInternalAttributes()I

    move-result v8

    if-ne v7, v8, :cond_7

    .line 978
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getPlatform()I

    move-result v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getPlatform()I

    move-result v8

    if-ne v7, v8, :cond_7

    .line 979
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExternalAttributes()J

    move-result-wide v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExternalAttributes()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_7

    .line 980
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v8

    if-ne v7, v8, :cond_7

    .line 981
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_7

    .line 982
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_7

    .line 983
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_7

    .line 984
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCentralDirectoryExtra()[B

    move-result-object v7

    .line 985
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCentralDirectoryExtra()[B

    move-result-object v8

    .line 984
    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 986
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalFileDataExtra()[B

    move-result-object v7

    .line 987
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalFileDataExtra()[B

    move-result-object v8

    .line 986
    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->localHeaderOffset:J

    iget-wide v9, v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->localHeaderOffset:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_7

    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->dataOffset:J

    iget-wide v9, v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->dataOffset:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_7

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->gpb:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    iget-object v8, v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->gpb:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 990
    invoke-virtual {v7, v8}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_0

    :cond_7
    move v0, v1

    .line 975
    :goto_0
    return v0

    .line 955
    .end local v2    # "other":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .end local v3    # "myName":Ljava/lang/String;
    .end local v4    # "otherName":Ljava/lang/String;
    .end local v5    # "myComment":Ljava/lang/String;
    .end local v6    # "otherComment":Ljava/lang/String;
    :goto_1
    return v1
.end method

.method public getCentralDirectoryExtra()[B
    .locals 1

    .line 722
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getAllExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->mergeCentralDirectoryData([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)[B

    move-result-object v0

    return-object v0
.end method

.method public getDataOffset()J
    .locals 2

    .line 828
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->dataOffset:J

    return-wide v0
.end method

.method public getDiskNumberStart()J
    .locals 2

    .line 1090
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->diskNumberStart:J

    return-wide v0
.end method

.method public getExternalAttributes()J
    .locals 2

    .line 305
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->externalAttributes:J

    return-wide v0
.end method

.method public getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 5
    .param p1, "type"    # Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 643
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    nop

    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 645
    .local v3, "extraField":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    invoke-interface {v3}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 646
    return-object v3

    .line 645
    :cond_0
    nop

    .line 644
    .end local v3    # "extraField":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 650
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    .locals 1

    .line 871
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->gpb:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    return-object v0
.end method

.method public getInternalAttributes()I
    .locals 1

    .line 284
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalAttributes:I

    return v0
.end method

.method public getLocalFileDataExtra()[B
    .locals 2

    .line 713
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v0

    .line 714
    .local v0, "extra":[B
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->EMPTY:[B

    :goto_0
    return-object v1
.end method

.method protected getLocalHeaderOffset()J
    .locals 2

    .line 819
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->localHeaderOffset:J

    return-wide v0
.end method

.method public getMethod()I
    .locals 1

    .line 255
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->method:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 734
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->name:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getPlatform()I
    .locals 1

    .line 361
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->platform:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .line 770
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->size:J

    return-wide v0
.end method

.method public getUnixMode()I
    .locals 4

    .line 337
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->platform:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExternalAttributes()J

    move-result-wide v0

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    .line 337
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 861
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 862
    .local v0, "n":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public isDirectory()Z
    .locals 2

    .line 743
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, "n":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isUnixSymlink()Z
    .locals 2

    .line 350
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getUnixMode()I

    move-result v0

    const v1, 0xf000

    and-int/2addr v0, v1

    const v1, 0xa000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V
    .locals 6
    .param p1, "type"    # Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 606
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    if-eqz v0, :cond_3

    .line 610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 611
    .local v0, "newResult":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/zip/ZipExtraField;>;"
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 612
    .local v4, "extraField":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 613
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    .end local v4    # "extraField":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 616
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    array-length v1, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 619
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->noExtraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 620
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 621
    return-void

    .line 617
    :cond_2
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 607
    .end local v0    # "newResult":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/zip/ZipExtraField;>;"
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public setCentralDirectoryExtra([B)V
    .locals 3
    .param p1, "b"    # [B

    .line 700
    :try_start_0
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$ExtraFieldParsingMode;->BEST_EFFORT:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$ExtraFieldParsingMode;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->parse([BZLorg/apache/commons/compress/archivers/zip/ExtraFieldParsingBehavior;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    .line 701
    .local v0, "central":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->mergeExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;Z)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    .end local v0    # "central":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    nop

    .line 706
    return-void

    .line 702
    :catch_0
    move-exception v0

    .line 704
    .local v0, "e":Ljava/util/zip/ZipException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCommentSource(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;)V
    .locals 0
    .param p1, "commentSource"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

    .line 1080
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->commentSource:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

    .line 1081
    return-void
.end method

.method protected setDataOffset(J)V
    .locals 0
    .param p1, "dataOffset"    # J

    .line 838
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->dataOffset:J

    .line 839
    return-void
.end method

.method public setDiskNumberStart(J)V
    .locals 0
    .param p1, "diskNumberStart"    # J

    .line 1100
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->diskNumberStart:J

    .line 1101
    return-void
.end method

.method public setExternalAttributes(J)V
    .locals 0
    .param p1, "value"    # J

    .line 313
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->externalAttributes:J

    .line 314
    return-void
.end method

.method protected setExtra()V
    .locals 1

    .line 691
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getAllExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->mergeLocalFileDataData([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)[B

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 692
    return-void
.end method

.method public setExtra([B)V
    .locals 4
    .param p1, "extra"    # [B

    .line 675
    :try_start_0
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$ExtraFieldParsingMode;->BEST_EFFORT:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$ExtraFieldParsingMode;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->parse([BZLorg/apache/commons/compress/archivers/zip/ExtraFieldParsingBehavior;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    .line 676
    .local v0, "local":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->mergeExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;Z)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    .end local v0    # "local":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    nop

    .line 682
    return-void

    .line 677
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Ljava/util/zip/ZipException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing extra fields for entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V
    .locals 5
    .param p1, "fields"    # [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v0, "newFields":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/zip/ZipExtraField;>;"
    if-eqz p1, :cond_1

    .line 406
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    nop

    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 407
    .local v3, "field":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    instance-of v4, v3, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-eqz v4, :cond_0

    .line 408
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    goto :goto_1

    .line 410
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    .end local v3    # "field":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 414
    :cond_1
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->noExtraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 415
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 416
    return-void
.end method

.method public setGeneralPurposeBit(Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;)V
    .locals 0
    .param p1, "b"    # Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 880
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->gpb:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 881
    return-void
.end method

.method public setInternalAttributes(I)V
    .locals 0
    .param p1, "value"    # I

    .line 292
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalAttributes:I

    .line 293
    return-void
.end method

.method protected setLocalHeaderOffset(J)V
    .locals 0
    .param p1, "localHeaderOffset"    # J

    .line 823
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->localHeaderOffset:J

    .line 824
    return-void
.end method

.method public setMethod(I)V
    .locals 3
    .param p1, "method"    # I

    .line 267
    if-ltz p1, :cond_0

    .line 271
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->method:I

    .line 272
    return-void

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZIP compression method can not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 752
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getPlatform()I

    move-result v0

    if-nez v0, :cond_0

    .line 753
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 754
    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 756
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->name:Ljava/lang/String;

    .line 757
    return-void
.end method

.method protected setName(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rawName"    # [B

    .line 797
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setName(Ljava/lang/String;)V

    .line 798
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->rawName:[B

    .line 799
    return-void
.end method

.method public setNameSource(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;)V
    .locals 0
    .param p1, "nameSource"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;

    .line 1062
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->nameSource:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;

    .line 1063
    return-void
.end method

.method protected setPlatform(I)V
    .locals 0
    .param p1, "platform"    # I

    .line 369
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->platform:I

    .line 370
    return-void
.end method

.method public setRawFlag(I)V
    .locals 0
    .param p1, "rawFlag"    # I

    .line 1044
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->rawFlag:I

    .line 1045
    return-void
.end method

.method public setSize(J)V
    .locals 2
    .param p1, "size"    # J

    .line 781
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 784
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->size:J

    .line 785
    return-void

    .line 782
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid entry size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setStreamContiguous(Z)V
    .locals 0
    .param p1, "isStreamContiguous"    # Z

    .line 847
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isStreamContiguous:Z

    .line 848
    return-void
.end method

.method public setVersionMadeBy(I)V
    .locals 0
    .param p1, "versionMadeBy"    # I

    .line 999
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->versionMadeBy:I

    .line 1000
    return-void
.end method

.method public setVersionRequired(I)V
    .locals 0
    .param p1, "versionRequired"    # I

    .line 1008
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->versionRequired:I

    .line 1009
    return-void
.end method
