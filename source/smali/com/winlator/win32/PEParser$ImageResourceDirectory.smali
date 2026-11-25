.class Lcom/winlator/win32/PEParser$ImageResourceDirectory;
.super Ljava/lang/Object;
.source "PEParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/win32/PEParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageResourceDirectory"
.end annotation


# instance fields
.field private final characteristics:I

.field private final entries:Ljava/util/ArrayList;

.field private final majorVersion:S

.field private final minorVersion:S

.field private final numberOfIdEntries:S

.field private final numberOfNamedEntries:S

.field private final timeDateStamp:I


# direct methods
.method private constructor <init>(BLjava/nio/ByteBuffer;I)V
    .locals 7
    .param p1, "type"    # B
    .param p2, "data"    # Ljava/nio/ByteBuffer;
    .param p3, "level"    # I

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winlator/win32/PEParser$ImageResourceDirectory;->entries:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/winlator/win32/PEParser$ImageResourceDirectory;->characteristics:I

    .line 89
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/winlator/win32/PEParser$ImageResourceDirectory;->timeDateStamp:I

    .line 90
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/winlator/win32/PEParser$ImageResourceDirectory;->majorVersion:S

    .line 91
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/winlator/win32/PEParser$ImageResourceDirectory;->minorVersion:S

    .line 92
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/winlator/win32/PEParser$ImageResourceDirectory;->numberOfNamedEntries:S

    .line 93
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/winlator/win32/PEParser$ImageResourceDirectory;->numberOfIdEntries:S

    .line 95
    iget-short v0, p0, Lcom/winlator/win32/PEParser$ImageResourceDirectory;->numberOfNamedEntries:S

    iget-short v1, p0, Lcom/winlator/win32/PEParser$ImageResourceDirectory;->numberOfIdEntries:S

    add-int/2addr v0, v1

    .line 96
    .local v0, "numberOfEntries":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 97
    new-instance v2, Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;-><init>(Ljava/nio/ByteBuffer;Lcom/winlator/win32/PEParser$1;)V

    .line 99
    .local v2, "directoryEntry":Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;
    invoke-static {v2}, Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;->access$100(Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;)I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, p1, :cond_0

    invoke-static {v2}, Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;->access$200(Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-lez p3, :cond_2

    invoke-static {v2}, Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;->access$200(Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 100
    :cond_1
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v3

    .line 101
    .local v3, "oldPosition":I
    invoke-static {v2}, Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;->access$300(Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;)I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    new-instance v4, Lcom/winlator/win32/PEParser$ImageResourceDirectory;

    add-int/lit8 v6, p3, 0x1

    invoke-direct {v4, p1, p2, v6}, Lcom/winlator/win32/PEParser$ImageResourceDirectory;-><init>(BLjava/nio/ByteBuffer;I)V

    invoke-static {v2, v4}, Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;->access$402(Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;Lcom/winlator/win32/PEParser$ImageResourceDirectory;)Lcom/winlator/win32/PEParser$ImageResourceDirectory;

    .line 103
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 105
    iget-object v4, p0, Lcom/winlator/win32/PEParser$ImageResourceDirectory;->entries:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 106
    .end local v3    # "oldPosition":I
    goto :goto_1

    .line 107
    :cond_2
    if-lez p3, :cond_3

    .line 108
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v4

    .line 109
    .local v4, "oldPosition":I
    invoke-static {v2}, Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;->access$300(Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;)I

    move-result v6

    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    new-instance v6, Lcom/winlator/win32/PEParser$ImageResourceDataEntry;

    invoke-direct {v6, p2, v3}, Lcom/winlator/win32/PEParser$ImageResourceDataEntry;-><init>(Ljava/nio/ByteBuffer;Lcom/winlator/win32/PEParser$1;)V

    move-object v3, v6

    .line 111
    .local v3, "dataEntry":Lcom/winlator/win32/PEParser$ImageResourceDataEntry;
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 113
    iget-object v6, p0, Lcom/winlator/win32/PEParser$ImageResourceDirectory;->entries:Ljava/util/ArrayList;

    invoke-virtual {v6, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 96
    .end local v2    # "directoryEntry":Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;
    .end local v3    # "dataEntry":Lcom/winlator/win32/PEParser$ImageResourceDataEntry;
    .end local v4    # "oldPosition":I
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 116
    .end local v1    # "i":I
    return-void
.end method

.method synthetic constructor <init>(BLjava/nio/ByteBuffer;ILcom/winlator/win32/PEParser$1;)V
    .locals 0
    .param p1, "x0"    # B
    .param p2, "x1"    # Ljava/nio/ByteBuffer;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/winlator/win32/PEParser$1;

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/win32/PEParser$ImageResourceDirectory;-><init>(BLjava/nio/ByteBuffer;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/winlator/win32/PEParser$ImageResourceDirectory;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/winlator/win32/PEParser$ImageResourceDirectory;

    .line 78
    iget-object v0, p0, Lcom/winlator/win32/PEParser$ImageResourceDirectory;->entries:Ljava/util/ArrayList;

    return-object v0
.end method
