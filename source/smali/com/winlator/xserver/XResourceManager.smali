.class public abstract Lcom/winlator/xserver/XResourceManager;
.super Ljava/lang/Object;
.source "XResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/xserver/XResourceManager$OnResourceLifecycleListener;
    }
.end annotation


# instance fields
.field private final onResourceLifecycleListeners:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winlator/xserver/XResourceManager;->onResourceLifecycleListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addOnResourceLifecycleListener(Lcom/winlator/xserver/XResourceManager$OnResourceLifecycleListener;)V
    .locals 1
    .param p1, "OnResourceLifecycleListener"    # Lcom/winlator/xserver/XResourceManager$OnResourceLifecycleListener;

    .line 15
    iget-object v0, p0, Lcom/winlator/xserver/XResourceManager;->onResourceLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    return-void
.end method

.method public removeOnResourceLifecycleListener(Lcom/winlator/xserver/XResourceManager$OnResourceLifecycleListener;)V
    .locals 1
    .param p1, "OnResourceLifecycleListener"    # Lcom/winlator/xserver/XResourceManager$OnResourceLifecycleListener;

    .line 19
    iget-object v0, p0, Lcom/winlator/xserver/XResourceManager;->onResourceLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public triggerOnCreateResourceListener(Lcom/winlator/xserver/XResource;)V
    .locals 2
    .param p1, "resource"    # Lcom/winlator/xserver/XResource;

    .line 23
    iget-object v0, p0, Lcom/winlator/xserver/XResourceManager;->onResourceLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 24
    iget-object v1, p0, Lcom/winlator/xserver/XResourceManager;->onResourceLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/xserver/XResourceManager$OnResourceLifecycleListener;

    invoke-interface {v1, p1}, Lcom/winlator/xserver/XResourceManager$OnResourceLifecycleListener;->onCreateResource(Lcom/winlator/xserver/XResource;)V

    .line 23
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 26
    .end local v0    # "i":I
    return-void
.end method

.method public triggerOnFreeResourceListener(Lcom/winlator/xserver/XResource;)V
    .locals 2
    .param p1, "resource"    # Lcom/winlator/xserver/XResource;

    .line 29
    iget-object v0, p0, Lcom/winlator/xserver/XResourceManager;->onResourceLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 30
    iget-object v1, p0, Lcom/winlator/xserver/XResourceManager;->onResourceLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/xserver/XResourceManager$OnResourceLifecycleListener;

    invoke-interface {v1, p1}, Lcom/winlator/xserver/XResourceManager$OnResourceLifecycleListener;->onFreeResource(Lcom/winlator/xserver/XResource;)V

    .line 29
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 32
    .end local v0    # "i":I
    return-void
.end method
