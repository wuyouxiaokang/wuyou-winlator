.class Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$1;
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

.field final synthetic val$update:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    .line 225
    iput-object p1, p0, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$1;->this$1:Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    iput-object p2, p0, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$1;->val$update:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 228
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$1;->val$update:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 229
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 232
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
