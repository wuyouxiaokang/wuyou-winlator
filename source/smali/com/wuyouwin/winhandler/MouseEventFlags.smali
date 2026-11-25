.class public abstract Lcom/wuyouwin/winhandler/MouseEventFlags;
.super Ljava/lang/Object;
.source "MouseEventFlags.java"


# direct methods
.method public static getFlagFor(Lcom/wuyouwin/xserver/Pointer$Button;Z)I
    .locals 2
    .param p0, "button"    # Lcom/wuyouwin/xserver/Pointer$Button;
    .param p1, "isActionDown"    # Z

    .line 20
    sget-object v0, Lcom/wuyouwin/winhandler/MouseEventFlags$1;->$SwitchMap$com$winlator$xserver$Pointer$Button:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 31
    const/4 v0, 0x0

    return v0

    .line 29
    :pswitch_0
    const/16 v0, 0x800

    return v0

    .line 26
    :pswitch_1
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    return v0

    .line 24
    :pswitch_2
    if-eqz p1, :cond_1

    const/16 v0, 0x20

    goto :goto_1

    :cond_1
    const/16 v0, 0x40

    :goto_1
    return v0

    .line 22
    :pswitch_3
    if-eqz p1, :cond_2

    const/4 v0, 0x2

    goto :goto_2

    :cond_2
    const/4 v0, 0x4

    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
