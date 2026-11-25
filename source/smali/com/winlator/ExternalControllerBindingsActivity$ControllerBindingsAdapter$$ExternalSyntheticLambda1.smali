.class public final synthetic Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/winlator/inputcontrols/ExternalControllerBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Landroid/content/Context;Lcom/winlator/inputcontrols/ExternalControllerBinding;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    iput-object p2, p0, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$$ExternalSyntheticLambda1;->f$2:Lcom/winlator/inputcontrols/ExternalControllerBinding;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    iget-object v1, p0, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$$ExternalSyntheticLambda1;->f$2:Lcom/winlator/inputcontrols/ExternalControllerBinding;

    invoke-static {v0, v1, v2}, Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->$r8$lambda$ozN61Ho1vuU7ZJDWPzseMpKQWi4(Lcom/winlator/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Landroid/content/Context;Lcom/winlator/inputcontrols/ExternalControllerBinding;)V

    return-void
.end method
