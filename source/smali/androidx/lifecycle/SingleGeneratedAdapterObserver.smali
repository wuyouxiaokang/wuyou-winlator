.class Landroidx/lifecycle/SingleGeneratedAdapterObserver;
.super Ljava/lang/Object;
.source "SingleGeneratedAdapterObserver.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# direct methods
.method constructor <init>(Landroidx/lifecycle/GeneratedAdapter;)V
    .locals 0
    .param p1, "generatedAdapter"    # Landroidx/lifecycle/GeneratedAdapter;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    nop

    .line 27
    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1, "source"    # Landroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v1, p1, p2, v0, v1}, Landroidx/lifecycle/GeneratedAdapter;->callMethods(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;ZLandroidx/lifecycle/MethodCallsLogger;)V

    .line 32
    .end local p1    # "source":Landroidx/lifecycle/LifecycleOwner;
    .end local p2    # "event":Landroidx/lifecycle/Lifecycle$Event;
    throw v1
.end method
