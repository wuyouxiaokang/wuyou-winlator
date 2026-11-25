.class Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;
.super Ljava/lang/Object;
.source "PEParser.java"

# interfaces
.implements Lcom/winlator/win32/PEParser$ImageResourceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/win32/PEParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageResourceDirectoryEntry"
.end annotation


# instance fields
.field private final dataIsDirectory:Z

.field private directory:Lcom/winlator/win32/PEParser$ImageResourceDirectory;

.field private final name:I

.field private final nameIsString:Z

.field private final offsetToData:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 55
    .local v0, "field1":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 57
    .local v1, "field2":I
    const v2, 0x7fffffff

    and-int v3, v0, v2

    iput v3, p0, Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;->name:I

    .line 58
    shr-int/lit8 v3, v0, 0x1f

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;->nameIsString:Z

    .line 59
    and-int/2addr v2, v1

    iput v2, p0, Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;->offsetToData:I

    .line 60
    shr-int/lit8 v2, v1, 0x1f

    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;->dataIsDirectory:Z

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lcom/winlator/win32/PEParser$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # Lcom/winlator/win32/PEParser$1;

    .line 46
    invoke-direct {p0, p1}, Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;)I
    .locals 1
    .param p0, "x0"    # Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;

    .line 46
    iget v0, p0, Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;->name:I

    return v0
.end method

.method static synthetic access$200(Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;)Z
    .locals 1
    .param p0, "x0"    # Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;

    .line 46
    iget-boolean v0, p0, Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;->dataIsDirectory:Z

    return v0
.end method

.method static synthetic access$300(Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;)I
    .locals 1
    .param p0, "x0"    # Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;

    .line 46
    iget v0, p0, Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;->offsetToData:I

    return v0
.end method

.method static synthetic access$400(Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;)Lcom/winlator/win32/PEParser$ImageResourceDirectory;
    .locals 1
    .param p0, "x0"    # Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;

    .line 46
    iget-object v0, p0, Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;->directory:Lcom/winlator/win32/PEParser$ImageResourceDirectory;

    return-object v0
.end method

.method static synthetic access$402(Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;Lcom/winlator/win32/PEParser$ImageResourceDirectory;)Lcom/winlator/win32/PEParser$ImageResourceDirectory;
    .locals 0
    .param p0, "x0"    # Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;
    .param p1, "x1"    # Lcom/winlator/win32/PEParser$ImageResourceDirectory;

    .line 46
    iput-object p1, p0, Lcom/winlator/win32/PEParser$ImageResourceDirectoryEntry;->directory:Lcom/winlator/win32/PEParser$ImageResourceDirectory;

    return-object p1
.end method
