.class Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;
.super Ljava/lang/Object;
.source "SysVSharedMemory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/sysvshm/SysVSharedMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SHMemory"
.end annotation


# instance fields
.field private data:Ljava/nio/ByteBuffer;

.field private fd:I

.field private size:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/winlator/sysvshm/SysVSharedMemory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/winlator/sysvshm/SysVSharedMemory$1;

    .line 17
    invoke-direct {p0}, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;)I
    .locals 1
    .param p0, "x0"    # Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;

    .line 17
    iget v0, p0, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;->fd:I

    return v0
.end method

.method static synthetic access$002(Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;I)I
    .locals 0
    .param p0, "x0"    # Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;
    .param p1, "x1"    # I

    .line 17
    iput p1, p0, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;->fd:I

    return p1
.end method

.method static synthetic access$200(Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;)J
    .locals 2
    .param p0, "x0"    # Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;

    .line 17
    iget-wide v0, p0, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;->size:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;J)J
    .locals 0
    .param p0, "x0"    # Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;
    .param p1, "x1"    # J

    .line 17
    iput-wide p1, p0, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;->size:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;

    .line 17
    iget-object v0, p0, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0
    .param p0, "x0"    # Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;

    .line 17
    iput-object p1, p0, Lcom/winlator/sysvshm/SysVSharedMemory$SHMemory;->data:Ljava/nio/ByteBuffer;

    return-object p1
.end method
