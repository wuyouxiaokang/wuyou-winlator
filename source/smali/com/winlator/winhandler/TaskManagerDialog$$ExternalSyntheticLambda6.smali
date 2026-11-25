.class public final synthetic Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/winhandler/WinHandler;

.field public final synthetic f$1:Lcom/winlator/winhandler/ProcessInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/winhandler/WinHandler;Lcom/winlator/winhandler/ProcessInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda6;->f$0:Lcom/winlator/winhandler/WinHandler;

    iput-object p2, p0, Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda6;->f$1:Lcom/winlator/winhandler/ProcessInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda6;->f$0:Lcom/winlator/winhandler/WinHandler;

    iget-object v1, p0, Lcom/winlator/winhandler/TaskManagerDialog$$ExternalSyntheticLambda6;->f$1:Lcom/winlator/winhandler/ProcessInfo;

    invoke-static {v0, v1}, Lcom/winlator/winhandler/TaskManagerDialog;->$r8$lambda$E1IN21XgNuZHZqcuTmrlzoYaG4A(Lcom/winlator/winhandler/WinHandler;Lcom/winlator/winhandler/ProcessInfo;)V

    return-void
.end method
