.class Lcom/winlator/ControlsEditorActivity$2;
.super Ljava/lang/Object;
.source "ControlsEditorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/ControlsEditorActivity;->loadShapeSpinner(Lcom/winlator/inputcontrols/ControlElement;Landroid/widget/Spinner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/ControlsEditorActivity;

.field final synthetic val$element:Lcom/winlator/inputcontrols/ControlElement;


# direct methods
.method constructor <init>(Lcom/winlator/ControlsEditorActivity;Lcom/winlator/inputcontrols/ControlElement;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/ControlsEditorActivity;

    .line 285
    iput-object p1, p0, Lcom/winlator/ControlsEditorActivity$2;->this$0:Lcom/winlator/ControlsEditorActivity;

    iput-object p2, p0, Lcom/winlator/ControlsEditorActivity$2;->val$element:Lcom/winlator/inputcontrols/ControlElement;

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
    iget-object v0, p0, Lcom/winlator/ControlsEditorActivity$2;->val$element:Lcom/winlator/inputcontrols/ControlElement;

    invoke-static {}, Lcom/winlator/inputcontrols/ControlElement$Shape;->values()[Lcom/winlator/inputcontrols/ControlElement$Shape;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Lcom/winlator/inputcontrols/ControlElement;->setShape(Lcom/winlator/inputcontrols/ControlElement$Shape;)V

    .line 289
    iget-object v0, p0, Lcom/winlator/ControlsEditorActivity$2;->this$0:Lcom/winlator/ControlsEditorActivity;

    invoke-static {v0}, Lcom/winlator/ControlsEditorActivity;->access$000(Lcom/winlator/ControlsEditorActivity;)Lcom/winlator/inputcontrols/ControlsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/inputcontrols/ControlsProfile;->save()V

    .line 290
    iget-object v0, p0, Lcom/winlator/ControlsEditorActivity$2;->this$0:Lcom/winlator/ControlsEditorActivity;

    invoke-static {v0}, Lcom/winlator/ControlsEditorActivity;->access$100(Lcom/winlator/ControlsEditorActivity;)Lcom/winlator/widget/InputControlsView;

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
