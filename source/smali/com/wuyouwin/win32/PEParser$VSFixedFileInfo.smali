.class Lcom/wuyouwin/win32/PEParser$VSFixedFileInfo;
.super Ljava/lang/Object;
.source "PEParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/win32/PEParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VSFixedFileInfo"
.end annotation


# instance fields
.field private final dwFileDateLS:I

.field private final dwFileDateMS:I

.field private final dwFileFlags:I

.field private final dwFileFlagsMask:I

.field private final dwFileOS:I

.field private final dwFileSubtype:I

.field private final dwFileType:I

.field private final dwFileVersionLS:I

.field private final dwFileVersionMS:I

.field private final dwProductVersionLS:I

.field private final dwProductVersionMS:I

.field private final dwSignature:I

.field private final dwStrucVersion:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/wuyouwin/win32/PEParser$VSFixedFileInfo;->dwSignature:I

    .line 136
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/wuyouwin/win32/PEParser$VSFixedFileInfo;->dwStrucVersion:I

    .line 137
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/wuyouwin/win32/PEParser$VSFixedFileInfo;->dwFileVersionMS:I

    .line 138
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/wuyouwin/win32/PEParser$VSFixedFileInfo;->dwFileVersionLS:I

    .line 139
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/wuyouwin/win32/PEParser$VSFixedFileInfo;->dwProductVersionMS:I

    .line 140
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/wuyouwin/win32/PEParser$VSFixedFileInfo;->dwProductVersionLS:I

    .line 141
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/wuyouwin/win32/PEParser$VSFixedFileInfo;->dwFileFlagsMask:I

    .line 142
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/wuyouwin/win32/PEParser$VSFixedFileInfo;->dwFileFlags:I

    .line 143
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/wuyouwin/win32/PEParser$VSFixedFileInfo;->dwFileOS:I

    .line 144
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/wuyouwin/win32/PEParser$VSFixedFileInfo;->dwFileType:I

    .line 145
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/wuyouwin/win32/PEParser$VSFixedFileInfo;->dwFileSubtype:I

    .line 146
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/wuyouwin/win32/PEParser$VSFixedFileInfo;->dwFileDateMS:I

    .line 147
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/wuyouwin/win32/PEParser$VSFixedFileInfo;->dwFileDateLS:I

    .line 148
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lcom/wuyouwin/win32/PEParser$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # Lcom/wuyouwin/win32/PEParser$1;

    .line 119
    invoke-direct {p0, p1}, Lcom/wuyouwin/win32/PEParser$VSFixedFileInfo;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/wuyouwin/win32/PEParser$VSFixedFileInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/win32/PEParser$VSFixedFileInfo;

    .line 119
    iget v0, p0, Lcom/wuyouwin/win32/PEParser$VSFixedFileInfo;->dwStrucVersion:I

    return v0
.end method
