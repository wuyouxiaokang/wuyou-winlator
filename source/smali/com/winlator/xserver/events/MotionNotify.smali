.class public Lcom/winlator/xserver/events/MotionNotify;
.super Lcom/winlator/xserver/events/InputDeviceEvent;
.source "MotionNotify.java"


# direct methods
.method public constructor <init>(ZLcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;SSSSLcom/winlator/core/Bitmask;)V
    .locals 12
    .param p1, "detail"    # Z
    .param p2, "root"    # Lcom/winlator/xserver/Window;
    .param p3, "event"    # Lcom/winlator/xserver/Window;
    .param p4, "child"    # Lcom/winlator/xserver/Window;
    .param p5, "rootX"    # S
    .param p6, "rootY"    # S
    .param p7, "eventX"    # S
    .param p8, "eventY"    # S
    .param p9, "state"    # Lcom/winlator/core/Bitmask;

    .line 8
    move v0, p1

    int-to-byte v3, v0

    const/4 v2, 0x6

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/winlator/xserver/events/InputDeviceEvent;-><init>(IBLcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;Lcom/winlator/xserver/Window;SSSSLcom/winlator/core/Bitmask;)V

    .line 9
    return-void
.end method
