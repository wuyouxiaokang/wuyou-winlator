.class public interface abstract Lcom/wuyouwin/xserver/XResourceManager$OnResourceLifecycleListener;
.super Ljava/lang/Object;
.source "XResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/xserver/XResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnResourceLifecycleListener"
.end annotation


# virtual methods
.method public onCreateResource(Lcom/wuyouwin/xserver/XResource;)V
    .locals 0
    .param p1, "resource"    # Lcom/wuyouwin/xserver/XResource;

    .line 9
    return-void
.end method

.method public abstract onFreeResource(Lcom/wuyouwin/xserver/XResource;)V
.end method
