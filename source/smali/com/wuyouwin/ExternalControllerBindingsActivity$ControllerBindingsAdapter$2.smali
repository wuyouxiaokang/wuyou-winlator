.class Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;
.super Ljava/lang/Object;
.source "ExternalControllerBindingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->loadBindingSpinner(Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

.field final synthetic val$holder:Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

.field final synthetic val$item:Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;


# direct methods
.method constructor <init>(Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    .line 246
    iput-object p1, p0, Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->this$1:Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    iput-object p2, p0, Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->val$holder:Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    iput-object p3, p0, Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->val$item:Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 249
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v0, Lcom/wuyouwin/inputcontrols/Binding;->NONE:Lcom/wuyouwin/inputcontrols/Binding;

    .line 250
    .local v0, "binding":Lcom/wuyouwin/inputcontrols/Binding;
    iget-object v1, p0, Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->val$holder:Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    invoke-static {v1}, Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->access$500(Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 258
    :pswitch_0
    invoke-static {}, Lcom/wuyouwin/inputcontrols/Binding;->gamepadBindingValues()[Lcom/wuyouwin/inputcontrols/Binding;

    move-result-object v1

    aget-object v0, v1, p3

    goto :goto_0

    .line 255
    :pswitch_1
    invoke-static {}, Lcom/wuyouwin/inputcontrols/Binding;->mouseBindingValues()[Lcom/wuyouwin/inputcontrols/Binding;

    move-result-object v1

    aget-object v0, v1, p3

    .line 256
    goto :goto_0

    .line 252
    :pswitch_2
    invoke-static {}, Lcom/wuyouwin/inputcontrols/Binding;->keyboardBindingValues()[Lcom/wuyouwin/inputcontrols/Binding;

    move-result-object v1

    aget-object v0, v1, p3

    .line 253
    nop

    .line 262
    :goto_0
    iget-object v1, p0, Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->val$item:Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;

    invoke-virtual {v1}, Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/wuyouwin/inputcontrols/Binding;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->val$item:Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;

    invoke-virtual {v1, v0}, Lcom/wuyouwin/inputcontrols/ExternalControllerBinding;->setBinding(Lcom/wuyouwin/inputcontrols/Binding;)V

    .line 264
    iget-object v1, p0, Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->this$1:Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    iget-object v1, v1, Lcom/wuyouwin/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->this$0:Lcom/wuyouwin/ExternalControllerBindingsActivity;

    invoke-static {v1}, Lcom/wuyouwin/ExternalControllerBindingsActivity;->access$600(Lcom/wuyouwin/ExternalControllerBindingsActivity;)Lcom/wuyouwin/inputcontrols/ControlsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->save()V

    .line 266
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 269
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
