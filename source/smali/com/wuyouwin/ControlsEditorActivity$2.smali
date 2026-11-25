.class Lcom/wuyouwin/ControlsEditorActivity$2;
.super Ljava/lang/Object;
.source "ControlsEditorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuyouwin/ControlsEditorActivity;->loadShapeSpinner(Lcom/wuyouwin/inputcontrols/ControlElement;Landroid/widget/Spinner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuyouwin/ControlsEditorActivity;

.field final synthetic val$element:Lcom/wuyouwin/inputcontrols/ControlElement;


# direct methods
.method constructor <init>(Lcom/wuyouwin/ControlsEditorActivity;Lcom/wuyouwin/inputcontrols/ControlElement;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wuyouwin/ControlsEditorActivity;

    .line 285
    iput-object p1, p0, Lcom/wuyouwin/ControlsEditorActivity$2;->this$0:Lcom/wuyouwin/ControlsEditorActivity;

    iput-object p2, p0, Lcom/wuyouwin/ControlsEditorActivity$2;->val$element:Lcom/wuyouwin/inputcontrols/ControlElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 288
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/wuyouwin/ControlsEditorActivity$2;->val$element:Lcom/wuyouwin/inputcontrols/ControlElement;

    invoke-static {}, Lcom/wuyouwin/inputcontrols/ControlElement$Shape;->values()[Lcom/wuyouwin/inputcontrols/ControlElement$Shape;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Lcom/wuyouwin/inputcontrols/ControlElement;->setShape(Lcom/wuyouwin/inputcontrols/ControlElement$Shape;)V

    .line 289
    iget-object v0, p0, Lcom/wuyouwin/ControlsEditorActivity$2;->this$0:Lcom/wuyouwin/ControlsEditorActivity;

    invoke-static {v0}, Lcom/wuyouwin/ControlsEditorActivity;->access$000(Lcom/wuyouwin/ControlsEditorActivity;)Lcom/wuyouwin/inputcontrols/ControlsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wuyouwin/inputcontrols/ControlsProfile;->save()V

    .line 290
    iget-object v0, p0, Lcom/wuyouwin/ControlsEditorActivity$2;->this$0:Lcom/wuyouwin/ControlsEditorActivity;

    invoke-static {v0}, Lcom/wuyouwin/ControlsEditorActivity;->access$100(Lcom/wuyouwin/ControlsEditorActivity;)Lcom/wuyouwin/widget/InputControlsView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 291
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 294
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
