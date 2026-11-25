.class public Lcom/winlator/renderer/GPUImage;
.super Lcom/winlator/renderer/Texture;
.source "GPUImage.java"


# instance fields
.field private hardwareBufferPtr:J

.field private imageKHRPtr:J

.field private locked:Z

.field private nativeHandle:I

.field private stride:S

.field private virtualData:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-string v0, "winlator"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/winlator/xserver/Drawable;ZZ)V
    .locals 4
    .param p1, "owner"    # Lcom/winlator/xserver/Drawable;
    .param p2, "cpuAccess"    # Z
    .param p3, "useHALPixelFormatBGRA8888"    # Z

    .line 31
    invoke-direct {p0, p1}, Lcom/winlator/renderer/Texture;-><init>(Lcom/winlator/xserver/Drawable;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/renderer/GPUImage;->locked:Z

    .line 32
    iget-short v0, p1, Lcom/winlator/xserver/Drawable;->width:S

    iget-short v1, p1, Lcom/winlator/xserver/Drawable;->height:S

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/winlator/renderer/GPUImage;->createHardwareBuffer(SSZZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/winlator/renderer/GPUImage;->hardwareBufferPtr:J

    .line 33
    if-eqz p2, :cond_0

    iget-wide v0, p0, Lcom/winlator/renderer/GPUImage;->hardwareBufferPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 34
    iget-wide v0, p0, Lcom/winlator/renderer/GPUImage;->hardwareBufferPtr:J

    invoke-direct {p0, v0, v1}, Lcom/winlator/renderer/GPUImage;->lockHardwareBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/renderer/GPUImage;->virtualData:Ljava/nio/ByteBuffer;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/renderer/GPUImage;->locked:Z

    .line 37
    :cond_0
    return-void
.end method

.method private native createHardwareBuffer(SSZZ)J
.end method

.method private native createImageKHR(JI)J
.end method

.method public static createOrObtain(Lcom/winlator/xserver/XServer;Lcom/winlator/xserver/Drawable;ZZ)Lcom/winlator/renderer/GPUImage;
    .locals 3
    .param p0, "xServer"    # Lcom/winlator/xserver/XServer;
    .param p1, "drawable"    # Lcom/winlator/xserver/Drawable;
    .param p2, "cpuAccess"    # Z
    .param p3, "useHALPixelFormatBGRA8888"    # Z

    .line 89
    invoke-virtual {p1}, Lcom/winlator/xserver/Drawable;->getTexture()Lcom/winlator/renderer/Texture;

    move-result-object v0

    .line 90
    .local v0, "texture":Lcom/winlator/renderer/Texture;
    instance-of v1, v0, Lcom/winlator/renderer/GPUImage;

    if-nez v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/winlator/xserver/XServer;->getRenderer()Lcom/winlator/renderer/GLRenderer;

    move-result-object v1

    iget-object v1, v1, Lcom/winlator/renderer/GLRenderer;->xServerView:Lcom/winlator/widget/XServerView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/winlator/renderer/GPUImage$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/winlator/renderer/GPUImage$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/renderer/Texture;)V

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 92
    new-instance v1, Lcom/winlator/renderer/GPUImage;

    invoke-direct {v1, p1, p2, p3}, Lcom/winlator/renderer/GPUImage;-><init>(Lcom/winlator/xserver/Drawable;ZZ)V

    .line 93
    .local v1, "gpuImage":Lcom/winlator/renderer/GPUImage;
    invoke-virtual {p1, v1}, Lcom/winlator/xserver/Drawable;->setTexture(Lcom/winlator/renderer/Texture;)V

    .line 94
    return-object v1

    .line 96
    .end local v1    # "gpuImage":Lcom/winlator/renderer/GPUImage;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/winlator/renderer/GPUImage;

    return-object v1
.end method

.method private native destroyHardwareBuffer(JZ)V
.end method

.method private native destroyImageKHR(J)V
.end method

.method private native lockHardwareBuffer(J)Ljava/nio/ByteBuffer;
.end method

.method private setNativeHandle(I)V
    .locals 0
    .param p1, "nativeHandle"    # I
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 67
    iput p1, p0, Lcom/winlator/renderer/GPUImage;->nativeHandle:I

    .line 68
    return-void
.end method

.method private setStride(S)V
    .locals 0
    .param p1, "stride"    # S
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 58
    iput-short p1, p0, Lcom/winlator/renderer/GPUImage;->stride:S

    .line 59
    return-void
.end method


# virtual methods
.method public allocateTexture(SSLjava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "width"    # S
    .param p2, "height"    # S
    .param p3, "data"    # Ljava/nio/ByteBuffer;

    .line 41
    invoke-virtual {p0}, Lcom/winlator/renderer/Texture;->isAllocated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/winlator/renderer/Texture;->allocateTexture(SSLjava/nio/ByteBuffer;)V

    .line 43
    iget-wide v0, p0, Lcom/winlator/renderer/GPUImage;->hardwareBufferPtr:J

    iget v2, p0, Lcom/winlator/renderer/Texture;->textureId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/winlator/renderer/GPUImage;->createImageKHR(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/winlator/renderer/GPUImage;->imageKHRPtr:J

    .line 44
    return-void
.end method

.method public destroy()V
    .locals 3

    .line 76
    iget-wide v0, p0, Lcom/winlator/renderer/GPUImage;->imageKHRPtr:J

    invoke-direct {p0, v0, v1}, Lcom/winlator/renderer/GPUImage;->destroyImageKHR(J)V

    .line 77
    iget-wide v0, p0, Lcom/winlator/renderer/GPUImage;->hardwareBufferPtr:J

    iget-boolean v2, p0, Lcom/winlator/renderer/GPUImage;->locked:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/winlator/renderer/GPUImage;->destroyHardwareBuffer(JZ)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/renderer/GPUImage;->virtualData:Ljava/nio/ByteBuffer;

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/winlator/renderer/GPUImage;->imageKHRPtr:J

    .line 80
    iput-wide v0, p0, Lcom/winlator/renderer/GPUImage;->hardwareBufferPtr:J

    .line 81
    invoke-super {p0}, Lcom/winlator/renderer/Texture;->destroy()V

    .line 82
    return-void
.end method

.method public getHardwareBufferPtr()J
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/winlator/renderer/GPUImage;->hardwareBufferPtr:J

    return-wide v0
.end method

.method public getNativeHandle()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/winlator/renderer/GPUImage;->nativeHandle:I

    return v0
.end method

.method public getStride()S
    .locals 1

    .line 53
    iget-short v0, p0, Lcom/winlator/renderer/GPUImage;->stride:S

    return v0
.end method

.method public getVirtualData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/winlator/renderer/GPUImage;->virtualData:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public updateFromDrawable()V
    .locals 3

    .line 48
    invoke-virtual {p0}, Lcom/winlator/renderer/Texture;->isAllocated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/winlator/renderer/Texture;->owner:Lcom/winlator/xserver/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/renderer/Texture;->owner:Lcom/winlator/xserver/Drawable;

    iget-short v0, v0, Lcom/winlator/xserver/Drawable;->width:S

    iget-object v1, p0, Lcom/winlator/renderer/Texture;->owner:Lcom/winlator/xserver/Drawable;

    iget-short v1, v1, Lcom/winlator/xserver/Drawable;->height:S

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/winlator/renderer/GPUImage;->allocateTexture(SSLjava/nio/ByteBuffer;)V

    .line 49
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/renderer/Texture;->needsUpdate:Z

    .line 50
    return-void
.end method
