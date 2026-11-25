.class Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;
.super Ljava/lang/Object;
.source "ExternalControllerBindingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->loadBindingSpinner(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Lcom/winlator/inputcontrols/ExternalControllerBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

.field final synthetic val$holder:Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

.field final synthetic val$item:Lcom/winlator/inputcontrols/ExternalControllerBinding;


# direct methods
.method constructor <init>(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Lcom/winlator/inputcontrols/ExternalControllerBinding;)V
    .locals 0
    .param p1, "this$1"    # Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    .line 246
    iput-object p1, p0, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->this$1:Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    iput-object p2, p0, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->val$holder:Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    iput-object p3, p0, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->val$item:Lcom/winlator/inputcontrols/ExternalControllerBinding;

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
    sget-object v0, Lcom/winlator/inputcontrols/Binding;->NONE:Lcom/winlator/inputcontrols/Binding;

    .line 250
    .local v0, "binding":Lcom/winlator/inputcontrols/Binding;
    iget-object v1, p0, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->val$holder:Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    invoke-static {v1}, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->access$500(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 258
    :pswitch_0
    invoke-static {}, Lcom/winlator/inputcontrols/Binding;->gamepadBindingValues()[Lcom/winlator/inputcontrols/Binding;

    move-result-object v1

    aget-object v0, v1, p3

    goto :goto_0

    .line 255
    :pswitch_1
    invoke-static {}, Lcom/winlator/inputcontrols/Binding;->mouseBindingValues()[Lcom/winlator/inputcontrols/Binding;

    move-result-object v1

    aget-object v0, v1, p3

    .line 256
    goto :goto_0

    .line 252
    :pswitch_2
    invoke-static {}, Lcom/winlator/inputcontrols/Binding;->keyboardBindingValues()[Lcom/winlator/inputcontrols/Binding;

    move-result-object v1

    aget-object v0, v1, p3

    .line 253
    nop

    .line 262
    :goto_0
    iget-object v1, p0, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->val$item:Lcom/winlator/inputcontrols/ExternalControllerBinding;

    invoke-virtual {v1}, Lcom/winlator/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/winlator/inputcontrols/Binding;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->val$item:Lcom/winlator/inputcontrols/ExternalControllerBinding;

    invoke-virtual {v1, v0}, Lcom/winlator/inputcontrols/ExternalControllerBinding;->setBinding(Lcom/winlator/inputcontrols/Binding;)V

    .line 264
    iget-object v1, p0, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->this$1:Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    iget-object v1, v1, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->this$0:Lcom/winlator/ExternalControllerBindingsActivity;

    invoke-static {v1}, Lcom/winlator/ExternalControllerBindingsActivity;->access$600(Lcom/winlator/ExternalControllerBindingsActivity;)Lcom/winlator/inputcontrols/ControlsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/winlator/inputcontrols/ControlsProfile;->save()V

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
