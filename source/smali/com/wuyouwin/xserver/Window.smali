.class public Lcom/wuyouwin/xserver/Window;
.super Lcom/wuyouwin/xserver/XResource;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/xserver/Window$WMHints;,
        Lcom/wuyouwin/xserver/Window$Type;,
        Lcom/wuyouwin/xserver/Window$MapState;,
        Lcom/wuyouwin/xserver/Window$StackMode;
    }
.end annotation


# instance fields
.field public final attributes:Lcom/wuyouwin/xserver/WindowAttributes;

.field private borderWidth:S

.field private final children:Ljava/util/ArrayList;

.field private content:Lcom/wuyouwin/xserver/Drawable;

.field private final eventListeners:Ljava/util/ArrayList;

.field private fullscreenTransformation:Lcom/wuyouwin/renderer/FullscreenTransformation;

.field private height:S

.field private final immutableChildren:Ljava/util/List;

.field public final originClient:Lcom/wuyouwin/xserver/XClient;

.field private parent:Lcom/wuyouwin/xserver/Window;

.field private final properties:Landroid/util/SparseArray;

.field private tags:Landroid/util/ArrayMap;

.field private width:S

.field private x:S

.field private y:S


# direct methods
.method public constructor <init>(ILcom/wuyouwin/xserver/Drawable;IIIILcom/wuyouwin/xserver/XClient;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "content"    # Lcom/wuyouwin/xserver/Drawable;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "originClient"    # Lcom/wuyouwin/xserver/XClient;

    .line 45
    invoke-direct {p0, p1}, Lcom/wuyouwin/xserver/XResource;-><init>(I)V

    .line 37
    new-instance v0, Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-direct {v0, p0}, Lcom/wuyouwin/xserver/WindowAttributes;-><init>(Lcom/wuyouwin/xserver/Window;)V

    iput-object v0, p0, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/xserver/Window;->properties:Landroid/util/SparseArray;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/xserver/Window;->children:Ljava/util/ArrayList;

    .line 40
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wuyouwin/xserver/Window;->immutableChildren:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/xserver/Window;->eventListeners:Ljava/util/ArrayList;

    .line 46
    iput-object p2, p0, Lcom/wuyouwin/xserver/Window;->content:Lcom/wuyouwin/xserver/Drawable;

    .line 47
    int-to-short v0, p3

    iput-short v0, p0, Lcom/wuyouwin/xserver/Window;->x:S

    .line 48
    int-to-short v0, p4

    iput-short v0, p0, Lcom/wuyouwin/xserver/Window;->y:S

    .line 49
    int-to-short v0, p5

    iput-short v0, p0, Lcom/wuyouwin/xserver/Window;->width:S

    .line 50
    int-to-short v0, p6

    iput-short v0, p0, Lcom/wuyouwin/xserver/Window;->height:S

    .line 51
    iput-object p7, p0, Lcom/wuyouwin/xserver/Window;->originClient:Lcom/wuyouwin/xserver/XClient;

    .line 52
    return-void
.end method


# virtual methods
.method public addChild(Lcom/wuyouwin/xserver/Window;)V
    .locals 1
    .param p1, "child"    # Lcom/wuyouwin/xserver/Window;

    .line 250
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/wuyouwin/xserver/Window;->parent:Lcom/wuyouwin/xserver/Window;

    if-ne v0, p0, :cond_1

    :cond_0
    goto :goto_0

    .line 251
    :cond_1
    iput-object p0, p1, Lcom/wuyouwin/xserver/Window;->parent:Lcom/wuyouwin/xserver/Window;

    .line 252
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    return-void

    .line 250
    :goto_0
    return-void
.end method

.method public addEventListener(Lcom/wuyouwin/xserver/EventListener;)V
    .locals 1
    .param p1, "eventListener"    # Lcom/wuyouwin/xserver/EventListener;

    .line 302
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->eventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    return-void
.end method

.method public addProperty(Lcom/wuyouwin/xserver/Property;)V
    .locals 2
    .param p1, "property"    # Lcom/wuyouwin/xserver/Property;

    .line 135
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->properties:Landroid/util/SparseArray;

    iget v1, p1, Lcom/wuyouwin/xserver/Property;->name:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    return-void
.end method

.method public containsPoint(SSZ)Z
    .locals 6
    .param p1, "rootX"    # S
    .param p2, "rootY"    # S
    .param p3, "useFullscreenTransformation"    # Z

    .line 368
    invoke-virtual {p0, p1, p2, p3}, Lcom/wuyouwin/xserver/Window;->rootPointToLocal(SSZ)[S

    move-result-object v0

    .line 369
    .local v0, "localPoint":[S
    iget-object v1, p0, Lcom/wuyouwin/xserver/Window;->fullscreenTransformation:Lcom/wuyouwin/renderer/FullscreenTransformation;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/wuyouwin/xserver/Window;->fullscreenTransformation:Lcom/wuyouwin/renderer/FullscreenTransformation;

    iget-short v1, v1, Lcom/wuyouwin/renderer/FullscreenTransformation;->width:S

    goto :goto_0

    :cond_0
    iget-short v1, p0, Lcom/wuyouwin/xserver/Window;->width:S

    .line 370
    .local v1, "width":S
    :goto_0
    iget-object v2, p0, Lcom/wuyouwin/xserver/Window;->fullscreenTransformation:Lcom/wuyouwin/renderer/FullscreenTransformation;

    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/wuyouwin/xserver/Window;->fullscreenTransformation:Lcom/wuyouwin/renderer/FullscreenTransformation;

    iget-short v2, v2, Lcom/wuyouwin/renderer/FullscreenTransformation;->height:S

    goto :goto_1

    :cond_1
    iget-short v2, p0, Lcom/wuyouwin/xserver/Window;->height:S

    .line 371
    .local v2, "height":S
    :goto_1
    const/4 v3, 0x0

    aget-short v4, v0, v3

    if-ltz v4, :cond_2

    const/4 v4, 0x1

    aget-short v5, v0, v4

    if-ltz v5, :cond_2

    aget-short v5, v0, v3

    if-gt v5, v1, :cond_2

    aget-short v5, v0, v4

    if-gt v5, v2, :cond_2

    move v3, v4

    :cond_2
    return v3
.end method

.method public disableAllDescendants()V
    .locals 4

    .line 500
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 501
    .local v0, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/wuyouwin/xserver/Window;>;"
    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    :goto_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 503
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/Window;

    .line 504
    .local v1, "window":Lcom/wuyouwin/xserver/Window;
    iget-object v2, v1, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/wuyouwin/xserver/WindowAttributes;->setEnabled(Z)V

    .line 505
    iget-object v2, v1, Lcom/wuyouwin/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 506
    .end local v1    # "window":Lcom/wuyouwin/xserver/Window;
    goto :goto_0

    .line 507
    :cond_0
    return-void
.end method

.method public getAllEventMasks()Lcom/wuyouwin/core/Bitmask;
    .locals 4

    .line 487
    new-instance v0, Lcom/wuyouwin/core/Bitmask;

    invoke-direct {v0}, Lcom/wuyouwin/core/Bitmask;-><init>()V

    .line 488
    .local v0, "eventMask":Lcom/wuyouwin/core/Bitmask;
    iget-object v1, p0, Lcom/wuyouwin/xserver/Window;->eventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wuyouwin/xserver/EventListener;

    .local v2, "eventListener":Lcom/wuyouwin/xserver/EventListener;
    iget-object v3, v2, Lcom/wuyouwin/xserver/EventListener;->eventMask:Lcom/wuyouwin/core/Bitmask;

    invoke-virtual {v0, v3}, Lcom/wuyouwin/core/Bitmask;->join(Lcom/wuyouwin/core/Bitmask;)V

    .end local v2    # "eventListener":Lcom/wuyouwin/xserver/EventListener;
    goto :goto_0

    .line 489
    :cond_0
    return-object v0
.end method

.method public getAncestorWithEventId(I)Lcom/wuyouwin/xserver/Window;
    .locals 1
    .param p1, "eventId"    # I

    .line 441
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/wuyouwin/xserver/Window;->getAncestorWithEventId(ILcom/wuyouwin/xserver/Window;)Lcom/wuyouwin/xserver/Window;

    move-result-object v0

    return-object v0
.end method

.method public getAncestorWithEventId(ILcom/wuyouwin/xserver/Window;)Lcom/wuyouwin/xserver/Window;
    .locals 3
    .param p1, "eventId"    # I
    .param p2, "endWindow"    # Lcom/wuyouwin/xserver/Window;

    .line 445
    move-object v0, p0

    .line 446
    .local v0, "window":Lcom/wuyouwin/xserver/Window;
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 447
    invoke-virtual {v0, p1}, Lcom/wuyouwin/xserver/Window;->hasEventListenerFor(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 448
    :cond_0
    if-eq v0, p2, :cond_1

    iget-object v2, v0, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v2}, Lcom/wuyouwin/xserver/WindowAttributes;->getDoNotPropagateMask()Lcom/wuyouwin/core/Bitmask;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/wuyouwin/core/Bitmask;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    goto :goto_1

    .line 449
    :cond_2
    iget-object v0, v0, Lcom/wuyouwin/xserver/Window;->parent:Lcom/wuyouwin/xserver/Window;

    goto :goto_0

    .line 448
    :goto_1
    return-object v1

    .line 451
    :cond_3
    return-object v1
.end method

.method public getAncestorWithEventMask(Lcom/wuyouwin/core/Bitmask;)Lcom/wuyouwin/xserver/Window;
    .locals 3
    .param p1, "eventMask"    # Lcom/wuyouwin/core/Bitmask;

    .line 431
    move-object v0, p0

    .line 432
    .local v0, "window":Lcom/wuyouwin/xserver/Window;
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 433
    invoke-virtual {v0, p1}, Lcom/wuyouwin/xserver/Window;->hasEventListenerFor(Lcom/wuyouwin/core/Bitmask;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 434
    :cond_0
    iget-object v2, v0, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v2}, Lcom/wuyouwin/xserver/WindowAttributes;->getDoNotPropagateMask()Lcom/wuyouwin/core/Bitmask;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/wuyouwin/core/Bitmask;->intersects(Lcom/wuyouwin/core/Bitmask;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 435
    :cond_1
    iget-object v0, v0, Lcom/wuyouwin/xserver/Window;->parent:Lcom/wuyouwin/xserver/Window;

    goto :goto_0

    .line 437
    :cond_2
    return-object v1
.end method

.method public getBorderWidth()S
    .locals 1

    .line 87
    iget-short v0, p0, Lcom/wuyouwin/xserver/Window;->borderWidth:S

    return v0
.end method

.method public getButtonPressListener()Lcom/wuyouwin/xserver/EventListener;
    .locals 3

    .line 493
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->eventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/EventListener;

    .line 494
    .local v1, "eventListener":Lcom/wuyouwin/xserver/EventListener;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/wuyouwin/xserver/EventListener;->isInterestedIn(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 495
    .end local v1    # "eventListener":Lcom/wuyouwin/xserver/EventListener;
    :cond_0
    goto :goto_0

    .line 496
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildAt(I)Lcom/wuyouwin/xserver/Window;
    .locals 1
    .param p1, "index"    # I

    .line 298
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/xserver/Window;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChildByCoords(SS)Lcom/wuyouwin/xserver/Window;
    .locals 1
    .param p1, "x"    # S
    .param p2, "y"    # S

    .line 464
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/wuyouwin/xserver/Window;->getChildByCoords(SSZ)Lcom/wuyouwin/xserver/Window;

    move-result-object v0

    return-object v0
.end method

.method public getChildByCoords(SSZ)Lcom/wuyouwin/xserver/Window;
    .locals 3
    .param p1, "x"    # S
    .param p2, "y"    # S
    .param p3, "useFullscreenTransformation"    # Z

    .line 468
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 469
    iget-object v1, p0, Lcom/wuyouwin/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/Window;

    .line 470
    .local v1, "child":Lcom/wuyouwin/xserver/Window;
    iget-object v2, v1, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v2}, Lcom/wuyouwin/xserver/WindowAttributes;->isMapped()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Lcom/wuyouwin/xserver/Window;->containsPoint(SSZ)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 468
    .end local v1    # "child":Lcom/wuyouwin/xserver/Window;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 472
    .end local v0    # "i":I
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->immutableChildren:Ljava/util/List;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

    .line 180
    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/Window;->getProperty(I)Lcom/wuyouwin/xserver/Property;

    move-result-object v0

    .line 181
    .local v0, "property":Lcom/wuyouwin/xserver/Property;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/Property;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public getContent()Lcom/wuyouwin/xserver/Drawable;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->content:Lcom/wuyouwin/xserver/Drawable;

    return-object v0
.end method

.method public getDecorations()Lcom/wuyouwin/core/Bitmask;
    .locals 3

    .line 218
    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/Window;->getProperty(I)Lcom/wuyouwin/xserver/Property;

    move-result-object v0

    .line 219
    .local v0, "property":Lcom/wuyouwin/xserver/Property;
    new-instance v1, Lcom/wuyouwin/core/Bitmask;

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/wuyouwin/xserver/Property;->getInt(I)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v2}, Lcom/wuyouwin/core/Bitmask;-><init>(I)V

    return-object v1
.end method

.method public getFullscreenTransformation()Lcom/wuyouwin/renderer/FullscreenTransformation;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->fullscreenTransformation:Lcom/wuyouwin/renderer/FullscreenTransformation;

    return-object v0
.end method

.method public getHandle()J
    .locals 3

    .line 236
    const/16 v0, 0x48

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/Window;->getProperty(I)Lcom/wuyouwin/xserver/Property;

    move-result-object v0

    .line 237
    .local v0, "property":Lcom/wuyouwin/xserver/Property;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xserver/Property;->getLong(I)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method public getHeight()S
    .locals 1

    .line 79
    iget-short v0, p0, Lcom/wuyouwin/xserver/Window;->height:S

    return v0
.end method

.method public getMapState()Lcom/wuyouwin/xserver/Window$MapState;
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/WindowAttributes;->isMapped()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/wuyouwin/xserver/Window$MapState;->UNMAPPED:Lcom/wuyouwin/xserver/Window$MapState;

    return-object v0

    .line 477
    :cond_0
    move-object v0, p0

    .line 479
    .local v0, "window":Lcom/wuyouwin/xserver/Window;
    :cond_1
    iget-object v0, v0, Lcom/wuyouwin/xserver/Window;->parent:Lcom/wuyouwin/xserver/Window;

    .line 480
    if-nez v0, :cond_2

    sget-object v1, Lcom/wuyouwin/xserver/Window$MapState;->VIEWABLE:Lcom/wuyouwin/xserver/Window$MapState;

    return-object v1

    .line 482
    :cond_2
    iget-object v1, v0, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v1}, Lcom/wuyouwin/xserver/WindowAttributes;->isMapped()Z

    move-result v1

    if-nez v1, :cond_1

    .line 483
    sget-object v1, Lcom/wuyouwin/xserver/Window$MapState;->UNVIEWABLE:Lcom/wuyouwin/xserver/Window$MapState;

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 175
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/Window;->getProperty(I)Lcom/wuyouwin/xserver/Property;

    move-result-object v0

    .line 176
    .local v0, "property":Lcom/wuyouwin/xserver/Property;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/Property;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public getParent()Lcom/wuyouwin/xserver/Window;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->parent:Lcom/wuyouwin/xserver/Window;

    return-object v0
.end method

.method public getProcessId()I
    .locals 2

    .line 190
    const/16 v0, 0x46

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/Window;->getProperty(I)Lcom/wuyouwin/xserver/Property;

    move-result-object v0

    .line 191
    .local v0, "property":Lcom/wuyouwin/xserver/Property;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xserver/Property;->getInt(I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public getProperty(I)Lcom/wuyouwin/xserver/Property;
    .locals 1
    .param p1, "id"    # I

    .line 131
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->properties:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/xserver/Property;

    return-object v0
.end method

.method public getRootX()S
    .locals 1

    .line 403
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/Window;->getRootX(Z)S

    move-result v0

    return v0
.end method

.method public getRootX(Z)S
    .locals 3
    .param p1, "useFullscreenTransformation"    # Z

    .line 407
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->fullscreenTransformation:Lcom/wuyouwin/renderer/FullscreenTransformation;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->fullscreenTransformation:Lcom/wuyouwin/renderer/FullscreenTransformation;

    iget-short v0, v0, Lcom/wuyouwin/renderer/FullscreenTransformation;->x:S

    goto :goto_0

    :cond_0
    iget-short v0, p0, Lcom/wuyouwin/xserver/Window;->x:S

    .line 408
    .local v0, "rootX":S
    :goto_0
    iget-object v1, p0, Lcom/wuyouwin/xserver/Window;->parent:Lcom/wuyouwin/xserver/Window;

    .line 409
    .local v1, "window":Lcom/wuyouwin/xserver/Window;
    :goto_1
    if-eqz v1, :cond_2

    .line 410
    iget-object v2, v1, Lcom/wuyouwin/xserver/Window;->fullscreenTransformation:Lcom/wuyouwin/renderer/FullscreenTransformation;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, v1, Lcom/wuyouwin/xserver/Window;->fullscreenTransformation:Lcom/wuyouwin/renderer/FullscreenTransformation;

    iget-short v2, v2, Lcom/wuyouwin/renderer/FullscreenTransformation;->x:S

    goto :goto_2

    :cond_1
    iget-short v2, v1, Lcom/wuyouwin/xserver/Window;->x:S

    :goto_2
    add-int/2addr v2, v0

    int-to-short v0, v2

    .line 411
    iget-object v1, v1, Lcom/wuyouwin/xserver/Window;->parent:Lcom/wuyouwin/xserver/Window;

    goto :goto_1

    .line 413
    :cond_2
    return v0
.end method

.method public getRootY()S
    .locals 1

    .line 417
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/Window;->getRootY(Z)S

    move-result v0

    return v0
.end method

.method public getRootY(Z)S
    .locals 3
    .param p1, "useFullscreenTransformation"    # Z

    .line 421
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->fullscreenTransformation:Lcom/wuyouwin/renderer/FullscreenTransformation;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->fullscreenTransformation:Lcom/wuyouwin/renderer/FullscreenTransformation;

    iget-short v0, v0, Lcom/wuyouwin/renderer/FullscreenTransformation;->y:S

    goto :goto_0

    :cond_0
    iget-short v0, p0, Lcom/wuyouwin/xserver/Window;->y:S

    .line 422
    .local v0, "rootY":S
    :goto_0
    iget-object v1, p0, Lcom/wuyouwin/xserver/Window;->parent:Lcom/wuyouwin/xserver/Window;

    .line 423
    .local v1, "window":Lcom/wuyouwin/xserver/Window;
    :goto_1
    if-eqz v1, :cond_2

    .line 424
    iget-object v2, v1, Lcom/wuyouwin/xserver/Window;->fullscreenTransformation:Lcom/wuyouwin/renderer/FullscreenTransformation;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, v1, Lcom/wuyouwin/xserver/Window;->fullscreenTransformation:Lcom/wuyouwin/renderer/FullscreenTransformation;

    iget-short v2, v2, Lcom/wuyouwin/renderer/FullscreenTransformation;->y:S

    goto :goto_2

    :cond_1
    iget-short v2, v1, Lcom/wuyouwin/xserver/Window;->y:S

    :goto_2
    add-int/2addr v2, v0

    int-to-short v0, v2

    .line 425
    iget-object v1, v1, Lcom/wuyouwin/xserver/Window;->parent:Lcom/wuyouwin/xserver/Window;

    goto :goto_1

    .line 427
    :cond_2
    return v0
.end method

.method public getTag(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/wuyouwin/xserver/Window;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fallback"    # Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->tags:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/xserver/Window;->tags:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->tags:Landroid/util/ArrayMap;

    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTransientFor()I
    .locals 2

    .line 195
    const/16 v0, 0x44

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/Window;->getProperty(I)Lcom/wuyouwin/xserver/Property;

    move-result-object v0

    .line 196
    .local v0, "property":Lcom/wuyouwin/xserver/Property;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xserver/Property;->getInt(I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public getType()Lcom/wuyouwin/xserver/Window$Type;
    .locals 3

    .line 231
    const/16 v0, 0x47

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/Window;->getProperty(I)Lcom/wuyouwin/xserver/Property;

    move-result-object v0

    .line 232
    .local v0, "property":Lcom/wuyouwin/xserver/Property;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/Property;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_NET_WM_WINDOW_TYPE_DIALOG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/wuyouwin/xserver/Window$Type;->DIALOG:Lcom/wuyouwin/xserver/Window$Type;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/wuyouwin/xserver/Window$Type;->NORMAL:Lcom/wuyouwin/xserver/Window$Type;

    :goto_0
    return-object v1
.end method

.method public getWMHintsValue(Lcom/wuyouwin/xserver/Window$WMHints;)I
    .locals 2
    .param p1, "wmHints"    # Lcom/wuyouwin/xserver/Window$WMHints;

    .line 185
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/Window;->getProperty(I)Lcom/wuyouwin/xserver/Property;

    move-result-object v0

    .line 186
    .local v0, "property":Lcom/wuyouwin/xserver/Property;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xserver/Property;->getInt(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getWidth()S
    .locals 1

    .line 71
    iget-short v0, p0, Lcom/wuyouwin/xserver/Window;->width:S

    return v0
.end method

.method public getX()S
    .locals 1

    .line 55
    iget-short v0, p0, Lcom/wuyouwin/xserver/Window;->x:S

    return v0
.end method

.method public getY()S
    .locals 1

    .line 63
    iget-short v0, p0, Lcom/wuyouwin/xserver/Window;->y:S

    return v0
.end method

.method public hasDecoration(Lcom/wuyouwin/xserver/Decoration;)Z
    .locals 2
    .param p1, "decoration"    # Lcom/wuyouwin/xserver/Decoration;

    .line 227
    invoke-virtual {p0}, Lcom/wuyouwin/xserver/Window;->getDecorations()Lcom/wuyouwin/core/Bitmask;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Decoration;->flag()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wuyouwin/core/Bitmask;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public hasEventListenerFor(I)Z
    .locals 3
    .param p1, "eventId"    # I

    .line 310
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->eventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/EventListener;

    .line 311
    .local v1, "eventListener":Lcom/wuyouwin/xserver/EventListener;
    invoke-virtual {v1, p1}, Lcom/wuyouwin/xserver/EventListener;->isInterestedIn(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 312
    .end local v1    # "eventListener":Lcom/wuyouwin/xserver/EventListener;
    :cond_0
    goto :goto_0

    .line 313
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasEventListenerFor(Lcom/wuyouwin/core/Bitmask;)Z
    .locals 3
    .param p1, "mask"    # Lcom/wuyouwin/core/Bitmask;

    .line 317
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->eventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/EventListener;

    .line 318
    .local v1, "eventListener":Lcom/wuyouwin/xserver/EventListener;
    invoke-virtual {v1, p1}, Lcom/wuyouwin/xserver/EventListener;->isInterestedIn(Lcom/wuyouwin/core/Bitmask;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 319
    .end local v1    # "eventListener":Lcom/wuyouwin/xserver/EventListener;
    :cond_0
    goto :goto_0

    .line 320
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasNoDecorations()Z
    .locals 1

    .line 223
    invoke-virtual {p0}, Lcom/wuyouwin/xserver/Window;->getDecorations()Lcom/wuyouwin/core/Bitmask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wuyouwin/core/Bitmask;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isAncestorOf(Lcom/wuyouwin/xserver/Window;)Z
    .locals 1
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;

    .line 455
    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    return v0

    .line 456
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 457
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 458
    :cond_1
    iget-object p1, p1, Lcom/wuyouwin/xserver/Window;->parent:Lcom/wuyouwin/xserver/Window;

    goto :goto_0

    .line 460
    :cond_2
    return v0
.end method

.method public isApplicationWindow()Z
    .locals 2

    .line 241
    sget-object v0, Lcom/wuyouwin/xserver/Window$WMHints;->WINDOW_GROUP:Lcom/wuyouwin/xserver/Window$WMHints;

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/Window;->getWMHintsValue(Lcom/wuyouwin/xserver/Window$WMHints;)I

    move-result v0

    .line 242
    .local v0, "windowGroup":I
    invoke-virtual {p0}, Lcom/wuyouwin/xserver/Window;->isRenderable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/wuyouwin/xserver/Window;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/wuyouwin/xserver/XResource;->id:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isDesktopWindow()Z
    .locals 2

    .line 210
    invoke-virtual {p0}, Lcom/wuyouwin/xserver/Window;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "explorer.exe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDialogBox()Z
    .locals 2

    .line 214
    invoke-virtual {p0}, Lcom/wuyouwin/xserver/Window;->getType()Lcom/wuyouwin/xserver/Window$Type;

    move-result-object v0

    sget-object v1, Lcom/wuyouwin/xserver/Window$Type;->DIALOG:Lcom/wuyouwin/xserver/Window$Type;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/wuyouwin/xserver/Window;->getTransientFor()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/wuyouwin/xserver/Decoration;->TITLE:Lcom/wuyouwin/xserver/Decoration;

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/Window;->hasDecoration(Lcom/wuyouwin/xserver/Decoration;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/wuyouwin/xserver/Decoration;->MINIMIZE:Lcom/wuyouwin/xserver/Decoration;

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/Window;->hasDecoration(Lcom/wuyouwin/xserver/Decoration;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wuyouwin/xserver/Decoration;->MAXIMIZE:Lcom/wuyouwin/xserver/Decoration;

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/Window;->hasDecoration(Lcom/wuyouwin/xserver/Decoration;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIconic()Z
    .locals 3

    .line 527
    const/4 v0, 0x3

    .line 528
    .local v0, "iconicState":I
    sget-object v1, Lcom/wuyouwin/xserver/Window$WMHints;->INITIAL_STATE:Lcom/wuyouwin/xserver/Window$WMHints;

    invoke-virtual {p0, v1}, Lcom/wuyouwin/xserver/Window;->getWMHintsValue(Lcom/wuyouwin/xserver/Window$WMHints;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-short v1, p0, Lcom/wuyouwin/xserver/Window;->height:S

    const/16 v2, 0x20

    if-gt v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public isInputOutput()Z
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->content:Lcom/wuyouwin/xserver/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLayered()Z
    .locals 3

    .line 532
    const/high16 v0, 0x10000

    .line 533
    .local v0, "WindowLayeredHint":I
    sget-object v1, Lcom/wuyouwin/xserver/Window$WMHints;->FLAGS:Lcom/wuyouwin/xserver/Window$WMHints;

    invoke-virtual {p0, v1}, Lcom/wuyouwin/xserver/Window;->getWMHintsValue(Lcom/wuyouwin/xserver/Window$WMHints;)I

    move-result v1

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRenderable()Z
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/WindowAttributes;->isMapped()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-short v0, p0, Lcom/wuyouwin/xserver/Window;->width:S

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-short v0, p0, Lcom/wuyouwin/xserver/Window;->height:S

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/wuyouwin/xserver/Window;->isInputOutput()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSurface()Z
    .locals 4

    .line 205
    const/16 v0, 0x4a

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/Window;->getProperty(I)Lcom/wuyouwin/xserver/Property;

    move-result-object v0

    .line 206
    .local v0, "property":Lcom/wuyouwin/xserver/Property;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/wuyouwin/xserver/Property;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method public isWoW64()Z
    .locals 4

    .line 200
    const/16 v0, 0x49

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/Window;->getProperty(I)Lcom/wuyouwin/xserver/Property;

    move-result-object v0

    .line 201
    .local v0, "property":Lcom/wuyouwin/xserver/Property;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/wuyouwin/xserver/Property;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method public localPointToRoot(SS)[S
    .locals 1
    .param p1, "x"    # S
    .param p2, "y"    # S

    .line 389
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/wuyouwin/xserver/Window;->localPointToRoot(SSZ)[S

    move-result-object v0

    return-object v0
.end method

.method public localPointToRoot(SSZ)[S
    .locals 3
    .param p1, "x"    # S
    .param p2, "y"    # S
    .param p3, "useFullscreenTransformation"    # Z

    .line 393
    move-object v0, p0

    .line 394
    .local v0, "window":Lcom/wuyouwin/xserver/Window;
    :goto_0
    if-eqz v0, :cond_2

    .line 395
    iget-object v1, v0, Lcom/wuyouwin/xserver/Window;->fullscreenTransformation:Lcom/wuyouwin/renderer/FullscreenTransformation;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, v0, Lcom/wuyouwin/xserver/Window;->fullscreenTransformation:Lcom/wuyouwin/renderer/FullscreenTransformation;

    iget-short v1, v1, Lcom/wuyouwin/renderer/FullscreenTransformation;->x:S

    goto :goto_1

    :cond_0
    iget-short v1, v0, Lcom/wuyouwin/xserver/Window;->x:S

    :goto_1
    add-int/2addr v1, p1

    int-to-short p1, v1

    .line 396
    iget-object v1, v0, Lcom/wuyouwin/xserver/Window;->fullscreenTransformation:Lcom/wuyouwin/renderer/FullscreenTransformation;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    iget-object v1, v0, Lcom/wuyouwin/xserver/Window;->fullscreenTransformation:Lcom/wuyouwin/renderer/FullscreenTransformation;

    iget-short v1, v1, Lcom/wuyouwin/renderer/FullscreenTransformation;->y:S

    goto :goto_2

    :cond_1
    iget-short v1, v0, Lcom/wuyouwin/xserver/Window;->y:S

    :goto_2
    add-int/2addr v1, p2

    int-to-short p2, v1

    .line 397
    iget-object v0, v0, Lcom/wuyouwin/xserver/Window;->parent:Lcom/wuyouwin/xserver/Window;

    goto :goto_0

    .line 399
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [S

    const/4 v2, 0x0

    aput-short p1, v1, v2

    const/4 v2, 0x1

    aput-short p2, v1, v2

    return-object v1
.end method

.method public modifyProperty(IILcom/wuyouwin/xserver/Property$Format;Lcom/wuyouwin/xserver/Property$Mode;[B)Lcom/wuyouwin/xserver/Property;
    .locals 4
    .param p1, "atom"    # I
    .param p2, "type"    # I
    .param p3, "format"    # Lcom/wuyouwin/xserver/Property$Format;
    .param p4, "mode"    # Lcom/wuyouwin/xserver/Property$Mode;
    .param p5, "data"    # [B

    .line 144
    invoke-virtual {p0, p1}, Lcom/wuyouwin/xserver/Window;->getProperty(I)Lcom/wuyouwin/xserver/Property;

    move-result-object v0

    .line 145
    .local v0, "property":Lcom/wuyouwin/xserver/Property;
    const/4 v1, 0x0

    .line 146
    .local v1, "modified":Z
    if-nez v0, :cond_0

    .line 147
    new-instance v2, Lcom/wuyouwin/xserver/Property;

    invoke-direct {v2, p1, p2, p3, p5}, Lcom/wuyouwin/xserver/Property;-><init>(IILcom/wuyouwin/xserver/Property$Format;[B)V

    move-object v0, v2

    invoke-virtual {p0, v2}, Lcom/wuyouwin/xserver/Window;->addProperty(Lcom/wuyouwin/xserver/Property;)V

    .line 148
    const/4 v1, 0x1

    goto :goto_2

    .line 150
    :cond_0
    sget-object v2, Lcom/wuyouwin/xserver/Property$Mode;->REPLACE:Lcom/wuyouwin/xserver/Property$Mode;

    if-ne p4, v2, :cond_2

    .line 151
    iget-object v2, v0, Lcom/wuyouwin/xserver/Property;->format:Lcom/wuyouwin/xserver/Property$Format;

    if-ne v2, p3, :cond_1

    .line 152
    invoke-virtual {v0, p5}, Lcom/wuyouwin/xserver/Property;->replace([B)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/wuyouwin/xserver/Window;->properties:Landroid/util/SparseArray;

    new-instance v3, Lcom/wuyouwin/xserver/Property;

    invoke-direct {v3, p1, p2, p3, p5}, Lcom/wuyouwin/xserver/Property;-><init>(IILcom/wuyouwin/xserver/Property$Format;[B)V

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    :goto_0
    const/4 v1, 0x1

    goto :goto_2

    .line 157
    :cond_2
    iget-object v2, v0, Lcom/wuyouwin/xserver/Property;->format:Lcom/wuyouwin/xserver/Property$Format;

    if-ne v2, p3, :cond_5

    iget v2, v0, Lcom/wuyouwin/xserver/Property;->type:I

    if-ne v2, p2, :cond_5

    .line 158
    sget-object v2, Lcom/wuyouwin/xserver/Property$Mode;->PREPEND:Lcom/wuyouwin/xserver/Property$Mode;

    if-ne p4, v2, :cond_3

    .line 159
    invoke-virtual {v0, p5}, Lcom/wuyouwin/xserver/Property;->prepend([B)V

    goto :goto_1

    .line 161
    :cond_3
    sget-object v2, Lcom/wuyouwin/xserver/Property$Mode;->APPEND:Lcom/wuyouwin/xserver/Property$Mode;

    if-ne p4, v2, :cond_4

    .line 162
    invoke-virtual {v0, p5}, Lcom/wuyouwin/xserver/Property;->append([B)V

    .line 164
    :cond_4
    :goto_1
    const/4 v1, 0x1

    .line 167
    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 168
    new-instance v2, Lcom/wuyouwin/xserver/events/PropertyNotify;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/wuyouwin/xserver/events/PropertyNotify;-><init>(Lcom/wuyouwin/xserver/Window;IZ)V

    const/high16 v3, 0x400000

    invoke-virtual {p0, v3, v2}, Lcom/wuyouwin/xserver/Window;->sendEvent(ILcom/wuyouwin/xserver/events/Event;)V

    .line 169
    return-object v0

    .line 171
    :cond_6
    const/4 v2, 0x0

    return-object v2
.end method

.method public moveChildAbove(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Window;)V
    .locals 2
    .param p1, "child"    # Lcom/wuyouwin/xserver/Window;
    .param p2, "sibling"    # Lcom/wuyouwin/xserver/Window;

    .line 274
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 275
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->children:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/wuyouwin/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :goto_0
    return-void
.end method

.method public moveChildBelow(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Window;)V
    .locals 2
    .param p1, "child"    # Lcom/wuyouwin/xserver/Window;
    .param p2, "sibling"    # Lcom/wuyouwin/xserver/Window;

    .line 282
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 283
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->children:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/wuyouwin/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->children:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 287
    :goto_0
    return-void
.end method

.method public previousSibling()Lcom/wuyouwin/xserver/Window;
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->parent:Lcom/wuyouwin/xserver/Window;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->parent:Lcom/wuyouwin/xserver/Window;

    iget-object v0, v0, Lcom/wuyouwin/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 264
    .local v0, "index":I
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/wuyouwin/xserver/Window;->parent:Lcom/wuyouwin/xserver/Window;

    iget-object v1, v1, Lcom/wuyouwin/xserver/Window;->children:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/Window;

    :cond_1
    return-object v1
.end method

.method public removeChild(Lcom/wuyouwin/xserver/Window;)V
    .locals 1
    .param p1, "child"    # Lcom/wuyouwin/xserver/Window;

    .line 256
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/wuyouwin/xserver/Window;->parent:Lcom/wuyouwin/xserver/Window;

    if-eq v0, p0, :cond_1

    :cond_0
    goto :goto_0

    .line 257
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/wuyouwin/xserver/Window;->parent:Lcom/wuyouwin/xserver/Window;

    .line 258
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 259
    return-void

    .line 256
    :goto_0
    return-void
.end method

.method public removeEventListener(Lcom/wuyouwin/xserver/EventListener;)V
    .locals 1
    .param p1, "eventListener"    # Lcom/wuyouwin/xserver/EventListener;

    .line 306
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->eventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 307
    return-void
.end method

.method public removeProperty(I)V
    .locals 2
    .param p1, "id"    # I

    .line 139
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->properties:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 140
    new-instance v0, Lcom/wuyouwin/xserver/events/PropertyNotify;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/wuyouwin/xserver/events/PropertyNotify;-><init>(Lcom/wuyouwin/xserver/Window;IZ)V

    const/high16 v1, 0x400000

    invoke-virtual {p0, v1, v0}, Lcom/wuyouwin/xserver/Window;->sendEvent(ILcom/wuyouwin/xserver/events/Event;)V

    .line 141
    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->tags:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->tags:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_0
    return-void
.end method

.method public rootPointToLocal(SS)[S
    .locals 1
    .param p1, "x"    # S
    .param p2, "y"    # S

    .line 375
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/wuyouwin/xserver/Window;->rootPointToLocal(SSZ)[S

    move-result-object v0

    return-object v0
.end method

.method public rootPointToLocal(SSZ)[S
    .locals 3
    .param p1, "x"    # S
    .param p2, "y"    # S
    .param p3, "useFullscreenTransformation"    # Z

    .line 379
    move-object v0, p0

    .line 380
    .local v0, "window":Lcom/wuyouwin/xserver/Window;
    :goto_0
    if-eqz v0, :cond_2

    .line 381
    iget-object v1, v0, Lcom/wuyouwin/xserver/Window;->fullscreenTransformation:Lcom/wuyouwin/renderer/FullscreenTransformation;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, v0, Lcom/wuyouwin/xserver/Window;->fullscreenTransformation:Lcom/wuyouwin/renderer/FullscreenTransformation;

    iget-short v1, v1, Lcom/wuyouwin/renderer/FullscreenTransformation;->x:S

    goto :goto_1

    :cond_0
    iget-short v1, v0, Lcom/wuyouwin/xserver/Window;->x:S

    :goto_1
    sub-int v1, p1, v1

    int-to-short p1, v1

    .line 382
    iget-object v1, v0, Lcom/wuyouwin/xserver/Window;->fullscreenTransformation:Lcom/wuyouwin/renderer/FullscreenTransformation;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    iget-object v1, v0, Lcom/wuyouwin/xserver/Window;->fullscreenTransformation:Lcom/wuyouwin/renderer/FullscreenTransformation;

    iget-short v1, v1, Lcom/wuyouwin/renderer/FullscreenTransformation;->y:S

    goto :goto_2

    :cond_1
    iget-short v1, v0, Lcom/wuyouwin/xserver/Window;->y:S

    :goto_2
    sub-int v1, p2, v1

    int-to-short p2, v1

    .line 383
    iget-object v0, v0, Lcom/wuyouwin/xserver/Window;->parent:Lcom/wuyouwin/xserver/Window;

    goto :goto_0

    .line 385
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [S

    const/4 v2, 0x0

    aput-short p1, v1, v2

    const/4 v2, 0x1

    aput-short p2, v1, v2

    return-object v1
.end method

.method public sendEvent(ILcom/wuyouwin/xserver/events/Event;)V
    .locals 3
    .param p1, "eventId"    # I
    .param p2, "event"    # Lcom/wuyouwin/xserver/events/Event;

    .line 324
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->eventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/EventListener;

    .line 325
    .local v1, "eventListener":Lcom/wuyouwin/xserver/EventListener;
    invoke-virtual {v1, p1}, Lcom/wuyouwin/xserver/EventListener;->isInterestedIn(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    invoke-virtual {v1, p2}, Lcom/wuyouwin/xserver/EventListener;->sendEvent(Lcom/wuyouwin/xserver/events/Event;)V

    .line 328
    .end local v1    # "eventListener":Lcom/wuyouwin/xserver/EventListener;
    :cond_0
    goto :goto_0

    .line 329
    :cond_1
    return-void
.end method

.method public sendEvent(ILcom/wuyouwin/xserver/events/Event;Lcom/wuyouwin/xserver/XClient;)V
    .locals 3
    .param p1, "eventId"    # I
    .param p2, "event"    # Lcom/wuyouwin/xserver/events/Event;
    .param p3, "client"    # Lcom/wuyouwin/xserver/XClient;

    .line 340
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->eventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/EventListener;

    .line 341
    .local v1, "eventListener":Lcom/wuyouwin/xserver/EventListener;
    invoke-virtual {v1, p1}, Lcom/wuyouwin/xserver/EventListener;->isInterestedIn(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/wuyouwin/xserver/EventListener;->client:Lcom/wuyouwin/xserver/XClient;

    if-ne v2, p3, :cond_0

    .line 342
    invoke-virtual {v1, p2}, Lcom/wuyouwin/xserver/EventListener;->sendEvent(Lcom/wuyouwin/xserver/events/Event;)V

    .line 344
    .end local v1    # "eventListener":Lcom/wuyouwin/xserver/EventListener;
    :cond_0
    goto :goto_0

    .line 345
    :cond_1
    return-void
.end method

.method public sendEvent(Lcom/wuyouwin/core/Bitmask;Lcom/wuyouwin/xserver/events/Event;)V
    .locals 3
    .param p1, "eventMask"    # Lcom/wuyouwin/core/Bitmask;
    .param p2, "event"    # Lcom/wuyouwin/xserver/events/Event;

    .line 332
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->eventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/EventListener;

    .line 333
    .local v1, "eventListener":Lcom/wuyouwin/xserver/EventListener;
    invoke-virtual {v1, p1}, Lcom/wuyouwin/xserver/EventListener;->isInterestedIn(Lcom/wuyouwin/core/Bitmask;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    invoke-virtual {v1, p2}, Lcom/wuyouwin/xserver/EventListener;->sendEvent(Lcom/wuyouwin/xserver/events/Event;)V

    .line 336
    .end local v1    # "eventListener":Lcom/wuyouwin/xserver/EventListener;
    :cond_0
    goto :goto_0

    .line 337
    :cond_1
    return-void
.end method

.method public sendEvent(Lcom/wuyouwin/core/Bitmask;Lcom/wuyouwin/xserver/events/Event;Lcom/wuyouwin/xserver/XClient;)V
    .locals 3
    .param p1, "eventMask"    # Lcom/wuyouwin/core/Bitmask;
    .param p2, "event"    # Lcom/wuyouwin/xserver/events/Event;
    .param p3, "client"    # Lcom/wuyouwin/xserver/XClient;

    .line 348
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->eventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/EventListener;

    .line 349
    .local v1, "eventListener":Lcom/wuyouwin/xserver/EventListener;
    invoke-virtual {v1, p1}, Lcom/wuyouwin/xserver/EventListener;->isInterestedIn(Lcom/wuyouwin/core/Bitmask;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/wuyouwin/xserver/EventListener;->client:Lcom/wuyouwin/xserver/XClient;

    if-ne v2, p3, :cond_0

    .line 350
    invoke-virtual {v1, p2}, Lcom/wuyouwin/xserver/EventListener;->sendEvent(Lcom/wuyouwin/xserver/events/Event;)V

    .line 352
    .end local v1    # "eventListener":Lcom/wuyouwin/xserver/EventListener;
    :cond_0
    goto :goto_0

    .line 353
    :cond_1
    return-void
.end method

.method public sendEvent(Lcom/wuyouwin/xserver/events/Event;)V
    .locals 2
    .param p1, "event"    # Lcom/wuyouwin/xserver/events/Event;

    .line 356
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->eventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/EventListener;

    .local v1, "eventListener":Lcom/wuyouwin/xserver/EventListener;
    invoke-virtual {v1, p1}, Lcom/wuyouwin/xserver/EventListener;->sendEvent(Lcom/wuyouwin/xserver/events/Event;)V

    .end local v1    # "eventListener":Lcom/wuyouwin/xserver/EventListener;
    goto :goto_0

    .line 357
    :cond_0
    return-void
.end method

.method public setBorderWidth(S)V
    .locals 0
    .param p1, "borderWidth"    # S

    .line 91
    iput-short p1, p0, Lcom/wuyouwin/xserver/Window;->borderWidth:S

    .line 92
    return-void
.end method

.method public setContent(Lcom/wuyouwin/xserver/Drawable;)V
    .locals 0
    .param p1, "content"    # Lcom/wuyouwin/xserver/Drawable;

    .line 123
    iput-object p1, p0, Lcom/wuyouwin/xserver/Window;->content:Lcom/wuyouwin/xserver/Drawable;

    .line 124
    return-void
.end method

.method public setFullscreenTransformation(Lcom/wuyouwin/renderer/FullscreenTransformation;)V
    .locals 0
    .param p1, "fullscreenTransformation"    # Lcom/wuyouwin/renderer/FullscreenTransformation;

    .line 523
    iput-object p1, p0, Lcom/wuyouwin/xserver/Window;->fullscreenTransformation:Lcom/wuyouwin/renderer/FullscreenTransformation;

    .line 524
    return-void
.end method

.method public setHeight(S)V
    .locals 0
    .param p1, "height"    # S

    .line 83
    iput-short p1, p0, Lcom/wuyouwin/xserver/Window;->height:S

    .line 84
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->tags:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/xserver/Window;->tags:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/xserver/Window;->tags:Landroid/util/ArrayMap;

    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public setWidth(S)V
    .locals 0
    .param p1, "width"    # S

    .line 75
    iput-short p1, p0, Lcom/wuyouwin/xserver/Window;->width:S

    .line 76
    return-void
.end method

.method public setX(S)V
    .locals 0
    .param p1, "x"    # S

    .line 59
    iput-short p1, p0, Lcom/wuyouwin/xserver/Window;->x:S

    .line 60
    return-void
.end method

.method public setY(S)V
    .locals 0
    .param p1, "y"    # S

    .line 67
    iput-short p1, p0, Lcom/wuyouwin/xserver/Window;->y:S

    .line 68
    return-void
.end method
