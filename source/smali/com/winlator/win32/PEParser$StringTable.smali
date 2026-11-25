.class Lcom/winlator/win32/PEParser$StringTable;
.super Ljava/lang/Object;
.source "PEParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/win32/PEParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringTable"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final length:S

.field private final stringHdrs:Ljava/util/ArrayList;

.field private final type:S

.field private final valueLength:S


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winlator/win32/PEParser$StringTable;->stringHdrs:Ljava/util/ArrayList;

    .line 193
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 194
    .local v0, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/winlator/win32/PEParser$StringTable;->length:S

    .line 195
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/winlator/win32/PEParser$StringTable;->valueLength:S

    .line 196
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/winlator/win32/PEParser$StringTable;->type:S

    .line 197
    invoke-static {p1}, Lcom/winlator/win32/PEParser;->access$600(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/winlator/win32/PEParser$StringTable;->key:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int/2addr v1, v0

    .line 199
    .local v1, "offset":I
    and-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 200
    :cond_0
    iget-short v2, p0, Lcom/winlator/win32/PEParser$StringTable;->length:S

    sub-int/2addr v2, v1

    .line 202
    .local v2, "remaining":I
    :goto_0
    if-lez v2, :cond_1

    .line 203
    new-instance v3, Lcom/winlator/win32/PEParser$StringHdr;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/winlator/win32/PEParser$StringHdr;-><init>(Ljava/nio/ByteBuffer;Lcom/winlator/win32/PEParser$1;)V

    .line 204
    .local v3, "stringhdr":Lcom/winlator/win32/PEParser$StringHdr;
    iget-object v4, p0, Lcom/winlator/win32/PEParser$StringTable;->stringHdrs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-static {v3}, Lcom/winlator/win32/PEParser$StringHdr;->access$800(Lcom/winlator/win32/PEParser$StringHdr;)S

    move-result v4

    sub-int/2addr v2, v4

    .line 206
    .end local v3    # "stringhdr":Lcom/winlator/win32/PEParser$StringHdr;
    goto :goto_0

    .line 207
    :cond_1
    iget-short v3, p0, Lcom/winlator/win32/PEParser$StringTable;->length:S

    and-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 208
    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lcom/winlator/win32/PEParser$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # Lcom/winlator/win32/PEParser$1;

    .line 185
    invoke-direct {p0, p1}, Lcom/winlator/win32/PEParser$StringTable;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/winlator/win32/PEParser$StringTable;)S
    .locals 1
    .param p0, "x0"    # Lcom/winlator/win32/PEParser$StringTable;

    .line 185
    iget-short v0, p0, Lcom/winlator/win32/PEParser$StringTable;->length:S

    return v0
.end method

.method static synthetic access$2100(Lcom/winlator/win32/PEParser$StringTable;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/winlator/win32/PEParser$StringTable;

    .line 185
    iget-object v0, p0, Lcom/winlator/win32/PEParser$StringTable;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/winlator/win32/PEParser$StringTable;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/winlator/win32/PEParser$StringTable;

    .line 185
    iget-object v0, p0, Lcom/winlator/win32/PEParser$StringTable;->stringHdrs:Ljava/util/ArrayList;

    return-object v0
.end method
