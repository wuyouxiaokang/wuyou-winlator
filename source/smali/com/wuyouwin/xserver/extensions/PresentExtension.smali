.class public Lcom/wuyouwin/xserver/extensions/PresentExtension;
.super Lcom/wuyouwin/xserver/extensions/Extension;
.source "PresentExtension.java"

# interfaces
.implements Lcom/wuyouwin/xserver/WindowManager$OnWindowModificationListener;
.implements Lcom/wuyouwin/xserver/XResourceManager$OnResourceLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;,
        Lcom/wuyouwin/xserver/extensions/PresentExtension$CompleteKind;,
        Lcom/wuyouwin/xserver/extensions/PresentExtension$CompleteMode;
    }
.end annotation


# instance fields
.field private eglContextPtr:J

.field private final events:Landroid/util/SparseArray;

.field private idleNotifyScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private syncExtension:Lcom/wuyouwin/xserver/extensions/SyncExtension;


# direct methods
.method public static synthetic $r8$lambda$Q3imovMdIYKYkB-Jw2u5OY_82dw(Lcom/wuyouwin/xserver/extensions/PresentExtension;Lcom/wuyouwin/xserver/XClient;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/wuyouwin/xserver/extensions/PresentExtension;->lambda$createCopyEGLContext$1(Lcom/wuyouwin/xserver/XClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q_f8jc6JpLFt-12HVSOwOkW5lUQ(Lcom/wuyouwin/xserver/extensions/PresentExtension;Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Pixmap;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wuyouwin/xserver/extensions/PresentExtension;->lambda$sendIdleNotifyScheduled$0(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Pixmap;II)V

    return-void
.end method

.method public constructor <init>(Lcom/wuyouwin/xserver/XServer;B)V
    .locals 1
    .param p1, "xServer"    # Lcom/wuyouwin/xserver/XServer;
    .param p2, "majorOpcode"    # B

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/wuyouwin/xserver/extensions/Extension;-><init>(Lcom/wuyouwin/xserver/XServer;B)V

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    .line 62
    iget-object v0, p1, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v0, p0}, Lcom/wuyouwin/xserver/WindowManager;->addOnWindowModificationListener(Lcom/wuyouwin/xserver/WindowManager$OnWindowModificationListener;)V

    .line 63
    iget-object v0, p1, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v0, p0}, Lcom/wuyouwin/xserver/XResourceManager;->addOnResourceLifecycleListener(Lcom/wuyouwin/xserver/XResourceManager$OnResourceLifecycleListener;)V

    .line 64
    return-void
.end method

.method private createCopyEGLContext(Lcom/wuyouwin/xserver/XClient;)V
    .locals 2
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;

    .line 147
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/wuyouwin/core/GPUHelper;->createOffscreenEGLContext(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension;->eglContextPtr:J

    .line 148
    new-instance v0, Lcom/wuyouwin/xserver/extensions/PresentExtension$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/wuyouwin/xserver/extensions/PresentExtension$$ExternalSyntheticLambda1;-><init>(Lcom/wuyouwin/xserver/extensions/PresentExtension;)V

    invoke-virtual {p1, v0}, Lcom/wuyouwin/xserver/XClient;->addOnDestroyListener(Lcom/wuyouwin/core/Callback;)V

    .line 152
    return-void
.end method

.method private synthetic lambda$createCopyEGLContext$1(Lcom/wuyouwin/xserver/XClient;)V
    .locals 2
    .param p1, "unused"    # Lcom/wuyouwin/xserver/XClient;

    .line 149
    iget-wide v0, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension;->eglContextPtr:J

    invoke-static {v0, v1}, Lcom/wuyouwin/core/GPUHelper;->destroyOffscreenEGLContext(J)V

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension;->eglContextPtr:J

    .line 151
    return-void
.end method

.method private synthetic lambda$sendIdleNotifyScheduled$0(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Pixmap;II)V
    .locals 0
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;
    .param p2, "pixmap"    # Lcom/wuyouwin/xserver/Pixmap;
    .param p3, "serial"    # I
    .param p4, "idleFence"    # I

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wuyouwin/xserver/extensions/PresentExtension;->sendIdleNotify(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Pixmap;II)V

    return-void
.end method

.method private presentPixmap(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 30
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 155
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v12

    .line 156
    .local v12, "windowId":I
    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v13

    .line 157
    .local v13, "pixmapId":I
    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v14

    .line 158
    .local v14, "serial":I
    const/16 v0, 0x8

    invoke-virtual {v11, v0}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 159
    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v15

    .line 160
    .local v15, "xOff":S
    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/xconnector/XInputStream;->readShort()S

    move-result v16

    .line 161
    .local v16, "yOff":S
    invoke-virtual {v11, v0}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v8

    .line 163
    .local v8, "idleFence":I
    invoke-virtual {v11, v0}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Lcom/wuyouwin/xconnector/XInputStream;->readLong()J

    move-result-wide v17

    .line 165
    .local v17, "targetMSC":J
    invoke-virtual/range {p1 .. p1}, Lcom/wuyouwin/xserver/XClient;->getRemainingRequestLength()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 167
    iget-object v0, v10, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v0, v0, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v0, v12}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v9

    .line 168
    .local v9, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v9, :cond_6

    .line 170
    iget-object v0, v10, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v0, v0, Lcom/wuyouwin/xserver/XServer;->pixmapManager:Lcom/wuyouwin/xserver/PixmapManager;

    invoke-virtual {v0, v13}, Lcom/wuyouwin/xserver/PixmapManager;->getPixmap(I)Lcom/wuyouwin/xserver/Pixmap;

    move-result-object v6

    .line 172
    .local v6, "pixmap":Lcom/wuyouwin/xserver/Pixmap;
    invoke-virtual {v9}, Lcom/wuyouwin/xserver/Window;->getContent()Lcom/wuyouwin/xserver/Drawable;

    move-result-object v7

    .line 173
    .local v7, "content":Lcom/wuyouwin/xserver/Drawable;
    if-eqz v6, :cond_0

    iget-object v0, v7, Lcom/wuyouwin/xserver/Drawable;->visual:Lcom/wuyouwin/xserver/Visual;

    iget-byte v0, v0, Lcom/wuyouwin/xserver/Visual;->depth:B

    iget-object v1, v6, Lcom/wuyouwin/xserver/Pixmap;->drawable:Lcom/wuyouwin/xserver/Drawable;

    iget-object v1, v1, Lcom/wuyouwin/xserver/Drawable;->visual:Lcom/wuyouwin/xserver/Visual;

    iget-byte v1, v1, Lcom/wuyouwin/xserver/Visual;->depth:B

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v0, Lcom/wuyouwin/xserver/errors/BadMatch;

    invoke-direct {v0}, Lcom/wuyouwin/xserver/errors/BadMatch;-><init>()V

    throw v0

    .line 175
    :goto_0
    const/16 v19, 0x411a

    .line 176
    .local v19, "frameTime":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v20, v0, v2

    .line 177
    .local v20, "ust":J
    const-wide/16 v0, 0x411a

    div-long v22, v20, v0

    .line 179
    .local v22, "msc":J
    iget-object v5, v7, Lcom/wuyouwin/xserver/Drawable;->renderLock:Ljava/lang/Object;

    monitor-enter v5

    .line 180
    :try_start_0
    sget-object v4, Lcom/wuyouwin/xserver/extensions/PresentExtension$CompleteKind;->PIXMAP:Lcom/wuyouwin/xserver/extensions/PresentExtension$CompleteKind;

    sget-object v0, Lcom/wuyouwin/xserver/extensions/PresentExtension$CompleteMode;->COPY:Lcom/wuyouwin/xserver/extensions/PresentExtension$CompleteMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v1, p0

    move-object v2, v9

    move v3, v14

    move-object/from16 v24, v5

    move-object v5, v0

    move-object v11, v6

    move/from16 v25, v13

    move-object v13, v7

    .end local v6    # "pixmap":Lcom/wuyouwin/xserver/Pixmap;
    .end local v7    # "content":Lcom/wuyouwin/xserver/Drawable;
    .local v11, "pixmap":Lcom/wuyouwin/xserver/Pixmap;
    .local v13, "content":Lcom/wuyouwin/xserver/Drawable;
    .local v25, "pixmapId":I
    move-wide/from16 v6, v20

    move-object/from16 v27, v9

    move/from16 v26, v12

    move v12, v8

    .end local v8    # "idleFence":I
    .end local v9    # "window":Lcom/wuyouwin/xserver/Window;
    .local v12, "idleFence":I
    .local v26, "windowId":I
    .local v27, "window":Lcom/wuyouwin/xserver/Window;
    move-wide/from16 v8, v22

    :try_start_1
    invoke-direct/range {v1 .. v9}, Lcom/wuyouwin/xserver/extensions/PresentExtension;->sendCompleteNotify(Lcom/wuyouwin/xserver/Window;ILcom/wuyouwin/xserver/extensions/PresentExtension$CompleteKind;Lcom/wuyouwin/xserver/extensions/PresentExtension$CompleteMode;JJ)V

    .line 182
    if-eqz v11, :cond_5

    .line 183
    iget-object v0, v11, Lcom/wuyouwin/xserver/Pixmap;->drawable:Lcom/wuyouwin/xserver/Drawable;

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/Drawable;->getTexture()Lcom/wuyouwin/renderer/Texture;

    move-result-object v0

    .line 184
    .local v0, "srcTexture":Lcom/wuyouwin/renderer/Texture;
    instance-of v1, v0, Lcom/wuyouwin/renderer/GPUImage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-wide/16 v28, 0x0

    if-eqz v1, :cond_3

    .line 185
    :try_start_2
    iget-wide v1, v10, Lcom/wuyouwin/xserver/extensions/PresentExtension;->eglContextPtr:J

    cmp-long v1, v1, v28

    if-nez v1, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/wuyouwin/xserver/extensions/PresentExtension;->createCopyEGLContext(Lcom/wuyouwin/xserver/XClient;)V

    goto :goto_1

    .line 198
    .end local v0    # "srcTexture":Lcom/wuyouwin/renderer/Texture;
    :catchall_0
    move-exception v0

    move-object/from16 v1, v27

    goto :goto_5

    .line 186
    .restart local v0    # "srcTexture":Lcom/wuyouwin/renderer/Texture;
    :cond_2
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Lcom/wuyouwin/xserver/Drawable;->setData(Ljava/nio/ByteBuffer;)V

    .line 187
    invoke-virtual {v13}, Lcom/wuyouwin/xserver/Drawable;->getTexture()Lcom/wuyouwin/renderer/Texture;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wuyouwin/renderer/Texture;->copyFromSource(Lcom/wuyouwin/renderer/Texture;)V

    .line 188
    invoke-virtual {v13}, Lcom/wuyouwin/xserver/Drawable;->forceUpdate()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 190
    :cond_3
    :try_start_3
    iget-object v1, v11, Lcom/wuyouwin/xserver/Pixmap;->drawable:Lcom/wuyouwin/xserver/Drawable;

    iget-short v6, v1, Lcom/wuyouwin/xserver/Drawable;->width:S

    iget-object v1, v11, Lcom/wuyouwin/xserver/Pixmap;->drawable:Lcom/wuyouwin/xserver/Drawable;

    iget-short v7, v1, Lcom/wuyouwin/xserver/Drawable;->height:S

    iget-object v8, v11, Lcom/wuyouwin/xserver/Pixmap;->drawable:Lcom/wuyouwin/xserver/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v13

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v1 .. v8}, Lcom/wuyouwin/xserver/Drawable;->copyArea(SSSSSSLcom/wuyouwin/xserver/Drawable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 192
    :goto_2
    cmp-long v1, v17, v28

    if-lez v1, :cond_4

    .line 193
    move-object/from16 v1, v27

    .end local v27    # "window":Lcom/wuyouwin/xserver/Window;
    .local v1, "window":Lcom/wuyouwin/xserver/Window;
    :try_start_4
    invoke-direct {v10, v1, v11, v14, v12}, Lcom/wuyouwin/xserver/extensions/PresentExtension;->sendIdleNotifyScheduled(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Pixmap;II)V

    goto :goto_3

    .line 198
    .end local v0    # "srcTexture":Lcom/wuyouwin/renderer/Texture;
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 195
    .end local v1    # "window":Lcom/wuyouwin/xserver/Window;
    .restart local v0    # "srcTexture":Lcom/wuyouwin/renderer/Texture;
    .restart local v27    # "window":Lcom/wuyouwin/xserver/Window;
    :cond_4
    move-object/from16 v1, v27

    .end local v27    # "window":Lcom/wuyouwin/xserver/Window;
    .restart local v1    # "window":Lcom/wuyouwin/xserver/Window;
    invoke-direct {v10, v1, v11, v14, v12}, Lcom/wuyouwin/xserver/extensions/PresentExtension;->sendIdleNotify(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Pixmap;II)V

    .line 196
    .end local v0    # "srcTexture":Lcom/wuyouwin/renderer/Texture;
    :goto_3
    goto :goto_4

    .line 198
    .end local v1    # "window":Lcom/wuyouwin/xserver/Window;
    .restart local v27    # "window":Lcom/wuyouwin/xserver/Window;
    :catchall_2
    move-exception v0

    move-object/from16 v1, v27

    .end local v27    # "window":Lcom/wuyouwin/xserver/Window;
    .restart local v1    # "window":Lcom/wuyouwin/xserver/Window;
    goto :goto_5

    .line 197
    .end local v1    # "window":Lcom/wuyouwin/xserver/Window;
    .restart local v27    # "window":Lcom/wuyouwin/xserver/Window;
    :cond_5
    move-object/from16 v1, v27

    .end local v27    # "window":Lcom/wuyouwin/xserver/Window;
    .restart local v1    # "window":Lcom/wuyouwin/xserver/Window;
    invoke-virtual {v13}, Lcom/wuyouwin/xserver/Drawable;->forceUpdate()V

    .line 198
    :goto_4
    monitor-exit v24

    .line 199
    return-void

    .line 198
    .end local v1    # "window":Lcom/wuyouwin/xserver/Window;
    .end local v11    # "pixmap":Lcom/wuyouwin/xserver/Pixmap;
    .end local v25    # "pixmapId":I
    .end local v26    # "windowId":I
    .restart local v6    # "pixmap":Lcom/wuyouwin/xserver/Pixmap;
    .restart local v7    # "content":Lcom/wuyouwin/xserver/Drawable;
    .restart local v8    # "idleFence":I
    .restart local v9    # "window":Lcom/wuyouwin/xserver/Window;
    .local v12, "windowId":I
    .local v13, "pixmapId":I
    :catchall_3
    move-exception v0

    move-object/from16 v24, v5

    move-object v11, v6

    move-object v1, v9

    move/from16 v26, v12

    move/from16 v25, v13

    move-object v13, v7

    move v12, v8

    .end local v6    # "pixmap":Lcom/wuyouwin/xserver/Pixmap;
    .end local v7    # "content":Lcom/wuyouwin/xserver/Drawable;
    .end local v8    # "idleFence":I
    .end local v9    # "window":Lcom/wuyouwin/xserver/Window;
    .restart local v1    # "window":Lcom/wuyouwin/xserver/Window;
    .restart local v11    # "pixmap":Lcom/wuyouwin/xserver/Pixmap;
    .local v12, "idleFence":I
    .local v13, "content":Lcom/wuyouwin/xserver/Drawable;
    .restart local v25    # "pixmapId":I
    .restart local v26    # "windowId":I
    :goto_5
    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 168
    .end local v1    # "window":Lcom/wuyouwin/xserver/Window;
    .end local v11    # "pixmap":Lcom/wuyouwin/xserver/Pixmap;
    .end local v19    # "frameTime":I
    .end local v20    # "ust":J
    .end local v22    # "msc":J
    .end local v25    # "pixmapId":I
    .end local v26    # "windowId":I
    .restart local v8    # "idleFence":I
    .restart local v9    # "window":Lcom/wuyouwin/xserver/Window;
    .local v12, "windowId":I
    .local v13, "pixmapId":I
    :cond_6
    move/from16 v26, v12

    .end local v12    # "windowId":I
    .restart local v26    # "windowId":I
    new-instance v0, Lcom/wuyouwin/xserver/errors/BadWindow;

    move/from16 v2, v26

    .end local v26    # "windowId":I
    .local v2, "windowId":I
    invoke-direct {v0, v2}, Lcom/wuyouwin/xserver/errors/BadWindow;-><init>(I)V

    throw v0
.end method

.method private queryVersion(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 4
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 133
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/wuyouwin/xconnector/XInputStream;->skip(I)V

    .line 135
    invoke-virtual {p3}, Lcom/wuyouwin/xconnector/XOutputStream;->lock()Lcom/wuyouwin/xconnector/XStreamLock;

    move-result-object v0

    .line 136
    .local v0, "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p3, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 137
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeByte(B)V

    .line 138
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/XClient;->getSequenceNumber()S

    move-result v3

    invoke-virtual {p3, v3}, Lcom/wuyouwin/xconnector/XOutputStream;->writeShort(S)V

    .line 139
    invoke-virtual {p3, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 140
    invoke-virtual {p3, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 141
    invoke-virtual {p3, v2}, Lcom/wuyouwin/xconnector/XOutputStream;->writeInt(I)V

    .line 142
    const/16 v1, 0x10

    invoke-virtual {p3, v1}, Lcom/wuyouwin/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/wuyouwin/xconnector/XStreamLock;->close()V

    .line 144
    .end local v0    # "lock":Lcom/wuyouwin/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 135
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

.method private selectInput(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 8
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 202
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 203
    .local v0, "eventId":I
    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 204
    .local v1, "windowId":I
    new-instance v2, Lcom/wuyouwin/core/Bitmask;

    invoke-virtual {p2}, Lcom/wuyouwin/xconnector/XInputStream;->readInt()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/wuyouwin/core/Bitmask;-><init>(I)V

    .line 206
    .local v2, "mask":Lcom/wuyouwin/core/Bitmask;
    iget-object v3, p0, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    iget-object v3, v3, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-virtual {v3, v1}, Lcom/wuyouwin/xserver/WindowManager;->getWindow(I)Lcom/wuyouwin/xserver/Window;

    move-result-object v3

    .line 207
    .local v3, "window":Lcom/wuyouwin/xserver/Window;
    if-eqz v3, :cond_4

    .line 209
    const-string v4, "lastIdleTime"

    invoke-virtual {v3, v4}, Lcom/wuyouwin/xserver/Window;->removeTag(Ljava/lang/String;)V

    .line 210
    iget-object v4, p0, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    invoke-virtual {v3}, Lcom/wuyouwin/xserver/Window;->getContent()Lcom/wuyouwin/xserver/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6, v6}, Lcom/wuyouwin/renderer/GPUImage;->createOrObtain(Lcom/wuyouwin/xserver/XServer;Lcom/wuyouwin/xserver/Drawable;ZZ)Lcom/wuyouwin/renderer/GPUImage;

    .line 212
    if-lez v0, :cond_3

    .line 213
    iget-object v4, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    monitor-enter v4

    .line 214
    :try_start_0
    iget-object v5, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;

    .line 215
    .local v5, "event":Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;
    if-eqz v5, :cond_2

    .line 216
    invoke-static {v5}, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->access$000(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;)Lcom/wuyouwin/xserver/Window;

    move-result-object v6

    if-ne v6, v3, :cond_1

    invoke-static {v5}, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->access$300(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;)Lcom/wuyouwin/xserver/XClient;

    move-result-object v6

    if-ne v6, p1, :cond_1

    .line 218
    invoke-virtual {v2}, Lcom/wuyouwin/core/Bitmask;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 219
    invoke-static {v5, v2}, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->access$102(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;Lcom/wuyouwin/core/Bitmask;)Lcom/wuyouwin/core/Bitmask;

    goto :goto_0

    .line 231
    .end local v5    # "event":Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 221
    .restart local v5    # "event":Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;
    :cond_0
    iget-object v6, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 216
    :cond_1
    new-instance v6, Lcom/wuyouwin/xserver/errors/BadMatch;

    invoke-direct {v6}, Lcom/wuyouwin/xserver/errors/BadMatch;-><init>()V

    .end local v0    # "eventId":I
    .end local v1    # "windowId":I
    .end local v2    # "mask":Lcom/wuyouwin/core/Bitmask;
    .end local v3    # "window":Lcom/wuyouwin/xserver/Window;
    .end local p1    # "client":Lcom/wuyouwin/xserver/XClient;
    .end local p2    # "inputStream":Lcom/wuyouwin/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/wuyouwin/xconnector/XOutputStream;
    throw v6

    .line 224
    .restart local v0    # "eventId":I
    .restart local v1    # "windowId":I
    .restart local v2    # "mask":Lcom/wuyouwin/core/Bitmask;
    .restart local v3    # "window":Lcom/wuyouwin/xserver/Window;
    .restart local p1    # "client":Lcom/wuyouwin/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/wuyouwin/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/wuyouwin/xconnector/XOutputStream;
    :cond_2
    new-instance v6, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;-><init>(Lcom/wuyouwin/xserver/extensions/PresentExtension$1;)V

    move-object v5, v6

    .line 225
    invoke-static {v5, v0}, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->access$202(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;I)I

    .line 226
    invoke-static {v5, v3}, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->access$002(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;Lcom/wuyouwin/xserver/Window;)Lcom/wuyouwin/xserver/Window;

    .line 227
    invoke-static {v5, p1}, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->access$302(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;Lcom/wuyouwin/xserver/XClient;)Lcom/wuyouwin/xserver/XClient;

    .line 228
    invoke-static {v5, v2}, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->access$102(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;Lcom/wuyouwin/core/Bitmask;)Lcom/wuyouwin/core/Bitmask;

    .line 229
    iget-object v6, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    invoke-virtual {v6, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 231
    .end local v5    # "event":Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;
    :goto_0
    monitor-exit v4

    goto :goto_2

    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 233
    :cond_3
    :goto_2
    return-void

    .line 207
    :cond_4
    new-instance v4, Lcom/wuyouwin/xserver/errors/BadWindow;

    invoke-direct {v4, v1}, Lcom/wuyouwin/xserver/errors/BadWindow;-><init>(I)V

    throw v4
.end method

.method private sendCompleteNotify(Lcom/wuyouwin/xserver/Window;ILcom/wuyouwin/xserver/extensions/PresentExtension$CompleteKind;Lcom/wuyouwin/xserver/extensions/PresentExtension$CompleteMode;JJ)V
    .locals 17
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;
    .param p2, "serial"    # I
    .param p3, "kind"    # Lcom/wuyouwin/xserver/extensions/PresentExtension$CompleteKind;
    .param p4, "mode"    # Lcom/wuyouwin/xserver/extensions/PresentExtension$CompleteMode;
    .param p5, "ust"    # J
    .param p7, "msc"    # J

    .line 119
    move-object/from16 v12, p0

    iget-object v0, v12, Lcom/wuyouwin/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    const/4 v13, 0x2

    .line 122
    .local v13, "mask":I
    iget-object v14, v12, Lcom/wuyouwin/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    monitor-enter v14

    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, v12, Lcom/wuyouwin/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 124
    iget-object v1, v12, Lcom/wuyouwin/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;

    move-object v15, v1

    .line 125
    .local v15, "event":Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;
    invoke-static {v15}, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->access$000(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;)Lcom/wuyouwin/xserver/Window;

    move-result-object v1

    move-object/from16 v10, p1

    if-ne v1, v10, :cond_1

    invoke-static {v15}, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->access$100(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;)Lcom/wuyouwin/core/Bitmask;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/wuyouwin/core/Bitmask;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    invoke-static {v15}, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->access$300(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;)Lcom/wuyouwin/xserver/XClient;

    move-result-object v11

    new-instance v8, Lcom/wuyouwin/xserver/events/PresentCompleteNotify;

    invoke-static {v15}, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->access$200(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object v12, v8

    move-wide/from16 v8, p5

    move/from16 v16, v13

    move-object v13, v11

    .end local v13    # "mask":I
    .local v16, "mask":I
    move-wide/from16 v10, p7

    :try_start_1
    invoke-direct/range {v1 .. v11}, Lcom/wuyouwin/xserver/events/PresentCompleteNotify;-><init>(Lcom/wuyouwin/xserver/extensions/PresentExtension;ILcom/wuyouwin/xserver/Window;ILcom/wuyouwin/xserver/extensions/PresentExtension$CompleteKind;Lcom/wuyouwin/xserver/extensions/PresentExtension$CompleteMode;JJ)V

    invoke-virtual {v13, v12}, Lcom/wuyouwin/xserver/XClient;->sendEvent(Lcom/wuyouwin/xserver/events/Event;)V

    goto :goto_1

    .line 129
    .end local v0    # "i":I
    .end local v15    # "event":Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v16    # "mask":I
    .restart local v13    # "mask":I
    :catchall_1
    move-exception v0

    move/from16 v16, v13

    .end local v13    # "mask":I
    .restart local v16    # "mask":I
    goto :goto_2

    .line 125
    .end local v16    # "mask":I
    .restart local v0    # "i":I
    .restart local v13    # "mask":I
    .restart local v15    # "event":Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;
    :cond_1
    move/from16 v16, v13

    .line 123
    .end local v13    # "mask":I
    .end local v15    # "event":Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;
    .restart local v16    # "mask":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v12, p0

    move/from16 v13, v16

    goto :goto_0

    .end local v16    # "mask":I
    .restart local v13    # "mask":I
    :cond_2
    move/from16 v16, v13

    .line 129
    .end local v0    # "i":I
    .end local v13    # "mask":I
    .restart local v16    # "mask":I
    monitor-exit v14

    .line 130
    return-void

    .line 129
    :goto_2
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendConfigureNotify(Lcom/wuyouwin/xserver/Window;I)V
    .locals 7
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;
    .param p2, "pixmapFlags"    # I

    .line 77
    iget-object v0, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    const/4 v0, 0x1

    .line 80
    .local v0, "mask":I
    iget-object v1, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    monitor-enter v1

    .line 81
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 82
    iget-object v3, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;

    .line 83
    .local v3, "event":Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;
    invoke-static {v3}, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->access$000(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;)Lcom/wuyouwin/xserver/Window;

    move-result-object v4

    if-ne v4, p1, :cond_1

    invoke-static {v3}, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->access$100(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;)Lcom/wuyouwin/core/Bitmask;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/wuyouwin/core/Bitmask;->isSet(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 84
    invoke-static {v3}, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->access$300(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;)Lcom/wuyouwin/xserver/XClient;

    move-result-object v4

    new-instance v5, Lcom/wuyouwin/xserver/events/PresentConfigureNotify;

    invoke-static {v3}, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->access$200(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;)I

    move-result v6

    invoke-direct {v5, p0, v6, p1, p2}, Lcom/wuyouwin/xserver/events/PresentConfigureNotify;-><init>(Lcom/wuyouwin/xserver/extensions/PresentExtension;ILcom/wuyouwin/xserver/Window;I)V

    invoke-virtual {v4, v5}, Lcom/wuyouwin/xserver/XClient;->sendEvent(Lcom/wuyouwin/xserver/events/Event;)V

    goto :goto_1

    .line 87
    .end local v2    # "i":I
    .end local v3    # "event":Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 81
    .restart local v2    # "i":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 87
    .end local v2    # "i":I
    monitor-exit v1

    .line 88
    return-void

    .line 87
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private sendIdleNotify(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Pixmap;II)V
    .locals 16
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;
    .param p2, "pixmap"    # Lcom/wuyouwin/xserver/Pixmap;
    .param p3, "serial"    # I
    .param p4, "idleFence"    # I

    .line 91
    move-object/from16 v8, p0

    move/from16 v9, p4

    if-eqz v9, :cond_0

    iget-object v0, v8, Lcom/wuyouwin/xserver/extensions/PresentExtension;->syncExtension:Lcom/wuyouwin/xserver/extensions/SyncExtension;

    invoke-virtual {v0, v9}, Lcom/wuyouwin/xserver/extensions/SyncExtension;->setTriggered(I)V

    .line 92
    :cond_0
    iget-object v0, v8, Lcom/wuyouwin/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 93
    :cond_1
    const/4 v10, 0x4

    .line 95
    .local v10, "mask":I
    iget-object v11, v8, Lcom/wuyouwin/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    monitor-enter v11

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, v8, Lcom/wuyouwin/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 97
    iget-object v1, v8, Lcom/wuyouwin/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;

    move-object v12, v1

    .line 98
    .local v12, "event":Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;
    invoke-static {v12}, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->access$000(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;)Lcom/wuyouwin/xserver/Window;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v13, p1

    if-ne v1, v13, :cond_2

    :try_start_1
    invoke-static {v12}, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->access$100(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;)Lcom/wuyouwin/core/Bitmask;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/wuyouwin/core/Bitmask;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    invoke-static {v12}, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->access$300(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;)Lcom/wuyouwin/xserver/XClient;

    move-result-object v14

    new-instance v15, Lcom/wuyouwin/xserver/events/PresentIdleNotify;

    invoke-static {v12}, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->access$200(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;)I

    move-result v3

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/wuyouwin/xserver/events/PresentIdleNotify;-><init>(Lcom/wuyouwin/xserver/extensions/PresentExtension;ILcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Pixmap;II)V

    invoke-virtual {v14, v15}, Lcom/wuyouwin/xserver/XClient;->sendEvent(Lcom/wuyouwin/xserver/events/Event;)V

    goto :goto_1

    .line 102
    .end local v0    # "i":I
    .end local v12    # "event":Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 96
    .restart local v0    # "i":I
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "i":I
    :catchall_1
    move-exception v0

    move-object/from16 v13, p1

    goto :goto_2

    .line 96
    .restart local v0    # "i":I
    :cond_3
    move-object/from16 v13, p1

    .line 102
    .end local v0    # "i":I
    monitor-exit v11

    .line 103
    return-void

    .line 102
    :goto_2
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendIdleNotifyScheduled(Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Pixmap;II)V
    .locals 16
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;
    .param p2, "pixmap"    # Lcom/wuyouwin/xserver/Pixmap;
    .param p3, "serial"    # I
    .param p4, "idleFence"    # I

    .line 106
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const-wide/32 v8, 0xfe502a

    .line 107
    .local v8, "frameTime":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 109
    .local v10, "now":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "lastIdleTime"

    invoke-virtual {v7, v1, v0}, Lcom/wuyouwin/xserver/Window;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 110
    .local v2, "lastIdleTime":J
    const-wide/32 v4, 0xfe502a

    sub-long v12, v10, v4

    cmp-long v0, v2, v12

    if-gtz v0, :cond_0

    add-long/2addr v4, v10

    goto :goto_0

    :cond_0
    add-long/2addr v4, v2

    :goto_0
    move-wide v12, v4

    .line 111
    .end local v2    # "lastIdleTime":J
    .local v12, "lastIdleTime":J
    sub-long v14, v12, v10

    .line 112
    .local v14, "delayNanos":J
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Lcom/wuyouwin/xserver/Window;->setTag(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    iget-object v0, v6, Lcom/wuyouwin/xserver/extensions/PresentExtension;->idleNotifyScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, v6, Lcom/wuyouwin/xserver/extensions/PresentExtension;->idleNotifyScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 115
    :cond_1
    iget-object v5, v6, Lcom/wuyouwin/xserver/extensions/PresentExtension;->idleNotifyScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/wuyouwin/xserver/extensions/PresentExtension$$ExternalSyntheticLambda0;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v6, v4

    move/from16 v4, p3

    move-object v7, v5

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/wuyouwin/xserver/extensions/PresentExtension$$ExternalSyntheticLambda0;-><init>(Lcom/wuyouwin/xserver/extensions/PresentExtension;Lcom/wuyouwin/xserver/Window;Lcom/wuyouwin/xserver/Pixmap;II)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v6, v14, v15, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 116
    return-void
.end method


# virtual methods
.method public getEventCount()B
    .locals 1

    .line 73
    const/4 v0, 0x3

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "Present"

    return-object v0
.end method

.method public handleRequest(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    .locals 4
    .param p1, "client"    # Lcom/wuyouwin/xserver/XClient;
    .param p2, "inputStream"    # Lcom/wuyouwin/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/wuyouwin/xconnector/XOutputStream;

    .line 237
    invoke-virtual {p1}, Lcom/wuyouwin/xserver/XClient;->getRequestData()B

    move-result v0

    .line 238
    .local v0, "opcode":I
    iget-object v1, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension;->syncExtension:Lcom/wuyouwin/xserver/extensions/SyncExtension;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    const-string v2, "SYNC"

    invoke-virtual {v1, v2}, Lcom/wuyouwin/xserver/XServer;->getExtensionByName(Ljava/lang/String;)Lcom/wuyouwin/xserver/extensions/Extension;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/extensions/SyncExtension;

    iput-object v1, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension;->syncExtension:Lcom/wuyouwin/xserver/extensions/SyncExtension;

    .line 240
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 255
    :pswitch_0
    new-instance v1, Lcom/wuyouwin/xserver/errors/BadImplementation;

    invoke-direct {v1}, Lcom/wuyouwin/xserver/errors/BadImplementation;-><init>()V

    throw v1

    .line 250
    :pswitch_1
    iget-object v1, p0, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    sget-object v2, Lcom/wuyouwin/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/wuyouwin/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/wuyouwin/xserver/XServer;->lock(Lcom/wuyouwin/xserver/XServer$Lockable;)Lcom/wuyouwin/xserver/XLock;

    move-result-object v1

    .line 251
    .local v1, "lock":Lcom/wuyouwin/xserver/XLock;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/xserver/extensions/PresentExtension;->selectInput(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/wuyouwin/xserver/XLock;->close()V

    .line 253
    .end local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :cond_1
    goto :goto_2

    .line 250
    .restart local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Lcom/wuyouwin/xserver/XLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2

    .line 245
    .end local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :pswitch_2
    iget-object v1, p0, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    sget-object v2, Lcom/wuyouwin/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/wuyouwin/xserver/XServer$Lockable;

    sget-object v3, Lcom/wuyouwin/xserver/XServer$Lockable;->PIXMAP_MANAGER:Lcom/wuyouwin/xserver/XServer$Lockable;

    filled-new-array {v2, v3}, [Lcom/wuyouwin/xserver/XServer$Lockable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wuyouwin/xserver/XServer;->lock([Lcom/wuyouwin/xserver/XServer$Lockable;)Lcom/wuyouwin/xserver/XLock;

    move-result-object v1

    .line 246
    .restart local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/xserver/extensions/PresentExtension;->presentPixmap(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 247
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/wuyouwin/xserver/XLock;->close()V

    .line 248
    .end local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :cond_3
    goto :goto_2

    .line 245
    .restart local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :catchall_2
    move-exception v2

    if-eqz v1, :cond_4

    :try_start_3
    invoke-interface {v1}, Lcom/wuyouwin/xserver/XLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v2

    .line 242
    .end local v1    # "lock":Lcom/wuyouwin/xserver/XLock;
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/wuyouwin/xserver/extensions/PresentExtension;->queryVersion(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V

    .line 243
    nop

    .line 257
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onFreeResource(Lcom/wuyouwin/xserver/XResource;)V
    .locals 4
    .param p1, "resource"    # Lcom/wuyouwin/xserver/XResource;

    .line 261
    instance-of v0, p1, Lcom/wuyouwin/xserver/Window;

    if-eqz v0, :cond_2

    .line 262
    move-object v0, p1

    check-cast v0, Lcom/wuyouwin/xserver/Window;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/wuyouwin/xserver/extensions/PresentExtension;->sendConfigureNotify(Lcom/wuyouwin/xserver/Window;I)V

    .line 263
    iget-object v0, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    monitor-enter v0

    .line 264
    :try_start_0
    iget-object v2, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 265
    iget-object v1, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;

    .line 266
    .local v1, "event":Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;
    invoke-static {v1}, Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;->access$000(Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;)Lcom/wuyouwin/xserver/Window;

    move-result-object v3

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_1

    .line 268
    .end local v1    # "event":Lcom/wuyouwin/xserver/extensions/PresentExtension$PresentEvent;
    .end local v2    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 264
    .restart local v2    # "i":I
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 268
    .end local v2    # "i":I
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 270
    :cond_2
    :goto_3
    return-void
.end method

.method public onUpdateWindowGeometry(Lcom/wuyouwin/xserver/Window;Z)V
    .locals 1
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;
    .param p2, "resized"    # Z

    .line 274
    const-string v0, "lastIdleTime"

    invoke-virtual {p1, v0}, Lcom/wuyouwin/xserver/Window;->removeTag(Ljava/lang/String;)V

    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wuyouwin/xserver/extensions/PresentExtension;->sendConfigureNotify(Lcom/wuyouwin/xserver/Window;I)V

    .line 276
    return-void
.end method
