.class abstract Landroidx/lifecycle/LegacySavedStateHandleController;
.super Ljava/lang/Object;
.source "LegacySavedStateHandleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LegacySavedStateHandleController$OnRecreation;
    }
.end annotation


# direct methods
.method static attachHandleIfNeeded(Landroidx/lifecycle/ViewModel;Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V
    .locals 2
    .param p0, "viewModel"    # Landroidx/lifecycle/ViewModel;
    .param p1, "registry"    # Landroidx/savedstate/SavedStateRegistry;
    .param p2, "lifecycle"    # Landroidx/lifecycle/Lifecycle;

    .line 67
    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ViewModel;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/SavedStateHandleController;

    .line 69
    .local v0, "controller":Landroidx/lifecycle/SavedStateHandleController;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/SavedStateHandleController;->isAttached()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/SavedStateHandleController;->attachToLifecycle(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V

    .line 71
    invoke-static {p1, p2}, Landroidx/lifecycle/LegacySavedStateHandleController;->tryToAddRecreator(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V

    .line 73
    :cond_0
    return-void
.end method

.method private static tryToAddRecreator(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V
    .locals 2
    .param p0, "registry"    # Landroidx/savedstate/SavedStateRegistry;
    .param p1, "lifecycle"    # Landroidx/lifecycle/Lifecycle;

    .line 76
    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    .line 77
    .local v0, "currentState":Landroidx/lifecycle/Lifecycle$State;
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    .line 80
    :cond_1
    new-instance v1, Landroidx/lifecycle/LegacySavedStateHandleController$1;

    invoke-direct {v1, p1, p0}, Landroidx/lifecycle/LegacySavedStateHandleController$1;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/savedstate/SavedStateRegistry;)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_1

    .line 78
    :goto_0
    const-class v1, Landroidx/lifecycle/LegacySavedStateHandleController$OnRecreation;

    invoke-virtual {p0, v1}, Landroidx/savedstate/SavedStateRegistry;->runOnNextRecreation(Ljava/lang/Class;)V

    .line 91
    :goto_1
    return-void
.end method
