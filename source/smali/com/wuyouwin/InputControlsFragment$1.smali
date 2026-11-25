.class Lcom/wuyouwin/InputControlsFragment$1;
.super Ljava/lang/Object;
.source "InputControlsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuyouwin/InputControlsFragment;->loadProfileSpinner(Landroid/widget/Spinner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuyouwin/InputControlsFragment;

.field final synthetic val$profiles:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/wuyouwin/InputControlsFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wuyouwin/InputControlsFragment;

    .line 287
    iput-object p1, p0, Lcom/wuyouwin/InputControlsFragment$1;->this$0:Lcom/wuyouwin/InputControlsFragment;

    iput-object p2, p0, Lcom/wuyouwin/InputControlsFragment$1;->val$profiles:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 290
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment$1;->this$0:Lcom/wuyouwin/InputControlsFragment;

    if-lez p3, :cond_0

    iget-object v1, p0, Lcom/wuyouwin/InputControlsFragment$1;->val$profiles:Ljava/util/ArrayList;

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/inputcontrols/ControlsProfile;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/wuyouwin/InputControlsFragment;->access$002(Lcom/wuyouwin/InputControlsFragment;Lcom/wuyouwin/inputcontrols/ControlsProfile;)Lcom/wuyouwin/inputcontrols/ControlsProfile;

    .line 291
    iget-object v0, p0, Lcom/wuyouwin/InputControlsFragment$1;->this$0:Lcom/wuyouwin/InputControlsFragment;

    invoke-static {v0}, Lcom/wuyouwin/InputControlsFragment;->access$100(Lcom/wuyouwin/InputControlsFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 292
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 295
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
