.class public Lcom/wuyouwin/xserver/extensions/XInputExtension;
.super Lcom/wuyouwin/xserver/extensions/Extension;
.source "XInputExtension.java"

# interfaces
.implements Lcom/wuyouwin/xserver/XResourceManager$OnResourceLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/xserver/extensions/XInputExtension$DeviceID;,
        Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;,
        Lcom/wuyouwin/xserver/extensions/XInputExtension$DeviceClass;
    }
.end annotation


# instance fields
.field private final events:Ljava/util/List;

.field private final onDestroyClientListener:Lcom/wuyouwin/core/Callback;


# direct methods
.method public static synthetic $r8$lambda$k4ZSA9wTqvuiMQOrefXJ6ZdSUpk(Lcom/wuyouwin/xserver/extensions/XInputExtension;Lcom/wuyouwin/xserver/XClient;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/wuyouwin/xserver/extensions/XInputExtension;->lambda$new$0(Lcom/wuyouwin/xserver/XClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/wuyouwin/xserver/XServer;B)V
    .locals 1
    .param p1, "xServer"    # Lcom/wuyouwin/xserver/XServer;
    .param p2, "majorOpcode"    # B

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/xserver/extensions/Extension;-><init>(Lcom/wuyouwin/xserver/XServer;B)V

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/xserver/extensions/XInputExtension;->events:Ljava/util/List;

    .line 35
    new-instance v0, Lcom/wuyouwin/xserver/extensions/XInputExtension$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/wuyouwin/xserver/extensions/XInputExtension$$ExternalSyntheticLambda0;-><init>(Lcom/wuyouwin/xserver/extensions/XInputExtension;)V

    iput-object v0, p0, Lcom/wuyouwin/xserver/extensions/XInputExtension;->onDestroyClientListener:Lcom/wuyouwin/core/Callback;

    .line 44
    iget-object v0, p1, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v0, p0}, Lcom/wuyouwin/xserver/XResourceManager;->addOnResourceLifecycleListener(Lcom/wuyouwin/xserver/XResourceManager$OnResourceLifecycleListener;)V

    .line 45
    return-void
.end method

.method private getClientPointer(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 4
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 88
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 90
    invoke-virtual {p3}, Lcom/wuyouwin/xconnector/XOutputStream;->lock()Lcom/wuyouwin/xconnector/XStreamLock;

    move-result-object v0

    .line 91
    .local v0, "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p3, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 92
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 93
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/XClient;->getSequenceNumber()S

    move-result v3

    invoke-virtual {p3, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 94
    invoke-virtual {p3, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 95
    invoke-virtual {p3, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 96
    invoke-virtual {p3, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 97
    sget-object v1, Lcom/wuyouwin/xserver/extensions/XInputExtension$DeviceID;->MASTER_POINTER:Lcom/wuyouwin/xserver/extensions/XInputExtension$DeviceID;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {p3, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 98
    const/16 v1, 0x14

    invoke-virtual {p3, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V

    .line 100
    .end local v0    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 90
    .restart local v0    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method private getExtensionVersion(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 4
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 73
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/XClient;->skipRequest()V

    .line 75
    invoke-virtual {p3}, Lcom/wuyouwin/xconnector/XOutputStream;->lock()Lcom/wuyouwin/xconnector/XStreamLock;

    move-result-object v0

    .line 76
    .local v0, "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p3, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 77
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 78
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/XClient;->getSequenceNumber()S

    move-result v3

    invoke-virtual {p3, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 79
    invoke-virtual {p3, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 80
    const/4 v2, 0x2

    invoke-virtual {p3, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 81
    invoke-virtual {p3, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 82
    invoke-virtual {p3, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 83
    const/16 v1, 0x13

    invoke-virtual {p3, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V

    .line 85
    .end local v0    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 75
    .restart local v0    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method private isValidDeviceId(I)Z
    .locals 1
    .param p1, "deviceId"    # I

    .line 235
    sget-object v0, Lcom/wuyouwin/xserver/extensions/XInputExtension$DeviceID;->MASTER_POINTER:Lcom/wuyouwin/xserver/extensions/XInputExtension$DeviceID;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    nop

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/wuyouwin/xserver/extensions/XInputExtension$DeviceID;->ALL_DEVICES:Lcom/wuyouwin/xserver/extensions/XInputExtension$DeviceID;

    .line 236
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    nop

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/wuyouwin/xserver/extensions/XInputExtension$DeviceID;->ALL_MASTER_DEVICES:Lcom/wuyouwin/xserver/extensions/XInputExtension$DeviceID;

    .line 237
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 235
    :goto_1
    return v0
.end method

.method private synthetic lambda$new$0(Lcom/wuyouwin/xserver/XClient;)V
    .locals 3
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;

    .line 36
    iget-object v0, p0, Lcom/wuyouwin/xserver/extensions/XInputExtension;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 37
    iget-object v1, p0, Lcom/wuyouwin/xserver/extensions/XInputExtension;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;

    .line 38
    .local v1, "event":Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;
    invoke-static {v1}, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;->access$000(Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;)Lcom/wuyouwin/xserver/XClient;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/wuyouwin/xserver/extensions/XInputExtension;->events:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 36
    .end local v1    # "event":Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 40
    .end local v0    # "i":I
    return-void
.end method

.method private queryDevice(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 10
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 158
    const-string v0, "Virtual Core Pointer"

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 160
    const/4 v2, 0x1

    .line 161
    .local v2, "numDevices":S
    const/4 v3, 0x3

    .line 163
    .local v3, "numClasses":S
    invoke-virtual {p3}, Lcom/wuyouwin/xconnector/XOutputStream;->lock()Lcom/wuyouwin/xconnector/XStreamLock;

    move-result-object v4

    .line 164
    .local v4, "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p3, v5}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 165
    const/4 v6, 0x0

    invoke-virtual {p3, v6}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 166
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/XClient;->getSequenceNumber()S

    move-result v7

    invoke-virtual {p3, v7}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 167
    invoke-virtual {p3, v6}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 168
    invoke-virtual {p3, v5}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 169
    const/16 v7, 0x16

    invoke-virtual {p3, v7}, Lcom/wuyouwin/xconnector/XOutputStream;->writePad(I)V

    .line 171
    sget-object v7, Lcom/wuyouwin/xserver/extensions/XInputExtension$DeviceID;->MASTER_POINTER:Lcom/wuyouwin/xserver/extensions/XInputExtension$DeviceID;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    int-to-short v7, v7

    invoke-virtual {p3, v7}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 172
    invoke-virtual {p3, v5}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 173
    invoke-virtual {p3, v6}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 174
    const/4 v7, 0x3

    invoke-virtual {p3, v7}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    int-to-short v8, v8

    invoke-virtual {p3, v8}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 176
    invoke-virtual {p3, v5}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 177
    invoke-virtual {p3, v6}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 178
    invoke-virtual {p3, v0}, Lcom/wuyouwin/xconnector/XOutputStream;->writeString8(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p3}, Lcom/wuyouwin/xconnector/XOutputStream;->length()I

    move-result v0

    .line 181
    .local v0, "start":I
    sget-object v5, Lcom/wuyouwin/xserver/extensions/XInputExtension$DeviceClass;->BUTTON_CLASS:Lcom/wuyouwin/xserver/extensions/XInputExtension$DeviceClass;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    int-to-short v5, v5

    invoke-virtual {p3, v5}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 182
    invoke-virtual {p3, v6}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 183
    sget-object v5, Lcom/wuyouwin/xserver/extensions/XInputExtension$DeviceID;->MASTER_POINTER:Lcom/wuyouwin/xserver/extensions/XInputExtension$DeviceID;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    int-to-short v5, v5

    invoke-virtual {p3, v5}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 184
    invoke-virtual {p3, v7}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 185
    invoke-virtual {p3, v6}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 186
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    nop

    if-ge v5, v7, :cond_0

    invoke-virtual {p3, v6}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "start":I
    .end local v5    # "i":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 187
    .restart local v0    # "start":I
    :cond_0
    invoke-virtual {p3}, Lcom/wuyouwin/xconnector/XOutputStream;->length()I

    move-result v5

    sub-int/2addr v5, v0

    div-int/2addr v5, v1

    .line 188
    .local v5, "deviceClassLength":I
    add-int/lit8 v8, v0, 0x2

    invoke-virtual {p3, v8, v5}, Lcom/wuyouwin/xconnector/XOutputStream;->writeIntAt(II)V

    .line 190
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    const/4 v9, 0x2

    if-ge v8, v9, :cond_1

    .line 191
    sget-object v9, Lcom/wuyouwin/xserver/extensions/XInputExtension$DeviceClass;->VALUATOR_CLASS:Lcom/wuyouwin/xserver/extensions/XInputExtension$DeviceClass;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    int-to-short v9, v9

    invoke-virtual {p3, v9}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 192
    const/16 v9, 0xb

    invoke-virtual {p3, v9}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 193
    sget-object v9, Lcom/wuyouwin/xserver/extensions/XInputExtension$DeviceID;->MASTER_POINTER:Lcom/wuyouwin/xserver/extensions/XInputExtension$DeviceID;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    int-to-short v9, v9

    invoke-virtual {p3, v9}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 194
    int-to-short v9, v8

    invoke-virtual {p3, v9}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 195
    invoke-virtual {p3, v6}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 196
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Lcom/wuyouwin/xconnector/XOutputStream;->writeFP3232(F)V

    .line 197
    invoke-virtual {p3, v9}, Lcom/wuyouwin/xconnector/XOutputStream;->writeFP3232(F)V

    .line 198
    invoke-virtual {p3, v9}, Lcom/wuyouwin/xconnector/XOutputStream;->writeFP3232(F)V

    .line 199
    invoke-virtual {p3, v6}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 200
    invoke-virtual {p3, v6}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 201
    invoke-virtual {p3, v7}, Lcom/wuyouwin/xconnector/XOutputStream;->writePad(I)V

    .line 190
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 204
    .end local v8    # "i":I
    invoke-virtual {p3}, Lcom/wuyouwin/xconnector/XOutputStream;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x20

    div-int/2addr v6, v1

    int-to-short v6, v6

    .line 205
    .local v6, "deviceInfoLength":S
    invoke-virtual {p3, v1, v6}, Lcom/wuyouwin/xconnector/XOutputStream;->writeIntAt(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .end local v0    # "start":I
    .end local v5    # "deviceClassLength":I
    .end local v6    # "deviceInfoLength":S
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V

    .line 207
    .end local v4    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_2
    return-void

    .line 163
    .restart local v4    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :goto_2
    if-eqz v4, :cond_3

    :try_start_1
    invoke-interface {v4}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v0
.end method

.method private queryVersion(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 4
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 144
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 146
    invoke-virtual {p3}, Lcom/wuyouwin/xconnector/XOutputStream;->lock()Lcom/wuyouwin/xconnector/XStreamLock;

    move-result-object v0

    .line 147
    .local v0, "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p3, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 148
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 149
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/XClient;->getSequenceNumber()S

    move-result v3

    invoke-virtual {p3, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 150
    invoke-virtual {p3, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 151
    const/4 v2, 0x2

    invoke-virtual {p3, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 152
    invoke-virtual {p3, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 153
    const/16 v1, 0x14

    invoke-virtual {p3, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V

    .line 155
    .end local v0    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 146
    .restart local v0    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method private selectEvents(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 10
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 103
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 104
    .local v0, "windowId":I
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v1

    .line 105
    .local v1, "numMasks":S
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 107
    iget-object v2, p0, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v2, v2, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v2, v0}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v2

    .line 108
    .local v2, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v2, :cond_5

    .line 110
    if-eqz v1, :cond_4

    .line 112
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 113
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v4

    .line 114
    .local v4, "deviceId":S
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v5

    .line 116
    .local v5, "maskLen":S
    new-instance v6, Lcom/wuyouwin/core/Bitmask;

    invoke-direct {v6}, Lcom/wuyouwin/core/Bitmask;-><init>()V

    .line 117
    .local v6, "mask":Lcom/wuyouwin/core/Bitmask;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v5, :cond_0

    .line 118
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v8

    .line 119
    .local v8, "value":I
    shl-int v9, v8, v7

    invoke-virtual {v6, v9}, Lcom/wuyouwin/core/Bitmask;->set(I)V

    .line 117
    .end local v8    # "value":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 122
    :cond_0
    iget-object v8, p0, Lcom/wuyouwin/xserver/extensions/XInputExtension;->events:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .end local v7    # "j":I
    .local v8, "j":I
    :goto_2
    if-ltz v8, :cond_2

    .line 123
    iget-object v7, p0, Lcom/wuyouwin/xserver/extensions/XInputExtension;->events:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;

    .line 124
    .local v7, "event":Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;
    invoke-static {v7}, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;->access$000(Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;)Lcom/wuyouwin/xserver/XClient;

    move-result-object v9

    if-ne v9, p1, :cond_1

    invoke-static {v7}, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;->access$100(Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;)Lcom/wuyouwin/xserver/Window;

    move-result-object v9

    if-ne v9, v2, :cond_1

    invoke-static {v7}, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;->access$200(Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;)I

    move-result v9

    if-ne v9, v4, :cond_1

    .line 125
    iget-object v9, p0, Lcom/wuyouwin/xserver/extensions/XInputExtension;->events:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 126
    goto :goto_3

    .line 122
    .end local v7    # "event":Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;
    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 130
    :cond_2
    :goto_3
    new-instance v7, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;

    const/4 v9, 0x0

    invoke-direct {v7, v9}, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;-><init>(Lcom/wuyouwin/xserver/extensions/XInputExtension$1;)V

    .line 131
    .restart local v7    # "event":Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;
    invoke-static {v7, v4}, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;->access$202(Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;I)I

    .line 132
    invoke-static {v7, v2}, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;->access$102(Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;Lcom/wuyouwin/xserver/Window;)Lcom/wuyouwin/xserver/Window;

    .line 133
    invoke-static {v7, p1}, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;->access$002(Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;Lcom/wuyouwin/xserver/XClient;)Lcom/wuyouwin/xserver/XClient;

    .line 134
    invoke-static {v7, v6}, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;->access$402(Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;Lcom/wuyouwin/core/Bitmask;)Lcom/wuyouwin/core/Bitmask;

    .line 136
    iget-object v9, p0, Lcom/wuyouwin/xserver/extensions/XInputExtension;->onDestroyClientListener:Lcom/wuyouwin/core/Callback;

    invoke-virtual {p1, v9}, Lcom/wuyouwin/xserver/XClient;->addOnDestroyListener(Lcom/wuyouwin/core/Callback;)V

    .line 137
    iget-object v9, p0, Lcom/wuyouwin/xserver/extensions/XInputExtension;->events:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v4    # "deviceId":S
    .end local v5    # "maskLen":S
    .end local v6    # "mask":Lcom/wuyouwin/core/Bitmask;
    .end local v7    # "event":Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v8    # "j":I
    :cond_3
    nop

    .line 140
    .end local v3    # "i":I
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/XClient;->getRemainingRequestLength()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 141
    return-void

    .line 110
    :cond_4
    new-instance v3, Lcom/wuyouwin/xserver/errors/BadValue;

    invoke-direct {v3, v1}, Lcom/wuyouwin/xserver/errors/BadValue;-><init>(I)V

    throw v3

    .line 108
    :cond_5
    new-instance v3, Lcom/wuyouwin/xserver/errors/BadWindow;

    invoke-direct {v3, v0}, Lcom/wuyouwin/xserver/errors/BadWindow;-><init>(I)V

    throw v3
.end method


# virtual methods
.method public getEventCount()B
    .locals 1

    .line 69
    const/4 v0, 0x3

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, "XInputExtension"

    return-object v0
.end method

.method public handleRequest(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 2
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 211
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/XClient;->getRequestData()B

    move-result v0

    .line 213
    .local v0, "opcode":I
    sparse-switch v0, :sswitch_data_0

    .line 230
    new-instance v1, Lcom/wuyouwin/xserver/errors/BadImplementation;

    invoke-direct {v1}, Lcom/wuyouwin/xserver/errors/BadImplementation;-><init>()V

    throw v1

    .line 227
    :sswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/xserver/extensions/XInputExtension;->queryDevice(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V

    .line 228
    goto :goto_0

    .line 224
    :sswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/xserver/extensions/XInputExtension;->queryVersion(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V

    .line 225
    goto :goto_0

    .line 221
    :sswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/xserver/extensions/XInputExtension;->selectEvents(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V

    .line 222
    goto :goto_0

    .line 218
    :sswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/xserver/extensions/XInputExtension;->getClientPointer(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V

    .line 219
    goto :goto_0

    .line 215
    :sswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/xserver/extensions/XInputExtension;->getExtensionVersion(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V

    .line 216
    nop

    .line 232
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2d -> :sswitch_3
        0x2e -> :sswitch_2
        0x2f -> :sswitch_1
        0x30 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFreeResource(Lcom/wuyouwin/xserver/XResource;)V
    .locals 3
    .param p1, "resource"    # Lcom/wuyouwin/xserver/XResource;

    .line 266
    instance-of v0, p1, Lcom/wuyouwin/xserver/Window;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/wuyouwin/xserver/extensions/XInputExtension;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 268
    iget-object v1, p0, Lcom/wuyouwin/xserver/extensions/XInputExtension;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;

    .line 269
    .local v1, "event":Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;
    invoke-static {v1}, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;->access$100(Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;)Lcom/wuyouwin/xserver/Window;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/wuyouwin/xserver/extensions/XInputExtension;->events:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 267
    .end local v1    # "event":Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 272
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public sendRawButtonState(IZ)V
    .locals 6
    .param p1, "buttonCode"    # I
    .param p2, "pressed"    # Z

    .line 241
    if-eqz p2, :cond_0

    const v0, 0x8000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000

    .line 243
    .local v0, "mask":I
    :goto_0
    iget-object v1, p0, Lcom/wuyouwin/xserver/extensions/XInputExtension;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;

    .line 244
    .local v2, "event":Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;
    invoke-static {v2}, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;->access$200(Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/wuyouwin/xserver/extensions/XInputExtension;->isValidDeviceId(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;->access$400(Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;)Lcom/wuyouwin/core/Bitmask;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/wuyouwin/core/Bitmask;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 245
    if-eqz p2, :cond_1

    .line 246
    invoke-static {v2}, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;->access$000(Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;)Lcom/wuyouwin/xserver/XClient;

    move-result-object v3

    new-instance v4, Lcom/wuyouwin/xserver/events/XIRawButtonPressNotify;

    sget-object v5, Lcom/wuyouwin/xserver/extensions/XInputExtension$DeviceID;->MASTER_POINTER:Lcom/wuyouwin/xserver/extensions/XInputExtension$DeviceID;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    int-to-short v5, v5

    invoke-direct {v4, p0, v5, p1}, Lcom/wuyouwin/xserver/events/XIRawButtonPressNotify;-><init>(Lcom/wuyouwin/xserver/extensions/XInputExtension;SI)V

    invoke-virtual {v3, v4}, Lcom/wuyouwin/xserver/XClient;->sendEvent(Lcom/wuyouwin/xserver/events/Event;)V

    goto :goto_2

    .line 248
    :cond_1
    invoke-static {v2}, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;->access$000(Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;)Lcom/wuyouwin/xserver/XClient;

    move-result-object v3

    new-instance v4, Lcom/wuyouwin/xserver/events/XIRawButtonReleaseNotify;

    sget-object v5, Lcom/wuyouwin/xserver/extensions/XInputExtension$DeviceID;->MASTER_POINTER:Lcom/wuyouwin/xserver/extensions/XInputExtension$DeviceID;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    int-to-short v5, v5

    invoke-direct {v4, p0, v5, p1}, Lcom/wuyouwin/xserver/events/XIRawButtonReleaseNotify;-><init>(Lcom/wuyouwin/xserver/extensions/XInputExtension;SI)V

    invoke-virtual {v3, v4}, Lcom/wuyouwin/xserver/XClient;->sendEvent(Lcom/wuyouwin/xserver/events/Event;)V

    .line 250
    .end local v2    # "event":Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;
    :cond_2
    :goto_2
    goto :goto_1

    .line 251
    :cond_3
    return-void
.end method

.method public sendRawMotion(FF)V
    .locals 9
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 254
    const/high16 v0, 0x20000

    .line 255
    .local v0, "mask":I
    const/4 v1, 0x3

    .line 257
    .local v1, "valuatorMask":I
    iget-object v2, p0, Lcom/wuyouwin/xserver/extensions/XInputExtension;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;

    .line 258
    .local v3, "event":Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;
    invoke-static {v3}, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;->access$200(Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/wuyouwin/xserver/extensions/XInputExtension;->isValidDeviceId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;->access$400(Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;)Lcom/wuyouwin/core/Bitmask;

    move-result-object v4

    const/high16 v5, 0x20000

    invoke-virtual {v4, v5}, Lcom/wuyouwin/core/Bitmask;->isSet(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 259
    invoke-static {v3}, Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;->access$000(Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;)Lcom/wuyouwin/xserver/XClient;

    move-result-object v4

    new-instance v5, Lcom/wuyouwin/xserver/events/XIRawMotionNotify;

    sget-object v6, Lcom/wuyouwin/xserver/extensions/XInputExtension$DeviceID;->MASTER_POINTER:Lcom/wuyouwin/xserver/extensions/XInputExtension$DeviceID;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    int-to-short v6, v6

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput p1, v7, v8

    const/4 v8, 0x1

    aput p2, v7, v8

    const/4 v8, 0x3

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/wuyouwin/xserver/events/XIRawMotionNotify;-><init>(Lcom/wuyouwin/xserver/extensions/XInputExtension;S[FI)V

    invoke-virtual {v4, v5}, Lcom/wuyouwin/xserver/XClient;->sendEvent(Lcom/wuyouwin/xserver/events/Event;)V

    .line 261
    .end local v3    # "event":Lcom/wuyouwin/xserver/extensions/XInputExtension$XIEvent;
    :cond_0
    goto :goto_0

    .line 262
    :cond_1
    return-void
.end method
