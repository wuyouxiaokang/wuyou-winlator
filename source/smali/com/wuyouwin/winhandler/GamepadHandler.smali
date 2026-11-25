.class public Lcom/wuyouwin/winhandler/GamepadHandler;
.super Ljava/lang/Object;
.source "GamepadHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/winhandler/GamepadHandler$GamepadModel;
    }
.end annotation


# instance fields
.field private final connectedControllers:Ljava/util/ArrayList;

.field private dinputMapperType:B

.field private final gamepadClients:Ljava/util/List;

.field private gamepadModelIds:[S

.field private gamepadPlayerConfigs:[Lcom/wuyouwin/winhandler/GamepadPlayerConfig;

.field private final gamepadSlots:[Lcom/wuyouwin/inputcontrols/GamepadSlot;

.field private final sendingState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final winHandler:Lcom/wuyouwin/winhandler/WinHandler;


# direct methods
.method public static synthetic $r8$lambda$8wtHW09uRmCedj6xyBSpMZyTyZs(Lcom/wuyouwin/winhandler/GamepadHandler;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/wuyouwin/winhandler/GamepadHandler;->lambda$handleGetGamepadRequest$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bWmfYegZAJBOP9qVkLp3TCM0f_Y(Lcom/wuyouwin/winhandler/GamepadHandler;Ljava/nio/ByteBuffer;BLcom/wuyouwin/inputcontrols/GamepadState;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wuyouwin/winhandler/GamepadHandler;->lambda$sendGamepadState$1(Ljava/nio/ByteBuffer;BLcom/wuyouwin/inputcontrols/GamepadState;I)V

    return-void
.end method

.method public constructor <init>(Lcom/wuyouwin/winhandler/WinHandler;)V
    .locals 2
    .param p1, "winHandler"    # Lcom/wuyouwin/winhandler/WinHandler;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadClients:Ljava/util/List;

    .line 38
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->dinputMapperType:B

    .line 39
    const/4 v0, 0x4

    new-array v1, v0, [Lcom/wuyouwin/inputcontrols/GamepadSlot;

    iput-object v1, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadSlots:[Lcom/wuyouwin/inputcontrols/GamepadSlot;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->connectedControllers:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->sendingState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    iput-object p1, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->winHandler:Lcom/wuyouwin/winhandler/WinHandler;

    .line 69
    return-void
.end method

.method private getConnectedControllerById(I)Lcom/wuyouwin/inputcontrols/ExternalController;
    .locals 4
    .param p1, "deviceId"    # I

    .line 265
    iget-object v0, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->connectedControllers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->connectedControllers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wuyouwin/inputcontrols/ExternalController;

    .line 267
    .local v2, "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    invoke-virtual {v2}, Lcom/wuyouwin/inputcontrols/ExternalController;->getDeviceId()I

    move-result v3

    if-ne v3, p1, :cond_0

    monitor-exit v0

    return-object v2

    .line 271
    .end local v2    # "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 267
    .restart local v2    # "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    :cond_0
    nop

    .line 268
    .end local v2    # "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    goto :goto_0

    .line 270
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 271
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isAnyGamepadConnected()Z
    .locals 5

    .line 132
    iget-object v0, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadSlots:[Lcom/wuyouwin/inputcontrols/GamepadSlot;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .local v4, "gamepadSlot":Lcom/wuyouwin/inputcontrols/GamepadSlot;
    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    .end local v4    # "gamepadSlot":Lcom/wuyouwin/inputcontrols/GamepadSlot;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    :cond_1
    return v2
.end method

.method private synthetic lambda$handleGetGamepadRequest$0(I)V
    .locals 10
    .param p1, "port"    # I

    .line 146
    iget-object v0, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->winHandler:Lcom/wuyouwin/winhandler/WinHandler;

    iget-object v0, v0, Lcom/wuyouwin/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    .line 147
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 148
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 150
    const/4 v1, 0x0

    .line 151
    .local v1, "buttonCount":I
    const/4 v2, -0x1

    .line 153
    .local v2, "axisMode":I
    iget-byte v3, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->dinputMapperType:B

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 154
    const/16 v1, 0xa

    .line 155
    const/4 v2, 0x1

    goto :goto_0

    .line 157
    :cond_0
    iget-byte v3, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->dinputMapperType:B

    if-nez v3, :cond_1

    .line 158
    const/16 v1, 0xc

    .line 159
    const/4 v2, 0x0

    .line 162
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":B
    :goto_1
    const/4 v5, 0x4

    if-ge v3, v5, :cond_5

    .line 163
    mul-int/lit8 v5, v3, 0x3c

    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 164
    iget-object v5, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadSlots:[Lcom/wuyouwin/inputcontrols/GamepadSlot;

    aget-object v5, v5, v3

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 165
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 166
    int-to-byte v5, v1

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 167
    int-to-byte v5, v2

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 168
    iget-object v5, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadPlayerConfigs:[Lcom/wuyouwin/winhandler/GamepadPlayerConfig;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadPlayerConfigs:[Lcom/wuyouwin/winhandler/GamepadPlayerConfig;

    aget-object v5, v5, v3

    iget-boolean v5, v5, Lcom/wuyouwin/winhandler/GamepadPlayerConfig;->vibration:Z

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v6

    :goto_2
    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 170
    iget-object v5, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadModelIds:[S

    array-length v5, v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_3

    .line 171
    iget-object v5, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadModelIds:[S

    aget-short v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 172
    iget-object v5, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadModelIds:[S

    aget-short v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 175
    :cond_3
    iget-object v5, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadSlots:[Lcom/wuyouwin/inputcontrols/GamepadSlot;

    aget-object v5, v5, v3

    invoke-interface {v5}, Lcom/wuyouwin/inputcontrols/GamepadSlot;->getVendorId()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 176
    iget-object v5, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadSlots:[Lcom/wuyouwin/inputcontrols/GamepadSlot;

    aget-object v5, v5, v3

    invoke-interface {v5}, Lcom/wuyouwin/inputcontrols/GamepadSlot;->getProductId()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 179
    :goto_3
    iget-object v5, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadSlots:[Lcom/wuyouwin/inputcontrols/GamepadSlot;

    aget-object v5, v5, v3

    invoke-interface {v5}, Lcom/wuyouwin/inputcontrols/GamepadSlot;->getName()Ljava/lang/String;

    move-result-object v5

    .line 180
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 181
    .local v7, "bytes":[B
    array-length v8, v7

    int-to-byte v8, v8

    const/16 v9, 0x30

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-byte v8, v8

    .line 182
    .local v8, "nameLength":B
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 183
    invoke-virtual {v0, v7, v6, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 184
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "bytes":[B
    .end local v8    # "nameLength":B
    goto :goto_4

    .line 186
    :cond_4
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 187
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 188
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 189
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 190
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 191
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 192
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 162
    :goto_4
    add-int/lit8 v5, v3, 0x1

    int-to-byte v3, v5

    goto/16 :goto_1

    :cond_5
    nop

    .line 196
    .end local v3    # "i":B
    iget-object v3, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->winHandler:Lcom/wuyouwin/winhandler/WinHandler;

    invoke-virtual {v3, p1}, Lcom/wuyouwin/winhandler/WinHandler;->sendPacket(I)Z

    .line 197
    return-void
.end method

.method private synthetic lambda$sendGamepadState$1(Ljava/nio/ByteBuffer;BLcom/wuyouwin/inputcontrols/GamepadState;I)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "slot"    # B
    .param p3, "state"    # Lcom/wuyouwin/inputcontrols/GamepadState;
    .param p4, "port"    # I

    .line 234
    iget-object v0, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->sendingState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 235
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 236
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 237
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 238
    invoke-direct {p0, p1, p3}, Lcom/wuyouwin/winhandler/GamepadHandler;->writeStateToBuffer(Ljava/nio/ByteBuffer;Lcom/wuyouwin/inputcontrols/GamepadState;)V

    .line 239
    iget-object v0, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->winHandler:Lcom/wuyouwin/winhandler/WinHandler;

    invoke-virtual {v0, p4}, Lcom/wuyouwin/winhandler/WinHandler;->sendPacket(I)Z

    .line 240
    return-void
.end method

.method public static loadGamepadModels(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wuyouwin/winhandler/GamepadHandler$GamepadModel;>;"
    new-instance v1, Lcom/wuyouwin/winhandler/GamepadHandler$GamepadModel;

    const v2, 0x7f10006c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/wuyouwin/winhandler/GamepadHandler$GamepadModel;-><init>(Ljava/lang/String;SS)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    const-string v2, "gamepad_models.json"

    invoke-static {p0, v2}, Lcom/wuyouwin/core/FileUtils;->readString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 316
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 317
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 318
    .local v3, "item":Lorg/json/JSONObject;
    const-string v4, "vid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-short v4, v4

    .line 319
    .local v4, "vendorId":S
    const-string v6, "pid"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-short v5, v5

    .line 320
    .local v5, "productId":S
    new-instance v6, Lcom/wuyouwin/winhandler/GamepadHandler$GamepadModel;

    const-string v7, "name"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4, v5}, Lcom/wuyouwin/winhandler/GamepadHandler$GamepadModel;-><init>(Ljava/lang/String;SS)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    nop

    .end local v3    # "item":Lorg/json/JSONObject;
    .end local v4    # "vendorId":S
    .end local v5    # "productId":S
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    goto :goto_1

    .line 316
    .restart local v1    # "jsonArray":Lorg/json/JSONArray;
    .restart local v2    # "i":I
    :cond_0
    nop

    .line 323
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :goto_1
    nop

    .line 324
    return-object v0
.end method

.method private updateGamepadSlots()V
    .locals 13

    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadPlayerConfigs:[Lcom/wuyouwin/winhandler/GamepadPlayerConfig;

    const/4 v3, 0x4

    if-nez v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->winHandler:Lcom/wuyouwin/winhandler/WinHandler;

    iget-object v2, v2, Lcom/wuyouwin/winhandler/WinHandler;->activity:Lcom/wuyouwin/XServerDisplayActivity;

    invoke-virtual {v2}, Lcom/wuyouwin/XServerDisplayActivity;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 74
    .local v2, "preferences":Landroid/content/SharedPreferences;
    new-array v4, v3, [Lcom/wuyouwin/winhandler/GamepadPlayerConfig;

    iput-object v4, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadPlayerConfigs:[Lcom/wuyouwin/winhandler/GamepadPlayerConfig;

    .line 75
    const/4 v4, 0x0

    .local v4, "i":B
    :goto_0
    if-ge v4, v3, :cond_0

    .line 76
    iget-object v5, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadPlayerConfigs:[Lcom/wuyouwin/winhandler/GamepadPlayerConfig;

    new-instance v6, Lcom/wuyouwin/winhandler/GamepadPlayerConfig;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gamepad_player"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/wuyouwin/winhandler/GamepadPlayerConfig;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v4

    .line 75
    add-int/lit8 v5, v4, 0x1

    int-to-byte v4, v5

    goto :goto_0

    .line 80
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    .end local v4    # "i":B
    :cond_0
    iget-object v2, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadModelIds:[S

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->winHandler:Lcom/wuyouwin/winhandler/WinHandler;

    iget-object v2, v2, Lcom/wuyouwin/winhandler/WinHandler;->activity:Lcom/wuyouwin/XServerDisplayActivity;

    invoke-virtual {v2}, Lcom/wuyouwin/XServerDisplayActivity;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 82
    .restart local v2    # "preferences":Landroid/content/SharedPreferences;
    const-string v5, "gamepad_model"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "gamepadModel":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 84
    nop

    .line 85
    const/16 v6, 0x8

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-short v6, v6

    .line 86
    const/16 v8, 0xd

    const/16 v9, 0x11

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-short v7, v7

    const/4 v8, 0x2

    new-array v8, v8, [S

    aput-short v6, v8, v0

    aput-short v7, v8, v1

    iput-object v8, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadModelIds:[S

    goto :goto_1

    .line 89
    :cond_1
    new-array v6, v0, [S

    iput-object v6, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadModelIds:[S

    .line 92
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    .end local v5    # "gamepadModel":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->winHandler:Lcom/wuyouwin/winhandler/WinHandler;

    iget-object v2, v2, Lcom/wuyouwin/winhandler/WinHandler;->activity:Lcom/wuyouwin/XServerDisplayActivity;

    invoke-virtual {v2}, Lcom/wuyouwin/XServerDisplayActivity;->getInputControlsView()Lcom/wuyouwin/widget/InputControlsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wuyouwin/widget/InputControlsView;->getProfile()Lcom/wuyouwin/inputcontrols/ControlsProfile;

    move-result-object v2

    .line 93
    .local v2, "profile":Lcom/wuyouwin/inputcontrols/ControlsProfile;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->isVirtualGamepad()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v1

    goto :goto_2

    :cond_3
    move v5, v0

    .line 95
    .local v5, "useVirtualGamepad":Z
    :goto_2
    const/4 v6, 0x0

    .local v6, "i":B
    :goto_3
    if-ge v6, v3, :cond_4

    iget-object v7, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadSlots:[Lcom/wuyouwin/inputcontrols/GamepadSlot;

    aput-object v4, v7, v6

    add-int/lit8 v7, v6, 0x1

    int-to-byte v6, v7

    goto :goto_3

    .line 97
    .end local v6    # "i":B
    :cond_4
    iget-object v6, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->connectedControllers:Ljava/util/ArrayList;

    monitor-enter v6

    .line 98
    :try_start_0
    iget-object v7, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->connectedControllers:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/wuyouwin/inputcontrols/ExternalController;->updateConnectedControllers(Ljava/util/ArrayList;)V

    .line 99
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    const/4 v6, 0x1

    .line 102
    .local v6, "autoAssign":Z
    const/4 v7, 0x0

    .local v7, "i":B
    :goto_4
    if-ge v7, v3, :cond_a

    .line 103
    iget-object v8, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadPlayerConfigs:[Lcom/wuyouwin/winhandler/GamepadPlayerConfig;

    aget-object v8, v8, v7

    .line 104
    .local v8, "config":Lcom/wuyouwin/winhandler/GamepadPlayerConfig;
    iget-object v9, v8, Lcom/wuyouwin/winhandler/GamepadPlayerConfig;->name:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_7

    .line 105
    :cond_5
    iget-byte v9, v8, Lcom/wuyouwin/winhandler/GamepadPlayerConfig;->mode:B

    if-nez v9, :cond_8

    .line 106
    iget-object v9, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->connectedControllers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    nop

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wuyouwin/inputcontrols/ExternalController;

    .line 107
    .local v10, "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    invoke-virtual {v10}, Lcom/wuyouwin/inputcontrols/ExternalController;->getName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v8, Lcom/wuyouwin/winhandler/GamepadPlayerConfig;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 108
    iget-object v9, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadSlots:[Lcom/wuyouwin/inputcontrols/GamepadSlot;

    aput-object v10, v9, v7

    .line 109
    const/4 v6, 0x0

    .line 110
    goto :goto_6

    .line 107
    :cond_6
    nop

    .line 112
    .end local v10    # "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    goto :goto_5

    :cond_7
    :goto_6
    goto :goto_7

    .line 114
    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v2}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v8, Lcom/wuyouwin/winhandler/GamepadPlayerConfig;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 115
    iget-object v9, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadSlots:[Lcom/wuyouwin/inputcontrols/GamepadSlot;

    aput-object v2, v9, v7

    .line 116
    const/4 v6, 0x0

    .line 102
    .end local v8    # "config":Lcom/wuyouwin/winhandler/GamepadPlayerConfig;
    :cond_9
    :goto_7
    add-int/lit8 v8, v7, 0x1

    int-to-byte v7, v8

    goto :goto_4

    :cond_a
    nop

    .line 120
    .end local v7    # "i":B
    if-eqz v6, :cond_e

    .line 121
    if-eqz v5, :cond_b

    iget-object v7, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadSlots:[Lcom/wuyouwin/inputcontrols/GamepadSlot;

    aput-object v2, v7, v0

    .line 122
    :cond_b
    const/4 v0, 0x0

    .line 123
    .local v0, "index":I
    const/4 v7, 0x0

    .restart local v7    # "i":B
    :goto_8
    if-ge v7, v3, :cond_e

    .line 124
    iget-object v8, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadSlots:[Lcom/wuyouwin/inputcontrols/GamepadSlot;

    aget-object v8, v8, v7

    if-eqz v8, :cond_c

    goto :goto_a

    .line 125
    :cond_c
    iget-object v8, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadSlots:[Lcom/wuyouwin/inputcontrols/GamepadSlot;

    iget-object v9, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->connectedControllers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_d

    iget-object v9, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->connectedControllers:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wuyouwin/inputcontrols/GamepadSlot;

    goto :goto_9

    :cond_d
    move-object v9, v4

    :goto_9
    aput-object v9, v8, v7

    .line 126
    add-int/2addr v0, v1

    .line 123
    :goto_a
    add-int/lit8 v8, v7, 0x1

    int-to-byte v7, v8

    goto :goto_8

    .line 129
    .end local v0    # "index":I
    .end local v7    # "i":B
    :cond_e
    return-void

    .line 99
    .end local v6    # "autoAssign":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private writeStateToBuffer(Ljava/nio/ByteBuffer;Lcom/wuyouwin/inputcontrols/GamepadState;)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "state"    # Lcom/wuyouwin/inputcontrols/GamepadState;

    .line 201
    iget-byte v0, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->dinputMapperType:B

    const/4 v1, 0x1

    const v2, 0x46fffe00    # 32767.0f

    if-ne v0, v1, :cond_0

    .line 202
    iget-short v0, p2, Lcom/wuyouwin/inputcontrols/GamepadState;->buttons:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 203
    invoke-virtual {p2}, Lcom/wuyouwin/inputcontrols/GamepadState;->getPovHat()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 204
    iget v0, p2, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbLX:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 205
    iget v0, p2, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbLY:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 206
    iget v0, p2, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbRX:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 207
    iget v0, p2, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbRY:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 208
    iget v0, p2, Lcom/wuyouwin/inputcontrols/GamepadState;->triggerL:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 209
    iget v0, p2, Lcom/wuyouwin/inputcontrols/GamepadState;->triggerR:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 211
    :cond_0
    iget-byte v0, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->dinputMapperType:B

    if-nez v0, :cond_3

    .line 212
    iget-short v0, p2, Lcom/wuyouwin/inputcontrols/GamepadState;->buttons:S

    .line 213
    .local v0, "buttons":S
    iget v1, p2, Lcom/wuyouwin/inputcontrols/GamepadState;->triggerL:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    or-int/lit16 v1, v0, 0x400

    int-to-short v0, v1

    .line 214
    :cond_1
    iget v1, p2, Lcom/wuyouwin/inputcontrols/GamepadState;->triggerR:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    or-int/lit16 v1, v0, 0x800

    int-to-short v0, v1

    .line 215
    :cond_2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 216
    invoke-virtual {p2}, Lcom/wuyouwin/inputcontrols/GamepadState;->getPovHat()B

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 217
    iget v1, p2, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbLX:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-short v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 218
    iget v1, p2, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbLY:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-short v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 219
    iget v1, p2, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbRX:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-short v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 220
    iget v1, p2, Lcom/wuyouwin/inputcontrols/GamepadState;->thumbRY:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-short v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 222
    .end local v0    # "buttons":S
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public handleGetGamepadRequest(I)V
    .locals 3
    .param p1, "port"    # I

    .line 137
    invoke-direct {p0}, Lcom/wuyouwin/winhandler/GamepadHandler;->updateGamepadSlots()V

    .line 139
    iget-object v0, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadClients:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 140
    .local v0, "clientIndex":I
    invoke-direct {p0}, Lcom/wuyouwin/winhandler/GamepadHandler;->isAnyGamepadConnected()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 141
    if-ne v0, v2, :cond_1

    iget-object v1, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadClients:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_0
    if-eq v0, v2, :cond_1

    iget-object v1, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadClients:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 145
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->winHandler:Lcom/wuyouwin/winhandler/WinHandler;

    new-instance v2, Lcom/wuyouwin/winhandler/GamepadHandler$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/wuyouwin/winhandler/GamepadHandler$$ExternalSyntheticLambda1;-><init>(Lcom/wuyouwin/winhandler/GamepadHandler;I)V

    invoke-virtual {v1, v2}, Lcom/wuyouwin/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method

.method public handleReleaseGamepadRequest(I)V
    .locals 2
    .param p1, "port"    # I

    .line 245
    iget-object v0, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadClients:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 246
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadClients:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 247
    :cond_0
    return-void
.end method

.method public handleSetGamepadStateRequest(I)V
    .locals 7
    .param p1, "port"    # I

    .line 250
    iget-object v0, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->winHandler:Lcom/wuyouwin/winhandler/WinHandler;

    iget-object v0, v0, Lcom/wuyouwin/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    .line 251
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 252
    .local v1, "slot":B
    if-ltz v1, :cond_0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    :cond_0
    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 254
    .local v2, "leftMotorSpeed":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 255
    .local v3, "rightMotorSpeed":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 257
    .local v4, "durationMs":I
    iget-object v5, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadSlots:[Lcom/wuyouwin/inputcontrols/GamepadSlot;

    aget-object v5, v5, v1

    .line 258
    .local v5, "gamepadSlot":Lcom/wuyouwin/inputcontrols/GamepadSlot;
    if-nez v5, :cond_2

    return-void

    .line 260
    :cond_2
    invoke-interface {v5}, Lcom/wuyouwin/inputcontrols/GamepadSlot;->getGamepadVibration()Lcom/wuyouwin/inputcontrols/GamepadVibration;

    move-result-object v6

    .line 261
    .local v6, "vibration":Lcom/wuyouwin/inputcontrols/GamepadVibration;
    invoke-virtual {v6, v2, v3, v4}, Lcom/wuyouwin/inputcontrols/GamepadVibration;->vibrate(III)V

    .line 262
    return-void

    .line 252
    .end local v2    # "leftMotorSpeed":I
    .end local v3    # "rightMotorSpeed":I
    .end local v4    # "durationMs":I
    .end local v5    # "gamepadSlot":Lcom/wuyouwin/inputcontrols/GamepadSlot;
    .end local v6    # "vibration":Lcom/wuyouwin/inputcontrols/GamepadVibration;
    :goto_0
    return-void
.end method

.method protected onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/wuyouwin/winhandler/GamepadHandler;->getConnectedControllerById(I)Lcom/wuyouwin/inputcontrols/ExternalController;

    move-result-object v1

    .line 277
    .local v1, "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {v1, p1}, Lcom/wuyouwin/inputcontrols/ExternalController;->updateStateFromMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 279
    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/wuyouwin/winhandler/GamepadHandler;->sendGamepadState(Lcom/wuyouwin/inputcontrols/GamepadSlot;)V

    .line 281
    :cond_0
    return v0
.end method

.method protected onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/wuyouwin/winhandler/GamepadHandler;->getConnectedControllerById(I)Lcom/wuyouwin/inputcontrols/ExternalController;

    move-result-object v1

    .line 287
    .local v1, "controller":Lcom/wuyouwin/inputcontrols/ExternalController;
    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 288
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 290
    .local v2, "action":I
    if-nez v2, :cond_0

    .line 291
    invoke-virtual {v1, p1}, Lcom/wuyouwin/inputcontrols/ExternalController;->updateStateFromKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 293
    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 294
    invoke-virtual {v1, p1}, Lcom/wuyouwin/inputcontrols/ExternalController;->updateStateFromKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 297
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/wuyouwin/winhandler/GamepadHandler;->sendGamepadState(Lcom/wuyouwin/inputcontrols/GamepadSlot;)V

    .line 299
    .end local v2    # "action":I
    :cond_2
    return v0
.end method

.method public sendGamepadState(Lcom/wuyouwin/inputcontrols/GamepadSlot;)V
    .locals 13
    .param p1, "gamepadSlot"    # Lcom/wuyouwin/inputcontrols/GamepadSlot;

    .line 225
    iget-object v0, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->winHandler:Lcom/wuyouwin/winhandler/WinHandler;

    iget-boolean v0, v0, Lcom/wuyouwin/winhandler/WinHandler;->initReceived:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->sendingState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_1

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadSlots:[Lcom/wuyouwin/inputcontrols/GamepadSlot;

    invoke-static {v0, p1}, Lcom/wuyouwin/core/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    int-to-byte v0, v0

    .line 227
    .local v0, "slot":B
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    return-void

    .line 228
    :cond_2
    invoke-interface {p1}, Lcom/wuyouwin/inputcontrols/GamepadSlot;->getGamepadState()Lcom/wuyouwin/inputcontrols/GamepadState;

    move-result-object v7

    .line 229
    .local v7, "state":Lcom/wuyouwin/inputcontrols/GamepadState;
    iget-object v1, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->winHandler:Lcom/wuyouwin/winhandler/WinHandler;

    iget-object v8, v1, Lcom/wuyouwin/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    .line 230
    .local v8, "buffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->sendingState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 232
    iget-object v1, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->gamepadClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 233
    .local v10, "port":I
    iget-object v11, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->winHandler:Lcom/wuyouwin/winhandler/WinHandler;

    new-instance v12, Lcom/wuyouwin/winhandler/GamepadHandler$$ExternalSyntheticLambda0;

    move-object v1, v12

    move-object v2, p0

    move-object v3, v8

    move v4, v0

    move-object v5, v7

    move v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/wuyouwin/winhandler/GamepadHandler$$ExternalSyntheticLambda0;-><init>(Lcom/wuyouwin/winhandler/GamepadHandler;Ljava/nio/ByteBuffer;BLcom/wuyouwin/inputcontrols/GamepadState;I)V

    invoke-virtual {v11, v12}, Lcom/wuyouwin/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 241
    .end local v10    # "port":I
    goto :goto_0

    .line 242
    :cond_3
    return-void

    .line 225
    .end local v0    # "slot":B
    .end local v7    # "state":Lcom/wuyouwin/inputcontrols/GamepadState;
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    :goto_1
    return-void
.end method

.method public setDInputMapperType(B)V
    .locals 0
    .param p1, "dinputMapperType"    # B

    .line 307
    iput-byte p1, p0, Lcom/wuyouwin/winhandler/GamepadHandler;->dinputMapperType:B

    .line 308
    return-void
.end method
