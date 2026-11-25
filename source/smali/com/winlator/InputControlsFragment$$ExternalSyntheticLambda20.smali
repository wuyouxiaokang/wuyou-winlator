.class public final synthetic Lcom/winlator/InputControlsFragment$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/InputControlsFragment;

.field public final synthetic f$1:Lcom/winlator/inputcontrols/ExternalController;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/InputControlsFragment;Lcom/winlator/inputcontrols/ExternalController;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/InputControlsFragment$$ExternalSyntheticLambda20;->f$0:Lcom/winlator/InputControlsFragment;

    iput-object p2, p0, Lcom/winlator/InputControlsFragment$$ExternalSyntheticLambda20;->f$1:Lcom/winlator/inputcontrols/ExternalController;

    iput-object p3, p0, Lcom/winlator/InputControlsFragment$$ExternalSyntheticLambda20;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/winlator/InputControlsFragment$$ExternalSyntheticLambda20;->f$0:Lcom/winlator/InputControlsFragment;

    iget-object v1, p0, Lcom/winlator/InputControlsFragment$$ExternalSyntheticLambda20;->f$1:Lcom/winlator/inputcontrols/ExternalController;

    iget-object v2, p0, Lcom/winlator/InputControlsFragment$$ExternalSyntheticLambda20;->f$2:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/winlator/InputControlsFragment;->$r8$lambda$63nWRqN9AXsqoYhNBiYSoahoFOg(Lcom/winlator/InputControlsFragment;Lcom/winlator/inputcontrols/ExternalController;Landroid/view/View;)V

    return-void
.end method
