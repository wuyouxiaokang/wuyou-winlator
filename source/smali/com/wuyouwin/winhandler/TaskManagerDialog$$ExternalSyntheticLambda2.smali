.class public final synthetic Lcom/wuyouwin/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/winhandler/TaskManagerDialog;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/wuyouwin/winhandler/ProcessInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/winhandler/TaskManagerDialog;IILcom/wuyouwin/winhandler/ProcessInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;->f$0:Lcom/wuyouwin/winhandler/TaskManagerDialog;

    iput p2, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;->f$3:Lcom/wuyouwin/winhandler/ProcessInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;->f$0:Lcom/wuyouwin/winhandler/TaskManagerDialog;

    iget v1, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;->f$1:I

    iget v2, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;->f$2:I

    iget-object v3, p0, Lcom/wuyouwin/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;->f$3:Lcom/wuyouwin/winhandler/ProcessInfo;

    invoke-static {v0, v1, v2, v3}, Lcom/wuyouwin/winhandler/TaskManagerDialog;->$r8$lambda$uT2E4m_pNKG46vFKxr_-ewng-Ks(Lcom/wuyouwin/winhandler/TaskManagerDialog;IILcom/wuyouwin/winhandler/ProcessInfo;)V

    return-void
.end method
