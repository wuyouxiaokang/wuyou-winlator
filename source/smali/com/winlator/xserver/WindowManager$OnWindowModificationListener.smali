.class public interface abstract Lcom/winlator/xserver/WindowManager$OnWindowModificationListener;
.super Ljava/lang/Object;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/xserver/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnWindowModificationListener"
.end annotation


# virtual methods
.method public onChangeWindowZOrder(Lcom/winlator/xserver/Window;)V
    .locals 0
    .param p1, "window"    # Lcom/winlator/xserver/Window;

    .line 38
    return-void
.end method

.method public onMapWindow(Lcom/winlator/xserver/Window;)V
    .locals 0
    .param p1, "window"    # Lcom/winlator/xserver/Window;

    .line 34
    return-void
.end method

.method public onModifyWindowProperty(Lcom/winlator/xserver/Window;Lcom/winlator/xserver/Property;)V
    .locals 0
    .param p1, "window"    # Lcom/winlator/xserver/Window;
    .param p2, "property"    # Lcom/winlator/xserver/Property;

    .line 46
    return-void
.end method

.method public onUnmapWindow(Lcom/winlator/xserver/Window;)V
    .locals 0
    .param p1, "window"    # Lcom/winlator/xserver/Window;

    .line 36
    return-void
.end method

.method public onUpdateWindowAttributes(Lcom/winlator/xserver/Window;Lcom/winlator/core/Bitmask;)V
    .locals 0
    .param p1, "window"    # Lcom/winlator/xserver/Window;
    .param p2, "mask"    # Lcom/winlator/core/Bitmask;

    .line 44
    return-void
.end method

.method public onUpdateWindowContent(Lcom/winlator/xserver/Window;)V
    .locals 0
    .param p1, "window"    # Lcom/winlator/xserver/Window;

    .line 40
    return-void
.end method

.method public onUpdateWindowGeometry(Lcom/winlator/xserver/Window;Z)V
    .locals 0
    .param p1, "window"    # Lcom/winlator/xserver/Window;
    .param p2, "resized"    # Z

    .line 42
    return-void
.end method
