.class Lcom/wuyouwin/ControlsEditorActivity$1;
.super Ljava/lang/Object;
.source "ControlsEditorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuyouwin/ControlsEditorActivity;->loadTypeSpinner(Lcom/wuyouwin/inputcontrols/ControlElement;Landroid/widget/Spinner;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuyouwin/ControlsEditorActivity;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$element:Lcom/wuyouwin/inputcontrols/ControlElement;


# direct methods
.method constructor <init>(Lcom/wuyouwin/ControlsEditorActivity;Lcom/wuyouwin/inputcontrols/ControlElement;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wuyouwin/ControlsEditorActivity;

    .line 266
    iput-object p1, p0, Lcom/wuyouwin/ControlsEditorActivity$1;->this$0:Lcom/wuyouwin/ControlsEditorActivity;

    iput-object p2, p0, Lcom/wuyouwin/ControlsEditorActivity$1;->val$element:Lcom/wuyouwin/inputcontrols/ControlElement;

    iput-object p3, p0, Lcom/wuyouwin/ControlsEditorActivity$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 269
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/wuyouwin/inputcontrols/ControlElement$Type;->values()[Lcom/wuyouwin/inputcontrols/ControlElement$Type;

    move-result-object v0

    aget-object v0, v0, p3

    .line 270
    .local v0, "newType":Lcom/wuyouwin/inputcontrols/ControlElement$Type;
    iget-object v1, p0, Lcom/wuyouwin/ControlsEditorActivity$1;->val$element:Lcom/wuyouwin/inputcontrols/ControlElement;

    invoke-virtual {v1}, Lcom/wuyouwin/inputcontrols/ControlElement;->getType()Lcom/wuyouwin/inputcontrols/ControlElement$Type;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/wuyouwin/ControlsEditorActivity$1;->val$element:Lcom/wuyouwin/inputcontrols/ControlElement;

    invoke-virtual {v1, v0}, Lcom/wuyouwin/inputcontrols/ControlElement;->setType(Lcom/wuyouwin/inputcontrols/ControlElement$Type;)V

    .line 272
    iget-object v1, p0, Lcom/wuyouwin/ControlsEditorActivity$1;->this$0:Lcom/wuyouwin/ControlsEditorActivity;

    invoke-static {v1}, Lcom/wuyouwin/ControlsEditorActivity;->access$000(Lcom/wuyouwin/ControlsEditorActivity;)Lcom/wuyouwin/inputcontrols/ControlsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->save()V

    .line 273
    iget-object v1, p0, Lcom/wuyouwin/ControlsEditorActivity$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 274
    iget-object v1, p0, Lcom/wuyouwin/ControlsEditorActivity$1;->this$0:Lcom/wuyouwin/ControlsEditorActivity;

    invoke-static {v1}, Lcom/wuyouwin/ControlsEditorActivity;->access$100(Lcom/wuyouwin/ControlsEditorActivity;)Lcom/wuyouwin/widget/InputControlsView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 275
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 278
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
