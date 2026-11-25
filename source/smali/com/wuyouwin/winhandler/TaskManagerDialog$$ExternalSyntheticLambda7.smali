.class public final synthetic Lcom/wuyouwin/winhandler/TaskManagerDialog$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/winhandler/TaskManagerDialog;

.field public final synthetic f$1:Lcom/wuyouwin/winhandler/ProcessInfo;

.field public final synthetic f$2:Lcom/wuyouwin/widget/CPUListView;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/winhandler/TaskManagerDialog;Lcom/wuyouwin/winhandler/ProcessInfo;Lcom/wuyouwin/widget/CPUListView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$$ExternalSyntheticLambda7;->f$0:Lcom/wuyouwin/winhandler/TaskManagerDialog;

    iput-object p2, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$$ExternalSyntheticLambda7;->f$1:Lcom/wuyouwin/winhandler/ProcessInfo;

    iput-object p3, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$$ExternalSyntheticLambda7;->f$2:Lcom/wuyouwin/widget/CPUListView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$$ExternalSyntheticLambda7;->f$0:Lcom/wuyouwin/winhandler/TaskManagerDialog;

    iget-object v1, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$$ExternalSyntheticLambda7;->f$1:Lcom/wuyouwin/winhandler/ProcessInfo;

    iget-object v2, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$$ExternalSyntheticLambda7;->f$2:Lcom/wuyouwin/widget/CPUListView;

    invoke-static {v0, v1, v2}, Lcom/wuyouwin/winhandler/TaskManagerDialog;->$r8$lambda$4aiJ4niGlT8p9JM7_oae0ibzzPA(Lcom/wuyouwin/winhandler/TaskManagerDialog;Lcom/wuyouwin/winhandler/ProcessInfo;Lcom/wuyouwin/widget/CPUListView;)V

    return-void
.end method
