.class public final synthetic Lcom/wuyouwin/core/Win32AppWorkarounds$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/winhandler/WinHandler;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/winhandler/WinHandler;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/core/Win32AppWorkarounds$$ExternalSyntheticLambda14;->f$0:Lcom/wuyouwin/winhandler/WinHandler;

    iput-object p2, p0, Lcom/wuyouwin/core/Win32AppWorkarounds$$ExternalSyntheticLambda14;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/core/Win32AppWorkarounds$$ExternalSyntheticLambda14;->f$0:Lcom/wuyouwin/winhandler/WinHandler;

    iget-object v1, p0, Lcom/wuyouwin/core/Win32AppWorkarounds$$ExternalSyntheticLambda14;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wuyouwin/core/Win32AppWorkarounds;->$r8$lambda$Q8HDn29p1mznC3z7DvggLlXN2q4(Lcom/wuyouwin/winhandler/WinHandler;Ljava/lang/String;)V

    return-void
.end method
