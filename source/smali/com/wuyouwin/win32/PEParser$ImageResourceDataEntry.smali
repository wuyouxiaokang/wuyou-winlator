.class Lcom/wuyouwin/win32/PEParser$ImageResourceDataEntry;
.super Ljava/lang/Object;
.source "PEParser.java"

# interfaces
.implements Lcom/wuyouwin/win32/PEParser$ImageResourceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/win32/PEParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageResourceDataEntry"
.end annotation


# instance fields
.field private final codePage:I

.field private final offsetToData:I

.field private final reserved:I

.field private final size:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/wuyouwin/win32/PEParser$ImageResourceDataEntry;->offsetToData:I

    .line 72
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/wuyouwin/win32/PEParser$ImageResourceDataEntry;->size:I

    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/wuyouwin/win32/PEParser$ImageResourceDataEntry;->codePage:I

    .line 74
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/wuyouwin/win32/PEParser$ImageResourceDataEntry;->reserved:I

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lcom/wuyouwin/win32/PEParser$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # Lcom/wuyouwin/win32/PEParser$1;

    .line 64
    invoke-direct {p0, p1}, Lcom/wuyouwin/win32/PEParser$ImageResourceDataEntry;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/wuyouwin/win32/PEParser$ImageResourceDataEntry;)I
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/win32/PEParser$ImageResourceDataEntry;

    .line 64
    iget v0, p0, Lcom/wuyouwin/win32/PEParser$ImageResourceDataEntry;->offsetToData:I

    return v0
.end method

.method static synthetic access$1700(Lcom/wuyouwin/win32/PEParser$ImageResourceDataEntry;)I
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/win32/PEParser$ImageResourceDataEntry;

    .line 64
    iget v0, p0, Lcom/wuyouwin/win32/PEParser$ImageResourceDataEntry;->size:I

    return v0
.end method
