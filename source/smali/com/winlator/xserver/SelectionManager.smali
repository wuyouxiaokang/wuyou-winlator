.class public Lcom/winlator/xserver/SelectionManager;
.super Ljava/lang/Object;
.source "SelectionManager.java"

# interfaces
.implements Lcom/winlator/xserver/XResourceManager$OnResourceLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/xserver/SelectionManager$Selection;
    }
.end annotation


# instance fields
.field private final selections:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/winlator/xserver/WindowManager;)V
    .locals 1
    .param p1, "windowManager"    # Lcom/winlator/xserver/WindowManager;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/winlator/xserver/SelectionManager;->selections:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {p1, p0}, Lcom/winlator/xserver/XResourceManager;->addOnResourceLifecycleListener(Lcom/winlator/xserver/XResourceManager$OnResourceLifecycleListener;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getSelection(I)Lcom/winlator/xserver/SelectionManager$Selection;
    .locals 2
    .param p1, "atom"    # I

    .line 29
    iget-object v0, p0, Lcom/winlator/xserver/SelectionManager;->selections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/xserver/SelectionManager$Selection;

    .line 30
    .local v0, "selection":Lcom/winlator/xserver/SelectionManager$Selection;
    if-eqz v0, :cond_0

    return-object v0

    .line 31
    :cond_0
    new-instance v1, Lcom/winlator/xserver/SelectionManager$Selection;

    invoke-direct {v1}, Lcom/winlator/xserver/SelectionManager$Selection;-><init>()V

    move-object v0, v1

    .line 32
    iget-object v1, p0, Lcom/winlator/xserver/SelectionManager;->selections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    return-object v0
.end method

.method public onFreeResource(Lcom/winlator/xserver/XResource;)V
    .locals 3
    .param p1, "resource"    # Lcom/winlator/xserver/XResource;

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/winlator/xserver/SelectionManager;->selections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 39
    iget-object v1, p0, Lcom/winlator/xserver/SelectionManager;->selections:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/xserver/SelectionManager$Selection;

    .line 40
    .local v1, "selection":Lcom/winlator/xserver/SelectionManager$Selection;
    iget-object v2, v1, Lcom/winlator/xserver/SelectionManager$Selection;->owner:Lcom/winlator/xserver/Window;

    if-ne v2, p1, :cond_0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/winlator/xserver/SelectionManager$Selection;->owner:Lcom/winlator/xserver/Window;

    .line 38
    .end local v1    # "selection":Lcom/winlator/xserver/SelectionManager$Selection;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 42
    .end local v0    # "i":I
    return-void
.end method

.method public setSelection(ILcom/winlator/xserver/Window;Lcom/winlator/xserver/XClient;I)V
    .locals 3
    .param p1, "atom"    # I
    .param p2, "owner"    # Lcom/winlator/xserver/Window;
    .param p3, "client"    # Lcom/winlator/xserver/XClient;
    .param p4, "timestamp"    # I

    .line 20
    invoke-virtual {p0, p1}, Lcom/winlator/xserver/SelectionManager;->getSelection(I)Lcom/winlator/xserver/SelectionManager$Selection;

    move-result-object v0

    .line 21
    .local v0, "selection":Lcom/winlator/xserver/SelectionManager$Selection;
    iget-object v1, v0, Lcom/winlator/xserver/SelectionManager$Selection;->owner:Lcom/winlator/xserver/Window;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/winlator/xserver/SelectionManager$Selection;->access$000(Lcom/winlator/xserver/SelectionManager$Selection;)Lcom/winlator/xserver/XClient;

    move-result-object v1

    if-eq v1, p3, :cond_1

    .line 22
    :cond_0
    invoke-static {v0}, Lcom/winlator/xserver/SelectionManager$Selection;->access$000(Lcom/winlator/xserver/SelectionManager$Selection;)Lcom/winlator/xserver/XClient;

    move-result-object v1

    new-instance v2, Lcom/winlator/xserver/events/SelectionClear;

    invoke-direct {v2, p4, p2, p1}, Lcom/winlator/xserver/events/SelectionClear;-><init>(ILcom/winlator/xserver/Window;I)V

    invoke-virtual {v1, v2}, Lcom/winlator/xserver/XClient;->sendEvent(Lcom/winlator/xserver/events/Event;)V

    .line 24
    :cond_1
    iput-object p2, v0, Lcom/winlator/xserver/SelectionManager$Selection;->owner:Lcom/winlator/xserver/Window;

    .line 25
    invoke-static {v0, p3}, Lcom/winlator/xserver/SelectionManager$Selection;->access$002(Lcom/winlator/xserver/SelectionManager$Selection;Lcom/winlator/xserver/XClient;)Lcom/winlator/xserver/XClient;

    .line 26
    return-void
.end method
