.class Lcom/wuyouwin/win32/PEParser$StringFileInfo;
.super Ljava/lang/Object;
.source "PEParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/win32/PEParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringFileInfo"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final length:S

.field private final stringTables:Ljava/util/ArrayList;

.field private final type:S

.field private final valueLength:S


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/win32/PEParser$StringFileInfo;->stringTables:Ljava/util/ArrayList;

    .line 219
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 220
    .local v0, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/wuyouwin/win32/PEParser$StringFileInfo;->length:S

    .line 221
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/wuyouwin/win32/PEParser$StringFileInfo;->valueLength:S

    .line 222
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/wuyouwin/win32/PEParser$StringFileInfo;->type:S

    .line 223
    invoke-static {p1}, Lcom/wuyouwin/win32/PEParser;->access$600(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wuyouwin/win32/PEParser$StringFileInfo;->key:Ljava/lang/String;

    .line 224
    iget-object v1, p0, Lcom/wuyouwin/win32/PEParser$StringFileInfo;->key:Ljava/lang/String;

    const-string v2, "StringFileInfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int/2addr v1, v0

    .line 226
    .local v1, "offset":I
    and-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 227
    :cond_1
    iget-short v2, p0, Lcom/wuyouwin/win32/PEParser$StringFileInfo;->length:S

    sub-int/2addr v2, v1

    .line 229
    .local v2, "remaining":I
    :goto_0
    if-lez v2, :cond_2

    .line 230
    new-instance v3, Lcom/wuyouwin/win32/PEParser$StringTable;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/wuyouwin/win32/PEParser$StringTable;-><init>(Ljava/nio/ByteBuffer;Lcom/wuyouwin/win32/PEParser$1;)V

    .line 231
    .local v3, "stringTable":Lcom/wuyouwin/win32/PEParser$StringTable;
    iget-object v4, p0, Lcom/wuyouwin/win32/PEParser$StringFileInfo;->stringTables:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-static {v3}, Lcom/wuyouwin/win32/PEParser$StringTable;->access$1000(Lcom/wuyouwin/win32/PEParser$StringTable;)S

    move-result v4

    sub-int/2addr v2, v4

    .line 233
    .end local v3    # "stringTable":Lcom/wuyouwin/win32/PEParser$StringTable;
    goto :goto_0

    .line 234
    :cond_2
    iget-short v3, p0, Lcom/wuyouwin/win32/PEParser$StringFileInfo;->length:S

    and-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 235
    :cond_3
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lcom/wuyouwin/win32/PEParser$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # Lcom/wuyouwin/win32/PEParser$1;

    .line 211
    invoke-direct {p0, p1}, Lcom/wuyouwin/win32/PEParser$StringFileInfo;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/wuyouwin/win32/PEParser$StringFileInfo;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/win32/PEParser$StringFileInfo;

    .line 211
    iget-object v0, p0, Lcom/wuyouwin/win32/PEParser$StringFileInfo;->stringTables:Ljava/util/ArrayList;

    return-object v0
.end method
