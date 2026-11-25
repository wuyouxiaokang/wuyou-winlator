.class public Lcom/wuyouwin/xserver/GraphicsContextManager;
.super Lcom/wuyouwin/xserver/XResourceManager;
.source "GraphicsContextManager.java"


# instance fields
.field private final graphicsContexts:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/wuyouwin/xserver/XResourceManager;-><init>()V

    .line 9
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/xserver/GraphicsContextManager;->graphicsContexts:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public createGraphicsContext(ILcom/wuyouwin/xserver/Drawable;)Lcom/wuyouwin/xserver/GraphicsContext;
    .locals 2
    .param p1, "id"    # I
    .param p2, "drawable"    # Lcom/wuyouwin/xserver/Drawable;

    .line 16
    iget-object v0, p0, Lcom/wuyouwin/xserver/GraphicsContextManager;->graphicsContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 17
    :cond_0
    new-instance v0, Lcom/wuyouwin/xserver/GraphicsContext;

    invoke-direct {v0, p1, p2}, Lcom/wuyouwin/xserver/GraphicsContext;-><init>(ILcom/wuyouwin/xserver/Drawable;)V

    .line 18
    .local v0, "graphicsContext":Lcom/wuyouwin/xserver/GraphicsContext;
    iget-object v1, p0, Lcom/wuyouwin/xserver/GraphicsContextManager;->graphicsContexts:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/XResourceManager;->triggerOnCreateResourceListener(Lcom/wuyouwin/xserver/XResource;)V

    .line 20
    return-object v0
.end method

.method public freeGraphicsContext(I)V
    .locals 1
    .param p1, "id"    # I

    .line 24
    iget-object v0, p0, Lcom/wuyouwin/xserver/GraphicsContextManager;->graphicsContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/xserver/XResource;

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/XResourceManager;->triggerOnFreeResourceListener(Lcom/wuyouwin/xserver/XResource;)V

    .line 25
    iget-object v0, p0, Lcom/wuyouwin/xserver/GraphicsContextManager;->graphicsContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 26
    return-void
.end method

.method public getGraphicsContext(I)Lcom/wuyouwin/xserver/GraphicsContext;
    .locals 1
    .param p1, "id"    # I

    .line 12
    iget-object v0, p0, Lcom/wuyouwin/xserver/GraphicsContextManager;->graphicsContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/xserver/GraphicsContext;

    return-object v0
.end method

.method public updateGraphicsContext(Lcom/wuyouwin/xserver/GraphicsContext;Lcom/wuyouwin/core/Bitmask;Lcom/wuyouwin/xconnector/XInputStream;)V
    .locals 4
    .param p1, "graphicsContext"    # Lcom/wuyouwin/xserver/GraphicsContext;
    .param p2, "valueMask"    # Lcom/wuyouwin/core/Bitmask;
    .param p3, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;

    .line 29
    invoke-virtual {p2}, Lcom/wuyouwin/core/Bitmask;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 30
    .local v1, "index":I
    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 47
    :sswitch_0
    invoke-static {}, Lcom/wuyouwin/xserver/GraphicsContext$SubwindowMode;->values()[Lcom/wuyouwin/xserver/GraphicsContext$SubwindowMode;

    move-result-object v2

    invoke-virtual {p3}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/wuyouwin/xserver/GraphicsContext;->setSubwindowMode(Lcom/wuyouwin/xserver/GraphicsContext$SubwindowMode;)V

    .line 48
    goto :goto_1

    .line 66
    :sswitch_1
    const/4 v2, 0x4

    invoke-virtual {p3, v2}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    goto :goto_1

    .line 44
    :sswitch_2
    invoke-virtual {p3}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/wuyouwin/xserver/GraphicsContext;->setLineWidth(I)V

    .line 45
    goto :goto_1

    .line 41
    :sswitch_3
    invoke-virtual {p3}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/wuyouwin/xserver/GraphicsContext;->setBackground(I)V

    .line 42
    goto :goto_1

    .line 38
    :sswitch_4
    invoke-virtual {p3}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/wuyouwin/xserver/GraphicsContext;->setForeground(I)V

    .line 39
    goto :goto_1

    .line 35
    :sswitch_5
    invoke-virtual {p3}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/wuyouwin/xserver/GraphicsContext;->setPlaneMask(I)V

    .line 36
    goto :goto_1

    .line 32
    :sswitch_6
    invoke-static {}, Lcom/wuyouwin/xserver/GraphicsContext$Function;->values()[Lcom/wuyouwin/xserver/GraphicsContext$Function;

    move-result-object v2

    invoke-virtual {p3}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/wuyouwin/xserver/GraphicsContext;->setFunction(Lcom/wuyouwin/xserver/GraphicsContext$Function;)V

    .line 33
    nop

    .line 69
    .end local v1    # "index":I
    :goto_1
    goto :goto_0

    .line 70
    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x4 -> :sswitch_4
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
        0x20 -> :sswitch_1
        0x40 -> :sswitch_1
        0x80 -> :sswitch_1
        0x100 -> :sswitch_1
        0x200 -> :sswitch_1
        0x400 -> :sswitch_1
        0x800 -> :sswitch_1
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_1
        0x4000 -> :sswitch_1
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_1
        0x80000 -> :sswitch_1
        0x100000 -> :sswitch_1
        0x200000 -> :sswitch_1
        0x400000 -> :sswitch_1
    .end sparse-switch
.end method
