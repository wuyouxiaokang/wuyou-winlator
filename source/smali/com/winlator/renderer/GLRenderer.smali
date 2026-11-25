# ============================================================================
# 已修改 (MODIFIED) - 无忧win虚拟机 / Wuyou Winlator Mod
# 修改者: wuyouxiaokang  <3266636647@qq.com>
# 修改日期: 2026-11-25
# 本项目: https://github.com/wuyouxiaokang/wuyou-winlator
#
# 本文件源自 Winlator (https://github.com/brunodev85/winlator)
# 原始版权: Copyright (c) BrunoSX / brunodev85
# 原始许可证: GNU Lesser General Public License v2.1 (见 LICENSE)
#
# 修改内容: 见仓库 CHANGES.md 中对应条目。主要涉及虚拟键盘接入、中文适配、
#           UI 增强等，均以 LGPL-2.1 同样条款开放。
# ============================================================================
.class public Lcom/winlator/renderer/GLRenderer;
.super Ljava/lang/Object;
.source "GLRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/winlator/xserver/WindowManager$OnWindowModificationListener;
.implements Lcom/winlator/xserver/Pointer$OnPointerMotionListener;


# instance fields
.field public static wlTextInputListener:Ljava/lang/Runnable;

.field public static wlTextInputActive:Z

.field public static wlPollCount:I

.field public static wlNoWindowCount:I

.field public static wlTextInputSince:J

.field public static wlArmedAt:J

.field public static wlFiredForCurrent:Z

.field private cursorBackColor:I

.field private cursorForeColor:I

.field private final cursorMaterial:Lcom/winlator/renderer/material/CursorMaterial;

.field private cursorScale:F

.field private cursorVisible:Z

.field public final effectComposer:Lcom/winlator/renderer/EffectComposer;

.field private forceWindowsFullscreen:Z

.field private fullscreen:Z

.field private magnifierZoom:F

.field protected final quadVertices:Lcom/winlator/renderer/VertexAttribute;

.field private final renderableWindows:Ljava/util/ArrayList;

.field private final rootCursorDrawable:Lcom/winlator/xserver/Drawable;

.field private screenOffsetYRelativeToCursor:Z

.field protected surfaceHeight:S

.field protected surfaceWidth:S

.field private final tmpXForm1:[F

.field private final tmpXForm2:[F

.field private toggleFullscreen:Z

.field public final viewTransformation:Lcom/winlator/renderer/ViewTransformation;

.field protected viewportNeedsUpdate:Z

.field private final windowMaterial:Lcom/winlator/renderer/material/WindowMaterial;

.field private final xServer:Lcom/winlator/xserver/XServer;

.field public final xServerView:Lcom/winlator/widget/XServerView;


# direct methods
.method public static synthetic $r8$lambda$4mojsVTINrVDEnjdhP18m-n_AGQ(Lcom/winlator/renderer/GLRenderer;Lcom/winlator/xserver/Drawable;Lcom/winlator/core/Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/renderer/GLRenderer;->lambda$takeWindowScreenshot$1(Lcom/winlator/xserver/Drawable;Lcom/winlator/core/Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BbDFjtB0fvAVQk-uwtCPYwtyYqc(Lcom/winlator/renderer/GLRenderer;Lcom/winlator/xserver/Window;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/renderer/GLRenderer;->lambda$onUpdateWindowGeometry$0(Lcom/winlator/xserver/Window;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CDQhvOnJVUudUZHv-kfzV_B1zz4(Lcom/winlator/renderer/GLRenderer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/winlator/renderer/GLRenderer;->updateScene()V

    return-void
.end method

.method public constructor <init>(Lcom/winlator/widget/XServerView;Lcom/winlator/xserver/XServer;)V
    .locals 3
    .param p1, "xServerView"    # Lcom/winlator/widget/XServerView;
    .param p2, "xServer"    # Lcom/winlator/xserver/XServer;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/winlator/renderer/VertexAttribute;

    const-string v1, "position"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/renderer/VertexAttribute;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/winlator/renderer/GLRenderer;->quadVertices:Lcom/winlator/renderer/VertexAttribute;

    .line 46
    invoke-static {}, Lcom/winlator/math/XForm;->getInstance()[F

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/renderer/GLRenderer;->tmpXForm1:[F

    .line 47
    invoke-static {}, Lcom/winlator/math/XForm;->getInstance()[F

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/renderer/GLRenderer;->tmpXForm2:[F

    .line 48
    new-instance v0, Lcom/winlator/renderer/material/CursorMaterial;

    invoke-direct {v0}, Lcom/winlator/renderer/material/CursorMaterial;-><init>()V

    iput-object v0, p0, Lcom/winlator/renderer/GLRenderer;->cursorMaterial:Lcom/winlator/renderer/material/CursorMaterial;

    .line 49
    new-instance v0, Lcom/winlator/renderer/material/WindowMaterial;

    invoke-direct {v0}, Lcom/winlator/renderer/material/WindowMaterial;-><init>()V

    iput-object v0, p0, Lcom/winlator/renderer/GLRenderer;->windowMaterial:Lcom/winlator/renderer/material/WindowMaterial;

    .line 50
    new-instance v0, Lcom/winlator/renderer/ViewTransformation;

    invoke-direct {v0}, Lcom/winlator/renderer/ViewTransformation;-><init>()V

    iput-object v0, p0, Lcom/winlator/renderer/GLRenderer;->viewTransformation:Lcom/winlator/renderer/ViewTransformation;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winlator/renderer/GLRenderer;->renderableWindows:Ljava/util/ArrayList;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/renderer/GLRenderer;->fullscreen:Z

    .line 55
    iput-boolean v0, p0, Lcom/winlator/renderer/GLRenderer;->toggleFullscreen:Z

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/winlator/renderer/GLRenderer;->viewportNeedsUpdate:Z

    .line 57
    iput-boolean v1, p0, Lcom/winlator/renderer/GLRenderer;->cursorVisible:Z

    .line 58
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/winlator/renderer/GLRenderer;->cursorScale:F

    .line 59
    const v2, 0xffffff

    iput v2, p0, Lcom/winlator/renderer/GLRenderer;->cursorBackColor:I

    .line 60
    iput v0, p0, Lcom/winlator/renderer/GLRenderer;->cursorForeColor:I

    .line 61
    iput-boolean v0, p0, Lcom/winlator/renderer/GLRenderer;->screenOffsetYRelativeToCursor:Z

    .line 62
    iput v1, p0, Lcom/winlator/renderer/GLRenderer;->magnifierZoom:F

    .line 65
    new-instance v0, Lcom/winlator/renderer/EffectComposer;

    invoke-direct {v0, p0}, Lcom/winlator/renderer/EffectComposer;-><init>(Lcom/winlator/renderer/GLRenderer;)V

    iput-object v0, p0, Lcom/winlator/renderer/GLRenderer;->effectComposer:Lcom/winlator/renderer/EffectComposer;

    .line 68
    iput-object p1, p0, Lcom/winlator/renderer/GLRenderer;->xServerView:Lcom/winlator/widget/XServerView;

    .line 69
    iput-object p2, p0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    .line 70
    invoke-direct {p0}, Lcom/winlator/renderer/GLRenderer;->createRootCursorDrawable()Lcom/winlator/xserver/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/renderer/GLRenderer;->rootCursorDrawable:Lcom/winlator/xserver/Drawable;

    .line 72
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->quadVertices:Lcom/winlator/renderer/VertexAttribute;

    const/16 v1, 0x8

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/winlator/renderer/VertexAttribute;->put([F)V

    .line 79
    iget-object v0, p2, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    invoke-virtual {v0, p0}, Lcom/winlator/xserver/WindowManager;->addOnWindowModificationListener(Lcom/winlator/xserver/WindowManager$OnWindowModificationListener;)V

    .line 80
    iget-object v0, p2, Lcom/winlator/xserver/XServer;->pointer:Lcom/winlator/xserver/Pointer;

    invoke-virtual {v0, p0}, Lcom/winlator/xserver/Pointer;->addOnPointerMotionListener(Lcom/winlator/xserver/Pointer$OnPointerMotionListener;)V

    .line 81
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private collectRenderableWindows(Lcom/winlator/xserver/Window;II)V
    .locals 15
    .param p1, "window"    # Lcom/winlator/xserver/Window;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 295
    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xserver/Window;->isRenderable()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 296
    :cond_0
    iget-object v2, v0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    iget-object v2, v2, Lcom/winlator/xserver/WindowManager;->rootWindow:Lcom/winlator/xserver/Window;

    if-eq v1, v2, :cond_9

    iget-object v2, v1, Lcom/winlator/xserver/Window;->attributes:Lcom/winlator/xserver/WindowAttributes;

    invoke-virtual {v2}, Lcom/winlator/xserver/WindowAttributes;->isViewable()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 297
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xserver/Window;->getParent()Lcom/winlator/xserver/Window;

    move-result-object v2

    .line 298
    .local v2, "parent":Lcom/winlator/xserver/Window;
    iget-object v3, v1, Lcom/winlator/xserver/Window;->attributes:Lcom/winlator/xserver/WindowAttributes;

    invoke-virtual {v3}, Lcom/winlator/xserver/WindowAttributes;->isTransparent()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/winlator/xserver/Window;->attributes:Lcom/winlator/xserver/WindowAttributes;

    invoke-virtual {v3}, Lcom/winlator/xserver/WindowAttributes;->isTransparent()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/winlator/xserver/Window;->isLayered()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xserver/Window;->isLayered()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    move v10, v4

    goto :goto_1

    :goto_0
    move v10, v5

    .line 300
    .local v10, "transparent":Z
    :goto_1
    iget-boolean v3, v0, Lcom/winlator/renderer/GLRenderer;->forceWindowsFullscreen:Z

    if-eqz v3, :cond_8

    .line 301
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xserver/Window;->getWidth()S

    move-result v3

    .line 302
    .local v3, "width":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xserver/Window;->getHeight()S

    move-result v12

    .line 303
    .local v12, "height":S
    const/4 v6, 0x0

    .line 305
    .local v6, "fullscreenTransformation":Lcom/winlator/renderer/FullscreenTransformation;
    const/16 v7, 0x140

    if-lt v3, v7, :cond_3

    const/16 v7, 0xa0

    if-lt v12, v7, :cond_3

    iget-object v7, v0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    iget-short v7, v7, Lcom/winlator/xserver/ScreenInfo;->width:S

    if-ge v3, v7, :cond_3

    iget-object v7, v0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    iget-short v7, v7, Lcom/winlator/xserver/ScreenInfo;->height:S

    if-ge v12, v7, :cond_3

    move v4, v5

    .line 306
    .local v4, "inBounds":Z
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xserver/Window;->getType()Lcom/winlator/xserver/Window$Type;

    move-result-object v7

    sget-object v8, Lcom/winlator/xserver/Window$Type;->NORMAL:Lcom/winlator/xserver/Window$Type;

    const/4 v9, 0x0

    if-ne v7, v8, :cond_7

    if-eqz v4, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xserver/Window;->hasNoDecorations()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 307
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xserver/Window;->getFullscreenTransformation()Lcom/winlator/renderer/FullscreenTransformation;

    move-result-object v6

    .line 308
    if-nez v6, :cond_4

    new-instance v7, Lcom/winlator/renderer/FullscreenTransformation;

    invoke-direct {v7, v1}, Lcom/winlator/renderer/FullscreenTransformation;-><init>(Lcom/winlator/xserver/Window;)V

    move-object v6, v7

    invoke-virtual {v1, v7}, Lcom/winlator/xserver/Window;->setFullscreenTransformation(Lcom/winlator/renderer/FullscreenTransformation;)V

    .line 309
    :cond_4
    iget-object v7, v0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xserver/Window;->getWidth()S

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xserver/Window;->getHeight()S

    move-result v11

    invoke-virtual {v6, v7, v8, v11}, Lcom/winlator/renderer/FullscreenTransformation;->update(Lcom/winlator/xserver/ScreenInfo;SS)V

    .line 311
    iget-object v7, v0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    iget-object v7, v7, Lcom/winlator/xserver/WindowManager;->rootWindow:Lcom/winlator/xserver/Window;

    if-eq v2, v7, :cond_6

    invoke-virtual {v2}, Lcom/winlator/xserver/Window;->getChildCount()I

    move-result v7

    if-ne v7, v5, :cond_6

    sget-object v5, Lcom/winlator/xserver/Decoration;->BORDER:Lcom/winlator/xserver/Decoration;

    invoke-virtual {v2, v5}, Lcom/winlator/xserver/Window;->hasDecoration(Lcom/winlator/xserver/Decoration;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/winlator/xserver/Decoration;->TITLE:Lcom/winlator/xserver/Decoration;

    invoke-virtual {v2, v5}, Lcom/winlator/xserver/Window;->hasDecoration(Lcom/winlator/xserver/Decoration;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 312
    invoke-virtual {v2}, Lcom/winlator/xserver/Window;->getFullscreenTransformation()Lcom/winlator/renderer/FullscreenTransformation;

    move-result-object v5

    .line 313
    .local v5, "parentFullscreenTransformation":Lcom/winlator/renderer/FullscreenTransformation;
    if-nez v5, :cond_5

    new-instance v7, Lcom/winlator/renderer/FullscreenTransformation;

    invoke-direct {v7, v2}, Lcom/winlator/renderer/FullscreenTransformation;-><init>(Lcom/winlator/xserver/Window;)V

    move-object v5, v7

    invoke-virtual {v2, v7}, Lcom/winlator/xserver/Window;->setFullscreenTransformation(Lcom/winlator/renderer/FullscreenTransformation;)V

    .line 314
    :cond_5
    iget-object v7, v0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    invoke-virtual {v2}, Lcom/winlator/xserver/Window;->getWidth()S

    move-result v8

    invoke-virtual {v2}, Lcom/winlator/xserver/Window;->getHeight()S

    move-result v9

    invoke-virtual {v5, v7, v8, v9}, Lcom/winlator/renderer/FullscreenTransformation;->update(Lcom/winlator/xserver/ScreenInfo;SS)V

    .line 316
    invoke-direct {p0, v2}, Lcom/winlator/renderer/GLRenderer;->removeRenderableWindow(Lcom/winlator/xserver/Window;)V

    .line 317
    .end local v5    # "parentFullscreenTransformation":Lcom/winlator/renderer/FullscreenTransformation;
    goto :goto_2

    .line 318
    :cond_6
    invoke-virtual {v2, v9}, Lcom/winlator/xserver/Window;->setFullscreenTransformation(Lcom/winlator/renderer/FullscreenTransformation;)V

    .line 322
    :goto_2
    move-object v5, v6

    goto :goto_3

    .line 320
    :cond_7
    invoke-virtual {v1, v9}, Lcom/winlator/xserver/Window;->setFullscreenTransformation(Lcom/winlator/renderer/FullscreenTransformation;)V

    move-object v5, v6

    .line 322
    .end local v6    # "fullscreenTransformation":Lcom/winlator/renderer/FullscreenTransformation;
    .local v5, "fullscreenTransformation":Lcom/winlator/renderer/FullscreenTransformation;
    :goto_3
    iget-object v13, v0, Lcom/winlator/renderer/GLRenderer;->renderableWindows:Ljava/util/ArrayList;

    new-instance v14, Lcom/winlator/renderer/RenderableWindow;

    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xserver/Window;->getContent()Lcom/winlator/xserver/Drawable;

    move-result-object v7

    move-object v6, v14

    move/from16 v8, p2

    move/from16 v9, p3

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/winlator/renderer/RenderableWindow;-><init>(Lcom/winlator/xserver/Drawable;IIZLcom/winlator/renderer/FullscreenTransformation;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    .end local v3    # "width":S
    .end local v4    # "inBounds":Z
    .end local v5    # "fullscreenTransformation":Lcom/winlator/renderer/FullscreenTransformation;
    .end local v12    # "height":S
    goto :goto_4

    .line 324
    :cond_8
    iget-object v3, v0, Lcom/winlator/renderer/GLRenderer;->renderableWindows:Ljava/util/ArrayList;

    new-instance v11, Lcom/winlator/renderer/RenderableWindow;

    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xserver/Window;->getContent()Lcom/winlator/xserver/Drawable;

    move-result-object v5

    const/4 v9, 0x0

    move-object v4, v11

    move/from16 v6, p2

    move/from16 v7, p3

    move v8, v10

    invoke-direct/range {v4 .. v9}, Lcom/winlator/renderer/RenderableWindow;-><init>(Lcom/winlator/xserver/Drawable;IIZLcom/winlator/renderer/FullscreenTransformation;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .end local v2    # "parent":Lcom/winlator/xserver/Window;
    .end local v10    # "transparent":Z
    :cond_9
    :goto_4
    iget-object v2, v1, Lcom/winlator/xserver/Window;->attributes:Lcom/winlator/xserver/WindowAttributes;

    invoke-virtual {v2}, Lcom/winlator/xserver/WindowAttributes;->isRenderSubwindows()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 328
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xserver/Window;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/winlator/xserver/Window;

    .line 329
    .local v3, "child":Lcom/winlator/xserver/Window;
    invoke-virtual {v3}, Lcom/winlator/xserver/Window;->getX()S

    move-result v4

    add-int v4, v4, p2

    invoke-virtual {v3}, Lcom/winlator/xserver/Window;->getY()S

    move-result v5

    add-int v5, v5, p3

    invoke-direct {p0, v3, v4, v5}, Lcom/winlator/renderer/GLRenderer;->collectRenderableWindows(Lcom/winlator/xserver/Window;II)V

    .line 330
    .end local v3    # "child":Lcom/winlator/xserver/Window;
    goto :goto_5

    .line 332
    :cond_a
    return-void
.end method

.method private createRootCursorDrawable()Lcom/winlator/xserver/Drawable;
    .locals 4

    .line 280
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->xServerView:Lcom/winlator/widget/XServerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 281
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 282
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 283
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080077

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 284
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/winlator/xserver/Drawable;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/winlator/xserver/Drawable;

    move-result-object v3

    return-object v3
.end method

.method private synthetic lambda$onUpdateWindowGeometry$0(Lcom/winlator/xserver/Window;)V
    .locals 0
    .param p1, "window"    # Lcom/winlator/xserver/Window;

    .line 181
    invoke-direct {p0, p1}, Lcom/winlator/renderer/GLRenderer;->updateWindowPosition(Lcom/winlator/xserver/Window;)V

    return-void
.end method

.method private synthetic lambda$takeWindowScreenshot$1(Lcom/winlator/xserver/Drawable;Lcom/winlator/core/Callback;)V
    .locals 16
    .param p1, "drawable"    # Lcom/winlator/xserver/Drawable;
    .param p2, "callback"    # Lcom/winlator/core/Callback;

    .line 431
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v9, v8, Lcom/winlator/xserver/Drawable;->renderLock:Ljava/lang/Object;

    monitor-enter v9

    .line 432
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/xserver/Drawable;->getTexture()Lcom/winlator/renderer/Texture;

    move-result-object v0

    .line 433
    .local v0, "texture":Lcom/winlator/renderer/Texture;
    invoke-virtual {v0}, Lcom/winlator/renderer/Texture;->updateFromDrawable()V

    .line 435
    iget-short v1, v8, Lcom/winlator/xserver/Drawable;->width:S

    int-to-float v1, v1

    iget-short v2, v8, Lcom/winlator/xserver/Drawable;->height:S

    int-to-float v2, v2

    const/4 v3, 0x0

    const/high16 v4, 0x43800000    # 256.0f

    invoke-static {v1, v2, v3, v4}, Lcom/winlator/core/ImageUtils;->getScaledSize(FFFF)[I

    move-result-object v1

    move-object v10, v1

    .line 437
    .local v10, "framebufferSize":[I
    new-instance v1, Lcom/winlator/renderer/RenderTarget;

    invoke-direct {v1}, Lcom/winlator/renderer/RenderTarget;-><init>()V

    move-object v11, v1

    .line 438
    .local v11, "renderTarget":Lcom/winlator/renderer/RenderTarget;
    const/4 v12, 0x0

    aget v1, v10, v12

    const/4 v13, 0x1

    aget v2, v10, v13

    invoke-virtual {v11, v1, v2}, Lcom/winlator/renderer/RenderTarget;->allocateFramebuffer(II)V

    .line 440
    invoke-virtual {v11}, Lcom/winlator/renderer/RenderTarget;->getFramebuffer()I

    move-result v1

    const v14, 0x8d40

    invoke-static {v14, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 441
    aget v1, v10, v12

    aget v2, v10, v13

    invoke-static {v12, v12, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 442
    iput-boolean v13, v7, Lcom/winlator/renderer/GLRenderer;->viewportNeedsUpdate:Z

    .line 443
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 445
    new-instance v1, Lcom/winlator/renderer/material/ScreenMaterial;

    invoke-direct {v1}, Lcom/winlator/renderer/material/ScreenMaterial;-><init>()V

    move-object v15, v1

    .line 446
    .local v15, "material":Lcom/winlator/renderer/material/ScreenMaterial;
    invoke-virtual {v15}, Lcom/winlator/renderer/material/ShaderMaterial;->use()V

    .line 447
    iget-object v1, v15, Lcom/winlator/renderer/material/ScreenMaterial;->uniforms:Lcom/winlator/renderer/material/ScreenMaterial$Uniforms;

    iget-object v1, v1, Lcom/winlator/renderer/material/ScreenMaterial$Uniforms;->flipY:Lcom/winlator/renderer/material/ShaderMaterial$Uniform;

    invoke-virtual {v0}, Lcom/winlator/renderer/Texture;->isFlipY()Z

    move-result v2

    invoke-virtual {v15, v1, v2}, Lcom/winlator/renderer/material/ShaderMaterial;->setUniformBool(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;Z)V

    .line 448
    iget-object v1, v7, Lcom/winlator/renderer/GLRenderer;->quadVertices:Lcom/winlator/renderer/VertexAttribute;

    iget v2, v15, Lcom/winlator/renderer/material/ShaderMaterial;->programId:I

    invoke-virtual {v1, v2}, Lcom/winlator/renderer/VertexAttribute;->bind(I)V

    .line 450
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 451
    invoke-virtual {v0}, Lcom/winlator/renderer/Texture;->getTextureId()I

    move-result v1

    const/16 v2, 0xde1

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 452
    iget-object v1, v15, Lcom/winlator/renderer/material/ScreenMaterial;->uniforms:Lcom/winlator/renderer/material/ScreenMaterial$Uniforms;

    iget-object v1, v1, Lcom/winlator/renderer/material/ScreenMaterial$Uniforms;->screenTexture:Lcom/winlator/renderer/material/ShaderMaterial$Uniform;

    invoke-virtual {v15, v1, v12}, Lcom/winlator/renderer/material/ShaderMaterial;->setUniformInt(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;I)V

    .line 453
    iget-object v1, v7, Lcom/winlator/renderer/GLRenderer;->quadVertices:Lcom/winlator/renderer/VertexAttribute;

    invoke-virtual {v1}, Lcom/winlator/renderer/VertexAttribute;->count()I

    move-result v1

    const/4 v3, 0x5

    invoke-static {v3, v12, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 454
    invoke-static {v2, v12}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 455
    iget-object v1, v7, Lcom/winlator/renderer/GLRenderer;->quadVertices:Lcom/winlator/renderer/VertexAttribute;

    invoke-virtual {v1}, Lcom/winlator/renderer/VertexAttribute;->disable()V

    .line 457
    aget v4, v10, v12

    aget v5, v10, v13

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/winlator/renderer/GLRenderer;->getPixelsARGB(IIIIZ)[I

    move-result-object v1

    .line 458
    .local v1, "colors":[I
    aget v2, v10, v12

    aget v3, v10, v13

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 460
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v14, v12}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 461
    invoke-virtual {v11}, Lcom/winlator/renderer/Texture;->destroy()V

    .line 462
    invoke-virtual {v15}, Lcom/winlator/renderer/material/ShaderMaterial;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 464
    move-object/from16 v3, p2

    :try_start_1
    invoke-interface {v3, v2}, Lcom/winlator/core/Callback;->call(Ljava/lang/Object;)V

    .line 465
    .end local v0    # "texture":Lcom/winlator/renderer/Texture;
    .end local v1    # "colors":[I
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "framebufferSize":[I
    .end local v11    # "renderTarget":Lcom/winlator/renderer/RenderTarget;
    .end local v15    # "material":Lcom/winlator/renderer/material/ScreenMaterial;
    monitor-exit v9

    .line 466
    return-void

    .line 465
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v3, p2

    :goto_0
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private removeRenderableWindow(Lcom/winlator/xserver/Window;)V
    .locals 3
    .param p1, "window"    # Lcom/winlator/xserver/Window;

    .line 335
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/winlator/renderer/GLRenderer;->renderableWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/winlator/renderer/GLRenderer;->renderableWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/renderer/RenderableWindow;

    iget-object v1, v1, Lcom/winlator/renderer/RenderableWindow;->content:Lcom/winlator/xserver/Drawable;

    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->getContent()Lcom/winlator/xserver/Drawable;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 337
    iget-object v1, p0, Lcom/winlator/renderer/GLRenderer;->renderableWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 338
    goto :goto_1

    .line 335
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method private renderCursor()V
    .locals 8

    .line 255
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->cursorMaterial:Lcom/winlator/renderer/material/CursorMaterial;

    invoke-virtual {v0}, Lcom/winlator/renderer/material/ShaderMaterial;->use()V

    .line 256
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->cursorMaterial:Lcom/winlator/renderer/material/CursorMaterial;

    iget-object v1, p0, Lcom/winlator/renderer/GLRenderer;->cursorMaterial:Lcom/winlator/renderer/material/CursorMaterial;

    iget-object v1, v1, Lcom/winlator/renderer/material/CursorMaterial;->uniforms:Lcom/winlator/renderer/material/CursorMaterial$Uniforms;

    iget-object v1, v1, Lcom/winlator/renderer/material/CursorMaterial$Uniforms;->viewSize:Lcom/winlator/renderer/material/ShaderMaterial$Uniform;

    iget-object v2, p0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    iget-short v2, v2, Lcom/winlator/xserver/ScreenInfo;->width:S

    int-to-float v2, v2

    iget-object v3, p0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    iget-short v3, v3, Lcom/winlator/xserver/ScreenInfo;->height:S

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/renderer/material/ShaderMaterial;->setUniformVec2(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;FF)V

    .line 257
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->quadVertices:Lcom/winlator/renderer/VertexAttribute;

    iget-object v1, p0, Lcom/winlator/renderer/GLRenderer;->cursorMaterial:Lcom/winlator/renderer/material/CursorMaterial;

    iget v1, v1, Lcom/winlator/renderer/material/ShaderMaterial;->programId:I

    invoke-virtual {v0, v1}, Lcom/winlator/renderer/VertexAttribute;->bind(I)V

    .line 259
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v1, Lcom/winlator/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    invoke-virtual {v0, v1}, Lcom/winlator/xserver/XServer;->lock(Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v0

    .line 260
    .local v0, "lock":Lcom/winlator/xserver/XLock;
    :try_start_0
    iget-object v1, p0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->inputDeviceManager:Lcom/winlator/xserver/InputDeviceManager;

    invoke-virtual {v1}, Lcom/winlator/xserver/InputDeviceManager;->getPointWindow()Lcom/winlator/xserver/Window;

    move-result-object v1

    .line 261
    .local v1, "pointWindow":Lcom/winlator/xserver/Window;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/winlator/xserver/Window;->attributes:Lcom/winlator/xserver/WindowAttributes;

    invoke-virtual {v2}, Lcom/winlator/xserver/WindowAttributes;->getCursor()Lcom/winlator/xserver/Cursor;

    move-result-object v2

    goto :goto_0

    .line 259
    .end local v1    # "pointWindow":Lcom/winlator/xserver/Window;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 261
    .restart local v1    # "pointWindow":Lcom/winlator/xserver/Window;
    :cond_0
    const/4 v2, 0x0

    .line 262
    .local v2, "cursor":Lcom/winlator/xserver/Cursor;
    :goto_0
    iget-object v3, p0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/xserver/XServer;->pointer:Lcom/winlator/xserver/Pointer;

    invoke-virtual {v3}, Lcom/winlator/xserver/Pointer;->getClampedX()S

    move-result v3

    .line 263
    .local v3, "x":S
    iget-object v4, p0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/xserver/XServer;->pointer:Lcom/winlator/xserver/Pointer;

    invoke-virtual {v4}, Lcom/winlator/xserver/Pointer;->getClampedY()S

    move-result v4

    .line 265
    .local v4, "y":S
    invoke-direct {p0, v2}, Lcom/winlator/renderer/GLRenderer;->wlCheckTextCursor(Lcom/winlator/xserver/Cursor;)V

    if-eqz v2, :cond_1

    .line 266
    invoke-virtual {v2}, Lcom/winlator/xserver/Cursor;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/winlator/xserver/Cursor;->cursorImage:Lcom/winlator/xserver/Drawable;

    iget v6, v2, Lcom/winlator/xserver/Cursor;->hotSpotX:I

    sub-int v6, v3, v6

    iget v7, v2, Lcom/winlator/xserver/Cursor;->hotSpotY:I

    sub-int v7, v4, v7

    invoke-direct {p0, v5, v6, v7}, Lcom/winlator/renderer/GLRenderer;->renderCursorDrawable(Lcom/winlator/xserver/Drawable;II)V

    goto :goto_1

    .line 268
    :cond_1
    iget-object v5, p0, Lcom/winlator/renderer/GLRenderer;->rootCursorDrawable:Lcom/winlator/xserver/Drawable;

    invoke-direct {p0, v5, v3, v4}, Lcom/winlator/renderer/GLRenderer;->renderCursorDrawable(Lcom/winlator/xserver/Drawable;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    .end local v1    # "pointWindow":Lcom/winlator/xserver/Window;
    .end local v2    # "cursor":Lcom/winlator/xserver/Cursor;
    .end local v3    # "x":S
    .end local v4    # "y":S
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/winlator/xserver/XLock;->close()V

    .line 271
    .end local v0    # "lock":Lcom/winlator/xserver/XLock;
    :cond_3
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->quadVertices:Lcom/winlator/renderer/VertexAttribute;

    invoke-virtual {v0}, Lcom/winlator/renderer/VertexAttribute;->disable()V

    .line 272
    return-void

    .line 259
    .restart local v0    # "lock":Lcom/winlator/xserver/XLock;
    :goto_2
    if-eqz v0, :cond_4

    :try_start_1
    invoke-interface {v0}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v1
.end method

.method private wlPollTextCursor()V
    .locals 3

    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/winlator/xserver/XServer;->inputDeviceManager:Lcom/winlator/xserver/InputDeviceManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/winlator/xserver/InputDeviceManager;->getPointWindow()Lcom/winlator/xserver/Window;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/winlator/renderer/GLRenderer;->wlCheckTextCursor(Lcom/winlator/xserver/Cursor;)V

    return-void

    :cond_2
    iget-object v1, v0, Lcom/winlator/xserver/Window;->attributes:Lcom/winlator/xserver/WindowAttributes;

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/winlator/xserver/WindowAttributes;->getCursor()Lcom/winlator/xserver/Cursor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/winlator/renderer/GLRenderer;->wlCheckTextCursor(Lcom/winlator/xserver/Cursor;)V

    return-void
.end method


.method private wlCheckTextCursor(Lcom/winlator/xserver/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Lcom/winlator/xserver/Cursor;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/winlator/xserver/Cursor;->cursorImage:Lcom/winlator/xserver/Drawable;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/winlator/renderer/GLRenderer;->wlOnCursorChanged(Z)V

    return-void

    :cond_1
    iget-short v1, v0, Lcom/winlator/xserver/Drawable;->width:S

    iget-short v2, v0, Lcom/winlator/xserver/Drawable;->height:S

    const/16 v3, 0xe

    if-ge v2, v3, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-lez v1, :cond_3

    mul-int/lit8 v3, v1, 0x2

    if-gt v3, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/winlator/renderer/GLRenderer;->wlOnCursorChanged(Z)V

    return-void
.end method

.method private renderCursorDrawable(Lcom/winlator/xserver/Drawable;II)V
    .locals 8
    .param p1, "drawable"    # Lcom/winlator/xserver/Drawable;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 196
    iget-object v0, p1, Lcom/winlator/xserver/Drawable;->renderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    invoke-virtual {p1}, Lcom/winlator/xserver/Drawable;->getTexture()Lcom/winlator/renderer/Texture;

    move-result-object v1

    .line 198
    .local v1, "texture":Lcom/winlator/renderer/Texture;
    invoke-virtual {v1}, Lcom/winlator/renderer/Texture;->updateFromDrawable()V

    .line 200
    iget-object v2, p0, Lcom/winlator/renderer/GLRenderer;->tmpXForm1:[F

    int-to-float v3, p2

    int-to-float v4, p3

    iget-short v5, p1, Lcom/winlator/xserver/Drawable;->width:S

    int-to-float v5, v5

    iget v6, p0, Lcom/winlator/renderer/GLRenderer;->cursorScale:F

    mul-float/2addr v5, v6

    iget-short v6, p1, Lcom/winlator/xserver/Drawable;->height:S

    int-to-float v6, v6

    iget v7, p0, Lcom/winlator/renderer/GLRenderer;->cursorScale:F

    mul-float/2addr v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Lcom/winlator/math/XForm;->set([FFFFF)[F

    .line 201
    iget-object v2, p0, Lcom/winlator/renderer/GLRenderer;->tmpXForm1:[F

    iget-object v3, p0, Lcom/winlator/renderer/GLRenderer;->tmpXForm1:[F

    iget-object v4, p0, Lcom/winlator/renderer/GLRenderer;->tmpXForm2:[F

    invoke-static {v2, v3, v4}, Lcom/winlator/math/XForm;->multiply([F[F[F)[F

    .line 203
    iget-object v2, p0, Lcom/winlator/renderer/GLRenderer;->cursorMaterial:Lcom/winlator/renderer/material/CursorMaterial;

    iget-object v3, p0, Lcom/winlator/renderer/GLRenderer;->cursorMaterial:Lcom/winlator/renderer/material/CursorMaterial;

    iget-object v3, v3, Lcom/winlator/renderer/material/CursorMaterial;->uniforms:Lcom/winlator/renderer/material/CursorMaterial$Uniforms;

    iget-object v3, v3, Lcom/winlator/renderer/material/CursorMaterial$Uniforms;->backColor:Lcom/winlator/renderer/material/ShaderMaterial$Uniform;

    iget v4, p0, Lcom/winlator/renderer/GLRenderer;->cursorBackColor:I

    invoke-virtual {v2, v3, v4}, Lcom/winlator/renderer/material/ShaderMaterial;->setUniformColor(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;I)V

    .line 204
    iget-object v2, p0, Lcom/winlator/renderer/GLRenderer;->cursorMaterial:Lcom/winlator/renderer/material/CursorMaterial;

    iget-object v3, p0, Lcom/winlator/renderer/GLRenderer;->cursorMaterial:Lcom/winlator/renderer/material/CursorMaterial;

    iget-object v3, v3, Lcom/winlator/renderer/material/CursorMaterial;->uniforms:Lcom/winlator/renderer/material/CursorMaterial$Uniforms;

    iget-object v3, v3, Lcom/winlator/renderer/material/CursorMaterial$Uniforms;->foreColor:Lcom/winlator/renderer/material/ShaderMaterial$Uniform;

    iget v4, p0, Lcom/winlator/renderer/GLRenderer;->cursorForeColor:I

    invoke-virtual {v2, v3, v4}, Lcom/winlator/renderer/material/ShaderMaterial;->setUniformColor(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;I)V

    .line 206
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 207
    invoke-virtual {v1}, Lcom/winlator/renderer/Texture;->getTextureId()I

    move-result v2

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 208
    iget-object v2, p0, Lcom/winlator/renderer/GLRenderer;->cursorMaterial:Lcom/winlator/renderer/material/CursorMaterial;

    iget-object v4, p0, Lcom/winlator/renderer/GLRenderer;->cursorMaterial:Lcom/winlator/renderer/material/CursorMaterial;

    iget-object v4, v4, Lcom/winlator/renderer/material/CursorMaterial;->uniforms:Lcom/winlator/renderer/material/CursorMaterial$Uniforms;

    iget-object v4, v4, Lcom/winlator/renderer/material/CursorMaterial$Uniforms;->texture:Lcom/winlator/renderer/material/ShaderMaterial$Uniform;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/winlator/renderer/material/ShaderMaterial;->setUniformInt(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;I)V

    .line 209
    iget-object v2, p0, Lcom/winlator/renderer/GLRenderer;->cursorMaterial:Lcom/winlator/renderer/material/CursorMaterial;

    iget-object v4, p0, Lcom/winlator/renderer/GLRenderer;->cursorMaterial:Lcom/winlator/renderer/material/CursorMaterial;

    iget-object v4, v4, Lcom/winlator/renderer/material/CursorMaterial;->uniforms:Lcom/winlator/renderer/material/CursorMaterial$Uniforms;

    iget-object v4, v4, Lcom/winlator/renderer/material/CursorMaterial$Uniforms;->xform:Lcom/winlator/renderer/material/ShaderMaterial$Uniform;

    iget-object v6, p0, Lcom/winlator/renderer/GLRenderer;->tmpXForm1:[F

    invoke-virtual {v2, v4, v6}, Lcom/winlator/renderer/material/ShaderMaterial;->setUniformFloatArray(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;[F)V

    .line 210
    iget-object v2, p0, Lcom/winlator/renderer/GLRenderer;->quadVertices:Lcom/winlator/renderer/VertexAttribute;

    invoke-virtual {v2}, Lcom/winlator/renderer/VertexAttribute;->count()I

    move-result v2

    const/4 v4, 0x5

    invoke-static {v4, v5, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 211
    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 212
    .end local v1    # "texture":Lcom/winlator/renderer/Texture;
    monitor-exit v0

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private renderWindowDrawable(Lcom/winlator/xserver/Drawable;IIZLcom/winlator/renderer/FullscreenTransformation;)V
    .locals 7
    .param p1, "drawable"    # Lcom/winlator/xserver/Drawable;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "transparent"    # Z
    .param p5, "fullscreenTransformation"    # Lcom/winlator/renderer/FullscreenTransformation;

    .line 216
    iget-object v0, p1, Lcom/winlator/xserver/Drawable;->renderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    invoke-virtual {p1}, Lcom/winlator/xserver/Drawable;->getTexture()Lcom/winlator/renderer/Texture;

    move-result-object v1

    .line 218
    .local v1, "texture":Lcom/winlator/renderer/Texture;
    invoke-virtual {v1}, Lcom/winlator/renderer/Texture;->updateFromDrawable()V

    .line 220
    if-eqz p5, :cond_0

    .line 221
    iget-object v2, p0, Lcom/winlator/renderer/GLRenderer;->tmpXForm1:[F

    iget-short v3, p5, Lcom/winlator/renderer/FullscreenTransformation;->x:S

    int-to-float v3, v3

    iget-short v4, p5, Lcom/winlator/renderer/FullscreenTransformation;->y:S

    int-to-float v4, v4

    iget-short v5, p5, Lcom/winlator/renderer/FullscreenTransformation;->width:S

    int-to-float v5, v5

    iget-short v6, p5, Lcom/winlator/renderer/FullscreenTransformation;->height:S

    int-to-float v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/winlator/math/XForm;->set([FFFFF)[F

    goto :goto_0

    .line 235
    .end local v1    # "texture":Lcom/winlator/renderer/Texture;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 223
    .restart local v1    # "texture":Lcom/winlator/renderer/Texture;
    :cond_0
    iget-object v2, p0, Lcom/winlator/renderer/GLRenderer;->tmpXForm1:[F

    int-to-float v3, p2

    int-to-float v4, p3

    iget-short v5, p1, Lcom/winlator/xserver/Drawable;->width:S

    int-to-float v5, v5

    iget-short v6, p1, Lcom/winlator/xserver/Drawable;->height:S

    int-to-float v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/winlator/math/XForm;->set([FFFFF)[F

    .line 225
    :goto_0
    iget-object v2, p0, Lcom/winlator/renderer/GLRenderer;->tmpXForm1:[F

    iget-object v3, p0, Lcom/winlator/renderer/GLRenderer;->tmpXForm1:[F

    iget-object v4, p0, Lcom/winlator/renderer/GLRenderer;->tmpXForm2:[F

    invoke-static {v2, v3, v4}, Lcom/winlator/math/XForm;->multiply([F[F[F)[F

    .line 226
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 227
    invoke-virtual {v1}, Lcom/winlator/renderer/Texture;->getTextureId()I

    move-result v2

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 228
    iget-object v2, p0, Lcom/winlator/renderer/GLRenderer;->windowMaterial:Lcom/winlator/renderer/material/WindowMaterial;

    iget-object v4, p0, Lcom/winlator/renderer/GLRenderer;->windowMaterial:Lcom/winlator/renderer/material/WindowMaterial;

    iget-object v4, v4, Lcom/winlator/renderer/material/WindowMaterial;->uniforms:Lcom/winlator/renderer/material/WindowMaterial$Uniforms;

    iget-object v4, v4, Lcom/winlator/renderer/material/WindowMaterial$Uniforms;->texture:Lcom/winlator/renderer/material/ShaderMaterial$Uniform;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/winlator/renderer/material/ShaderMaterial;->setUniformInt(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;I)V

    .line 229
    iget-object v2, p0, Lcom/winlator/renderer/GLRenderer;->windowMaterial:Lcom/winlator/renderer/material/WindowMaterial;

    iget-object v4, p0, Lcom/winlator/renderer/GLRenderer;->windowMaterial:Lcom/winlator/renderer/material/WindowMaterial;

    iget-object v4, v4, Lcom/winlator/renderer/material/WindowMaterial;->uniforms:Lcom/winlator/renderer/material/WindowMaterial$Uniforms;

    iget-object v4, v4, Lcom/winlator/renderer/material/WindowMaterial$Uniforms;->noAlpha:Lcom/winlator/renderer/material/ShaderMaterial$Uniform;

    if-nez p4, :cond_1

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v2, v4, v6}, Lcom/winlator/renderer/material/ShaderMaterial;->setUniformFloat(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;F)V

    .line 230
    iget-object v2, p0, Lcom/winlator/renderer/GLRenderer;->windowMaterial:Lcom/winlator/renderer/material/WindowMaterial;

    iget-object v4, p0, Lcom/winlator/renderer/GLRenderer;->windowMaterial:Lcom/winlator/renderer/material/WindowMaterial;

    iget-object v4, v4, Lcom/winlator/renderer/material/WindowMaterial;->uniforms:Lcom/winlator/renderer/material/WindowMaterial$Uniforms;

    iget-object v4, v4, Lcom/winlator/renderer/material/WindowMaterial$Uniforms;->xform:Lcom/winlator/renderer/material/ShaderMaterial$Uniform;

    iget-object v6, p0, Lcom/winlator/renderer/GLRenderer;->tmpXForm1:[F

    invoke-virtual {v2, v4, v6}, Lcom/winlator/renderer/material/ShaderMaterial;->setUniformFloatArray(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;[F)V

    .line 231
    iget-object v2, p0, Lcom/winlator/renderer/GLRenderer;->windowMaterial:Lcom/winlator/renderer/material/WindowMaterial;

    iget-object v4, p0, Lcom/winlator/renderer/GLRenderer;->windowMaterial:Lcom/winlator/renderer/material/WindowMaterial;

    iget-object v4, v4, Lcom/winlator/renderer/material/WindowMaterial;->uniforms:Lcom/winlator/renderer/material/WindowMaterial$Uniforms;

    iget-object v4, v4, Lcom/winlator/renderer/material/WindowMaterial$Uniforms;->flipY:Lcom/winlator/renderer/material/ShaderMaterial$Uniform;

    invoke-virtual {v1}, Lcom/winlator/renderer/Texture;->isFlipY()Z

    move-result v6

    invoke-virtual {v2, v4, v6}, Lcom/winlator/renderer/material/ShaderMaterial;->setUniformBool(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;Z)V

    .line 233
    iget-object v2, p0, Lcom/winlator/renderer/GLRenderer;->quadVertices:Lcom/winlator/renderer/VertexAttribute;

    invoke-virtual {v2}, Lcom/winlator/renderer/VertexAttribute;->count()I

    move-result v2

    const/4 v4, 0x5

    invoke-static {v4, v5, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 234
    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 235
    .end local v1    # "texture":Lcom/winlator/renderer/Texture;
    monitor-exit v0

    .line 236
    return-void

    .line 235
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private renderWindows()V
    .locals 10

    .line 239
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->windowMaterial:Lcom/winlator/renderer/material/WindowMaterial;

    invoke-virtual {v0}, Lcom/winlator/renderer/material/ShaderMaterial;->use()V

    .line 240
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->windowMaterial:Lcom/winlator/renderer/material/WindowMaterial;

    iget-object v1, p0, Lcom/winlator/renderer/GLRenderer;->windowMaterial:Lcom/winlator/renderer/material/WindowMaterial;

    iget-object v1, v1, Lcom/winlator/renderer/material/WindowMaterial;->uniforms:Lcom/winlator/renderer/material/WindowMaterial$Uniforms;

    iget-object v1, v1, Lcom/winlator/renderer/material/WindowMaterial$Uniforms;->viewSize:Lcom/winlator/renderer/material/ShaderMaterial$Uniform;

    iget-object v2, p0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    iget-short v2, v2, Lcom/winlator/xserver/ScreenInfo;->width:S

    int-to-float v2, v2

    iget-object v3, p0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    iget-short v3, v3, Lcom/winlator/xserver/ScreenInfo;->height:S

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/renderer/material/ShaderMaterial;->setUniformVec2(Lcom/winlator/renderer/material/ShaderMaterial$Uniform;FF)V

    .line 241
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->quadVertices:Lcom/winlator/renderer/VertexAttribute;

    iget-object v1, p0, Lcom/winlator/renderer/GLRenderer;->windowMaterial:Lcom/winlator/renderer/material/WindowMaterial;

    iget v1, v1, Lcom/winlator/renderer/material/ShaderMaterial;->programId:I

    invoke-virtual {v0, v1}, Lcom/winlator/renderer/VertexAttribute;->bind(I)V

    .line 243
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v1, Lcom/winlator/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    invoke-virtual {v0, v1}, Lcom/winlator/xserver/XServer;->lock(Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v0

    .line 244
    .local v0, "lock":Lcom/winlator/xserver/XLock;
    :try_start_0
    iget-object v1, p0, Lcom/winlator/renderer/GLRenderer;->renderableWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/renderer/RenderableWindow;

    .line 245
    .local v2, "window":Lcom/winlator/renderer/RenderableWindow;
    iget-object v3, v2, Lcom/winlator/renderer/RenderableWindow;->content:Lcom/winlator/xserver/Drawable;

    invoke-virtual {v3}, Lcom/winlator/xserver/Drawable;->isOffscreenStorage()Z

    move-result v3

    if-nez v3, :cond_0

    .line 246
    iget-object v5, v2, Lcom/winlator/renderer/RenderableWindow;->content:Lcom/winlator/xserver/Drawable;

    iget-short v6, v2, Lcom/winlator/renderer/RenderableWindow;->rootX:S

    iget-short v7, v2, Lcom/winlator/renderer/RenderableWindow;->rootY:S

    iget-boolean v8, v2, Lcom/winlator/renderer/RenderableWindow;->transparent:Z

    iget-object v9, v2, Lcom/winlator/renderer/RenderableWindow;->fullscreenTransformation:Lcom/winlator/renderer/FullscreenTransformation;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/winlator/renderer/GLRenderer;->renderWindowDrawable(Lcom/winlator/xserver/Drawable;IIZLcom/winlator/renderer/FullscreenTransformation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 243
    .end local v2    # "window":Lcom/winlator/renderer/RenderableWindow;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 248
    :cond_0
    :goto_1
    goto :goto_0

    .line 249
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/winlator/xserver/XLock;->close()V

    .line 251
    .end local v0    # "lock":Lcom/winlator/xserver/XLock;
    :cond_2
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->quadVertices:Lcom/winlator/renderer/VertexAttribute;

    invoke-virtual {v0}, Lcom/winlator/renderer/VertexAttribute;->disable()V

    .line 252
    return-void

    .line 243
    .restart local v0    # "lock":Lcom/winlator/xserver/XLock;
    :goto_2
    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Lcom/winlator/xserver/XLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v1
.end method

.method private updateScene()V
    .locals 4

    .line 288
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    sget-object v1, Lcom/winlator/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    sget-object v2, Lcom/winlator/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/xserver/XServer$Lockable;

    filled-new-array {v1, v2}, [Lcom/winlator/xserver/XServer$Lockable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/winlator/xserver/XServer;->lock([Lcom/winlator/xserver/XServer$Lockable;)Lcom/winlator/xserver/XLock;

    move-result-object v0

    .line 289
    .local v0, "lock":Lcom/winlator/xserver/XLock;
    :try_start_0
    iget-object v1, p0, Lcom/winlator/renderer/GLRenderer;->renderableWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 290
    iget-object v1, p0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    iget-object v1, v1, Lcom/winlator/xserver/WindowManager;->rootWindow:Lcom/winlator/xserver/Window;

    iget-object v2, p0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    iget-object v2, v2, Lcom/winlator/xserver/WindowManager;->rootWindow:Lcom/winlator/xserver/Window;

    invoke-virtual {v2}, Lcom/winlator/xserver/Window;->getX()S

    move-result v2

    iget-object v3, p0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/xserver/XServer;->windowManager:Lcom/winlator/xserver/WindowManager;

    iget-object v3, v3, Lcom/winlator/xserver/WindowManager;->rootWindow:Lcom/winlator/xserver/Window;

    invoke-virtual {v3}, Lcom/winlator/xserver/Window;->getY()S

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/winlator/renderer/GLRenderer;->collectRenderableWindows(Lcom/winlator/xserver/Window;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/xserver/XLock;->close()V

    .line 292
    .end local v0    # "lock":Lcom/winlator/xserver/XLock;
    :cond_0
    return-void

    .line 288
    .restart local v0    # "lock":Lcom/winlator/xserver/XLock;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lcom/winlator/xserver/XLock;->close()V
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

.method private updateWindowPosition(Lcom/winlator/xserver/Window;)V
    .locals 4
    .param p1, "window"    # Lcom/winlator/xserver/Window;

    .line 344
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->renderableWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/renderer/RenderableWindow;

    .line 345
    .local v1, "renderableWindow":Lcom/winlator/renderer/RenderableWindow;
    iget-object v2, v1, Lcom/winlator/renderer/RenderableWindow;->content:Lcom/winlator/xserver/Drawable;

    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->getContent()Lcom/winlator/xserver/Drawable;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 346
    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->getRootX()S

    move-result v0

    iput-short v0, v1, Lcom/winlator/renderer/RenderableWindow;->rootX:S

    .line 347
    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->getRootY()S

    move-result v0

    iput-short v0, v1, Lcom/winlator/renderer/RenderableWindow;->rootY:S

    .line 348
    goto :goto_1

    .line 345
    :cond_0
    nop

    .line 350
    .end local v1    # "renderableWindow":Lcom/winlator/renderer/RenderableWindow;
    goto :goto_0

    .line 351
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected drawFrame()V
    .locals 10

    invoke-direct {p0}, Lcom/winlator/renderer/GLRenderer;->wlPollTextCursor()V

    invoke-static {}, Lcom/winlator/renderer/GLRenderer;->wlTick()V

    .line 123
    iget-boolean v0, p0, Lcom/winlator/renderer/GLRenderer;->viewportNeedsUpdate:Z

    if-eqz v0, :cond_1

    .line 124
    iget-boolean v0, p0, Lcom/winlator/renderer/GLRenderer;->fullscreen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    iget-short v0, p0, Lcom/winlator/renderer/GLRenderer;->surfaceWidth:S

    iget-short v2, p0, Lcom/winlator/renderer/GLRenderer;->surfaceHeight:S

    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->viewTransformation:Lcom/winlator/renderer/ViewTransformation;

    iget v0, v0, Lcom/winlator/renderer/ViewTransformation;->viewOffsetX:I

    iget-object v2, p0, Lcom/winlator/renderer/GLRenderer;->viewTransformation:Lcom/winlator/renderer/ViewTransformation;

    iget v2, v2, Lcom/winlator/renderer/ViewTransformation;->viewOffsetY:I

    iget-object v3, p0, Lcom/winlator/renderer/GLRenderer;->viewTransformation:Lcom/winlator/renderer/ViewTransformation;

    iget v3, v3, Lcom/winlator/renderer/ViewTransformation;->viewWidth:I

    iget-object v4, p0, Lcom/winlator/renderer/GLRenderer;->viewTransformation:Lcom/winlator/renderer/ViewTransformation;

    iget v4, v4, Lcom/winlator/renderer/ViewTransformation;->viewHeight:I

    invoke-static {v0, v2, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 128
    :goto_0
    iput-boolean v1, p0, Lcom/winlator/renderer/GLRenderer;->viewportNeedsUpdate:Z

    .line 131
    :cond_1
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "pointerX":F
    const/4 v1, 0x0

    .line 135
    .local v1, "pointerY":F
    iget-boolean v2, p0, Lcom/winlator/renderer/GLRenderer;->screenOffsetYRelativeToCursor:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_2

    iget v2, p0, Lcom/winlator/renderer/GLRenderer;->magnifierZoom:F

    goto :goto_1

    :cond_2
    move v2, v3

    .line 137
    .local v2, "magnifierZoom":F
    :goto_1
    cmpl-float v4, v2, v3

    const/4 v5, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz v4, :cond_3

    .line 138
    iget-object v4, p0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/xserver/XServer;->pointer:Lcom/winlator/xserver/Pointer;

    invoke-virtual {v4}, Lcom/winlator/xserver/Pointer;->getX()S

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    iget-object v7, p0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    iget-short v7, v7, Lcom/winlator/xserver/ScreenInfo;->width:S

    int-to-float v7, v7

    mul-float/2addr v7, v6

    sub-float/2addr v4, v7

    iget-object v7, p0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    iget-short v7, v7, Lcom/winlator/xserver/ScreenInfo;->width:S

    int-to-float v7, v7

    sub-float v8, v3, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float/2addr v7, v8

    invoke-static {v4, v5, v7}, Lcom/winlator/math/Mathf;->clamp(FFF)F

    move-result v0

    .line 141
    :cond_3
    iget-boolean v4, p0, Lcom/winlator/renderer/GLRenderer;->screenOffsetYRelativeToCursor:Z

    if-nez v4, :cond_4

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_7

    .line 142
    :cond_4
    cmpl-float v4, v2, v3

    if-eqz v4, :cond_5

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    goto :goto_2

    :cond_5
    move v3, v6

    .line 143
    .local v3, "scaleY":F
    :goto_2
    iget-object v4, p0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    iget-short v4, v4, Lcom/winlator/xserver/ScreenInfo;->height:S

    int-to-float v4, v4

    iget-boolean v7, p0, Lcom/winlator/renderer/GLRenderer;->screenOffsetYRelativeToCursor:Z

    if-eqz v7, :cond_6

    const/high16 v6, 0x3e800000    # 0.25f

    :cond_6
    mul-float/2addr v4, v6

    .line 144
    .local v4, "offsetY":F
    iget-object v6, p0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/xserver/XServer;->pointer:Lcom/winlator/xserver/Pointer;

    invoke-virtual {v6}, Lcom/winlator/xserver/Pointer;->getY()S

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    sub-float/2addr v6, v4

    iget-object v7, p0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    iget-short v7, v7, Lcom/winlator/xserver/ScreenInfo;->height:S

    int-to-float v7, v7

    mul-float/2addr v7, v3

    invoke-static {v6, v5, v7}, Lcom/winlator/math/Mathf;->clamp(FFF)F

    move-result v1

    .line 147
    .end local v3    # "scaleY":F
    .end local v4    # "offsetY":F
    :cond_7
    iget-object v4, p0, Lcom/winlator/renderer/GLRenderer;->tmpXForm2:[F

    neg-float v5, v0

    neg-float v6, v1

    const/4 v9, 0x0

    move v7, v2

    move v8, v2

    invoke-static/range {v4 .. v9}, Lcom/winlator/math/XForm;->makeTransform([FFFFFF)[F

    .line 149
    invoke-direct {p0}, Lcom/winlator/renderer/GLRenderer;->renderWindows()V

    .line 150
    iget-boolean v3, p0, Lcom/winlator/renderer/GLRenderer;->cursorVisible:Z

    if-eqz v3, :cond_8

    invoke-direct {p0}, Lcom/winlator/renderer/GLRenderer;->renderCursor()V

    .line 151
    :cond_8
    return-void
.end method

.method public getMagnifierZoom()F
    .locals 1

    .line 401
    iget v0, p0, Lcom/winlator/renderer/GLRenderer;->magnifierZoom:F

    return v0
.end method

.method public getPixelsARGB(IIIIZ)[I
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flipY"    # Z

    .line 410
    mul-int v0, p3, p4

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 411
    .local v0, "pixelBuffer":Ljava/nio/ByteBuffer;
    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v8, v0

    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 413
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 414
    .local v1, "colors":Ljava/nio/IntBuffer;
    mul-int v2, p3, p4

    new-array v2, v2, [I

    .line 415
    .local v2, "result":[I
    if-eqz p5, :cond_1

    .line 416
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p4, :cond_0

    .line 417
    sub-int v4, p4, v3

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v4, p3

    invoke-virtual {v1, v4}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 418
    mul-int v4, v3, p3

    invoke-virtual {v1, v2, v4, p3}, Ljava/nio/IntBuffer;->get([III)Ljava/nio/IntBuffer;

    .line 416
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    nop

    .end local v3    # "i":I
    goto :goto_1

    .line 421
    :cond_1
    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 423
    :goto_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 424
    aget v4, v2, v3

    const v5, -0xff0100

    and-int/2addr v4, v5

    aget v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    aget v5, v2, v3

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    aput v4, v2, v3

    .line 423
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    nop

    .line 426
    .end local v3    # "i":I
    return-object v2
.end method

.method public isFullscreen()Z
    .locals 1

    .line 397
    iget-boolean v0, p0, Lcom/winlator/renderer/GLRenderer;->fullscreen:Z

    return v0
.end method

.method public onChangeWindowZOrder(Lcom/winlator/xserver/Window;)V
    .locals 2
    .param p1, "window"    # Lcom/winlator/xserver/Window;

    .line 167
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->xServerView:Lcom/winlator/widget/XServerView;

    new-instance v1, Lcom/winlator/renderer/GLRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/winlator/renderer/GLRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/renderer/GLRenderer;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 168
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->xServerView:Lcom/winlator/widget/XServerView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 169
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    invoke-direct {p0}, Lcom/winlator/renderer/GLRenderer;->wlPollTextCursor()V

    invoke-static {}, Lcom/winlator/renderer/GLRenderer;->wlTick()V

    .line 110
    iget-boolean v0, p0, Lcom/winlator/renderer/GLRenderer;->toggleFullscreen:Z

    if-eqz v0, :cond_0

    .line 111
    iget-boolean v0, p0, Lcom/winlator/renderer/GLRenderer;->fullscreen:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/winlator/renderer/GLRenderer;->fullscreen:Z

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/renderer/GLRenderer;->toggleFullscreen:Z

    .line 113
    iput-boolean v1, p0, Lcom/winlator/renderer/GLRenderer;->viewportNeedsUpdate:Z

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->effectComposer:Lcom/winlator/renderer/EffectComposer;

    invoke-virtual {v0}, Lcom/winlator/renderer/EffectComposer;->hasEffects()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->effectComposer:Lcom/winlator/renderer/EffectComposer;

    invoke-virtual {v0}, Lcom/winlator/renderer/EffectComposer;->render()V

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/winlator/renderer/GLRenderer;->drawFrame()V

    .line 120
    :goto_0
    return-void
.end method

.method public onMapWindow(Lcom/winlator/xserver/Window;)V
    .locals 2
    .param p1, "window"    # Lcom/winlator/xserver/Window;

    .line 155
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->xServerView:Lcom/winlator/widget/XServerView;

    new-instance v1, Lcom/winlator/renderer/GLRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/winlator/renderer/GLRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/renderer/GLRenderer;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 156
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->xServerView:Lcom/winlator/widget/XServerView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 157
    return-void
.end method

.method public onPointerMove(SS)V
    .locals 1
    .param p1, "x"    # S
    .param p2, "y"    # S

    .line 192
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->xServerView:Lcom/winlator/widget/XServerView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 193
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 102
    int-to-short v0, p2

    iput-short v0, p0, Lcom/winlator/renderer/GLRenderer;->surfaceWidth:S

    .line 103
    int-to-short v0, p3

    iput-short v0, p0, Lcom/winlator/renderer/GLRenderer;->surfaceHeight:S

    .line 104
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->viewTransformation:Lcom/winlator/renderer/ViewTransformation;

    iget-object v1, p0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    iget-short v1, v1, Lcom/winlator/xserver/ScreenInfo;->width:S

    iget-object v2, p0, Lcom/winlator/renderer/GLRenderer;->xServer:Lcom/winlator/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/xserver/XServer;->screenInfo:Lcom/winlator/xserver/ScreenInfo;

    iget-short v2, v2, Lcom/winlator/xserver/ScreenInfo;->height:S

    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/winlator/renderer/ViewTransformation;->update(IIII)V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/renderer/GLRenderer;->viewportNeedsUpdate:Z

    .line 106
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 85
    invoke-static {}, Lcom/winlator/core/GPUHelper;->setGlobalEGLContext()V

    .line 87
    const/16 v0, 0x901

    invoke-static {v0}, Landroid/opengl/GLES20;->glFrontFace(I)V

    .line 88
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 90
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 91
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    .line 93
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 94
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 95
    const/4 v1, 0x0

    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 97
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglSwapInterval(Landroid/opengl/EGLDisplay;I)Z

    .line 98
    return-void
.end method

.method public onUnmapWindow(Lcom/winlator/xserver/Window;)V
    .locals 2
    .param p1, "window"    # Lcom/winlator/xserver/Window;

    .line 161
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->xServerView:Lcom/winlator/widget/XServerView;

    new-instance v1, Lcom/winlator/renderer/GLRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/winlator/renderer/GLRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/renderer/GLRenderer;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 162
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->xServerView:Lcom/winlator/widget/XServerView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 163
    return-void
.end method

.method public onUpdateWindowAttributes(Lcom/winlator/xserver/Window;Lcom/winlator/core/Bitmask;)V
    .locals 5
    .param p1, "window"    # Lcom/winlator/xserver/Window;
    .param p2, "mask"    # Lcom/winlator/core/Bitmask;

    .line 187
    const/16 v0, 0x4000

    invoke-virtual {p2, v0}, Lcom/winlator/core/Bitmask;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->xServerView:Lcom/winlator/widget/XServerView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :try_start_0
    iget-object v0, p1, Lcom/winlator/xserver/Window;->attributes:Lcom/winlator/xserver/WindowAttributes;

    invoke-virtual {v0}, Lcom/winlator/xserver/WindowAttributes;->getCursor()Lcom/winlator/xserver/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/winlator/xserver/Cursor;->cursorImage:Lcom/winlator/xserver/Drawable;

    if-eqz v1, :cond_0

    iget-short v2, v1, Lcom/winlator/xserver/Drawable;->height:S

    if-lez v2, :cond_0

    iget-short v1, v1, Lcom/winlator/xserver/Drawable;->width:S

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "WUYOU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursorChanged text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/winlator/renderer/GLRenderer;->wlOnCursorChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 188
    :goto_1
    :cond_0
    return-void
.end method

.method public static wlOnCursorChanged(Z)V
    .locals 7
    .param p0, "isTextCursor"    # Z

    sget-boolean v0, Lcom/winlator/renderer/GLRenderer;->wlTextInputActive:Z

    if-ne v0, p0, :cond_changed

    return-void

    :cond_changed
    sput-boolean p0, Lcom/winlator/renderer/GLRenderer;->wlTextInputActive:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/winlator/renderer/GLRenderer;->wlArmedAt:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_armed

    sput-wide v1, Lcom/winlator/renderer/GLRenderer;->wlArmedAt:J

    move-wide v3, v1

    :cond_armed
    sub-long v3, v1, v3

    const-wide/16 v5, 0xbb8

    cmp-long v3, v3, v5

    if-gez v3, :cond_gate

    return-void

    :cond_gate
    const/4 v3, 0x0

    sput-boolean v3, Lcom/winlator/renderer/GLRenderer;->wlFiredForCurrent:Z

    if-nez p0, :cond_1

    return-void

    :cond_1
    sput-wide v1, Lcom/winlator/renderer/GLRenderer;->wlTextInputSince:J

    invoke-static {p0}, Lcom/winlator/renderer/GLRenderer;->wlWriteState(Z)V

    return-void
.end method



.method public static wlTick()V
    .locals 7

    sget-boolean v0, Lcom/winlator/renderer/GLRenderer;->wlTextInputActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/winlator/renderer/GLRenderer;->wlFiredForCurrent:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-wide v0, Lcom/winlator/renderer/GLRenderer;->wlTextInputSince:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v4, 0x12c

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/winlator/renderer/GLRenderer;->wlFiredForCurrent:Z

    sget-object v1, Lcom/winlator/renderer/GLRenderer;->wlTextInputListener:Ljava/lang/Runnable;

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void
.end method



.method public static wlWriteState(Z)V
    .locals 2
    .param p0, "isTextCursor"    # Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "textInput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wuyou_ime.txt"

    invoke-static {v1, v0}, Lcom/wuyou/WlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method



.method public onUpdateWindowContent(Lcom/winlator/xserver/Window;)V
    .locals 1
    .param p1, "window"    # Lcom/winlator/xserver/Window;

    .line 173
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->xServerView:Lcom/winlator/widget/XServerView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 174
    return-void
.end method

.method public onUpdateWindowGeometry(Lcom/winlator/xserver/Window;Z)V
    .locals 2
    .param p1, "window"    # Lcom/winlator/xserver/Window;
    .param p2, "resized"    # Z

    .line 178
    if-eqz p2, :cond_0

    .line 179
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->xServerView:Lcom/winlator/widget/XServerView;

    new-instance v1, Lcom/winlator/renderer/GLRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/winlator/renderer/GLRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/renderer/GLRenderer;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->xServerView:Lcom/winlator/widget/XServerView;

    new-instance v1, Lcom/winlator/renderer/GLRenderer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/winlator/renderer/GLRenderer$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/renderer/GLRenderer;Lcom/winlator/xserver/Window;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->xServerView:Lcom/winlator/widget/XServerView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 183
    return-void
.end method

.method public setCursorColor(I)V
    .locals 4
    .param p1, "cursorColor"    # I

    .line 375
    iput p1, p0, Lcom/winlator/renderer/GLRenderer;->cursorBackColor:I

    .line 376
    invoke-static {p1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const v0, 0xffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/winlator/renderer/GLRenderer;->cursorForeColor:I

    .line 377
    return-void
.end method

.method public setCursorScale(F)V
    .locals 0
    .param p1, "cursorScale"    # F

    .line 367
    iput p1, p0, Lcom/winlator/renderer/GLRenderer;->cursorScale:F

    .line 368
    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 1
    .param p1, "cursorVisible"    # Z

    .line 354
    iput-boolean p1, p0, Lcom/winlator/renderer/GLRenderer;->cursorVisible:Z

    .line 355
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->xServerView:Lcom/winlator/widget/XServerView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 356
    return-void
.end method

.method public setForceWindowsFullscreen(Z)V
    .locals 0
    .param p1, "forceWindowsFullscreen"    # Z

    .line 393
    iput-boolean p1, p0, Lcom/winlator/renderer/GLRenderer;->forceWindowsFullscreen:Z

    .line 394
    return-void
.end method

.method public setMagnifierZoom(F)V
    .locals 1
    .param p1, "magnifierZoom"    # F

    .line 405
    iput p1, p0, Lcom/winlator/renderer/GLRenderer;->magnifierZoom:F

    .line 406
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->xServerView:Lcom/winlator/widget/XServerView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 407
    return-void
.end method

.method public setScreenOffsetYRelativeToCursor(Z)V
    .locals 1
    .param p1, "screenOffsetYRelativeToCursor"    # Z

    .line 384
    iput-boolean p1, p0, Lcom/winlator/renderer/GLRenderer;->screenOffsetYRelativeToCursor:Z

    .line 385
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->xServerView:Lcom/winlator/widget/XServerView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 386
    return-void
.end method

.method public takeWindowScreenshot(Lcom/winlator/xserver/Drawable;Lcom/winlator/core/Callback;)V
    .locals 2
    .param p1, "drawable"    # Lcom/winlator/xserver/Drawable;

    .line 430
    .local p2, "callback":Lcom/winlator/core/Callback;, "Lcom/winlator/core/Callback<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->xServerView:Lcom/winlator/widget/XServerView;

    new-instance v1, Lcom/winlator/renderer/GLRenderer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/winlator/renderer/GLRenderer$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/renderer/GLRenderer;Lcom/winlator/xserver/Drawable;Lcom/winlator/core/Callback;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 467
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->xServerView:Lcom/winlator/widget/XServerView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 468
    return-void
.end method

.method public toggleFullscreen()V
    .locals 1

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/renderer/GLRenderer;->toggleFullscreen:Z

    .line 276
    iget-object v0, p0, Lcom/winlator/renderer/GLRenderer;->xServerView:Lcom/winlator/widget/XServerView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 277
    return-void
.end method
