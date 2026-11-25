.class public Lcom/wuyouwin/xserver/CursorManager;
.super Lcom/wuyouwin/xserver/XResourceManager;
.source "CursorManager.java"


# instance fields
.field private final cursors:Landroid/util/SparseArray;

.field private final drawableManager:Lcom/wuyouwin/xserver/DrawableManager;


# direct methods
.method public constructor <init>(Lcom/wuyouwin/xserver/DrawableManager;)V
    .locals 1
    .param p1, "drawableManager"    # Lcom/wuyouwin/xserver/DrawableManager;

    .line 11
    invoke-direct {p0}, Lcom/wuyouwin/xserver/XResourceManager;-><init>()V

    .line 8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/xserver/CursorManager;->cursors:Landroid/util/SparseArray;

    .line 12
    iput-object p1, p0, Lcom/wuyouwin/xserver/CursorManager;->drawableManager:Lcom/wuyouwin/xserver/DrawableManager;

    .line 13
    return-void
.end method

.method private static isEmptyMaskImage(Lcom/wuyouwin/xserver/Drawable;)Z
    .locals 4
    .param p0, "maskImage"    # Lcom/wuyouwin/xserver/Drawable;

    .line 34
    invoke-virtual {p0}, Lcom/wuyouwin/xserver/Drawable;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    .line 35
    .local v0, "maskData":Ljava/nio/IntBuffer;
    const/4 v1, 0x1

    .line 36
    .local v1, "result":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 37
    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    const/4 v1, 0x0

    .line 39
    goto :goto_1

    .line 36
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return v1
.end method


# virtual methods
.method public createCursor(ISSLcom/wuyouwin/xserver/Pixmap;Lcom/wuyouwin/xserver/Pixmap;)Lcom/wuyouwin/xserver/Cursor;
    .locals 13
    .param p1, "id"    # I
    .param p2, "x"    # S
    .param p3, "y"    # S
    .param p4, "sourcePixmap"    # Lcom/wuyouwin/xserver/Pixmap;
    .param p5, "maskPixmap"    # Lcom/wuyouwin/xserver/Pixmap;

    .line 20
    move-object v0, p0

    move v8, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    iget-object v1, v0, Lcom/wuyouwin/xserver/CursorManager;->cursors:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    return-object v2

    .line 21
    :cond_0
    iget-object v1, v0, Lcom/wuyouwin/xserver/CursorManager;->drawableManager:Lcom/wuyouwin/xserver/DrawableManager;

    iget-object v3, v9, Lcom/wuyouwin/xserver/Pixmap;->drawable:Lcom/wuyouwin/xserver/Drawable;

    iget-short v3, v3, Lcom/wuyouwin/xserver/Drawable;->width:S

    iget-object v4, v9, Lcom/wuyouwin/xserver/Pixmap;->drawable:Lcom/wuyouwin/xserver/Drawable;

    iget-short v4, v4, Lcom/wuyouwin/xserver/Drawable;->height:S

    iget-object v5, v9, Lcom/wuyouwin/xserver/Pixmap;->drawable:Lcom/wuyouwin/xserver/Drawable;

    iget-object v5, v5, Lcom/wuyouwin/xserver/Drawable;->visual:Lcom/wuyouwin/xserver/Visual;

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3, v4, v5}, Lcom/wuyouwin/xserver/DrawableManager;->createDrawable(ISSLcom/wuyouwin/xserver/Visual;)Lcom/wuyouwin/xserver/Drawable;

    move-result-object v11

    .line 22
    .local v11, "drawable":Lcom/wuyouwin/xserver/Drawable;
    new-instance v12, Lcom/wuyouwin/xserver/Cursor;

    iget-object v6, v9, Lcom/wuyouwin/xserver/Pixmap;->drawable:Lcom/wuyouwin/xserver/Drawable;

    if-eqz v10, :cond_1

    iget-object v1, v10, Lcom/wuyouwin/xserver/Pixmap;->drawable:Lcom/wuyouwin/xserver/Drawable;

    move-object v7, v1

    goto :goto_0

    :cond_1
    move-object v7, v2

    :goto_0
    move-object v1, v12

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move-object v5, v11

    invoke-direct/range {v1 .. v7}, Lcom/wuyouwin/xserver/Cursor;-><init>(IIILcom/wuyouwin/xserver/Drawable;Lcom/wuyouwin/xserver/Drawable;Lcom/wuyouwin/xserver/Drawable;)V

    .line 23
    .local v1, "cursor":Lcom/wuyouwin/xserver/Cursor;
    iget-object v2, v0, Lcom/wuyouwin/xserver/CursorManager;->cursors:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    invoke-virtual {p0, v1}, Lcom/wuyouwin/xserver/XResourceManager;->triggerOnCreateResourceListener(Lcom/wuyouwin/xserver/XResource;)V

    .line 25
    return-object v1
.end method

.method public freeCursor(I)V
    .locals 1
    .param p1, "id"    # I

    .line 29
    iget-object v0, p0, Lcom/wuyouwin/xserver/CursorManager;->cursors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/xserver/XResource;

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/XResourceManager;->triggerOnFreeResourceListener(Lcom/wuyouwin/xserver/XResource;)V

    .line 30
    iget-object v0, p0, Lcom/wuyouwin/xserver/CursorManager;->cursors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 31
    return-void
.end method

.method public getCursor(I)Lcom/wuyouwin/xserver/Cursor;
    .locals 1
    .param p1, "id"    # I

    .line 16
    iget-object v0, p0, Lcom/wuyouwin/xserver/CursorManager;->cursors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/xserver/Cursor;

    return-object v0
.end method

.method public recolorCursor(Lcom/wuyouwin/xserver/Cursor;BBBBBB)V
    .locals 11
    .param p1, "cursor"    # Lcom/wuyouwin/xserver/Cursor;
    .param p2, "foreRed"    # B
    .param p3, "foreGreen"    # B
    .param p4, "foreBlue"    # B
    .param p5, "backRed"    # B
    .param p6, "backGreen"    # B
    .param p7, "backBlue"    # B

    .line 46
    move-object v0, p1

    iget-object v1, v0, Lcom/wuyouwin/xserver/Cursor;->maskImage:Lcom/wuyouwin/xserver/Drawable;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, v0, Lcom/wuyouwin/xserver/Cursor;->maskImage:Lcom/wuyouwin/xserver/Drawable;

    invoke-static {v1}, Lcom/wuyouwin/xserver/CursorManager;->isEmptyMaskImage(Lcom/wuyouwin/xserver/Drawable;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 48
    .local v1, "visible":Z
    invoke-virtual {p1, v1}, Lcom/wuyouwin/xserver/Cursor;->setVisible(Z)V

    .line 49
    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/wuyouwin/xserver/Cursor;->cursorImage:Lcom/wuyouwin/xserver/Drawable;

    iget-object v9, v0, Lcom/wuyouwin/xserver/Cursor;->sourceImage:Lcom/wuyouwin/xserver/Drawable;

    iget-object v10, v0, Lcom/wuyouwin/xserver/Cursor;->maskImage:Lcom/wuyouwin/xserver/Drawable;

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v2 .. v10}, Lcom/wuyouwin/xserver/Drawable;->drawAlphaMaskedBitmap(BBBBBBLcom/wuyouwin/xserver/Drawable;Lcom/wuyouwin/xserver/Drawable;)V

    .line 51
    .end local v1    # "visible":Z
    :cond_0
    return-void
.end method
