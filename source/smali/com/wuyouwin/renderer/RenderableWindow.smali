.class Lcom/wuyouwin/renderer/RenderableWindow;
.super Ljava/lang/Object;
.source "RenderableWindow.java"


# instance fields
.field final content:Lcom/wuyouwin/xserver/Drawable;

.field final fullscreenTransformation:Lcom/wuyouwin/renderer/FullscreenTransformation;

.field rootX:S

.field rootY:S

.field final transparent:Z


# direct methods
.method public constructor <init>(Lcom/wuyouwin/xserver/Drawable;IIZLcom/wuyouwin/renderer/FullscreenTransformation;)V
    .locals 1
    .param p1, "content"    # Lcom/wuyouwin/xserver/Drawable;
    .param p2, "rootX"    # I
    .param p3, "rootY"    # I
    .param p4, "transparent"    # Z
    .param p5, "fullscreenTransformation"    # Lcom/wuyouwin/renderer/FullscreenTransformation;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/wuyouwin/renderer/RenderableWindow;->content:Lcom/wuyouwin/xserver/Drawable;

    .line 14
    int-to-short v0, p2

    iput-short v0, p0, Lcom/wuyouwin/renderer/RenderableWindow;->rootX:S

    .line 15
    int-to-short v0, p3

    iput-short v0, p0, Lcom/wuyouwin/renderer/RenderableWindow;->rootY:S

    .line 16
    iput-boolean p4, p0, Lcom/wuyouwin/renderer/RenderableWindow;->transparent:Z

    .line 17
    iput-object p5, p0, Lcom/wuyouwin/renderer/RenderableWindow;->fullscreenTransformation:Lcom/wuyouwin/renderer/FullscreenTransformation;

    .line 18
    return-void
.end method
