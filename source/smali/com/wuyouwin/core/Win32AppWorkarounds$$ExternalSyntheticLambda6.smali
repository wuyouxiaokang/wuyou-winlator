.class public final synthetic Lcom/wuyouwin/core/Win32AppWorkarounds$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/wuyouwin/core/Win32AppWorkarounds$WindowWorkaround;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/winhandler/WinHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/winhandler/WinHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/core/Win32AppWorkarounds$$ExternalSyntheticLambda6;->f$0:Lcom/wuyouwin/winhandler/WinHandler;

    return-void
.end method


# virtual methods
.method public final apply(Lcom/wuyouwin/xserver/Window;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/core/Win32AppWorkarounds$$ExternalSyntheticLambda6;->f$0:Lcom/wuyouwin/winhandler/WinHandler;

    invoke-static {v0, p1}, Lcom/wuyouwin/core/Win32AppWorkarounds;->$r8$lambda$kj_sZ-oF7IAnn4Zzl_dkuyesel4(Lcom/wuyouwin/winhandler/WinHandler;Lcom/wuyouwin/xserver/Window;)V

    return-void
.end method
