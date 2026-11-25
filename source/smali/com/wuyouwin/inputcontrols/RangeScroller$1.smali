.class Lcom/wuyouwin/inputcontrols/RangeScroller$1;
.super Ljava/util/TimerTask;
.source "RangeScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuyouwin/inputcontrols/RangeScroller;->handleTouchDown(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuyouwin/inputcontrols/RangeScroller;


# direct methods
.method public static synthetic $r8$lambda$zQhy2pqJvcacFBE9TNc0_1O2FrM(Lcom/wuyouwin/inputcontrols/RangeScroller$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/wuyouwin/inputcontrols/RangeScroller$1;->lambda$run$0()V

    return-void
.end method

.method constructor <init>(Lcom/wuyouwin/inputcontrols/RangeScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wuyouwin/inputcontrols/RangeScroller;

    .line 100
    iput-object p1, p0, Lcom/wuyouwin/inputcontrols/RangeScroller$1;->this$0:Lcom/wuyouwin/inputcontrols/RangeScroller;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/wuyouwin/inputcontrols/RangeScroller$1;->this$0:Lcom/wuyouwin/inputcontrols/RangeScroller;

    invoke-static {v0}, Lcom/wuyouwin/inputcontrols/RangeScroller;->access$100(Lcom/wuyouwin/inputcontrols/RangeScroller;)Lcom/wuyouwin/widget/InputControlsView;

    move-result-object v0

    iget-object v1, p0, Lcom/wuyouwin/inputcontrols/RangeScroller$1;->this$0:Lcom/wuyouwin/inputcontrols/RangeScroller;

    invoke-static {v1}, Lcom/wuyouwin/inputcontrols/RangeScroller;->access$200(Lcom/wuyouwin/inputcontrols/RangeScroller;)Lcom/wuyouwin/inputcontrols/Binding;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/wuyouwin/widget/InputControlsView;->handleInputEvent(Lcom/wuyouwin/inputcontrols/Binding;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/wuyouwin/inputcontrols/RangeScroller$1;->this$0:Lcom/wuyouwin/inputcontrols/RangeScroller;

    invoke-static {v0}, Lcom/wuyouwin/inputcontrols/RangeScroller;->access$000(Lcom/wuyouwin/inputcontrols/RangeScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wuyouwin/inputcontrols/RangeScroller$1;->this$0:Lcom/wuyouwin/inputcontrols/RangeScroller;

    invoke-static {v0}, Lcom/wuyouwin/inputcontrols/RangeScroller;->access$100(Lcom/wuyouwin/inputcontrols/RangeScroller;)Lcom/wuyouwin/widget/InputControlsView;

    move-result-object v0

    new-instance v1, Lcom/wuyouwin/inputcontrols/RangeScroller$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/wuyouwin/inputcontrols/RangeScroller$1$$ExternalSyntheticLambda0;-><init>(Lcom/wuyouwin/inputcontrols/RangeScroller$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 104
    :cond_0
    return-void
.end method
