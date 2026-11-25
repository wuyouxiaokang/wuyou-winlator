.class Lcom/wuyouwin/win32/PEParser$VSVersionInfo;
.super Ljava/lang/Object;
.source "PEParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/win32/PEParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VSVersionInfo"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final length:S

.field private final stringFileInfo:Lcom/wuyouwin/win32/PEParser$StringFileInfo;

.field private final type:S

.field private final value:Lcom/wuyouwin/win32/PEParser$VSFixedFileInfo;

.field private final valueLength:S


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 248
    .local v0, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/wuyouwin/win32/PEParser$VSVersionInfo;->length:S

    .line 249
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/wuyouwin/win32/PEParser$VSVersionInfo;->valueLength:S

    .line 250
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/wuyouwin/win32/PEParser$VSVersionInfo;->type:S

    .line 251
    invoke-static {p1}, Lcom/wuyouwin/win32/PEParser;->access$600(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wuyouwin/win32/PEParser$VSVersionInfo;->key:Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int/2addr v1, v0

    .line 253
    .local v1, "offset":I
    and-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 254
    :cond_0
    iget-short v2, p0, Lcom/wuyouwin/win32/PEParser$VSVersionInfo;->valueLength:S

    const/4 v3, 0x0

    if-lez v2, :cond_1

    new-instance v2, Lcom/wuyouwin/win32/PEParser$VSFixedFileInfo;

    invoke-direct {v2, p1, v3}, Lcom/wuyouwin/win32/PEParser$VSFixedFileInfo;-><init>(Ljava/nio/ByteBuffer;Lcom/wuyouwin/win32/PEParser$1;)V

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    iput-object v2, p0, Lcom/wuyouwin/win32/PEParser$VSVersionInfo;->value:Lcom/wuyouwin/win32/PEParser$VSFixedFileInfo;

    .line 256
    iget-object v2, p0, Lcom/wuyouwin/win32/PEParser$VSVersionInfo;->value:Lcom/wuyouwin/win32/PEParser$VSFixedFileInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/wuyouwin/win32/PEParser$VSVersionInfo;->value:Lcom/wuyouwin/win32/PEParser$VSFixedFileInfo;

    invoke-static {v2}, Lcom/wuyouwin/win32/PEParser$VSFixedFileInfo;->access$1200(Lcom/wuyouwin/win32/PEParser$VSFixedFileInfo;)I

    move-result v2

    const/high16 v4, 0x10000

    if-eq v2, v4, :cond_3

    :cond_2
    goto :goto_1

    .line 261
    :cond_3
    new-instance v2, Lcom/wuyouwin/win32/PEParser$StringFileInfo;

    invoke-direct {v2, p1, v3}, Lcom/wuyouwin/win32/PEParser$StringFileInfo;-><init>(Ljava/nio/ByteBuffer;Lcom/wuyouwin/win32/PEParser$1;)V

    iput-object v2, p0, Lcom/wuyouwin/win32/PEParser$VSVersionInfo;->stringFileInfo:Lcom/wuyouwin/win32/PEParser$StringFileInfo;

    .line 262
    return-void

    .line 257
    :goto_1
    iput-object v3, p0, Lcom/wuyouwin/win32/PEParser$VSVersionInfo;->stringFileInfo:Lcom/wuyouwin/win32/PEParser$StringFileInfo;

    .line 258
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lcom/wuyouwin/win32/PEParser$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # Lcom/wuyouwin/win32/PEParser$1;

    .line 238
    invoke-direct {p0, p1}, Lcom/wuyouwin/win32/PEParser$VSVersionInfo;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/wuyouwin/win32/PEParser$VSVersionInfo;)Lcom/wuyouwin/win32/PEParser$StringFileInfo;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/win32/PEParser$VSVersionInfo;

    .line 238
    iget-object v0, p0, Lcom/wuyouwin/win32/PEParser$VSVersionInfo;->stringFileInfo:Lcom/wuyouwin/win32/PEParser$StringFileInfo;

    return-object v0
.end method
