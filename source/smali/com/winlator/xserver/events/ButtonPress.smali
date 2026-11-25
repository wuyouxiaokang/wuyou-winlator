.class public Lcom/winlator/xserver/events/ButtonPress;
.super Lcom/winlator/xserver/events/InputDeviceEvent;
.source "ButtonPress.java"


# direct methods
.method public constructor <init>(BLcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;SSSSLcom/winlator/core/Bitmask;)V
    .locals 11
    .param p1, "detail"    # B
    .param p2, "root"    # Lcom/winlator/xserver/Window;
    .param p3, "event"    # Lcom/winlator/xserver/Window;
    .param p4, "child"    # Lcom/winlator/xserver/Window;
    .param p5, "rootX"    # S
    .param p6, "rootY"    # S
    .param p7, "eventX"    # S
    .param p8, "eventY"    # S
    .param p9, "state"    # Lcom/winlator/core/Bitmask;

    .line 8
    const/4 v1, 0x4

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/winlator/xserver/events/InputDeviceEvent;-><init>(IBLcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;SSSSLcom/winlator/core/Bitmask;)V

    .line 9
    return-void
.end method
