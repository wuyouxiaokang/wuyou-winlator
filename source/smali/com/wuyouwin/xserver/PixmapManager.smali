.class public Lcom/wuyouwin/xserver/PixmapManager;
.super Lcom/wuyouwin/xserver/XResourceManager;
.source "PixmapManager.java"


# instance fields
.field private final pixmaps:Landroid/util/SparseArray;

.field public final supportedPixmapFormats:[Lcom/wuyouwin/xserver/PixmapFormat;

.field public final supportedVisuals:[Lcom/wuyouwin/xserver/Visual;

.field public final visual:Lcom/wuyouwin/xserver/Visual;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 12
    invoke-direct {p0}, Lcom/wuyouwin/xserver/XResourceManager;-><init>()V

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/xserver/PixmapManager;->pixmaps:Landroid/util/SparseArray;

    .line 13
    new-instance v0, Lcom/wuyouwin/xserver/Visual;

    invoke-static {}, Lcom/wuyouwin/xserver/IDGenerator;->generate()I

    move-result v2

    const v7, 0xff00

    const/16 v8, 0xff

    const/4 v3, 0x1

    const/16 v4, 0x20

    const/16 v5, 0x18

    const/high16 v6, 0xff0000

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/wuyouwin/xserver/Visual;-><init>(IZIIIII)V

    iput-object v0, p0, Lcom/wuyouwin/xserver/PixmapManager;->visual:Lcom/wuyouwin/xserver/Visual;

    .line 14
    iget-object v0, p0, Lcom/wuyouwin/xserver/PixmapManager;->visual:Lcom/wuyouwin/xserver/Visual;

    new-instance v9, Lcom/wuyouwin/xserver/Visual;

    invoke-static {}, Lcom/wuyouwin/xserver/IDGenerator;->generate()I

    move-result v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/wuyouwin/xserver/Visual;-><init>(IZIIIII)V

    filled-new-array {v0, v9}, [Lcom/wuyouwin/xserver/Visual;

    move-result-object v0

    iput-object v0, p0, Lcom/wuyouwin/xserver/PixmapManager;->supportedVisuals:[Lcom/wuyouwin/xserver/Visual;

    .line 16
    new-instance v0, Lcom/wuyouwin/xserver/PixmapFormat;

    const/4 v1, 0x1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v1, v2}, Lcom/wuyouwin/xserver/PixmapFormat;-><init>(III)V

    new-instance v1, Lcom/wuyouwin/xserver/PixmapFormat;

    const/16 v3, 0x18

    invoke-direct {v1, v3, v2, v2}, Lcom/wuyouwin/xserver/PixmapFormat;-><init>(III)V

    new-instance v3, Lcom/wuyouwin/xserver/PixmapFormat;

    invoke-direct {v3, v2, v2, v2}, Lcom/wuyouwin/xserver/PixmapFormat;-><init>(III)V

    filled-new-array {v0, v1, v3}, [Lcom/wuyouwin/xserver/PixmapFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/wuyouwin/xserver/PixmapManager;->supportedPixmapFormats:[Lcom/wuyouwin/xserver/PixmapFormat;

    .line 21
    return-void
.end method


# virtual methods
.method public createPixmap(Lcom/wuyouwin/xserver/Drawable;)Lcom/wuyouwin/xserver/Pixmap;
    .locals 3
    .param p1, "drawable"    # Lcom/wuyouwin/xserver/Drawable;

    .line 28
    iget-object v0, p0, Lcom/wuyouwin/xserver/PixmapManager;->pixmaps:Landroid/util/SparseArray;

    iget v1, p1, Lcom/wuyouwin/xserver/XResource;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    new-instance v0, Lcom/wuyouwin/xserver/Pixmap;

    invoke-direct {v0, p1}, Lcom/wuyouwin/xserver/Pixmap;-><init>(Lcom/wuyouwin/xserver/Drawable;)V

    .line 30
    .local v0, "pixmap":Lcom/wuyouwin/xserver/Pixmap;
    iget-object v1, p0, Lcom/wuyouwin/xserver/PixmapManager;->pixmaps:Landroid/util/SparseArray;

    iget v2, p1, Lcom/wuyouwin/xserver/XResource;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/XResourceManager;->triggerOnCreateResourceListener(Lcom/wuyouwin/xserver/XResource;)V

    .line 32
    return-object v0
.end method

.method public freePixmap(I)V
    .locals 1
    .param p1, "id"    # I

    .line 36
    iget-object v0, p0, Lcom/wuyouwin/xserver/PixmapManager;->pixmaps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/xserver/XResource;

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/XResourceManager;->triggerOnFreeResourceListener(Lcom/wuyouwin/xserver/XResource;)V

    .line 37
    iget-object v0, p0, Lcom/wuyouwin/xserver/PixmapManager;->pixmaps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 38
    return-void
.end method

.method public getPixmap(I)Lcom/wuyouwin/xserver/Pixmap;
    .locals 1
    .param p1, "id"    # I

    .line 24
    iget-object v0, p0, Lcom/wuyouwin/xserver/PixmapManager;->pixmaps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/xserver/Pixmap;

    return-object v0
.end method

.method public getVisual(I)Lcom/wuyouwin/xserver/Visual;
    .locals 5
    .param p1, "id"    # I

    .line 49
    iget-object v0, p0, Lcom/wuyouwin/xserver/PixmapManager;->visual:Lcom/wuyouwin/xserver/Visual;

    iget v0, v0, Lcom/wuyouwin/xserver/Visual;->id:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/xserver/PixmapManager;->visual:Lcom/wuyouwin/xserver/Visual;

    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/xserver/PixmapManager;->supportedVisuals:[Lcom/wuyouwin/xserver/Visual;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 51
    .local v3, "visual":Lcom/wuyouwin/xserver/Visual;
    iget v4, v3, Lcom/wuyouwin/xserver/Visual;->id:I

    if-ne p1, v4, :cond_1

    iget-boolean v4, v3, Lcom/wuyouwin/xserver/Visual;->displayable:Z

    if-eqz v4, :cond_1

    return-object v3

    .line 50
    .end local v3    # "visual":Lcom/wuyouwin/xserver/Visual;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisualForDepth(B)Lcom/wuyouwin/xserver/Visual;
    .locals 5
    .param p1, "depth"    # B

    .line 41
    iget-object v0, p0, Lcom/wuyouwin/xserver/PixmapManager;->visual:Lcom/wuyouwin/xserver/Visual;

    iget-byte v0, v0, Lcom/wuyouwin/xserver/Visual;->depth:B

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/xserver/PixmapManager;->visual:Lcom/wuyouwin/xserver/Visual;

    return-object v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/xserver/PixmapManager;->supportedVisuals:[Lcom/wuyouwin/xserver/Visual;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 43
    .local v3, "visual":Lcom/wuyouwin/xserver/Visual;
    iget-byte v4, v3, Lcom/wuyouwin/xserver/Visual;->depth:B

    if-ne p1, v4, :cond_1

    return-object v3

    .line 42
    .end local v3    # "visual":Lcom/wuyouwin/xserver/Visual;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWindowIcon(Lcom/wuyouwin/xserver/Window;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;

    .line 57
    sget-object v0, Lcom/wuyouwin/xserver/Window$WMHints;->ICON_PIXMAP:Lcom/wuyouwin/xserver/Window$WMHints;

    invoke-virtual {p1, v0}, Lcom/wuyouwin/xserver/Window;->getWMHintsValue(Lcom/wuyouwin/xserver/Window$WMHints;)I

    move-result v0

    .line 58
    .local v0, "colorPixmapId":I
    sget-object v1, Lcom/wuyouwin/xserver/Window$WMHints;->ICON_MASK:Lcom/wuyouwin/xserver/Window$WMHints;

    invoke-virtual {p1, v1}, Lcom/wuyouwin/xserver/Window;->getWMHintsValue(Lcom/wuyouwin/xserver/Window$WMHints;)I

    move-result v1

    .line 59
    .local v1, "maskPixmapId":I
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/PixmapManager;->getPixmap(I)Lcom/wuyouwin/xserver/Pixmap;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 60
    .local v3, "colorPixmap":Lcom/wuyouwin/xserver/Pixmap;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/wuyouwin/xserver/PixmapManager;->getPixmap(I)Lcom/wuyouwin/xserver/Pixmap;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    .line 61
    .local v4, "maskPixmap":Lcom/wuyouwin/xserver/Pixmap;
    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, v4}, Lcom/wuyouwin/xserver/Pixmap;->toBitmap(Lcom/wuyouwin/xserver/Pixmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_2
    return-object v2
.end method
