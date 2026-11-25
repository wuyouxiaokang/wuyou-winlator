.class public Lcom/wuyouwin/alsaserver/ALSAClient;
.super Ljava/lang/Object;
.source "ALSAClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/alsaserver/ALSAClient$DataType;,
        Lcom/wuyouwin/alsaserver/ALSAClient$Options;
    }
.end annotation


# static fields
.field private static framesPerBuffer:S


# instance fields
.field private audioTrack:Landroid/media/AudioTrack;

.field private auxBuffer:Ljava/nio/ByteBuffer;

.field private bufferCapacity:I

.field private bufferSize:I

.field private channels:B

.field private dataType:Lcom/wuyouwin/alsaserver/ALSAClient$DataType;

.field private frameBytes:B

.field protected final options:Lcom/wuyouwin/alsaserver/ALSAClient$Options;

.field private position:I

.field private previousUnderrunCount:S

.field private sampleRate:I

.field private sharedBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/16 v0, 0x100

    sput-short v0, Lcom/wuyouwin/alsaserver/ALSAClient;->framesPerBuffer:S

    return-void
.end method

.method public constructor <init>(Lcom/wuyouwin/alsaserver/ALSAClient$Options;)V
    .locals 1
    .param p1, "options"    # Lcom/wuyouwin/alsaserver/ALSAClient$Options;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/wuyouwin/alsaserver/ALSAClient$DataType;->U8:Lcom/wuyouwin/alsaserver/ALSAClient$DataType;

    iput-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->dataType:Lcom/wuyouwin/alsaserver/ALSAClient$DataType;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->audioTrack:Landroid/media/AudioTrack;

    .line 29
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->channels:B

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->sampleRate:I

    .line 34
    iput-short v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->previousUnderrunCount:S

    .line 68
    iput-object p1, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->options:Lcom/wuyouwin/alsaserver/ALSAClient$Options;

    .line 69
    return-void
.end method

.method public static assignFramesPerBuffer(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 265
    const/16 v0, 0x100

    :try_start_0
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 266
    .local v1, "am":Landroid/media/AudioManager;
    const-string v2, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "framesPerBufferStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    sput-short v3, Lcom/wuyouwin/alsaserver/ALSAClient;->framesPerBuffer:S

    .line 268
    sget-short v3, Lcom/wuyouwin/alsaserver/ALSAClient;->framesPerBuffer:S

    if-nez v3, :cond_0

    sput-short v0, Lcom/wuyouwin/alsaserver/ALSAClient;->framesPerBuffer:S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    .end local v1    # "am":Landroid/media/AudioManager;
    .end local v2    # "framesPerBufferStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 272
    :cond_0
    :goto_0
    goto :goto_2

    .line 270
    :goto_1
    nop

    .line 271
    .local v1, "e":Ljava/lang/Exception;
    sput-short v0, Lcom/wuyouwin/alsaserver/ALSAClient;->framesPerBuffer:S

    .line 273
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static getChannelConfig(I)I
    .locals 1
    .param p0, "channels"    # I

    .line 101
    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    :goto_0
    return v0
.end method

.method public static getPCMEncoding(Lcom/wuyouwin/alsaserver/ALSAClient$DataType;)I
    .locals 2
    .param p0, "dataType"    # Lcom/wuyouwin/alsaserver/ALSAClient$DataType;

    .line 86
    sget-object v0, Lcom/wuyouwin/alsaserver/ALSAClient$1;->$SwitchMap$com$winlator$alsaserver$ALSAClient$DataType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 96
    const/4 v0, 0x1

    return v0

    .line 94
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 91
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 88
    :pswitch_2
    const/4 v0, 0x3

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private increaseBufferSizeIfUnderrunOccurs()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result v0

    .line 181
    .local v0, "underrunCount":I
    iget-short v1, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->previousUnderrunCount:S

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->bufferSize:I

    iget v2, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->bufferCapacity:I

    if-ge v1, v2, :cond_0

    .line 182
    int-to-short v1, v0

    iput-short v1, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->previousUnderrunCount:S

    .line 183
    iget v1, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->bufferSize:I

    sget-short v2, Lcom/wuyouwin/alsaserver/ALSAClient;->framesPerBuffer:S

    add-int/2addr v1, v2

    iput v1, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->bufferSize:I

    .line 184
    iget-object v1, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->audioTrack:Landroid/media/AudioTrack;

    iget v2, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->bufferSize:I

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack;->setBufferSizeInFrames(I)I

    .line 186
    :cond_0
    return-void
.end method

.method private isValidBufferSize()Z
    .locals 2

    .line 260
    iget v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->bufferSize:I

    iget-byte v1, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->frameBytes:B

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->bufferSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static latencyMillisToBufferSize(IILcom/wuyouwin/alsaserver/ALSAClient$DataType;I)I
    .locals 4
    .param p0, "latencyMillis"    # I
    .param p1, "channels"    # I
    .param p2, "dataType"    # Lcom/wuyouwin/alsaserver/ALSAClient$DataType;
    .param p3, "sampleRate"    # I

    .line 254
    iget-byte v0, p2, Lcom/wuyouwin/alsaserver/ALSAClient$DataType;->byteCount:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    .line 255
    .local v0, "frameBytes":B
    mul-int v1, p0, p3

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    sget-short v2, Lcom/wuyouwin/alsaserver/ALSAClient;->framesPerBuffer:S

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/wuyouwin/math/Mathf;->roundTo(FFZ)F

    move-result v1

    float-to-int v1, v1

    .line 256
    .local v1, "bufferSize":I
    mul-int v2, v1, v0

    return v2
.end method


# virtual methods
.method public drain()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 148
    :cond_0
    return-void
.end method

.method public getAuxBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->auxBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getBufferSizeInBytes()I
    .locals 2

    .line 244
    iget v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->bufferSize:I

    iget-byte v1, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->frameBytes:B

    mul-int/2addr v0, v1

    return v0
.end method

.method public getSharedBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->sharedBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public pause()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 144
    :cond_0
    return-void
.end method

.method public pointer()I
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->position:I

    iget-byte v1, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->frameBytes:B

    div-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prepare()V
    .locals 3

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->position:I

    .line 106
    iput-short v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->previousUnderrunCount:S

    .line 107
    iget-byte v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->channels:B

    iget-object v1, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->dataType:Lcom/wuyouwin/alsaserver/ALSAClient$DataType;

    iget-byte v1, v1, Lcom/wuyouwin/alsaserver/ALSAClient$DataType;->byteCount:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->frameBytes:B

    .line 108
    invoke-virtual {p0}, Lcom/wuyouwin/alsaserver/ALSAClient;->release()V

    .line 110
    invoke-direct {p0}, Lcom/wuyouwin/alsaserver/ALSAClient;->isValidBufferSize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget-object v1, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->dataType:Lcom/wuyouwin/alsaserver/ALSAClient$DataType;

    .line 113
    invoke-static {v1}, Lcom/wuyouwin/alsaserver/ALSAClient;->getPCMEncoding(Lcom/wuyouwin/alsaserver/ALSAClient$DataType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->sampleRate:I

    .line 114
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget-byte v1, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->channels:B

    .line 115
    invoke-static {v1}, Lcom/wuyouwin/alsaserver/ALSAClient;->getChannelConfig(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    .line 118
    .local v0, "format":Landroid/media/AudioFormat;
    new-instance v1, Landroid/media/AudioTrack$Builder;

    invoke-direct {v1}, Landroid/media/AudioTrack$Builder;-><init>()V

    iget-object v2, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->options:Lcom/wuyouwin/alsaserver/ALSAClient$Options;

    iget-byte v2, v2, Lcom/wuyouwin/alsaserver/ALSAClient$Options;->performanceMode:B

    .line 119
    invoke-virtual {v1, v2}, Landroid/media/AudioTrack$Builder;->setPerformanceMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    .line 120
    invoke-virtual {v1, v0}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    .line 121
    invoke-virtual {p0}, Lcom/wuyouwin/alsaserver/ALSAClient;->getBufferSizeInBytes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v1

    iput-object v1, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->audioTrack:Landroid/media/AudioTrack;

    .line 124
    iget-object v1, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getBufferCapacityInFrames()I

    move-result v1

    iput v1, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->bufferCapacity:I

    .line 125
    iget-object v1, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->options:Lcom/wuyouwin/alsaserver/ALSAClient$Options;

    iget v1, v1, Lcom/wuyouwin/alsaserver/ALSAClient$Options;->volume:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->audioTrack:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->options:Lcom/wuyouwin/alsaserver/ALSAClient$Options;

    iget v2, v2, Lcom/wuyouwin/alsaserver/ALSAClient$Options;->volume:F

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    .line 127
    return-void
.end method

.method public release()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->sharedBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->sharedBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->sharedBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/wuyouwin/sysvshm/SysVSharedMemory;->unmapSHMSegment(Ljava/nio/ByteBuffer;J)V

    .line 74
    iput-object v1, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->sharedBuffer:Ljava/nio/ByteBuffer;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 79
    iget-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 80
    iget-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 81
    iput-object v1, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->audioTrack:Landroid/media/AudioTrack;

    .line 83
    :cond_1
    return-void
.end method

.method public setBufferSize(I)V
    .locals 0
    .param p1, "bufferSize"    # I

    .line 205
    iput p1, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->bufferSize:I

    .line 206
    return-void
.end method

.method public setChannels(I)V
    .locals 1
    .param p1, "channels"    # I

    .line 197
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->channels:B

    .line 198
    return-void
.end method

.method public setDataType(Lcom/wuyouwin/alsaserver/ALSAClient$DataType;)V
    .locals 0
    .param p1, "dataType"    # Lcom/wuyouwin/alsaserver/ALSAClient$DataType;

    .line 193
    iput-object p1, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->dataType:Lcom/wuyouwin/alsaserver/ALSAClient$DataType;

    .line 194
    return-void
.end method

.method public setSampleRate(I)V
    .locals 0
    .param p1, "sampleRate"    # I

    .line 201
    iput p1, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->sampleRate:I

    .line 202
    return-void
.end method

.method public setSharedBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "sharedBuffer"    # Ljava/nio/ByteBuffer;

    .line 213
    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/wuyouwin/alsaserver/ALSAClient;->getBufferSizeInBytes()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->auxBuffer:Ljava/nio/ByteBuffer;

    .line 215
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->sharedBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 218
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->auxBuffer:Ljava/nio/ByteBuffer;

    .line 219
    iput-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->sharedBuffer:Ljava/nio/ByteBuffer;

    .line 221
    :goto_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 133
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 138
    iget-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 140
    :cond_0
    return-void
.end method

.method public writeDataToTrack(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 151
    iget-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->dataType:Lcom/wuyouwin/alsaserver/ALSAClient$DataType;

    sget-object v1, Lcom/wuyouwin/alsaserver/ALSAClient$DataType;->S16LE:Lcom/wuyouwin/alsaserver/ALSAClient$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->dataType:Lcom/wuyouwin/alsaserver/ALSAClient$DataType;

    sget-object v1, Lcom/wuyouwin/alsaserver/ALSAClient$DataType;->FLOATLE:Lcom/wuyouwin/alsaserver/ALSAClient$DataType;

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->dataType:Lcom/wuyouwin/alsaserver/ALSAClient$DataType;

    sget-object v1, Lcom/wuyouwin/alsaserver/ALSAClient$DataType;->S16BE:Lcom/wuyouwin/alsaserver/ALSAClient$DataType;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->dataType:Lcom/wuyouwin/alsaserver/ALSAClient$DataType;

    sget-object v1, Lcom/wuyouwin/alsaserver/ALSAClient$DataType;->FLOATBE:Lcom/wuyouwin/alsaserver/ALSAClient$DataType;

    if-ne v0, v1, :cond_3

    .line 155
    :cond_2
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 152
    :goto_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 158
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_6

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 164
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .line 165
    .local v1, "bytesWritten":I
    if-gez v1, :cond_5

    goto :goto_2

    .line 166
    :cond_5
    invoke-direct {p0}, Lcom/wuyouwin/alsaserver/ALSAClient;->increaseBufferSizeIfUnderrunOccurs()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    nop

    .line 172
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    if-ne v2, v3, :cond_4

    goto :goto_2

    .line 168
    .end local v1    # "bytesWritten":I
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    nop

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    iget v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->position:I

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/wuyouwin/alsaserver/ALSAClient;->position:I

    .line 175
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 177
    :cond_6
    return-void
.end method
