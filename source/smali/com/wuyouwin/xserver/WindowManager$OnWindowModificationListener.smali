.class public interface abstract Lcom/wuyouwin/xserver/WindowManager$OnWindowModificationListener;
.super Ljava/lang/Object;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/xserver/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnWindowModificationListener"
.end annotation


# virtual methods
.method public onChangeWindowZOrder(Lcom/wuyouwin/xserver/Window;)V
    .locals 0
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;

    .line 38
    return-void
.end method

.method public onMapWindow(Lcom/wuyouwin/xserver/Window;)V
    .locals 0
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;

    .line 34
    return-void
.end method

.method public onModifyWindowProperty(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Property;)V
    .locals 0
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;
    .param p2, "property"    # Lcom/wuyouwin/xserver/Property;

    .line 46
    return-void
.end method

.method public onUnmapWindow(Lcom/wuyouwin/xserver/Window;)V
    .locals 0
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;

    .line 36
    return-void
.end method

.method public onUpdateWindowAttributes(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/core/Bitmask;)V
    .locals 0
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;
    .param p2, "mask"    # Lcom/wuyouwin/core/Bitmask;

    .line 44
    return-void
.end method

.method public onUpdateWindowContent(Lcom/wuyouwin/xserver/Window;)V
    .locals 0
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;

    .line 40
    return-void
.end method

.method public onUpdateWindowGeometry(Lcom/wuyouwin/xserver/Window;Z)V
    .locals 0
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;
    .param p2, "resized"    # Z

    .line 42
    return-void
.end method
