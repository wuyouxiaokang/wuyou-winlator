.class Lcom/wuyouwin/XServerDisplayActivity$1;
.super Ljava/lang/Object;
.source "XServerDisplayActivity.java"

# interfaces
.implements Lcom/wuyouwin/xserver/WindowManager$OnWindowModificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuyouwin/XServerDisplayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuyouwin/XServerDisplayActivity;

.field final synthetic val$flags:[Z

.field final synthetic val$preloaderDialog:Lcom/wuyouwin/core/PreloaderDialog;


# direct methods
.method constructor <init>(Lcom/wuyouwin/XServerDisplayActivity;[ZLcom/wuyouwin/core/PreloaderDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wuyouwin/XServerDisplayActivity;

    .line 239
    iput-object p1, p0, Lcom/wuyouwin/XServerDisplayActivity$1;->this$0:Lcom/wuyouwin/XServerDisplayActivity;

    iput-object p2, p0, Lcom/wuyouwin/XServerDisplayActivity$1;->val$flags:[Z

    iput-object p3, p0, Lcom/wuyouwin/XServerDisplayActivity$1;->val$preloaderDialog:Lcom/wuyouwin/core/PreloaderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapWindow(Lcom/wuyouwin/xserver/Window;)V
    .locals 3
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;

    .line 247
    iget-object v0, p0, Lcom/wuyouwin/XServerDisplayActivity$1;->val$flags:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->isRenderable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/wuyouwin/XServerDisplayActivity$1;->this$0:Lcom/wuyouwin/XServerDisplayActivity;

    invoke-static {v0}, Lcom/wuyouwin/XServerDisplayActivity;->access$100(Lcom/wuyouwin/XServerDisplayActivity;)Lcom/wuyouwin/widget/XServerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wuyouwin/widget/XServerView;->getRenderer()Lcom/wuyouwin/renderer/GLRenderer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/wuyouwin/renderer/GLRenderer;->setCursorVisible(Z)V

    .line 249
    iget-object v0, p0, Lcom/wuyouwin/XServerDisplayActivity$1;->val$preloaderDialog:Lcom/wuyouwin/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/wuyouwin/core/PreloaderDialog;->closeOnUiThread()V

    .line 250
    iget-object v0, p0, Lcom/wuyouwin/XServerDisplayActivity$1;->val$flags:[Z

    aput-boolean v2, v0, v1

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/wuyouwin/XServerDisplayActivity$1;->val$flags:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/WindowAttributes;->isViewable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->isDesktopWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p1, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v0, v1}, Lcom/wuyouwin/xserver/WindowAttributes;->setViewable(Z)V

    .line 255
    iget-object v0, p1, Lcom/wuyouwin/xserver/Window;->attributes:Lcom/wuyouwin/xserver/WindowAttributes;

    invoke-virtual {v0}, Lcom/wuyouwin/xserver/WindowAttributes;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Window;->disableAllDescendants()V

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/wuyouwin/XServerDisplayActivity$1;->this$0:Lcom/wuyouwin/XServerDisplayActivity;

    invoke-static {v0}, Lcom/wuyouwin/XServerDisplayActivity;->access$200(Lcom/wuyouwin/XServerDisplayActivity;)Lcom/wuyouwin/core/Win32AppWorkarounds;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wuyouwin/XServerDisplayActivity$1;->this$0:Lcom/wuyouwin/XServerDisplayActivity;

    invoke-static {v0}, Lcom/wuyouwin/XServerDisplayActivity;->access$200(Lcom/wuyouwin/XServerDisplayActivity;)Lcom/wuyouwin/core/Win32AppWorkarounds;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wuyouwin/core/Win32AppWorkarounds;->applyWindowWorkarounds(Lcom/wuyouwin/xserver/Window;)V

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/wuyouwin/XServerDisplayActivity$1;->this$0:Lcom/wuyouwin/XServerDisplayActivity;

    invoke-virtual {v0, p1, v2}, Lcom/wuyouwin/XServerDisplayActivity;->changeFrameRatingVisibility(Lcom/wuyouwin/xserver/Window;Z)V

    .line 260
    return-void
.end method

.method public onUnmapWindow(Lcom/wuyouwin/xserver/Window;)V
    .locals 2
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;

    .line 264
    iget-object v0, p0, Lcom/wuyouwin/XServerDisplayActivity$1;->this$0:Lcom/wuyouwin/XServerDisplayActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/wuyouwin/XServerDisplayActivity;->changeFrameRatingVisibility(Lcom/wuyouwin/xserver/Window;Z)V

    .line 265
    return-void
.end method

.method public onUpdateWindowContent(Lcom/wuyouwin/xserver/Window;)V
    .locals 2
    .param p1, "window"    # Lcom/wuyouwin/xserver/Window;

    .line 242
    iget v0, p1, Lcom/wuyouwin/xserver/XResource;->id:I

    iget-object v1, p0, Lcom/wuyouwin/XServerDisplayActivity$1;->this$0:Lcom/wuyouwin/XServerDisplayActivity;

    iget v1, v1, Lcom/wuyouwin/XServerDisplayActivity;->frameRatingWindowId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/XServerDisplayActivity$1;->this$0:Lcom/wuyouwin/XServerDisplayActivity;

    invoke-static {v0}, Lcom/wuyouwin/XServerDisplayActivity;->access$000(Lcom/wuyouwin/XServerDisplayActivity;)Lcom/wuyouwin/widget/FrameRating;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wuyouwin/widget/FrameRating;->update()V

    .line 243
    :cond_0
    return-void
.end method
