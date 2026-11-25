.class Lcom/winlator/win32/MSIcon$IconDirEntry;
.super Ljava/lang/Object;
.source "MSIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/win32/MSIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconDirEntry"
.end annotation


# instance fields
.field private bitCount:S

.field private colorPlanes:S

.field private height:I

.field private imageOffset:I

.field private imageSize:I

.field private numberOfColors:B

.field private reserved:B

.field private width:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/winlator/win32/MSIcon$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/winlator/win32/MSIcon$1;

    .line 16
    invoke-direct {p0}, Lcom/winlator/win32/MSIcon$IconDirEntry;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/winlator/win32/MSIcon$IconDirEntry;)I
    .locals 1
    .param p0, "x0"    # Lcom/winlator/win32/MSIcon$IconDirEntry;

    .line 16
    iget v0, p0, Lcom/winlator/win32/MSIcon$IconDirEntry;->width:I

    return v0
.end method

.method static synthetic access$102(Lcom/winlator/win32/MSIcon$IconDirEntry;I)I
    .locals 0
    .param p0, "x0"    # Lcom/winlator/win32/MSIcon$IconDirEntry;
    .param p1, "x1"    # I

    .line 16
    iput p1, p0, Lcom/winlator/win32/MSIcon$IconDirEntry;->width:I

    return p1
.end method

.method static synthetic access$202(Lcom/winlator/win32/MSIcon$IconDirEntry;I)I
    .locals 0
    .param p0, "x0"    # Lcom/winlator/win32/MSIcon$IconDirEntry;
    .param p1, "x1"    # I

    .line 16
    iput p1, p0, Lcom/winlator/win32/MSIcon$IconDirEntry;->height:I

    return p1
.end method

.method static synthetic access$302(Lcom/winlator/win32/MSIcon$IconDirEntry;B)B
    .locals 0
    .param p0, "x0"    # Lcom/winlator/win32/MSIcon$IconDirEntry;
    .param p1, "x1"    # B

    .line 16
    iput-byte p1, p0, Lcom/winlator/win32/MSIcon$IconDirEntry;->numberOfColors:B

    return p1
.end method

.method static synthetic access$402(Lcom/winlator/win32/MSIcon$IconDirEntry;B)B
    .locals 0
    .param p0, "x0"    # Lcom/winlator/win32/MSIcon$IconDirEntry;
    .param p1, "x1"    # B

    .line 16
    iput-byte p1, p0, Lcom/winlator/win32/MSIcon$IconDirEntry;->reserved:B

    return p1
.end method

.method static synthetic access$502(Lcom/winlator/win32/MSIcon$IconDirEntry;S)S
    .locals 0
    .param p0, "x0"    # Lcom/winlator/win32/MSIcon$IconDirEntry;
    .param p1, "x1"    # S

    .line 16
    iput-short p1, p0, Lcom/winlator/win32/MSIcon$IconDirEntry;->colorPlanes:S

    return p1
.end method

.method static synthetic access$600(Lcom/winlator/win32/MSIcon$IconDirEntry;)S
    .locals 1
    .param p0, "x0"    # Lcom/winlator/win32/MSIcon$IconDirEntry;

    .line 16
    iget-short v0, p0, Lcom/winlator/win32/MSIcon$IconDirEntry;->bitCount:S

    return v0
.end method

.method static synthetic access$602(Lcom/winlator/win32/MSIcon$IconDirEntry;S)S
    .locals 0
    .param p0, "x0"    # Lcom/winlator/win32/MSIcon$IconDirEntry;
    .param p1, "x1"    # S

    .line 16
    iput-short p1, p0, Lcom/winlator/win32/MSIcon$IconDirEntry;->bitCount:S

    return p1
.end method

.method static synthetic access$700(Lcom/winlator/win32/MSIcon$IconDirEntry;)I
    .locals 1
    .param p0, "x0"    # Lcom/winlator/win32/MSIcon$IconDirEntry;

    .line 16
    iget v0, p0, Lcom/winlator/win32/MSIcon$IconDirEntry;->imageSize:I

    return v0
.end method

.method static synthetic access$702(Lcom/winlator/win32/MSIcon$IconDirEntry;I)I
    .locals 0
    .param p0, "x0"    # Lcom/winlator/win32/MSIcon$IconDirEntry;
    .param p1, "x1"    # I

    .line 16
    iput p1, p0, Lcom/winlator/win32/MSIcon$IconDirEntry;->imageSize:I

    return p1
.end method

.method static synthetic access$800(Lcom/winlator/win32/MSIcon$IconDirEntry;)I
    .locals 1
    .param p0, "x0"    # Lcom/winlator/win32/MSIcon$IconDirEntry;

    .line 16
    iget v0, p0, Lcom/winlator/win32/MSIcon$IconDirEntry;->imageOffset:I

    return v0
.end method

.method static synthetic access$802(Lcom/winlator/win32/MSIcon$IconDirEntry;I)I
    .locals 0
    .param p0, "x0"    # Lcom/winlator/win32/MSIcon$IconDirEntry;
    .param p1, "x1"    # I

    .line 16
    iput p1, p0, Lcom/winlator/win32/MSIcon$IconDirEntry;->imageOffset:I

    return p1
.end method
