.class Lcom/wuyouwin/win32/PEParser$StringHdr;
.super Ljava/lang/Object;
.source "PEParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/win32/PEParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringHdr"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final length:S

.field private final type:S

.field private final value:Ljava/lang/String;

.field private final valueLength:S


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 167
    .local v0, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/wuyouwin/win32/PEParser$StringHdr;->length:S

    .line 168
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/wuyouwin/win32/PEParser$StringHdr;->valueLength:S

    .line 169
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/wuyouwin/win32/PEParser$StringHdr;->type:S

    .line 171
    invoke-static {p1}, Lcom/wuyouwin/win32/PEParser;->access$600(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wuyouwin/win32/PEParser$StringHdr;->key:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int/2addr v1, v0

    .line 173
    .local v1, "offset":I
    and-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 175
    :cond_0
    iget-short v2, p0, Lcom/wuyouwin/win32/PEParser$StringHdr;->valueLength:S

    if-lez v2, :cond_1

    .line 176
    iget-short v2, p0, Lcom/wuyouwin/win32/PEParser$StringHdr;->valueLength:S

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    .line 177
    .local v2, "bytes":[B
    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {p1, v2, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 178
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lcom/wuyouwin/win32/PEParser;->access$600(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wuyouwin/win32/PEParser$StringHdr;->value:Ljava/lang/String;

    .line 179
    .end local v2    # "bytes":[B
    goto :goto_0

    .line 180
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/wuyouwin/win32/PEParser$StringHdr;->value:Ljava/lang/String;

    .line 181
    :goto_0
    iget-short v2, p0, Lcom/wuyouwin/win32/PEParser$StringHdr;->length:S

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 182
    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lcom/wuyouwin/win32/PEParser$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # Lcom/wuyouwin/win32/PEParser$1;

    .line 158
    invoke-direct {p0, p1}, Lcom/wuyouwin/win32/PEParser$StringHdr;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/wuyouwin/win32/PEParser$StringHdr;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/win32/PEParser$StringHdr;

    .line 158
    iget-object v0, p0, Lcom/wuyouwin/win32/PEParser$StringHdr;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/wuyouwin/win32/PEParser$StringHdr;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/win32/PEParser$StringHdr;

    .line 158
    iget-object v0, p0, Lcom/wuyouwin/win32/PEParser$StringHdr;->value:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/wuyouwin/win32/PEParser$StringHdr;)S
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/win32/PEParser$StringHdr;

    .line 158
    iget-short v0, p0, Lcom/wuyouwin/win32/PEParser$StringHdr;->length:S

    return v0
.end method
