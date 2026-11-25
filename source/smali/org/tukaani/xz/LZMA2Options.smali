.class public Lorg/tukaani/xz/LZMA2Options;
.super Lorg/tukaani/xz/FilterOptions;


# static fields
.field private static final presetToDepthLimit:[I

.field private static final presetToDictSize:[I


# instance fields
.field private depthLimit:I

.field private dictSize:I

.field private lc:I

.field private lp:I

.field private mf:I

.field private mode:I

.field private niceLen:I

.field private pb:I

.field private presetDict:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 0
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/tukaani/xz/LZMA2Options;->presetToDictSize:[I

    const/16 v0, 0x18

    const/16 v1, 0x30

    const/4 v2, 0x4

    const/16 v3, 0x8

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/tukaani/xz/LZMA2Options;->presetToDepthLimit:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x40000
        0x100000
        0x200000
        0x400000
        0x400000
        0x800000
        0x800000
        0x1000000
        0x2000000
        0x4000000
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 0
    invoke-direct {p0}, Lorg/tukaani/xz/FilterOptions;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/LZMA2Options;->presetDict:[B

    invoke-virtual {p0, p1}, Lorg/tukaani/xz/LZMA2Options;->setPreset(I)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 0
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getDepthLimit()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/tukaani/xz/LZMA2Options;->depthLimit:I

    return v0
.end method

.method public getDictSize()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/tukaani/xz/LZMA2Options;->dictSize:I

    return v0
.end method

.method getFilterEncoder()Lorg/tukaani/xz/FilterEncoder;
    .locals 1

    .line 0
    new-instance v0, Lorg/tukaani/xz/LZMA2Encoder;

    invoke-direct {v0, p0}, Lorg/tukaani/xz/LZMA2Encoder;-><init>(Lorg/tukaani/xz/LZMA2Options;)V

    return-object v0
.end method

.method public getLc()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/tukaani/xz/LZMA2Options;->lc:I

    return v0
.end method

.method public getLp()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/tukaani/xz/LZMA2Options;->lp:I

    return v0
.end method

.method public getMatchFinder()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/tukaani/xz/LZMA2Options;->mf:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/tukaani/xz/LZMA2Options;->mode:I

    return v0
.end method

.method public getNiceLen()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/tukaani/xz/LZMA2Options;->niceLen:I

    return v0
.end method

.method public getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/FinishableOutputStream;
    .locals 1

    .line 0
    iget v0, p0, Lorg/tukaani/xz/LZMA2Options;->mode:I

    if-nez v0, :cond_0

    new-instance v0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;

    invoke-direct {v0, p1, p2}, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;-><init>(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/tukaani/xz/LZMA2OutputStream;

    invoke-direct {v0, p1, p0, p2}, Lorg/tukaani/xz/LZMA2OutputStream;-><init>(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/LZMA2Options;Lorg/tukaani/xz/ArrayCache;)V

    return-object v0
.end method

.method public getPb()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/tukaani/xz/LZMA2Options;->pb:I

    return v0
.end method

.method public getPresetDict()[B
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2Options;->presetDict:[B

    return-object v0
.end method

.method public setPreset(I)V
    .locals 4

    .line 0
    if-ltz p1, :cond_4

    const/16 v0, 0x9

    if-gt p1, v0, :cond_4

    const/4 v0, 0x3

    iput v0, p0, Lorg/tukaani/xz/LZMA2Options;->lc:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/tukaani/xz/LZMA2Options;->lp:I

    const/4 v2, 0x2

    iput v2, p0, Lorg/tukaani/xz/LZMA2Options;->pb:I

    sget-object v3, Lorg/tukaani/xz/LZMA2Options;->presetToDictSize:[I

    aget v3, v3, p1

    iput v3, p0, Lorg/tukaani/xz/LZMA2Options;->dictSize:I

    const/4 v3, 0x4

    if-gt p1, v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lorg/tukaani/xz/LZMA2Options;->mode:I

    iput v3, p0, Lorg/tukaani/xz/LZMA2Options;->mf:I

    if-gt p1, v0, :cond_0

    const/16 v0, 0x80

    goto :goto_0

    :cond_0
    const/16 v0, 0x111

    :goto_0
    iput v0, p0, Lorg/tukaani/xz/LZMA2Options;->niceLen:I

    sget-object v0, Lorg/tukaani/xz/LZMA2Options;->presetToDepthLimit:[I

    aget p1, v0, p1

    iput p1, p0, Lorg/tukaani/xz/LZMA2Options;->depthLimit:I

    goto :goto_2

    :cond_1
    iput v2, p0, Lorg/tukaani/xz/LZMA2Options;->mode:I

    const/16 v0, 0x14

    iput v0, p0, Lorg/tukaani/xz/LZMA2Options;->mf:I

    if-ne p1, v3, :cond_2

    const/16 p1, 0x10

    goto :goto_1

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    const/16 p1, 0x20

    goto :goto_1

    :cond_3
    const/16 p1, 0x40

    :goto_1
    iput p1, p0, Lorg/tukaani/xz/LZMA2Options;->niceLen:I

    iput v1, p0, Lorg/tukaani/xz/LZMA2Options;->depthLimit:I

    :goto_2
    return-void

    :cond_4
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported preset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
