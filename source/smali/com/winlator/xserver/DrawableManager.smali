.class public Lcom/winlator/xserver/DrawableManager;
.super Lcom/winlator/xserver/XResourceManager;
.source "DrawableManager.java"

# interfaces
.implements Lcom/winlator/xserver/XResourceManager$OnResourceLifecycleListener;


# instance fields
.field private final drawables:Landroid/util/SparseArray;

.field private final xServer:Lcom/winlator/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/winlator/xserver/XServer;)V
    .locals 1
    .param p1, "xServer"    # Lcom/winlator/xserver/XServer;

    .line 12
    invoke-direct {p0}, Lcom/winlator/xserver/XResourceManager;-><init>()V

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/winlator/xserver/DrawableManager;->drawables:Landroid/util/SparseArray;

    .line 13
    iput-object p1, p0, Lcom/winlator/xserver/DrawableManager;->xServer:Lcom/winlator/xserver/XServer;

    .line 14
    iget-object v0, p1, Lcom/winlator/xserver/XServer;->pixmapManager:Lcom/winlator/xserver/PixmapManager;

    invoke-virtual {v0, p0}, Lcom/winlator/xserver/XResourceManager;->addOnResourceLifecycleListener(Lcom/winlator/xserver/XResourceManager$OnResourceLifecycleListener;)V

    .line 15
    return-void
.end method


# virtual methods
.method public createDrawable(ISSB)Lcom/winlator/xserver/Drawable;
    .locals 1
    .param p1, "id"    # I
    .param p2, "width"    # S
    .param p3, "height"    # S
    .param p4, "depth"    # B

    .line 22
    iget-object v0, p0, Lcom/winlator/xserver/DrawableManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/xserver/XServer;->pixmapManager:Lcom/winlator/xserver/PixmapManager;

    invoke-virtual {v0, p4}, Lcom/winlator/xserver/PixmapManager;->getVisualForDepth(B)Lcom/winlator/xserver/Visual;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/winlator/xserver/DrawableManager;->createDrawable(ISSLcom/winlator/xserver/Visual;)Lcom/winlator/xserver/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public createDrawable(ISSLcom/winlator/xserver/Visual;)Lcom/winlator/xserver/Drawable;
    .locals 2
    .param p1, "id"    # I
    .param p2, "width"    # S
    .param p3, "height"    # S
    .param p4, "visual"    # Lcom/winlator/xserver/Visual;

    .line 26
    if-nez p1, :cond_0

    new-instance v0, Lcom/winlator/xserver/Drawable;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/winlator/xserver/Drawable;-><init>(IIILcom/winlator/xserver/Visual;)V

    return-object v0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/winlator/xserver/DrawableManager;->drawables:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_1
    new-instance v0, Lcom/winlator/xserver/Drawable;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/winlator/xserver/Drawable;-><init>(IIILcom/winlator/xserver/Visual;)V

    .line 29
    .local v0, "drawable":Lcom/winlator/xserver/Drawable;
    iget-object v1, p0, Lcom/winlator/xserver/DrawableManager;->drawables:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    return-object v0
.end method

.method public getDrawable(I)Lcom/winlator/xserver/Drawable;
    .locals 1
    .param p1, "id"    # I

    .line 18
    iget-object v0, p0, Lcom/winlator/xserver/DrawableManager;->drawables:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/xserver/Drawable;

    return-object v0
.end method

.method public getVisual()Lcom/winlator/xserver/Visual;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/winlator/xserver/DrawableManager;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/xserver/XServer;->pixmapManager:Lcom/winlator/xserver/PixmapManager;

    iget-object v0, v0, Lcom/winlator/xserver/PixmapManager;->visual:Lcom/winlator/xserver/Visual;

    return-object v0
.end method

.method public onFreeResource(Lcom/winlator/xserver/XResource;)V
    .locals 1
    .param p1, "resource"    # Lcom/winlator/xserver/XResource;

    .line 51
    instance-of v0, p1, Lcom/winlator/xserver/Pixmap;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/winlator/xserver/Pixmap;

    iget-object v0, v0, Lcom/winlator/xserver/Pixmap;->drawable:Lcom/winlator/xserver/Drawable;

    iget v0, v0, Lcom/winlator/xserver/XResource;->id:I

    invoke-virtual {p0, v0}, Lcom/winlator/xserver/DrawableManager;->removeDrawable(I)V

    .line 52
    :cond_0
    return-void
.end method

.method public removeDrawable(I)V
    .locals 5
    .param p1, "id"    # I

    .line 34
    iget-object v0, p0, Lcom/winlator/xserver/DrawableManager;->drawables:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/xserver/Drawable;

    .line 36
    .local v0, "drawable":Lcom/winlator/xserver/Drawable;
    invoke-virtual {v0}, Lcom/winlator/xserver/Drawable;->getTexture()Lcom/winlator/renderer/Texture;

    move-result-object v1

    .line 37
    .local v1, "texture":Lcom/winlator/renderer/Texture;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {v1}, Lcom/winlator/renderer/Texture;->getOwner()Lcom/winlator/xserver/Drawable;

    move-result-object v3

    if-ne v3, v0, :cond_0

    invoke-virtual {v1, v2}, Lcom/winlator/renderer/Texture;->setOwner(Lcom/winlator/xserver/Drawable;)V

    .line 39
    :cond_0
    iget-object v3, p0, Lcom/winlator/xserver/DrawableManager;->xServer:Lcom/winlator/xserver/XServer;

    invoke-virtual {v3}, Lcom/winlator/xserver/XServer;->getRenderer()Lcom/winlator/renderer/GLRenderer;

    move-result-object v3

    iget-object v3, v3, Lcom/winlator/renderer/GLRenderer;->xServerView:Lcom/winlator/widget/XServerView;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/winlator/renderer/GPUImage$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lcom/winlator/renderer/GPUImage$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/renderer/Texture;)V

    invoke-virtual {v3, v4}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 42
    :cond_1
    invoke-virtual {v0}, Lcom/winlator/xserver/Drawable;->getOnDestroyListener()Lcom/winlator/core/Callback;

    move-result-object v3

    .line 43
    .local v3, "onDestroyListener":Lcom/winlator/core/Callback;, "Lcom/winlator/core/Callback<Lcom/winlator/xserver/Drawable;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3, v0}, Lcom/winlator/core/Callback;->call(Ljava/lang/Object;)V

    .line 45
    :cond_2
    invoke-virtual {v0, v2}, Lcom/winlator/xserver/Drawable;->setOnDrawListener(Ljava/lang/Runnable;)V

    .line 46
    iget-object v2, p0, Lcom/winlator/xserver/DrawableManager;->drawables:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 47
    return-void
.end method
