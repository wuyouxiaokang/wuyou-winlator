.class public Lcom/wuyouwin/xserver/WindowManager;
.super Lcom/wuyouwin/xserver/XResourceManager;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;,
        Lcom/wuyouwin/xserver/WindowManager$OnWindowModificationListener;
    }
.end annotation


# instance fields
.field public final drawableManager:Lcom/wuyouwin/xserver/DrawableManager;

.field private focusRevertTo:Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

.field private focusedWindow:Lcom/wuyouwin/xserver/Window;

.field private final onWindowModificationListeners:Ljava/util/ArrayList;

.field public final rootWindow:Lcom/wuyouwin/xserver/Window;

.field private final windows:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$DIpb-S306oSWiBvQAAeRLEKAVpo(Lcom/wuyouwin/xserver/WindowManager;Lcom/wuyouwin/xserver/Window;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/wuyouwin/xserver/WindowManager;->lambda$changeWindowGeometry$1(Lcom/wuyouwin/xserver/Window;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z_Tb4B96U80VuV6uW17zyESeJRw(Lcom/wuyouwin/xserver/WindowManager;Lcom/wuyouwin/xserver/Window;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/wuyouwin/xserver/WindowManager;->lambda$createWindow$0(Lcom/wuyouwin/xserver/Window;)V

    return-void
.end method

.method public constructor <init>(Lcom/wuyouwin/xserver/ScreenInfo;Lcom/wuyouwin/xserver/DrawableManager;)V
    .locals 11
    .param p1, "screenInfo"    # Lcom/wuyouwin/xserver/ScreenInfo;
    .param p2, "drawableManager"    # Lcom/wuyouwin/xserver/DrawableManager;

    .line 49
    invoke-direct {p0}, Lcom/wuyouwin/xserver/XResourceManager;-><init>()V

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/xserver/WindowManager;->windows:Landroid/util/SparseArray;

    .line 30
    sget-object v0, Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;->NONE:Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    iput-object v0, p0, Lcom/wuyouwin/xserver/WindowManager;->focusRevertTo:Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    .line 50
    iput-object p2, p0, Lcom/wuyouwin/xserver/WindowManager;->drawableManager:Lcom/wuyouwin/xserver/DrawableManager;

    .line 51
    invoke-static {}, Lcom/wuyouwin/xserver/IDGenerator;->generate()I

    move-result v0

    .line 52
    .local v0, "id":I
    iget-short v1, p1, Lcom/wuyouwin/xserver/ScreenInfo;->width:S

    iget-short v2, p1, Lcom/wuyouwin/xserver/ScreenInfo;->height:S

    invoke-virtual {p2}, Lcom/wuyouwin/xserver/DrawableManager;->getVisual()Lcom/wuyouwin/xserver/Visual;

    move-result-object v3

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/wuyouwin/xserver/DrawableManager;->createDrawable(ISSLcom/wuyouwin/xserver/Visual;)Lcom/wuyouwin/xserver/Drawable;

    move-result-object v9

    .line 53
    .local v9, "drawable":Lcom/wuyouwin/xserver/Drawable;
    new-instance v10, Lcom/wuyouwin/xserver/Window;

    iget-short v6, p1, Lcom/wuyouwin/xserver/ScreenInfo;->width:S

    iget-short v7, p1, Lcom/wuyouwin/xserver/ScreenInfo;->height:S

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v10

    move v2, v0

    move-object v3, v9

    invoke-direct/range {v1 .. v8}, Lcom/wuyouwin/xserver/Window;-><init>(ILcom/wuyouwin/xserver/Drawable;IIIILcom/wuyouwin/xserver/XClient;)V

    iput-object v10, p0, Lcom/wuyouwin/xserver/WindowManager;->rootWindow:Lcom/wuyouwin/xserver/Window;

    .line 54
    iget-object v1, p0, Lcom/wuyouwin/xserver/WindowManager;->rootWindow:Lcom/wuyouwin/xserver/Window;

    iget-object v1, v1, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/wuyouwin/xserver/WindowAttributes;->setMapped(Z)V

    .line 55
    iget-object v1, p0, Lcom/wuyouwin/xserver/WindowManager;->windows:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/wuyouwin/xserver/WindowManager;->rootWindow:Lcom/wuyouwin/xserver/Window;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    return-void
.end method

.method private changeWindowGeometry(Lcom/wuyouwin/xserver/Window;SSSS)V
    .locals 5
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;
    .param p2, "x"    # S
    .param p3, "y"    # S
    .param p4, "width"    # S
    .param p5, "height"    # S

    .line 199
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->getWidth()S

    move-result v0

    if-ne v0, p4, :cond_0

    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->getHeight()S

    move-result v0

    if-eq v0, p5, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    .line 200
    .local v0, "resized":Z
    :goto_1
    if-eqz v0, :cond_2

    const/high16 v1, 0x40000

    invoke-virtual {p1, v1}, Lcom/wuyouwin/xserver/Window;->hasEventListenerFor(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    new-instance v1, Lcom/wuyouwin/xserver/events/ResizeRequest;

    invoke-direct {v1, p1, p4, p5}, Lcom/wuyouwin/xserver/events/ResizeRequest;-><init>(Lcom/wuyouwin/xserver/Window;SS)V

    const/high16 v2, 0x100000

    invoke-virtual {p1, v2, v1}, Lcom/wuyouwin/xserver/Window;->sendEvent(ILcom/wuyouwin/xserver/events/Event;)V

    .line 202
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->getWidth()S

    move-result p4

    .line 203
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->getHeight()S

    move-result p5

    .line 204
    const/4 v0, 0x0

    .line 207
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->isInputOutput()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 208
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->getContent()Lcom/wuyouwin/xserver/Drawable;

    move-result-object v1

    .line 209
    .local v1, "oldContent":Lcom/wuyouwin/xserver/Drawable;
    iget-object v2, p0, Lcom/wuyouwin/xserver/WindowManager;->drawableManager:Lcom/wuyouwin/xserver/DrawableManager;

    iget v3, v1, Lcom/wuyouwin/xserver/XResource;->id:I

    invoke-virtual {v2, v3}, Lcom/wuyouwin/xserver/DrawableManager;->removeDrawable(I)V

    .line 210
    iget-object v2, p0, Lcom/wuyouwin/xserver/WindowManager;->drawableManager:Lcom/wuyouwin/xserver/DrawableManager;

    iget v3, v1, Lcom/wuyouwin/xserver/XResource;->id:I

    iget-object v4, v1, Lcom/wuyouwin/xserver/Drawable;->visual:Lcom/wuyouwin/xserver/Visual;

    invoke-virtual {v2, v3, p4, p5, v4}, Lcom/wuyouwin/xserver/DrawableManager;->createDrawable(ISSLcom/wuyouwin/xserver/Visual;)Lcom/wuyouwin/xserver/Drawable;

    move-result-object v2

    .line 211
    .local v2, "newContent":Lcom/wuyouwin/xserver/Drawable;
    invoke-virtual {v1}, Lcom/wuyouwin/xserver/Drawable;->isOffscreenStorage()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/wuyouwin/xserver/Drawable;->setOffscreenStorage(Z)V

    .line 212
    new-instance v3, Lcom/wuyouwin/xserver/WindowManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lcom/wuyouwin/xserver/WindowManager$$ExternalSyntheticLambda1;-><init>(Lcom/wuyouwin/xserver/WindowManager;Lcom/wuyouwin/xserver/Window;)V

    invoke-virtual {v2, v3}, Lcom/wuyouwin/xserver/Drawable;->setOnDrawListener(Ljava/lang/Runnable;)V

    .line 213
    invoke-virtual {p1, v2}, Lcom/wuyouwin/xserver/Window;->setContent(Lcom/wuyouwin/xserver/Drawable;)V

    .line 216
    .end local v1    # "oldContent":Lcom/wuyouwin/xserver/Drawable;
    .end local v2    # "newContent":Lcom/wuyouwin/xserver/Drawable;
    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->getX()S

    move-result v1

    if-ne v1, p2, :cond_4

    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->getY()S

    move-result v1

    if-eq v1, p3, :cond_5

    .line 217
    :cond_4
    invoke-virtual {p1, p2}, Lcom/wuyouwin/xserver/Window;->setX(S)V

    .line 218
    invoke-virtual {p1, p3}, Lcom/wuyouwin/xserver/Window;->setY(S)V

    .line 219
    invoke-virtual {p1, p4}, Lcom/wuyouwin/xserver/Window;->setWidth(S)V

    .line 220
    invoke-virtual {p1, p5}, Lcom/wuyouwin/xserver/Window;->setHeight(S)V

    .line 221
    invoke-virtual {p0, p1, v0}, Lcom/wuyouwin/xserver/WindowManager;->triggerOnUpdateWindowGeometry(Lcom/wuyouwin/xserver/Window;Z)V

    .line 224
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->isInputOutput()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v1}, Lcom/wuyouwin/xserver/WindowAttributes;->isMapped()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 225
    new-instance v1, Lcom/wuyouwin/xserver/events/Expose;

    invoke-direct {v1, p1}, Lcom/wuyouwin/xserver/events/Expose;-><init>(Lcom/wuyouwin/xserver/Window;)V

    invoke-virtual {p1, v1}, Lcom/wuyouwin/xserver/Window;->sendEvent(Lcom/wuyouwin/xserver/events/Event;)V

    .line 227
    :cond_6
    return-void
.end method

.method private changeWindowZOrder(Lcom/wuyouwin/xserver/Window$StackMode;Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Window;)V
    .locals 3
    .param p1, "stackMode"    # Lcom/wuyouwin/xserver/Window$StackMode;
    .param p2, "window"    # Lcom/wuyouwin/xserver/Window;
    .param p3, "sibling"    # Lcom/wuyouwin/xserver/Window;

    .line 230
    invoke-virtual {p2}, Lcom/wuyouwin/xserver/Window;->getParent()Lcom/wuyouwin/xserver/Window;

    move-result-object v0

    .line 231
    .local v0, "parent":Lcom/wuyouwin/xserver/Window;
    sget-object v1, Lcom/wuyouwin/xserver/WindowManager$1;->$SwitchMap$com$winlator$xserver$Window$StackMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 236
    :pswitch_0
    invoke-virtual {v0, p2, p3}, Lcom/wuyouwin/xserver/Window;->moveChildBelow(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Window;)V

    goto :goto_0

    .line 233
    :pswitch_1
    invoke-virtual {v0, p2, p3}, Lcom/wuyouwin/xserver/Window;->moveChildAbove(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Window;)V

    .line 234
    nop

    .line 239
    :goto_0
    invoke-virtual {p0, p2}, Lcom/wuyouwin/xserver/WindowManager;->triggerOnChangeWindowZOrder(Lcom/wuyouwin/xserver/Window;)V

    .line 240
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findPointWindow(Lcom/wuyouwin/xserver/Window;SSZ)Lcom/wuyouwin/xserver/Window;
    .locals 2
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;
    .param p2, "rootX"    # S
    .param p3, "rootY"    # S
    .param p4, "useFullscreenTransformation"    # Z

    .line 310
    iget-object v0, p1, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/WindowAttributes;->isMapped()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3, p4}, Lcom/wuyouwin/xserver/Window;->containsPoint(SSZ)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_1

    .line 311
    :cond_1
    invoke-virtual {p1, p2, p3, p4}, Lcom/wuyouwin/xserver/Window;->getChildByCoords(SSZ)Lcom/wuyouwin/xserver/Window;

    move-result-object v0

    .line 312
    .local v0, "child":Lcom/wuyouwin/xserver/Window;
    if-eqz v0, :cond_2

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/wuyouwin/xserver/WindowManager;->findPointWindow(Lcom/wuyouwin/xserver/Window;SSZ)Lcom/wuyouwin/xserver/Window;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    return-object v1

    .line 310
    .end local v0    # "child":Lcom/wuyouwin/xserver/Window;
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic lambda$changeWindowGeometry$1(Lcom/wuyouwin/xserver/Window;)V
    .locals 0
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;

    .line 212
    invoke-virtual {p0, p1}, Lcom/wuyouwin/xserver/WindowManager;->triggerOnUpdateWindowContent(Lcom/wuyouwin/xserver/Window;)V

    return-void
.end method

.method private synthetic lambda$createWindow$0(Lcom/wuyouwin/xserver/Window;)V
    .locals 0
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;

    .line 191
    invoke-virtual {p0, p1}, Lcom/wuyouwin/xserver/WindowManager;->triggerOnUpdateWindowContent(Lcom/wuyouwin/xserver/Window;)V

    return-void
.end method

.method private removeAllSubwindowsAndWindow(Lcom/wuyouwin/xserver/Window;)V
    .locals 4
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 89
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lcom/wuyouwin/xserver/Window;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wuyouwin/xserver/Window;

    .local v2, "child":Lcom/wuyouwin/xserver/Window;
    invoke-direct {p0, v2}, Lcom/wuyouwin/xserver/WindowManager;->removeAllSubwindowsAndWindow(Lcom/wuyouwin/xserver/Window;)V

    .end local v2    # "child":Lcom/wuyouwin/xserver/Window;
    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->getParent()Lcom/wuyouwin/xserver/Window;

    move-result-object v1

    .line 92
    .local v1, "parent":Lcom/wuyouwin/xserver/Window;
    new-instance v2, Lcom/wuyouwin/xserver/events/DestroyNotify;

    invoke-direct {v2, p1, p1}, Lcom/wuyouwin/xserver/events/DestroyNotify;-><init>(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Window;)V

    const/high16 v3, 0x20000

    invoke-virtual {p1, v3, v2}, Lcom/wuyouwin/xserver/Window;->sendEvent(ILcom/wuyouwin/xserver/events/Event;)V

    .line 93
    new-instance v2, Lcom/wuyouwin/xserver/events/DestroyNotify;

    invoke-direct {v2, v1, p1}, Lcom/wuyouwin/xserver/events/DestroyNotify;-><init>(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Window;)V

    const/high16 v3, 0x80000

    invoke-virtual {v1, v3, v2}, Lcom/wuyouwin/xserver/Window;->sendEvent(ILcom/wuyouwin/xserver/events/Event;)V

    .line 94
    iget-object v2, p0, Lcom/wuyouwin/xserver/WindowManager;->windows:Landroid/util/SparseArray;

    iget v3, p1, Lcom/wuyouwin/xserver/XResource;->id:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 95
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->isInputOutput()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/wuyouwin/xserver/WindowManager;->drawableManager:Lcom/wuyouwin/xserver/DrawableManager;

    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->getContent()Lcom/wuyouwin/xserver/Drawable;

    move-result-object v3

    iget v3, v3, Lcom/wuyouwin/xserver/XResource;->id:I

    invoke-virtual {v2, v3}, Lcom/wuyouwin/xserver/DrawableManager;->removeDrawable(I)V

    .line 96
    :cond_1
    invoke-virtual {p0, p1}, Lcom/wuyouwin/xserver/XResourceManager;->triggerOnFreeResourceListener(Lcom/wuyouwin/xserver/XResource;)V

    .line 97
    iget-object v2, p0, Lcom/wuyouwin/xserver/WindowManager;->focusedWindow:Lcom/wuyouwin/xserver/Window;

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/wuyouwin/xserver/WindowManager;->revertFocus()V

    .line 98
    :cond_2
    invoke-virtual {v1, p1}, Lcom/wuyouwin/xserver/Window;->removeChild(Lcom/wuyouwin/xserver/Window;)V

    .line 99
    return-void
.end method


# virtual methods
.method public addOnWindowModificationListener(Lcom/wuyouwin/xserver/WindowManager$OnWindowModificationListener;)V
    .locals 1
    .param p1, "onWindowModificationListener"    # Lcom/wuyouwin/xserver/WindowManager$OnWindowModificationListener;

    .line 316
    iget-object v0, p0, Lcom/wuyouwin/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    return-void
.end method

.method public configureWindow(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/core/Bitmask;Lcom/wuyouwin/xconnector/XInputStream;)V
    .locals 24
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;
    .param p2, "valueMask"    # Lcom/wuyouwin/core/Bitmask;
    .param p3, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;

    .line 243
    move-object/from16 v6, p0

    move-object/from16 v5, p1

    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xserver/Window;->getX()S

    move-result v0

    .line 244
    .local v0, "x":S
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xserver/Window;->getY()S

    move-result v1

    .line 245
    .local v1, "y":S
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xserver/Window;->getWidth()S

    move-result v2

    .line 246
    .local v2, "width":S
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xserver/Window;->getHeight()S

    move-result v3

    .line 247
    .local v3, "height":S
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xserver/Window;->getBorderWidth()S

    move-result v4

    .line 248
    .local v4, "borderWidth":S
    const/4 v7, 0x0

    .line 249
    .local v7, "sibling":Lcom/wuyouwin/xserver/Window;
    const/4 v8, 0x0

    .line 251
    .local v8, "stackMode":Lcom/wuyouwin/xserver/Window$StackMode;
    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/core/Bitmask;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move/from16 v18, v0

    move/from16 v19, v1

    move-object v1, v7

    move-object v0, v8

    move/from16 v23, v4

    move v4, v2

    move/from16 v2, v23

    .end local v7    # "sibling":Lcom/wuyouwin/xserver/Window;
    .end local v8    # "stackMode":Lcom/wuyouwin/xserver/Window$StackMode;
    .local v0, "stackMode":Lcom/wuyouwin/xserver/Window$StackMode;
    .local v1, "sibling":Lcom/wuyouwin/xserver/Window;
    .local v2, "borderWidth":S
    .local v4, "width":S
    .local v18, "x":S
    .local v19, "y":S
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 252
    .local v7, "index":I
    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    .line 272
    :sswitch_0
    invoke-static {}, Lcom/wuyouwin/xserver/Window$StackMode;->values()[Lcom/wuyouwin/xserver/Window$StackMode;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v10

    aget-object v0, v8, v10

    goto :goto_1

    .line 269
    :sswitch_1
    invoke-virtual/range {p3 .. p3}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v1

    .line 270
    goto :goto_1

    .line 266
    :sswitch_2
    invoke-virtual/range {p3 .. p3}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v8

    int-to-short v2, v8

    .line 267
    goto :goto_1

    .line 263
    :sswitch_3
    invoke-virtual/range {p3 .. p3}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v8

    int-to-short v3, v8

    .line 264
    goto :goto_1

    .line 260
    :sswitch_4
    invoke-virtual/range {p3 .. p3}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v8

    int-to-short v4, v8

    .line 261
    goto :goto_1

    .line 257
    :sswitch_5
    invoke-virtual/range {p3 .. p3}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v8

    int-to-short v8, v8

    .line 258
    .end local v19    # "y":S
    .local v8, "y":S
    move/from16 v19, v8

    goto :goto_1

    .line 254
    .end local v8    # "y":S
    .restart local v19    # "y":S
    :sswitch_6
    invoke-virtual/range {p3 .. p3}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v8

    int-to-short v8, v8

    .line 255
    .end local v18    # "x":S
    .local v8, "x":S
    move/from16 v18, v8

    .line 275
    .end local v7    # "index":I
    .end local v8    # "x":S
    .restart local v18    # "x":S
    :goto_1
    goto :goto_0

    .line 277
    :cond_0
    if-lez v4, :cond_5

    .line 278
    if-lez v3, :cond_4

    .line 280
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xserver/Window;->getParent()Lcom/wuyouwin/xserver/Window;

    move-result-object v15

    .line 281
    .local v15, "parent":Lcom/wuyouwin/xserver/Window;
    iget-object v7, v5, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v7}, Lcom/wuyouwin/xserver/WindowAttributes;->isOverrideRedirect()Z

    move-result v20

    .line 282
    .local v20, "overrideRedirect":Z
    const/high16 v14, 0x100000

    invoke-virtual {v15, v14}, Lcom/wuyouwin/xserver/Window;->hasEventListenerFor(I)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v20, :cond_1

    move-object/from16 v21, v1

    move/from16 v22, v4

    move-object v6, v15

    goto :goto_2

    .line 292
    :cond_1
    new-instance v13, Lcom/wuyouwin/xserver/events/ConfigureRequest;

    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xserver/Window;->previousSibling()Lcom/wuyouwin/xserver/Window;

    move-result-object v10

    move-object v7, v13

    move-object v8, v15

    move-object/from16 v9, p1

    move/from16 v11, v18

    move/from16 v12, v19

    move-object/from16 v21, v1

    move-object v1, v13

    .end local v1    # "sibling":Lcom/wuyouwin/xserver/Window;
    .local v21, "sibling":Lcom/wuyouwin/xserver/Window;
    move v13, v4

    move/from16 v22, v4

    move v4, v14

    .end local v4    # "width":S
    .local v22, "width":S
    move v14, v3

    move-object v6, v15

    .end local v15    # "parent":Lcom/wuyouwin/xserver/Window;
    .local v6, "parent":Lcom/wuyouwin/xserver/Window;
    move v15, v2

    move-object/from16 v16, v0

    move-object/from16 v17, p2

    invoke-direct/range {v7 .. v17}, Lcom/wuyouwin/xserver/events/ConfigureRequest;-><init>(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Window;SSSSSLcom/wuyouwin/xserver/Window$StackMode;Lcom/wuyouwin/core/Bitmask;)V

    invoke-virtual {v6, v4, v1}, Lcom/wuyouwin/xserver/Window;->sendEvent(ILcom/wuyouwin/xserver/events/Event;)V

    move/from16 v17, v2

    move-object v4, v5

    move-object v1, v6

    move/from16 v5, v22

    move-object/from16 v22, v0

    move v6, v3

    move-object/from16 v0, p0

    goto/16 :goto_4

    .line 282
    .end local v6    # "parent":Lcom/wuyouwin/xserver/Window;
    .end local v21    # "sibling":Lcom/wuyouwin/xserver/Window;
    .end local v22    # "width":S
    .restart local v1    # "sibling":Lcom/wuyouwin/xserver/Window;
    .restart local v4    # "width":S
    .restart local v15    # "parent":Lcom/wuyouwin/xserver/Window;
    :cond_2
    move-object/from16 v21, v1

    move/from16 v22, v4

    move-object v6, v15

    .line 283
    .end local v1    # "sibling":Lcom/wuyouwin/xserver/Window;
    .end local v4    # "width":S
    .end local v15    # "parent":Lcom/wuyouwin/xserver/Window;
    .restart local v6    # "parent":Lcom/wuyouwin/xserver/Window;
    .restart local v21    # "sibling":Lcom/wuyouwin/xserver/Window;
    .restart local v22    # "width":S
    :goto_2
    move-object v15, v0

    .end local v0    # "stackMode":Lcom/wuyouwin/xserver/Window$StackMode;
    .local v15, "stackMode":Lcom/wuyouwin/xserver/Window$StackMode;
    move-object/from16 v0, p0

    move-object/from16 v14, v21

    .end local v21    # "sibling":Lcom/wuyouwin/xserver/Window;
    .local v14, "sibling":Lcom/wuyouwin/xserver/Window;
    move-object/from16 v1, p1

    move v13, v2

    .end local v2    # "borderWidth":S
    .local v13, "borderWidth":S
    move/from16 v2, v18

    move v12, v3

    .end local v3    # "height":S
    .local v12, "height":S
    move/from16 v3, v19

    move/from16 v11, v22

    .end local v22    # "width":S
    .local v11, "width":S
    move v4, v11

    move-object v10, v5

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/wuyouwin/xserver/WindowManager;->changeWindowGeometry(Lcom/wuyouwin/xserver/Window;SSSS)V

    .line 285
    invoke-virtual {v10, v13}, Lcom/wuyouwin/xserver/Window;->setBorderWidth(S)V

    .line 286
    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    move-object v1, v6

    .end local v6    # "parent":Lcom/wuyouwin/xserver/Window;
    .local v1, "parent":Lcom/wuyouwin/xserver/Window;
    invoke-direct {v0, v15, v10, v14}, Lcom/wuyouwin/xserver/WindowManager;->changeWindowZOrder(Lcom/wuyouwin/xserver/Window$StackMode;Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Window;)V

    goto :goto_3

    .end local v1    # "parent":Lcom/wuyouwin/xserver/Window;
    .restart local v6    # "parent":Lcom/wuyouwin/xserver/Window;
    :cond_3
    move-object/from16 v0, p0

    move-object v1, v6

    .line 288
    .end local v6    # "parent":Lcom/wuyouwin/xserver/Window;
    .restart local v1    # "parent":Lcom/wuyouwin/xserver/Window;
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xserver/Window;->previousSibling()Lcom/wuyouwin/xserver/Window;

    move-result-object v2

    .line 289
    .local v2, "previousSibling":Lcom/wuyouwin/xserver/Window;
    new-instance v3, Lcom/wuyouwin/xserver/events/ConfigureNotify;

    move-object v7, v3

    move-object/from16 v8, p1

    move-object/from16 v9, p1

    move-object v4, v10

    move-object v10, v2

    move v5, v11

    .end local v11    # "width":S
    .local v5, "width":S
    move/from16 v11, v18

    move v6, v12

    .end local v12    # "height":S
    .local v6, "height":S
    move/from16 v12, v19

    move/from16 v17, v13

    .end local v13    # "borderWidth":S
    .local v17, "borderWidth":S
    move v13, v5

    move-object/from16 v21, v14

    .end local v14    # "sibling":Lcom/wuyouwin/xserver/Window;
    .restart local v21    # "sibling":Lcom/wuyouwin/xserver/Window;
    move v14, v6

    move-object/from16 v22, v15

    .end local v15    # "stackMode":Lcom/wuyouwin/xserver/Window$StackMode;
    .local v22, "stackMode":Lcom/wuyouwin/xserver/Window$StackMode;
    move/from16 v15, v17

    move/from16 v16, v20

    invoke-direct/range {v7 .. v16}, Lcom/wuyouwin/xserver/events/ConfigureNotify;-><init>(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Window;IIIIIZ)V

    const/high16 v7, 0x20000

    invoke-virtual {v4, v7, v3}, Lcom/wuyouwin/xserver/Window;->sendEvent(ILcom/wuyouwin/xserver/events/Event;)V

    .line 290
    new-instance v3, Lcom/wuyouwin/xserver/events/ConfigureNotify;

    move-object v7, v3

    move-object v8, v1

    invoke-direct/range {v7 .. v16}, Lcom/wuyouwin/xserver/events/ConfigureNotify;-><init>(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Window;IIIIIZ)V

    const/high16 v7, 0x80000

    invoke-virtual {v1, v7, v3}, Lcom/wuyouwin/xserver/Window;->sendEvent(ILcom/wuyouwin/xserver/events/Event;)V

    .line 291
    .end local v2    # "previousSibling":Lcom/wuyouwin/xserver/Window;
    nop

    .line 293
    :goto_4
    return-void

    .line 278
    .end local v5    # "width":S
    .end local v6    # "height":S
    .end local v17    # "borderWidth":S
    .end local v20    # "overrideRedirect":Z
    .end local v21    # "sibling":Lcom/wuyouwin/xserver/Window;
    .end local v22    # "stackMode":Lcom/wuyouwin/xserver/Window$StackMode;
    .restart local v0    # "stackMode":Lcom/wuyouwin/xserver/Window$StackMode;
    .local v1, "sibling":Lcom/wuyouwin/xserver/Window;
    .local v2, "borderWidth":S
    .restart local v3    # "height":S
    .restart local v4    # "width":S
    :cond_4
    move-object/from16 v22, v0

    move-object/from16 v21, v1

    move-object v0, v6

    move v6, v3

    .end local v0    # "stackMode":Lcom/wuyouwin/xserver/Window$StackMode;
    .end local v1    # "sibling":Lcom/wuyouwin/xserver/Window;
    .end local v3    # "height":S
    .restart local v6    # "height":S
    .restart local v21    # "sibling":Lcom/wuyouwin/xserver/Window;
    .restart local v22    # "stackMode":Lcom/wuyouwin/xserver/Window$StackMode;
    new-instance v1, Lcom/wuyouwin/xserver/errors/BadValue;

    invoke-direct {v1, v6}, Lcom/wuyouwin/xserver/errors/BadValue;-><init>(I)V

    throw v1

    .line 277
    .end local v6    # "height":S
    .end local v21    # "sibling":Lcom/wuyouwin/xserver/Window;
    .end local v22    # "stackMode":Lcom/wuyouwin/xserver/Window$StackMode;
    .restart local v0    # "stackMode":Lcom/wuyouwin/xserver/Window$StackMode;
    .restart local v1    # "sibling":Lcom/wuyouwin/xserver/Window;
    .restart local v3    # "height":S
    :cond_5
    move-object/from16 v21, v1

    move-object/from16 v23, v5

    move v5, v4

    .end local v1    # "sibling":Lcom/wuyouwin/xserver/Window;
    .end local v4    # "width":S
    .restart local v5    # "width":S
    .restart local v21    # "sibling":Lcom/wuyouwin/xserver/Window;
    new-instance v1, Lcom/wuyouwin/xserver/errors/BadValue;

    invoke-direct {v1, v5}, Lcom/wuyouwin/xserver/errors/BadValue;-><init>(I)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x4 -> :sswitch_4
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method public createWindow(ILcom/wuyouwin/xserver/Window;SSSSLcom/wuyouwin/xserver/WindowAttributes$WindowClass;Lcom/wuyouwin/xserver/Visual;BLcom/wuyouwin/xserver/XClient;)Lcom/wuyouwin/xserver/Window;
    .locals 17
    .param p1, "id"    # I
    .param p2, "parent"    # Lcom/wuyouwin/xserver/Window;
    .param p3, "x"    # S
    .param p4, "y"    # S
    .param p5, "width"    # S
    .param p6, "height"    # S
    .param p7, "windowClass"    # Lcom/wuyouwin/xserver/WindowAttributes$WindowClass;
    .param p8, "visual"    # Lcom/wuyouwin/xserver/Visual;
    .param p9, "depth"    # B
    .param p10, "client"    # Lcom/wuyouwin/xserver/XClient;

    .line 159
    move-object/from16 v0, p0

    move/from16 v9, p1

    iget-object v1, v0, Lcom/wuyouwin/xserver/WindowManager;->windows:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_a

    .line 161
    const/4 v1, 0x0

    .line 162
    .local v1, "isInputOutput":Z
    sget-object v2, Lcom/wuyouwin/xserver/WindowManager$1;->$SwitchMap$com$winlator$xserver$WindowAttributes$WindowClass:[I

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move/from16 v10, p9

    move v11, v1

    goto :goto_3

    .line 174
    :pswitch_0
    const/4 v1, 0x0

    move/from16 v10, p9

    move v11, v1

    goto :goto_3

    .line 168
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/xserver/Window;->isInputOutput()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    if-nez p9, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/xserver/Window;->getContent()Lcom/wuyouwin/xserver/Drawable;

    move-result-object v2

    iget-object v2, v2, Lcom/wuyouwin/xserver/Drawable;->visual:Lcom/wuyouwin/xserver/Visual;

    iget-byte v2, v2, Lcom/wuyouwin/xserver/Visual;->depth:B

    goto :goto_0

    :cond_0
    move/from16 v2, p9

    .line 170
    .end local p9    # "depth":B
    .local v2, "depth":B
    :goto_0
    const/4 v1, 0x1

    move v11, v1

    move v10, v2

    goto :goto_3

    .line 171
    .end local v2    # "depth":B
    .restart local p9    # "depth":B
    :cond_1
    new-instance v2, Lcom/wuyouwin/xserver/errors/BadMatch;

    invoke-direct {v2}, Lcom/wuyouwin/xserver/errors/BadMatch;-><init>()V

    throw v2

    .line 164
    :pswitch_2
    if-nez p9, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/xserver/Window;->isInputOutput()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/xserver/Window;->getContent()Lcom/wuyouwin/xserver/Drawable;

    move-result-object v2

    iget-object v2, v2, Lcom/wuyouwin/xserver/Drawable;->visual:Lcom/wuyouwin/xserver/Visual;

    iget-byte v2, v2, Lcom/wuyouwin/xserver/Visual;->depth:B

    goto :goto_2

    :goto_1
    move/from16 v2, p9

    .line 165
    .end local p9    # "depth":B
    .restart local v2    # "depth":B
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/xserver/Window;->isInputOutput()Z

    move-result v1

    .line 166
    move v11, v1

    move v10, v2

    .line 178
    .end local v1    # "isInputOutput":Z
    .end local v2    # "depth":B
    .local v10, "depth":B
    .local v11, "isInputOutput":Z
    :goto_3
    if-eqz v11, :cond_6

    .line 179
    if-nez p8, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/xserver/Window;->getContent()Lcom/wuyouwin/xserver/Drawable;

    move-result-object v1

    iget-object v1, v1, Lcom/wuyouwin/xserver/Drawable;->visual:Lcom/wuyouwin/xserver/Visual;

    goto :goto_4

    :cond_4
    move-object/from16 v1, p8

    .line 180
    .end local p8    # "visual":Lcom/wuyouwin/xserver/Visual;
    .local v1, "visual":Lcom/wuyouwin/xserver/Visual;
    :goto_4
    iget-byte v2, v1, Lcom/wuyouwin/xserver/Visual;->depth:B

    if-ne v10, v2, :cond_5

    move-object v12, v1

    goto :goto_5

    :cond_5
    new-instance v2, Lcom/wuyouwin/xserver/errors/BadMatch;

    invoke-direct {v2}, Lcom/wuyouwin/xserver/errors/BadMatch;-><init>()V

    throw v2

    .line 178
    .end local v1    # "visual":Lcom/wuyouwin/xserver/Visual;
    .restart local p8    # "visual":Lcom/wuyouwin/xserver/Visual;
    :cond_6
    move-object/from16 v12, p8

    .line 183
    .end local p8    # "visual":Lcom/wuyouwin/xserver/Visual;
    .local v12, "visual":Lcom/wuyouwin/xserver/Visual;
    :goto_5
    const/4 v1, 0x0

    .line 184
    .local v1, "drawable":Lcom/wuyouwin/xserver/Drawable;
    if-eqz v11, :cond_8

    .line 185
    iget-object v2, v0, Lcom/wuyouwin/xserver/WindowManager;->drawableManager:Lcom/wuyouwin/xserver/DrawableManager;

    move/from16 v13, p5

    move/from16 v14, p6

    invoke-virtual {v2, v9, v13, v14, v12}, Lcom/wuyouwin/xserver/DrawableManager;->createDrawable(ISSLcom/wuyouwin/xserver/Visual;)Lcom/wuyouwin/xserver/Drawable;

    move-result-object v1

    .line 186
    if-eqz v1, :cond_7

    move-object v15, v1

    goto :goto_6

    :cond_7
    new-instance v2, Lcom/wuyouwin/xserver/errors/BadIdChoice;

    invoke-direct {v2, v9}, Lcom/wuyouwin/xserver/errors/BadIdChoice;-><init>(I)V

    throw v2

    .line 184
    :cond_8
    move/from16 v13, p5

    move/from16 v14, p6

    move-object v15, v1

    .line 189
    .end local v1    # "drawable":Lcom/wuyouwin/xserver/Drawable;
    .local v15, "drawable":Lcom/wuyouwin/xserver/Drawable;
    :goto_6
    new-instance v16, Lcom/wuyouwin/xserver/Window;

    move-object/from16 v1, v16

    move/from16 v2, p1

    move-object v3, v15

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p10

    invoke-direct/range {v1 .. v8}, Lcom/wuyouwin/xserver/Window;-><init>(ILcom/wuyouwin/xserver/Drawable;IIIILcom/wuyouwin/xserver/XClient;)V

    .line 190
    .local v1, "window":Lcom/wuyouwin/xserver/Window;
    iget-object v2, v1, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    move-object/from16 v3, p7

    invoke-virtual {v2, v3}, Lcom/wuyouwin/xserver/WindowAttributes;->setWindowClass(Lcom/wuyouwin/xserver/WindowAttributes$WindowClass;)V

    .line 191
    if-eqz v15, :cond_9

    new-instance v2, Lcom/wuyouwin/xserver/WindowManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lcom/wuyouwin/xserver/WindowManager$$ExternalSyntheticLambda0;-><init>(Lcom/wuyouwin/xserver/WindowManager;Lcom/wuyouwin/xserver/Window;)V

    invoke-virtual {v15, v2}, Lcom/wuyouwin/xserver/Drawable;->setOnDrawListener(Ljava/lang/Runnable;)V

    .line 192
    :cond_9
    iget-object v2, v0, Lcom/wuyouwin/xserver/WindowManager;->windows:Landroid/util/SparseArray;

    invoke-virtual {v2, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 193
    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Lcom/wuyouwin/xserver/Window;->addChild(Lcom/wuyouwin/xserver/Window;)V

    .line 194
    invoke-virtual {v0, v1}, Lcom/wuyouwin/xserver/XResourceManager;->triggerOnCreateResourceListener(Lcom/wuyouwin/xserver/XResource;)V

    .line 195
    return-object v1

    .line 159
    .end local v1    # "window":Lcom/wuyouwin/xserver/Window;
    .end local v10    # "depth":B
    .end local v11    # "isInputOutput":Z
    .end local v12    # "visual":Lcom/wuyouwin/xserver/Visual;
    .end local v15    # "drawable":Lcom/wuyouwin/xserver/Drawable;
    .restart local p8    # "visual":Lcom/wuyouwin/xserver/Visual;
    .restart local p9    # "depth":B
    :cond_a
    move-object/from16 v2, p2

    move/from16 v13, p5

    move/from16 v14, p6

    move-object/from16 v3, p7

    new-instance v1, Lcom/wuyouwin/xserver/errors/BadIdChoice;

    invoke-direct {v1, v9}, Lcom/wuyouwin/xserver/errors/BadIdChoice;-><init>(I)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public destroyWindow(I)V
    .locals 2
    .param p1, "id"    # I

    .line 80
    invoke-virtual {p0, p1}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v0

    .line 81
    .local v0, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/wuyouwin/xserver/WindowManager;->rootWindow:Lcom/wuyouwin/xserver/Window;

    iget v1, v1, Lcom/wuyouwin/xserver/XResource;->id:I

    if-eq v1, p1, :cond_0

    .line 82
    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/WindowManager;->unmapWindow(Lcom/wuyouwin/xserver/Window;)V

    .line 83
    invoke-direct {p0, v0}, Lcom/wuyouwin/xserver/WindowManager;->removeAllSubwindowsAndWindow(Lcom/wuyouwin/xserver/Window;)V

    .line 85
    :cond_0
    return-void
.end method

.method public findDialogWindows(I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "id"    # I

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wuyouwin/xserver/Window;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/wuyouwin/xserver/WindowManager;->windows:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/wuyouwin/xserver/WindowManager;->windows:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wuyouwin/xserver/Window;

    .line 66
    .local v2, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/wuyouwin/xserver/Window;->getTransientFor()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2}, Lcom/wuyouwin/xserver/Window;->isDialogBox()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v2    # "window":Lcom/wuyouwin/xserver/Window;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 68
    .end local v1    # "i":I
    return-object v0
.end method

.method public findPointWindow(SS)Lcom/wuyouwin/xserver/Window;
    .locals 2
    .param p1, "rootX"    # S
    .param p2, "rootY"    # S

    .line 302
    iget-object v0, p0, Lcom/wuyouwin/xserver/WindowManager;->rootWindow:Lcom/wuyouwin/xserver/Window;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/wuyouwin/xserver/WindowManager;->findPointWindow(Lcom/wuyouwin/xserver/Window;SSZ)Lcom/wuyouwin/xserver/Window;

    move-result-object v0

    return-object v0
.end method

.method public findPointWindow(SSZ)Lcom/wuyouwin/xserver/Window;
    .locals 1
    .param p1, "rootX"    # S
    .param p2, "rootY"    # S
    .param p3, "useFullscreenTransformation"    # Z

    .line 306
    iget-object v0, p0, Lcom/wuyouwin/xserver/WindowManager;->rootWindow:Lcom/wuyouwin/xserver/Window;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/wuyouwin/xserver/WindowManager;->findPointWindow(Lcom/wuyouwin/xserver/Window;SSZ)Lcom/wuyouwin/xserver/Window;

    move-result-object v0

    return-object v0
.end method

.method public findWindowWithProcessId(I)Lcom/wuyouwin/xserver/Window;
    .locals 3
    .param p1, "processId"    # I

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/wuyouwin/xserver/WindowManager;->windows:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/wuyouwin/xserver/WindowManager;->windows:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/Window;

    .line 74
    .local v1, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/wuyouwin/xserver/Window;->getProcessId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    .line 72
    .end local v1    # "window":Lcom/wuyouwin/xserver/Window;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 76
    .end local v0    # "i":I
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFocusRevertTo()Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/wuyouwin/xserver/WindowManager;->focusRevertTo:Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    return-object v0
.end method

.method public getFocusedWindow()Lcom/wuyouwin/xserver/Window;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/wuyouwin/xserver/WindowManager;->focusedWindow:Lcom/wuyouwin/xserver/Window;

    return-object v0
.end method

.method public getWindow(I)Lcom/wuyouwin/xserver/Window;
    .locals 1
    .param p1, "id"    # I

    .line 59
    iget-object v0, p0, Lcom/wuyouwin/xserver/WindowManager;->windows:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/xserver/Window;

    return-object v0
.end method

.method public mapSubWindows(Lcom/wuyouwin/xserver/Window;)V
    .locals 2
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;

    .line 127
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/Window;

    .local v1, "child":Lcom/wuyouwin/xserver/Window;
    invoke-virtual {p0, v1}, Lcom/wuyouwin/xserver/WindowManager;->mapSubWindows(Lcom/wuyouwin/xserver/Window;)V

    .end local v1    # "child":Lcom/wuyouwin/xserver/Window;
    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0, p1}, Lcom/wuyouwin/xserver/WindowManager;->mapWindow(Lcom/wuyouwin/xserver/Window;)V

    .line 129
    return-void
.end method

.method public mapWindow(Lcom/wuyouwin/xserver/Window;)V
    .locals 3
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;

    .line 102
    iget-object v0, p1, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/WindowAttributes;->isMapped()Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->getParent()Lcom/wuyouwin/xserver/Window;

    move-result-object v0

    .line 104
    .local v0, "parent":Lcom/wuyouwin/xserver/Window;
    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xserver/Window;->hasEventListenerFor(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v2}, Lcom/wuyouwin/xserver/WindowAttributes;->isOverrideRedirect()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    goto :goto_0

    .line 111
    :cond_1
    new-instance v2, Lcom/wuyouwin/xserver/events/MapRequest;

    invoke-direct {v2, v0, p1}, Lcom/wuyouwin/xserver/events/MapRequest;-><init>(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Window;)V

    invoke-virtual {v0, v1, v2}, Lcom/wuyouwin/xserver/Window;->sendEvent(ILcom/wuyouwin/xserver/events/Event;)V

    goto :goto_1

    .line 105
    :goto_0
    iget-object v1, p1, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/wuyouwin/xserver/WindowAttributes;->setMapped(Z)V

    .line 106
    new-instance v1, Lcom/wuyouwin/xserver/events/MapNotify;

    invoke-direct {v1, p1, p1}, Lcom/wuyouwin/xserver/events/MapNotify;-><init>(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Window;)V

    const/high16 v2, 0x20000

    invoke-virtual {p1, v2, v1}, Lcom/wuyouwin/xserver/Window;->sendEvent(ILcom/wuyouwin/xserver/events/Event;)V

    .line 107
    new-instance v1, Lcom/wuyouwin/xserver/events/MapNotify;

    invoke-direct {v1, v0, p1}, Lcom/wuyouwin/xserver/events/MapNotify;-><init>(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Window;)V

    const/high16 v2, 0x80000

    invoke-virtual {v0, v2, v1}, Lcom/wuyouwin/xserver/Window;->sendEvent(ILcom/wuyouwin/xserver/events/Event;)V

    .line 108
    new-instance v1, Lcom/wuyouwin/xserver/events/Expose;

    invoke-direct {v1, p1}, Lcom/wuyouwin/xserver/events/Expose;-><init>(Lcom/wuyouwin/xserver/Window;)V

    const v2, 0x8000

    invoke-virtual {p1, v2, v1}, Lcom/wuyouwin/xserver/Window;->sendEvent(ILcom/wuyouwin/xserver/events/Event;)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/wuyouwin/xserver/WindowManager;->triggerOnMapWindow(Lcom/wuyouwin/xserver/Window;)V

    .line 113
    .end local v0    # "parent":Lcom/wuyouwin/xserver/Window;
    :cond_2
    :goto_1
    return-void
.end method

.method public reparentWindow(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Window;)V
    .locals 1
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;
    .param p2, "newParent"    # Lcom/wuyouwin/xserver/Window;

    .line 296
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->getParent()Lcom/wuyouwin/xserver/Window;

    move-result-object v0

    .line 297
    .local v0, "oldParent":Lcom/wuyouwin/xserver/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/wuyouwin/xserver/Window;->removeChild(Lcom/wuyouwin/xserver/Window;)V

    .line 298
    :cond_0
    invoke-virtual {p2, p1}, Lcom/wuyouwin/xserver/Window;->addChild(Lcom/wuyouwin/xserver/Window;)V

    .line 299
    return-void
.end method

.method public revertFocus()V
    .locals 2

    .line 136
    sget-object v0, Lcom/wuyouwin/xserver/WindowManager$1;->$SwitchMap$com$winlator$xserver$WindowManager$FocusRevertTo:[I

    iget-object v1, p0, Lcom/wuyouwin/xserver/WindowManager;->focusRevertTo:Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 144
    :pswitch_0
    iget-object v0, p0, Lcom/wuyouwin/xserver/WindowManager;->focusedWindow:Lcom/wuyouwin/xserver/Window;

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/Window;->getParent()Lcom/wuyouwin/xserver/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/xserver/WindowManager;->focusedWindow:Lcom/wuyouwin/xserver/Window;

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/Window;->getParent()Lcom/wuyouwin/xserver/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/wuyouwin/xserver/WindowManager;->focusedWindow:Lcom/wuyouwin/xserver/Window;

    goto :goto_0

    .line 141
    :pswitch_1
    iget-object v0, p0, Lcom/wuyouwin/xserver/WindowManager;->rootWindow:Lcom/wuyouwin/xserver/Window;

    iput-object v0, p0, Lcom/wuyouwin/xserver/WindowManager;->focusedWindow:Lcom/wuyouwin/xserver/Window;

    .line 142
    goto :goto_0

    .line 138
    :pswitch_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wuyouwin/xserver/WindowManager;->focusedWindow:Lcom/wuyouwin/xserver/Window;

    .line 139
    nop

    .line 147
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFocus(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;)V
    .locals 0
    .param p1, "focusedWindow"    # Lcom/wuyouwin/xserver/Window;
    .param p2, "focusRevertTo"    # Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    .line 150
    iput-object p1, p0, Lcom/wuyouwin/xserver/WindowManager;->focusedWindow:Lcom/wuyouwin/xserver/Window;

    .line 151
    iput-object p2, p0, Lcom/wuyouwin/xserver/WindowManager;->focusRevertTo:Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    .line 152
    return-void
.end method

.method public triggerOnChangeWindowZOrder(Lcom/wuyouwin/xserver/Window;)V
    .locals 2
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;

    .line 336
    iget-object v0, p0, Lcom/wuyouwin/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 337
    iget-object v1, p0, Lcom/wuyouwin/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/WindowManager$OnWindowModificationListener;

    invoke-interface {v1, p1}, Lcom/wuyouwin/xserver/WindowManager$OnWindowModificationListener;->onChangeWindowZOrder(Lcom/wuyouwin/xserver/Window;)V

    .line 336
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 339
    .end local v0    # "i":I
    return-void
.end method

.method public triggerOnMapWindow(Lcom/wuyouwin/xserver/Window;)V
    .locals 2
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;

    .line 324
    iget-object v0, p0, Lcom/wuyouwin/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 325
    iget-object v1, p0, Lcom/wuyouwin/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/WindowManager$OnWindowModificationListener;

    invoke-interface {v1, p1}, Lcom/wuyouwin/xserver/WindowManager$OnWindowModificationListener;->onMapWindow(Lcom/wuyouwin/xserver/Window;)V

    .line 324
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 327
    .end local v0    # "i":I
    return-void
.end method

.method public triggerOnModifyWindowProperty(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Property;)V
    .locals 2
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;
    .param p2, "property"    # Lcom/wuyouwin/xserver/Property;

    .line 360
    iget-object v0, p0, Lcom/wuyouwin/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 361
    iget-object v1, p0, Lcom/wuyouwin/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/WindowManager$OnWindowModificationListener;

    invoke-interface {v1, p1, p2}, Lcom/wuyouwin/xserver/WindowManager$OnWindowModificationListener;->onModifyWindowProperty(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Property;)V

    .line 360
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 363
    .end local v0    # "i":I
    return-void
.end method

.method public triggerOnUnmapWindow(Lcom/wuyouwin/xserver/Window;)V
    .locals 2
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;

    .line 330
    iget-object v0, p0, Lcom/wuyouwin/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 331
    iget-object v1, p0, Lcom/wuyouwin/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/WindowManager$OnWindowModificationListener;

    invoke-interface {v1, p1}, Lcom/wuyouwin/xserver/WindowManager$OnWindowModificationListener;->onUnmapWindow(Lcom/wuyouwin/xserver/Window;)V

    .line 330
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 333
    .end local v0    # "i":I
    return-void
.end method

.method public triggerOnUpdateWindowAttributes(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/core/Bitmask;)V
    .locals 2
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;
    .param p2, "mask"    # Lcom/wuyouwin/core/Bitmask;

    .line 354
    iget-object v0, p0, Lcom/wuyouwin/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 355
    iget-object v1, p0, Lcom/wuyouwin/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/WindowManager$OnWindowModificationListener;

    invoke-interface {v1, p1, p2}, Lcom/wuyouwin/xserver/WindowManager$OnWindowModificationListener;->onUpdateWindowAttributes(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/core/Bitmask;)V

    .line 354
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 357
    .end local v0    # "i":I
    return-void
.end method

.method public triggerOnUpdateWindowContent(Lcom/wuyouwin/xserver/Window;)V
    .locals 2
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;

    .line 342
    iget-object v0, p0, Lcom/wuyouwin/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 343
    iget-object v1, p0, Lcom/wuyouwin/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/WindowManager$OnWindowModificationListener;

    invoke-interface {v1, p1}, Lcom/wuyouwin/xserver/WindowManager$OnWindowModificationListener;->onUpdateWindowContent(Lcom/wuyouwin/xserver/Window;)V

    .line 342
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 345
    .end local v0    # "i":I
    return-void
.end method

.method public triggerOnUpdateWindowGeometry(Lcom/wuyouwin/xserver/Window;Z)V
    .locals 2
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;
    .param p2, "resized"    # Z

    .line 348
    iget-object v0, p0, Lcom/wuyouwin/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 349
    iget-object v1, p0, Lcom/wuyouwin/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/WindowManager$OnWindowModificationListener;

    invoke-interface {v1, p1, p2}, Lcom/wuyouwin/xserver/WindowManager$OnWindowModificationListener;->onUpdateWindowGeometry(Lcom/wuyouwin/xserver/Window;Z)V

    .line 348
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 351
    .end local v0    # "i":I
    return-void
.end method

.method public unmapWindow(Lcom/wuyouwin/xserver/Window;)V
    .locals 3
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;

    .line 116
    iget-object v0, p0, Lcom/wuyouwin/xserver/WindowManager;->rootWindow:Lcom/wuyouwin/xserver/Window;

    iget v0, v0, Lcom/wuyouwin/xserver/XResource;->id:I

    iget v1, p1, Lcom/wuyouwin/xserver/XResource;->id:I

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/WindowAttributes;->isMapped()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p1, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xserver/WindowAttributes;->setMapped(Z)V

    .line 118
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->getParent()Lcom/wuyouwin/xserver/Window;

    move-result-object v0

    .line 119
    .local v0, "parent":Lcom/wuyouwin/xserver/Window;
    new-instance v1, Lcom/wuyouwin/xserver/events/UnmapNotify;

    invoke-direct {v1, p1, p1}, Lcom/wuyouwin/xserver/events/UnmapNotify;-><init>(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Window;)V

    const/high16 v2, 0x20000

    invoke-virtual {p1, v2, v1}, Lcom/wuyouwin/xserver/Window;->sendEvent(ILcom/wuyouwin/xserver/events/Event;)V

    .line 120
    new-instance v1, Lcom/wuyouwin/xserver/events/UnmapNotify;

    invoke-direct {v1, v0, p1}, Lcom/wuyouwin/xserver/events/UnmapNotify;-><init>(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Window;)V

    const/high16 v2, 0x80000

    invoke-virtual {v0, v2, v1}, Lcom/wuyouwin/xserver/Window;->sendEvent(ILcom/wuyouwin/xserver/events/Event;)V

    .line 121
    iget-object v1, p0, Lcom/wuyouwin/xserver/WindowManager;->focusedWindow:Lcom/wuyouwin/xserver/Window;

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/wuyouwin/xserver/WindowManager;->revertFocus()V

    .line 122
    :cond_0
    invoke-virtual {p0, p1}, Lcom/wuyouwin/xserver/WindowManager;->triggerOnUnmapWindow(Lcom/wuyouwin/xserver/Window;)V

    .line 124
    .end local v0    # "parent":Lcom/wuyouwin/xserver/Window;
    :cond_1
    return-void
.end method
