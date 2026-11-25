.class public final synthetic Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/winlator/core/Win32AppWorkarounds$WindowWorkaround;


# instance fields
.field public final synthetic f$0:Lcom/winlator/winhandler/WinHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/winhandler/WinHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda11;->f$0:Lcom/winlator/winhandler/WinHandler;

    return-void
.end method


# virtual methods
.method public final apply(Lcom/winlator/xserver/Window;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda11;->f$0:Lcom/winlator/winhandler/WinHandler;

    invoke-static {v0, p1}, Lcom/winlator/core/Win32AppWorkarounds;->$r8$lambda$CUzlr6xcKmHRF2ACGydxHFbkwvY(Lcom/winlator/winhandler/WinHandler;Lcom/winlator/xserver/Window;)V

    return-void
.end method
