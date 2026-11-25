.class Lcom/wuyouwin/ControlsEditorActivity$4;
.super Ljava/lang/Object;
.source "ControlsEditorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuyouwin/ControlsEditorActivity;->loadBindingSpinner(Lcom/wuyouwin/inputcontrols/ControlElement;Landroid/widget/LinearLayout;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuyouwin/ControlsEditorActivity;

.field final synthetic val$element:Lcom/wuyouwin/inputcontrols/ControlElement;

.field final synthetic val$index:I

.field final synthetic val$sBindingType:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/wuyouwin/ControlsEditorActivity;Landroid/widget/Spinner;Lcom/wuyouwin/inputcontrols/ControlElement;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/wuyouwin/ControlsEditorActivity;

    .line 384
    iput-object p1, p0, Lcom/wuyouwin/ControlsEditorActivity$4;->this$0:Lcom/wuyouwin/ControlsEditorActivity;

    iput-object p2, p0, Lcom/wuyouwin/ControlsEditorActivity$4;->val$sBindingType:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/wuyouwin/ControlsEditorActivity$4;->val$element:Lcom/wuyouwin/inputcontrols/ControlElement;

    iput p4, p0, Lcom/wuyouwin/ControlsEditorActivity$4;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 387
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v0, Lcom/wuyouwin/inputcontrols/Binding;->NONE:Lcom/wuyouwin/inputcontrols/Binding;

    .line 388
    .local v0, "binding":Lcom/wuyouwin/inputcontrols/Binding;
    iget-object v1, p0, Lcom/wuyouwin/ControlsEditorActivity$4;->val$sBindingType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 396
    :pswitch_0
    invoke-static {}, Lcom/wuyouwin/inputcontrols/Binding;->gamepadBindingValues()[Lcom/wuyouwin/inputcontrols/Binding;

    move-result-object v1

    aget-object v0, v1, p3

    goto :goto_0

    .line 393
    :pswitch_1
    invoke-static {}, Lcom/wuyouwin/inputcontrols/Binding;->mouseBindingValues()[Lcom/wuyouwin/inputcontrols/Binding;

    move-result-object v1

    aget-object v0, v1, p3

    .line 394
    goto :goto_0

    .line 390
    :pswitch_2
    invoke-static {}, Lcom/wuyouwin/inputcontrols/Binding;->keyboardBindingValues()[Lcom/wuyouwin/inputcontrols/Binding;

    move-result-object v1

    aget-object v0, v1, p3

    .line 391
    nop

    .line 400
    :goto_0
    iget-object v1, p0, Lcom/wuyouwin/ControlsEditorActivity$4;->val$element:Lcom/wuyouwin/inputcontrols/ControlElement;

    iget v2, p0, Lcom/wuyouwin/ControlsEditorActivity$4;->val$index:I

    invoke-virtual {v1, v2}, Lcom/wuyouwin/inputcontrols/ControlElement;->getBindingAt(I)Lcom/wuyouwin/inputcontrols/Binding;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/wuyouwin/ControlsEditorActivity$4;->val$element:Lcom/wuyouwin/inputcontrols/ControlElement;

    iget v2, p0, Lcom/wuyouwin/ControlsEditorActivity$4;->val$index:I

    invoke-virtual {v1, v2, v0}, Lcom/wuyouwin/inputcontrols/ControlElement;->setBindingAt(ILcom/wuyouwin/inputcontrols/Binding;)V

    .line 402
    iget-object v1, p0, Lcom/wuyouwin/ControlsEditorActivity$4;->this$0:Lcom/wuyouwin/ControlsEditorActivity;

    invoke-static {v1}, Lcom/wuyouwin/ControlsEditorActivity;->access$000(Lcom/wuyouwin/ControlsEditorActivity;)Lcom/wuyouwin/inputcontrols/ControlsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->save()V

    .line 403
    iget-object v1, p0, Lcom/wuyouwin/ControlsEditorActivity$4;->this$0:Lcom/wuyouwin/ControlsEditorActivity;

    invoke-static {v1}, Lcom/wuyouwin/ControlsEditorActivity;->access$100(Lcom/wuyouwin/ControlsEditorActivity;)Lcom/wuyouwin/widget/InputControlsView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 405
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 408
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
