.class public abstract Lcom/wuyouwin/xserver/DesktopHelper;
.super Ljava/lang/Object;
.source "DesktopHelper.java"


# direct methods
.method static synthetic access$000(Lcom/wuyouwin/xserver/XServer;)V
    .locals 0
    .param p0, "x0"    # Lcom/wuyouwin/xserver/XServer;

    .line 10
    invoke-static {p0}, Lcom/wuyouwin/xserver/DesktopHelper;->updateFocusedWindow(Lcom/wuyouwin/xserver/XServer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/wuyouwin/xserver/XServer;Lcom/wuyouwin/xserver/Window;)V
    .locals 0
    .param p0, "x0"    # Lcom/wuyouwin/xserver/XServer;
    .param p1, "x1"    # Lcom/wuyouwin/xserver/Window;

    .line 10
    invoke-static {p0, p1}, Lcom/wuyouwin/xserver/DesktopHelper;->setFocusedWindow(Lcom/wuyouwin/xserver/XServer;Lcom/wuyouwin/xserver/Window;)V

    return-void
.end method

.method public static attachTo(Lcom/wuyouwin/xserver/XServer;)V
    .locals 2
    .param p0, "xServer"    # Lcom/wuyouwin/xserver/XServer;

    .line 12
    invoke-static {p0}, Lcom/wuyouwin/xserver/DesktopHelper;->setupXResources(Lcom/wuyouwin/xserver/XServer;)V

    .line 14
    iget-object v0, p0, Lcom/wuyouwin/xserver/XServer;->pointer:Lcom/wuyouwin/xserver/Pointer;

    new-instance v1, Lcom/wuyouwin/xserver/DesktopHelper$1;

    invoke-direct {v1, p0}, Lcom/wuyouwin/xserver/DesktopHelper$1;-><init>(Lcom/wuyouwin/xserver/XServer;)V

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xserver/Pointer;->addOnPointerMotionListener(Lcom/wuyouwin/xserver/Pointer$OnPointerMotionListener;)V

    .line 21
    iget-object v0, p0, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    new-instance v1, Lcom/wuyouwin/xserver/DesktopHelper$2;

    invoke-direct {v1, p0}, Lcom/wuyouwin/xserver/DesktopHelper$2;-><init>(Lcom/wuyouwin/xserver/XServer;)V

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xserver/WindowManager;->addOnWindowModificationListener(Lcom/wuyouwin/xserver/WindowManager$OnWindowModificationListener;)V

    .line 27
    return-void
.end method

.method private static setFocusedWindow(Lcom/wuyouwin/xserver/XServer;Lcom/wuyouwin/xserver/Window;)V
    .locals 8
    .param p0, "xServer"    # Lcom/wuyouwin/xserver/XServer;
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;

    .line 43
    invoke-virtual {p0}, Lcom/wuyouwin/xserver/XServer;->getWinHandler()Lcom/wuyouwin/winhandler/WinHandler;

    move-result-object v0

    .line 44
    .local v0, "winHandler":Lcom/wuyouwin/winhandler/WinHandler;
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->isApplicationWindow()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 45
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->getParent()Lcom/wuyouwin/xserver/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    iget-object v2, v2, Lcom/wuyouwin/xserver/WindowManager;->rootWindow:Lcom/wuyouwin/xserver/Window;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 46
    .local v1, "parentIsRoot":Z
    :goto_0
    iget-object v2, p0, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    if-eqz v1, :cond_1

    sget-object v4, Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;->POINTER_ROOT:Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;->PARENT:Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    :goto_1
    invoke-virtual {v2, p1, v4}, Lcom/wuyouwin/xserver/WindowManager;->setFocus(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;)V

    .line 48
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->isSurface()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 49
    iget-object v2, p0, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    iget v3, p1, Lcom/wuyouwin/xserver/XResource;->id:I

    invoke-virtual {v2, v3}, Lcom/wuyouwin/xserver/WindowManager;->findDialogWindows(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 50
    .local v2, "dialogWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wuyouwin/xserver/Window;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 51
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wuyouwin/xserver/Window;

    .local v4, "dialogWindow":Lcom/wuyouwin/xserver/Window;
    invoke-virtual {v4}, Lcom/wuyouwin/xserver/Window;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/wuyouwin/xserver/Window;->getHandle()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Lcom/wuyouwin/winhandler/WinHandler;->bringToFront(Ljava/lang/String;J)V

    .end local v4    # "dialogWindow":Lcom/wuyouwin/xserver/Window;
    goto :goto_2

    .line 53
    :cond_2
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->getHandle()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lcom/wuyouwin/winhandler/WinHandler;->bringToFront(Ljava/lang/String;J)V

    .line 54
    .end local v2    # "dialogWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wuyouwin/xserver/Window;>;"
    :cond_3
    goto :goto_3

    .line 56
    :cond_4
    invoke-virtual {p1, v3}, Lcom/wuyouwin/xserver/Window;->getChildAt(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v2

    .line 57
    .local v2, "child":Lcom/wuyouwin/xserver/Window;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/wuyouwin/xserver/Window;->isSurface()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->getHandle()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lcom/wuyouwin/winhandler/WinHandler;->bringToFront(Ljava/lang/String;J)V

    .line 59
    .end local v1    # "parentIsRoot":Z
    .end local v2    # "child":Lcom/wuyouwin/xserver/Window;
    :cond_5
    :goto_3
    goto :goto_4

    .line 60
    :cond_6
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->isDialogBox()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 61
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->getHandle()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/wuyouwin/winhandler/WinHandler;->bringToFront(Ljava/lang/String;J)V

    .line 63
    :cond_7
    :goto_4
    return-void
.end method

.method private static setupXResources(Lcom/wuyouwin/xserver/XServer;)V
    .locals 10
    .param p0, "xServer"    # Lcom/wuyouwin/xserver/XServer;

    .line 66
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 67
    .local v0, "values":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "size"

    const-string v2, "20"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "theme"

    const-string v2, "dmz"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v1, "theme_core"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 73
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Xcursor"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/wuyouwin/xserver/XServer;->LATIN1_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 83
    .local v2, "data":[B
    iget-object v3, p0, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    iget-object v4, v3, Lcom/wuyouwin/xserver/WindowManager;->rootWindow:Lcom/wuyouwin/xserver/Window;

    sget-object v7, Lcom/wuyouwin/xserver/Property$Format;->BYTE_ARRAY:Lcom/wuyouwin/xserver/Property$Format;

    sget-object v8, Lcom/wuyouwin/xserver/Property$Mode;->APPEND:Lcom/wuyouwin/xserver/Property$Mode;

    const/16 v5, 0x17

    const/16 v6, 0x1f

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/wuyouwin/xserver/Window;->modifyProperty(IILcom/wuyouwin/xserver/Property$Format;Lcom/wuyouwin/xserver/Property$Mode;[B)Lcom/wuyouwin/xserver/Property;

    .line 84
    return-void
.end method

.method private static updateFocusedWindow(Lcom/wuyouwin/xserver/XServer;)V
    .locals 6
    .param p0, "xServer"    # Lcom/wuyouwin/xserver/XServer;

    .line 30
    sget-object v0, Lcom/wuyouwin/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/wuyouwin/xserver/XServer$Lockable;

    sget-object v1, Lcom/wuyouwin/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/wuyouwin/xserver/XServer$Lockable;

    filled-new-array {v0, v1}, [Lcom/wuyouwin/xserver/XServer$Lockable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/XServer;->lock([Lcom/wuyouwin/xserver/XServer$Lockable;)Lcom/wuyouwin/xserver/XLock;

    move-result-object v0

    .line 31
    .local v0, "lock":Lcom/wuyouwin/xserver/XLock;
    :try_start_0
    iget-object v1, p0, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v1}, Lcom/wuyouwin/xserver/WindowManager;->getFocusedWindow()Lcom/wuyouwin/xserver/Window;

    move-result-object v1

    .line 32
    .local v1, "focusedWindow":Lcom/wuyouwin/xserver/Window;
    iget-object v2, p0, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    iget-object v3, p0, Lcom/wuyouwin/xserver/XServer;->pointer:Lcom/wuyouwin/xserver/Pointer;

    invoke-virtual {v3}, Lcom/wuyouwin/xserver/Pointer;->getClampedX()S

    move-result v3

    iget-object v4, p0, Lcom/wuyouwin/xserver/XServer;->pointer:Lcom/wuyouwin/xserver/Pointer;

    invoke-virtual {v4}, Lcom/wuyouwin/xserver/Pointer;->getClampedY()S

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/wuyouwin/xserver/WindowManager;->findPointWindow(SS)Lcom/wuyouwin/xserver/Window;

    move-result-object v2

    .line 33
    .local v2, "child":Lcom/wuyouwin/xserver/Window;
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    iget-object v3, v3, Lcom/wuyouwin/xserver/WindowManager;->rootWindow:Lcom/wuyouwin/xserver/Window;

    if-eq v1, v3, :cond_0

    .line 34
    iget-object v3, p0, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    iget-object v4, p0, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    iget-object v4, v4, Lcom/wuyouwin/xserver/WindowManager;->rootWindow:Lcom/wuyouwin/xserver/Window;

    sget-object v5, Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;->NONE:Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;

    invoke-virtual {v3, v4, v5}, Lcom/wuyouwin/xserver/WindowManager;->setFocus(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/WindowManager$FocusRevertTo;)V

    goto :goto_0

    .line 30
    .end local v1    # "focusedWindow":Lcom/wuyouwin/xserver/Window;
    .end local v2    # "child":Lcom/wuyouwin/xserver/Window;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 36
    .restart local v1    # "focusedWindow":Lcom/wuyouwin/xserver/Window;
    .restart local v2    # "child":Lcom/wuyouwin/xserver/Window;
    :cond_0
    if-eqz v2, :cond_1

    if-eq v2, v1, :cond_1

    .line 37
    invoke-static {p0, v2}, Lcom/wuyouwin/xserver/DesktopHelper;->setFocusedWindow(Lcom/wuyouwin/xserver/XServer;Lcom/wuyouwin/xserver/Window;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .end local v1    # "focusedWindow":Lcom/wuyouwin/xserver/Window;
    .end local v2    # "child":Lcom/wuyouwin/xserver/Window;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/wuyouwin/xserver/XLock;->close()V

    .line 40
    .end local v0    # "lock":Lcom/wuyouwin/xserver/XLock;
    :cond_2
    return-void

    .line 30
    .restart local v0    # "lock":Lcom/wuyouwin/xserver/XLock;
    :goto_1
    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Lcom/wuyouwin/xserver/XLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v1
.end method
