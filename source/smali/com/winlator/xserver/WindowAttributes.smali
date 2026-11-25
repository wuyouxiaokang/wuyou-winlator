.class public Lcom/winlator/xserver/WindowAttributes;
.super Ljava/lang/Object;
.source "WindowAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/xserver/WindowAttributes$BackingStore;,
        Lcom/winlator/xserver/WindowAttributes$BitGravity;,
        Lcom/winlator/xserver/WindowAttributes$WinGravity;,
        Lcom/winlator/xserver/WindowAttributes$WindowClass;
    }
.end annotation


# instance fields
.field private final attributeFlags:Lcom/winlator/core/Bitmask;

.field private backingPixel:I

.field private backingPlanes:I

.field private backingStore:Lcom/winlator/xserver/WindowAttributes$BackingStore;

.field private bitGravity:Lcom/winlator/xserver/WindowAttributes$BitGravity;

.field private cursor:Lcom/winlator/xserver/Cursor;

.field private doNotPropagateMask:Lcom/winlator/core/Bitmask;

.field private eventMask:Lcom/winlator/core/Bitmask;

.field private winGravity:Lcom/winlator/xserver/WindowAttributes$WinGravity;

.field public final window:Lcom/winlator/xserver/Window;

.field private windowClass:Lcom/winlator/xserver/WindowAttributes$WindowClass;


# direct methods
.method public constructor <init>(Lcom/winlator/xserver/Window;)V
    .locals 4
    .param p1, "window"    # Lcom/winlator/xserver/Window;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/xserver/WindowAttributes;->backingPixel:I

    .line 32
    const/4 v1, 0x1

    iput v1, p0, Lcom/winlator/xserver/WindowAttributes;->backingPlanes:I

    .line 33
    sget-object v1, Lcom/winlator/xserver/WindowAttributes$BackingStore;->NOT_USEFUL:Lcom/winlator/xserver/WindowAttributes$BackingStore;

    iput-object v1, p0, Lcom/winlator/xserver/WindowAttributes;->backingStore:Lcom/winlator/xserver/WindowAttributes$BackingStore;

    .line 34
    sget-object v1, Lcom/winlator/xserver/WindowAttributes$BitGravity;->CENTER:Lcom/winlator/xserver/WindowAttributes$BitGravity;

    iput-object v1, p0, Lcom/winlator/xserver/WindowAttributes;->bitGravity:Lcom/winlator/xserver/WindowAttributes$BitGravity;

    .line 36
    new-instance v1, Lcom/winlator/core/Bitmask;

    invoke-direct {v1, v0}, Lcom/winlator/core/Bitmask;-><init>(I)V

    iput-object v1, p0, Lcom/winlator/xserver/WindowAttributes;->doNotPropagateMask:Lcom/winlator/core/Bitmask;

    .line 37
    new-instance v1, Lcom/winlator/core/Bitmask;

    invoke-direct {v1, v0}, Lcom/winlator/core/Bitmask;-><init>(I)V

    iput-object v1, p0, Lcom/winlator/xserver/WindowAttributes;->eventMask:Lcom/winlator/core/Bitmask;

    .line 38
    sget-object v0, Lcom/winlator/xserver/WindowAttributes$WinGravity;->CENTER:Lcom/winlator/xserver/WindowAttributes$WinGravity;

    iput-object v0, p0, Lcom/winlator/xserver/WindowAttributes;->winGravity:Lcom/winlator/xserver/WindowAttributes$WinGravity;

    .line 39
    sget-object v0, Lcom/winlator/xserver/WindowAttributes$WindowClass;->INPUT_OUTPUT:Lcom/winlator/xserver/WindowAttributes$WindowClass;

    iput-object v0, p0, Lcom/winlator/xserver/WindowAttributes;->windowClass:Lcom/winlator/xserver/WindowAttributes$WindowClass;

    .line 40
    new-instance v0, Lcom/winlator/core/Bitmask;

    const/high16 v1, 0x40000

    const/high16 v2, 0x80000

    const/high16 v3, 0x10000

    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/winlator/core/Bitmask;-><init>([I)V

    iput-object v0, p0, Lcom/winlator/xserver/WindowAttributes;->attributeFlags:Lcom/winlator/core/Bitmask;

    .line 44
    iput-object p1, p0, Lcom/winlator/xserver/WindowAttributes;->window:Lcom/winlator/xserver/Window;

    .line 45
    return-void
.end method


# virtual methods
.method public getBackingPixel()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/winlator/xserver/WindowAttributes;->backingPixel:I

    return v0
.end method

.method public getBackingPlanes()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/winlator/xserver/WindowAttributes;->backingPlanes:I

    return v0
.end method

.method public getBackingStore()Lcom/winlator/xserver/WindowAttributes$BackingStore;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/winlator/xserver/WindowAttributes;->backingStore:Lcom/winlator/xserver/WindowAttributes$BackingStore;

    return-object v0
.end method

.method public getBitGravity()Lcom/winlator/xserver/WindowAttributes$BitGravity;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/winlator/xserver/WindowAttributes;->bitGravity:Lcom/winlator/xserver/WindowAttributes$BitGravity;

    return-object v0
.end method

.method public getCursor()Lcom/winlator/xserver/Cursor;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/winlator/xserver/WindowAttributes;->window:Lcom/winlator/xserver/Window;

    invoke-virtual {v0}, Lcom/winlator/xserver/Window;->getParent()Lcom/winlator/xserver/Window;

    move-result-object v0

    .line 65
    .local v0, "parent":Lcom/winlator/xserver/Window;
    iget-object v1, p0, Lcom/winlator/xserver/WindowAttributes;->cursor:Lcom/winlator/xserver/Cursor;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/winlator/xserver/Window;->attributes:Lcom/winlator/xserver/WindowAttributes;

    invoke-virtual {v1}, Lcom/winlator/xserver/WindowAttributes;->getCursor()Lcom/winlator/xserver/Cursor;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/winlator/xserver/WindowAttributes;->cursor:Lcom/winlator/xserver/Cursor;

    :goto_0
    return-object v1
.end method

.method public getDoNotPropagateMask()Lcom/winlator/core/Bitmask;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/winlator/xserver/WindowAttributes;->doNotPropagateMask:Lcom/winlator/core/Bitmask;

    return-object v0
.end method

.method public getEventMask()Lcom/winlator/core/Bitmask;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/winlator/xserver/WindowAttributes;->eventMask:Lcom/winlator/core/Bitmask;

    return-object v0
.end method

.method public getWinGravity()Lcom/winlator/xserver/WindowAttributes$WinGravity;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/winlator/xserver/WindowAttributes;->winGravity:Lcom/winlator/xserver/WindowAttributes$WinGravity;

    return-object v0
.end method

.method public getWindowClass()Lcom/winlator/xserver/WindowAttributes$WindowClass;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/winlator/xserver/WindowAttributes;->windowClass:Lcom/winlator/xserver/WindowAttributes$WindowClass;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/winlator/xserver/WindowAttributes;->attributeFlags:Lcom/winlator/core/Bitmask;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isMapped()Z
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/winlator/xserver/WindowAttributes;->attributeFlags:Lcom/winlator/core/Bitmask;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isOverrideRedirect()Z
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/winlator/xserver/WindowAttributes;->attributeFlags:Lcom/winlator/core/Bitmask;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isRenderSubwindows()Z
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/winlator/xserver/WindowAttributes;->attributeFlags:Lcom/winlator/core/Bitmask;

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isSaveUnder()Z
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/winlator/xserver/WindowAttributes;->attributeFlags:Lcom/winlator/core/Bitmask;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isTransparent()Z
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/winlator/xserver/WindowAttributes;->attributeFlags:Lcom/winlator/core/Bitmask;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isViewable()Z
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/winlator/xserver/WindowAttributes;->attributeFlags:Lcom/winlator/core/Bitmask;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 113
    iget-object v0, p0, Lcom/winlator/xserver/WindowAttributes;->attributeFlags:Lcom/winlator/core/Bitmask;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1, p1}, Lcom/winlator/core/Bitmask;->set(IZ)V

    .line 114
    return-void
.end method

.method public setMapped(Z)V
    .locals 2
    .param p1, "mapped"    # Z

    .line 81
    iget-object v0, p0, Lcom/winlator/xserver/WindowAttributes;->attributeFlags:Lcom/winlator/core/Bitmask;

    const v1, 0x8000

    invoke-virtual {v0, v1, p1}, Lcom/winlator/core/Bitmask;->set(IZ)V

    .line 82
    return-void
.end method

.method public setRenderSubwindows(Z)V
    .locals 2
    .param p1, "renderSubwindows"    # Z

    .line 121
    iget-object v0, p0, Lcom/winlator/xserver/WindowAttributes;->attributeFlags:Lcom/winlator/core/Bitmask;

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1, p1}, Lcom/winlator/core/Bitmask;->set(IZ)V

    .line 122
    return-void
.end method

.method public setTransparent(Z)V
    .locals 2
    .param p1, "transparent"    # Z

    .line 183
    iget-object v0, p0, Lcom/winlator/xserver/WindowAttributes;->attributeFlags:Lcom/winlator/core/Bitmask;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1, p1}, Lcom/winlator/core/Bitmask;->set(IZ)V

    .line 184
    return-void
.end method

.method public setViewable(Z)V
    .locals 2
    .param p1, "viewable"    # Z

    .line 129
    iget-object v0, p0, Lcom/winlator/xserver/WindowAttributes;->attributeFlags:Lcom/winlator/core/Bitmask;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1, p1}, Lcom/winlator/core/Bitmask;->set(IZ)V

    .line 130
    return-void
.end method

.method public setWindowClass(Lcom/winlator/xserver/WindowAttributes$WindowClass;)V
    .locals 0
    .param p1, "windowClass"    # Lcom/winlator/xserver/WindowAttributes$WindowClass;

    .line 101
    iput-object p1, p0, Lcom/winlator/xserver/WindowAttributes;->windowClass:Lcom/winlator/xserver/WindowAttributes$WindowClass;

    .line 102
    return-void
.end method

.method public update(Lcom/winlator/core/Bitmask;Lcom/winlator/xconnector/XInputStream;Lcom/winlator/xserver/XClient;)V
    .locals 5
    .param p1, "valueMask"    # Lcom/winlator/core/Bitmask;
    .param p2, "inputStream"    # Lcom/winlator/xconnector/XInputStream;
    .param p3, "client"    # Lcom/winlator/xserver/XClient;

    .line 133
    invoke-virtual {p1}, Lcom/winlator/core/Bitmask;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 134
    .local v1, "index":I
    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_2

    .line 164
    :sswitch_0
    iget-object v2, p3, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/xserver/XServer;->cursorManager:Lcom/winlator/xserver/CursorManager;

    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/winlator/xserver/CursorManager;->getCursor(I)Lcom/winlator/xserver/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/winlator/xserver/WindowAttributes;->cursor:Lcom/winlator/xserver/Cursor;

    .line 165
    goto/16 :goto_2

    .line 161
    :sswitch_1
    new-instance v2, Lcom/winlator/core/Bitmask;

    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/winlator/core/Bitmask;-><init>(I)V

    iput-object v2, p0, Lcom/winlator/xserver/WindowAttributes;->doNotPropagateMask:Lcom/winlator/core/Bitmask;

    .line 162
    goto :goto_2

    .line 158
    :sswitch_2
    new-instance v2, Lcom/winlator/core/Bitmask;

    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/winlator/core/Bitmask;-><init>(I)V

    iput-object v2, p0, Lcom/winlator/xserver/WindowAttributes;->eventMask:Lcom/winlator/core/Bitmask;

    .line 159
    goto :goto_2

    .line 155
    :sswitch_3
    iget-object v2, p0, Lcom/winlator/xserver/WindowAttributes;->attributeFlags:Lcom/winlator/core/Bitmask;

    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v1, v4}, Lcom/winlator/core/Bitmask;->set(IZ)V

    .line 156
    goto :goto_2

    .line 139
    :sswitch_4
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/winlator/xserver/WindowAttributes;->backingPixel:I

    .line 140
    goto :goto_2

    .line 142
    :sswitch_5
    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/winlator/xserver/WindowAttributes;->backingPlanes:I

    .line 143
    goto :goto_2

    .line 151
    :sswitch_6
    invoke-static {}, Lcom/winlator/xserver/WindowAttributes$BackingStore;->values()[Lcom/winlator/xserver/WindowAttributes$BackingStore;

    move-result-object v2

    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/winlator/xserver/WindowAttributes;->backingStore:Lcom/winlator/xserver/WindowAttributes$BackingStore;

    .line 152
    goto :goto_2

    .line 148
    :sswitch_7
    invoke-static {}, Lcom/winlator/xserver/WindowAttributes$WinGravity;->values()[Lcom/winlator/xserver/WindowAttributes$WinGravity;

    move-result-object v2

    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/winlator/xserver/WindowAttributes;->winGravity:Lcom/winlator/xserver/WindowAttributes$WinGravity;

    .line 149
    goto :goto_2

    .line 145
    :sswitch_8
    invoke-static {}, Lcom/winlator/xserver/WindowAttributes$BitGravity;->values()[Lcom/winlator/xserver/WindowAttributes$BitGravity;

    move-result-object v2

    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/winlator/xserver/WindowAttributes;->bitGravity:Lcom/winlator/xserver/WindowAttributes$BitGravity;

    .line 146
    goto :goto_2

    .line 136
    :sswitch_9
    iget-object v2, p0, Lcom/winlator/xserver/WindowAttributes;->window:Lcom/winlator/xserver/Window;

    invoke-virtual {v2}, Lcom/winlator/xserver/Window;->getContent()Lcom/winlator/xserver/Drawable;

    move-result-object v2

    invoke-virtual {p2}, Lcom/winlator/xconnector/XInputStream;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/winlator/xserver/Drawable;->fillColor(I)V

    .line 137
    goto :goto_2

    .line 170
    :sswitch_a
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Lcom/winlator/xconnector/XInputStream;->skip(I)V

    .line 173
    .end local v1    # "index":I
    :goto_2
    goto/16 :goto_0

    .line 175
    :cond_1
    iget-object v0, p3, Lcom/winlator/xserver/XClient;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    iget-object v1, p0, Lcom/winlator/xserver/WindowAttributes;->window:Lcom/winlator/xserver/Window;

    invoke-virtual {v0, v1, p1}, Lcom/winlator/xserver/WindowManager;->triggerOnUpdateWindowAttributes(Lcom/winlator/xserver/Window;Lcom/winlator/core/Bitmask;)V

    .line 176
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_9
        0x4 -> :sswitch_a
        0x8 -> :sswitch_a
        0x10 -> :sswitch_8
        0x20 -> :sswitch_7
        0x40 -> :sswitch_6
        0x80 -> :sswitch_5
        0x100 -> :sswitch_4
        0x200 -> :sswitch_3
        0x400 -> :sswitch_3
        0x800 -> :sswitch_2
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_a
        0x4000 -> :sswitch_0
    .end sparse-switch
.end method
