.class Lcom/winlator/ControlsEditorActivity$6;
.super Ljava/lang/Object;
.source "ControlsEditorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/ControlsEditorActivity;->loadNoteSpinner(Lcom/winlator/inputcontrols/ControlElement;Landroid/widget/Spinner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/ControlsEditorActivity;

.field final synthetic val$element:Lcom/winlator/inputcontrols/ControlElement;

.field final synthetic val$notes:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/winlator/ControlsEditorActivity;Lcom/winlator/inputcontrols/ControlElement;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/ControlsEditorActivity;

    .line 435
    iput-object p1, p0, Lcom/winlator/ControlsEditorActivity$6;->this$0:Lcom/winlator/ControlsEditorActivity;

    iput-object p2, p0, Lcom/winlator/ControlsEditorActivity$6;->val$element:Lcom/winlator/inputcontrols/ControlElement;

    iput-object p3, p0, Lcom/winlator/ControlsEditorActivity$6;->val$notes:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 438
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/winlator/ControlsEditorActivity$6;->val$element:Lcom/winlator/inputcontrols/ControlElement;

    iget-object v1, p0, Lcom/winlator/ControlsEditorActivity$6;->val$notes:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Lcom/winlator/inputcontrols/ControlElement;->setText(Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/winlator/ControlsEditorActivity$6;->this$0:Lcom/winlator/ControlsEditorActivity;

    invoke-static {v0}, Lcom/winlator/ControlsEditorActivity;->access$000(Lcom/winlator/ControlsEditorActivity;)Lcom/winlator/inputcontrols/ControlsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/inputcontrols/ControlsProfile;->save()V

    .line 440
    iget-object v0, p0, Lcom/winlator/ControlsEditorActivity$6;->this$0:Lcom/winlator/ControlsEditorActivity;

    invoke-static {v0}, Lcom/winlator/ControlsEditorActivity;->access$100(Lcom/winlator/ControlsEditorActivity;)Lcom/winlator/widget/InputControlsView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 441
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 444
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
