.class Lcom/wuyouwin/ControlsEditorActivity$3;
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

.field final synthetic val$update:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/wuyouwin/ControlsEditorActivity;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wuyouwin/ControlsEditorActivity;

    .line 363
    iput-object p1, p0, Lcom/wuyouwin/ControlsEditorActivity$3;->this$0:Lcom/wuyouwin/ControlsEditorActivity;

    iput-object p2, p0, Lcom/wuyouwin/ControlsEditorActivity$3;->val$update:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 366
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/wuyouwin/ControlsEditorActivity$3;->val$update:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 367
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 370
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
