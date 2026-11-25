.class public interface abstract Lcom/winlator/xserver/Pointer$OnPointerMotionListener;
.super Ljava/lang/Object;
.source "Pointer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/xserver/Pointer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPointerMotionListener"
.end annotation


# virtual methods
.method public onPointerButtonPress(Lcom/winlator/xserver/Pointer$Button;)V
    .locals 0
    .param p1, "button"    # Lcom/winlator/xserver/Pointer$Button;

    .line 28
    return-void
.end method

.method public onPointerButtonRelease(Lcom/winlator/xserver/Pointer$Button;)V
    .locals 0
    .param p1, "button"    # Lcom/winlator/xserver/Pointer$Button;

    .line 29
    return-void
.end method

.method public onPointerMove(SS)V
    .locals 0
    .param p1, "x"    # S
    .param p2, "y"    # S

    .line 30
    return-void
.end method
