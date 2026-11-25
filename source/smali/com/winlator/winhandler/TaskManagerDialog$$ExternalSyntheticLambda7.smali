.class public final synthetic Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/winhandler/TaskManagerDialog;

.field public final synthetic f$1:Lcom/winlator/winhandler/ProcessInfo;

.field public final synthetic f$2:Lcom/winlator/widget/CPUListView;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/winhandler/TaskManagerDialog;Lcom/winlator/winhandler/ProcessInfo;Lcom/winlator/widget/CPUListView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda7;->f$0:Lcom/winlator/winhandler/TaskManagerDialog;

    iput-object p2, p0, Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda7;->f$1:Lcom/winlator/winhandler/ProcessInfo;

    iput-object p3, p0, Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda7;->f$2:Lcom/winlator/widget/CPUListView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda7;->f$0:Lcom/winlator/winhandler/TaskManagerDialog;

    iget-object v1, p0, Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda7;->f$1:Lcom/winlator/winhandler/ProcessInfo;

    iget-object v2, p0, Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda7;->f$2:Lcom/winlator/widget/CPUListView;

    invoke-static {v0, v1, v2}, Lcom/winlator/winhandler/TaskManagerDialog;->$r8$lambda$4aiJ4niGlT8p9JM7_oae0ibzzPA(Lcom/winlator/winhandler/TaskManagerDialog;Lcom/winlator/winhandler/ProcessInfo;Lcom/winlator/widget/CPUListView;)V

    return-void
.end method
