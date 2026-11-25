.class public Lcom/wuyouwin/xserver/GrabManager;
.super Ljava/lang/Object;
.source "GrabManager.java"

# interfaces
.implements Lcom/wuyouwin/xserver/WindowManager$OnWindowModificationListener;


# instance fields
.field private eventListener:Lcom/wuyouwin/xserver/EventListener;

.field private ownerEvents:Z

.field private releaseWithButtons:Z

.field private window:Lcom/wuyouwin/xserver/Window;

.field private final xServer:Lcom/wuyouwin/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/wuyouwin/xserver/XServer;)V
    .locals 1
    .param p1, "xServer"    # Lcom/wuyouwin/xserver/XServer;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/wuyouwin/xserver/GrabManager;->xServer:Lcom/wuyouwin/xserver/XServer;

    .line 16
    iget-object v0, p1, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v0, p0}, Lcom/wuyouwin/xserver/WindowManager;->addOnWindowModificationListener(Lcom/wuyouwin/xserver/WindowManager$OnWindowModificationListener;)V

    .line 17
    return-void
.end method

.method private activatePointerGrab(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/EventListener;ZZ)V
    .locals 3
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;
    .param p2, "eventListener"    # Lcom/wuyouwin/xserver/EventListener;
    .param p3, "ownerEvents"    # Z
    .param p4, "releaseWithButtons"    # Z

    .line 55
    iget-object v0, p0, Lcom/wuyouwin/xserver/GrabManager;->window:Lcom/wuyouwin/xserver/Window;

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/wuyouwin/xserver/GrabManager;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v0, v0, Lcom/wuyouwin/xserver/XServer;->inputDeviceManager:Lcom/wuyouwin/xserver/InputDeviceManager;

    iget-object v1, p0, Lcom/wuyouwin/xserver/GrabManager;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v1, v1, Lcom/wuyouwin/xserver/XServer;->inputDeviceManager:Lcom/wuyouwin/xserver/InputDeviceManager;

    invoke-virtual {v1}, Lcom/wuyouwin/xserver/InputDeviceManager;->getPointWindow()Lcom/wuyouwin/xserver/Window;

    move-result-object v1

    sget-object v2, Lcom/wuyouwin/xserver/events/PointerWindowEvent$Mode;->GRAB:Lcom/wuyouwin/xserver/events/PointerWindowEvent$Mode;

    invoke-virtual {v0, v1, p1, v2}, Lcom/wuyouwin/xserver/InputDeviceManager;->sendEnterLeaveNotify(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/events/PointerWindowEvent$Mode;)V

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/wuyouwin/xserver/GrabManager;->window:Lcom/wuyouwin/xserver/Window;

    .line 59
    iput-boolean p4, p0, Lcom/wuyouwin/xserver/GrabManager;->releaseWithButtons:Z

    .line 60
    iput-boolean p3, p0, Lcom/wuyouwin/xserver/GrabManager;->ownerEvents:Z

    .line 61
    iput-object p2, p0, Lcom/wuyouwin/xserver/GrabManager;->eventListener:Lcom/wuyouwin/xserver/EventListener;

    .line 62
    return-void
.end method


# virtual methods
.method public activatePointerGrab(Lcom/wuyouwin/xserver/Window;)V
    .locals 3
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;

    .line 69
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->getButtonPressListener()Lcom/wuyouwin/xserver/EventListener;

    move-result-object v0

    .line 70
    .local v0, "eventListener":Lcom/wuyouwin/xserver/EventListener;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xserver/EventListener;->isInterestedIn(I)Z

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/wuyouwin/xserver/GrabManager;->activatePointerGrab(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/EventListener;ZZ)V

    .line 71
    return-void
.end method

.method public activatePointerGrab(Lcom/wuyouwin/xserver/Window;ZLcom/wuyouwin/core/Bitmask;Lcom/wuyouwin/xserver/XClient;)V
    .locals 2
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;
    .param p2, "ownerEvents"    # Z
    .param p3, "eventMask"    # Lcom/wuyouwin/core/Bitmask;
    .param p4, "client"    # Lcom/wuyouwin/xserver/XClient;

    .line 65
    new-instance v0, Lcom/wuyouwin/xserver/EventListener;

    invoke-direct {v0, p4, p3}, Lcom/wuyouwin/xserver/EventListener;-><init>(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/core/Bitmask;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/wuyouwin/xserver/GrabManager;->activatePointerGrab(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/EventListener;ZZ)V

    .line 66
    return-void
.end method

.method public deactivatePointerGrab()V
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/wuyouwin/xserver/GrabManager;->window:Lcom/wuyouwin/xserver/Window;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/wuyouwin/xserver/GrabManager;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v0, v0, Lcom/wuyouwin/xserver/XServer;->inputDeviceManager:Lcom/wuyouwin/xserver/InputDeviceManager;

    iget-object v1, p0, Lcom/wuyouwin/xserver/GrabManager;->window:Lcom/wuyouwin/xserver/Window;

    iget-object v2, p0, Lcom/wuyouwin/xserver/GrabManager;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v2, v2, Lcom/wuyouwin/xserver/XServer;->inputDeviceManager:Lcom/wuyouwin/xserver/InputDeviceManager;

    invoke-virtual {v2}, Lcom/wuyouwin/xserver/InputDeviceManager;->getPointWindow()Lcom/wuyouwin/xserver/Window;

    move-result-object v2

    sget-object v3, Lcom/wuyouwin/xserver/events/PointerWindowEvent$Mode;->UNGRAB:Lcom/wuyouwin/xserver/events/PointerWindowEvent$Mode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/wuyouwin/xserver/InputDeviceManager;->sendEnterLeaveNotify(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/events/PointerWindowEvent$Mode;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wuyouwin/xserver/GrabManager;->window:Lcom/wuyouwin/xserver/Window;

    .line 50
    iput-object v0, p0, Lcom/wuyouwin/xserver/GrabManager;->eventListener:Lcom/wuyouwin/xserver/EventListener;

    .line 52
    :cond_0
    return-void
.end method

.method public getClient()Lcom/wuyouwin/xserver/XClient;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/wuyouwin/xserver/GrabManager;->eventListener:Lcom/wuyouwin/xserver/EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/xserver/GrabManager;->eventListener:Lcom/wuyouwin/xserver/EventListener;

    iget-object v0, v0, Lcom/wuyouwin/xserver/EventListener;->client:Lcom/wuyouwin/xserver/XClient;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getEventListener()Lcom/wuyouwin/xserver/EventListener;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/wuyouwin/xserver/GrabManager;->eventListener:Lcom/wuyouwin/xserver/EventListener;

    return-object v0
.end method

.method public getWindow()Lcom/wuyouwin/xserver/Window;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/wuyouwin/xserver/GrabManager;->window:Lcom/wuyouwin/xserver/Window;

    return-object v0
.end method

.method public isOwnerEvents()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/wuyouwin/xserver/GrabManager;->ownerEvents:Z

    return v0
.end method

.method public isReleaseWithButtons()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/wuyouwin/xserver/GrabManager;->releaseWithButtons:Z

    return v0
.end method

.method public onUnmapWindow(Lcom/wuyouwin/xserver/Window;)V
    .locals 2
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;

    .line 21
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->getMapState()Lcom/wuyouwin/xserver/Window$MapState;

    move-result-object v0

    sget-object v1, Lcom/wuyouwin/xserver/Window$MapState;->VIEWABLE:Lcom/wuyouwin/xserver/Window$MapState;

    if-eq v0, v1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/wuyouwin/xserver/GrabManager;->deactivatePointerGrab()V

    .line 24
    :cond_0
    return-void
.end method
