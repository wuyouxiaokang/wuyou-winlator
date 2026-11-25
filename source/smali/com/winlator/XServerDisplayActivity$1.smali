.class Lcom/winlator/XServerDisplayActivity$1;
.super Ljava/lang/Object;
.source "XServerDisplayActivity.java"

# interfaces
.implements Lcom/winlator/xserver/WindowManager$OnWindowModificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/XServerDisplayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/XServerDisplayActivity;

.field final synthetic val$flags:[Z

.field final synthetic val$preloaderDialog:Lcom/winlator/core/PreloaderDialog;


# direct methods
.method constructor <init>(Lcom/winlator/XServerDisplayActivity;[ZLcom/winlator/core/PreloaderDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/XServerDisplayActivity;

    .line 239
    iput-object p1, p0, Lcom/winlator/XServerDisplayActivity$1;->this$0:Lcom/winlator/XServerDisplayActivity;

    iput-object p2, p0, Lcom/winlator/XServerDisplayActivity$1;->val$flags:[Z

    iput-object p3, p0, Lcom/winlator/XServerDisplayActivity$1;->val$preloaderDialog:Lcom/winlator/core/PreloaderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapWindow(Lcom/winlator/xserver/Window;)V
    .locals 3
    .param p1, "window"    # Lcom/winlator/xserver/Window;

    .line 247
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity$1;->val$flags:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->isRenderable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity$1;->this$0:Lcom/winlator/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/XServerDisplayActivity;->access$100(Lcom/winlator/XServerDisplayActivity;)Lcom/winlator/widget/XServerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/widget/XServerView;->getRenderer()Lcom/winlator/renderer/GLRenderer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/winlator/renderer/GLRenderer;->setCursorVisible(Z)V

    .line 249
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity$1;->val$preloaderDialog:Lcom/winlator/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/winlator/core/PreloaderDialog;->closeOnUiThread()V

    .line 250
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity$1;->val$flags:[Z

    aput-boolean v2, v0, v1

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity$1;->val$flags:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/winlator/xserver/Window;->attributes:Lcom/winlator/xserver/WindowAttributes;

    invoke-virtual {v0}, Lcom/winlator/xserver/WindowAttributes;->isViewable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->isDesktopWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p1, Lcom/winlator/xserver/Window;->attributes:Lcom/winlator/xserver/WindowAttributes;

    invoke-virtual {v0, v1}, Lcom/winlator/xserver/WindowAttributes;->setViewable(Z)V

    .line 255
    iget-object v0, p1, Lcom/winlator/xserver/Window;->attributes:Lcom/winlator/xserver/WindowAttributes;

    invoke-virtual {v0}, Lcom/winlator/xserver/WindowAttributes;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->disableAllDescendants()V

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity$1;->this$0:Lcom/winlator/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/XServerDisplayActivity;->access$200(Lcom/winlator/XServerDisplayActivity;)Lcom/winlator/core/Win32AppWorkarounds;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity$1;->this$0:Lcom/winlator/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/XServerDisplayActivity;->access$200(Lcom/winlator/XServerDisplayActivity;)Lcom/winlator/core/Win32AppWorkarounds;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/winlator/core/Win32AppWorkarounds;->applyWindowWorkarounds(Lcom/winlator/xserver/Window;)V

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity$1;->this$0:Lcom/winlator/XServerDisplayActivity;

    invoke-virtual {v0, p1, v2}, Lcom/winlator/XServerDisplayActivity;->changeFrameRatingVisibility(Lcom/winlator/xserver/Window;Z)V

    .line 260
    return-void
.end method

.method public onUnmapWindow(Lcom/winlator/xserver/Window;)V
    .locals 2
    .param p1, "window"    # Lcom/winlator/xserver/Window;

    .line 264
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity$1;->this$0:Lcom/winlator/XServerDisplayActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/winlator/XServerDisplayActivity;->changeFrameRatingVisibility(Lcom/winlator/xserver/Window;Z)V

    .line 265
    return-void
.end method

.method public onUpdateWindowContent(Lcom/winlator/xserver/Window;)V
    .locals 2
    .param p1, "window"    # Lcom/winlator/xserver/Window;

    .line 242
    iget v0, p1, Lcom/winlator/xserver/XResource;->id:I

    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity$1;->this$0:Lcom/winlator/XServerDisplayActivity;

    iget v1, v1, Lcom/winlator/XServerDisplayActivity;->frameRatingWindowId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity$1;->this$0:Lcom/winlator/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/XServerDisplayActivity;->access$000(Lcom/winlator/XServerDisplayActivity;)Lcom/winlator/widget/FrameRating;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/widget/FrameRating;->update()V

    .line 243
    :cond_0
    return-void
.end method
