.class public final synthetic Lcom/winlator/xserver/WindowManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/xserver/WindowManager;

.field public final synthetic f$1:Lcom/winlator/xserver/Window;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/xserver/WindowManager;Lcom/winlator/xserver/Window;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/xserver/WindowManager$$ExternalSyntheticLambda0;->f$0:Lcom/winlator/xserver/WindowManager;

    iput-object p2, p0, Lcom/winlator/xserver/WindowManager$$ExternalSyntheticLambda0;->f$1:Lcom/winlator/xserver/Window;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/xserver/WindowManager$$ExternalSyntheticLambda0;->f$0:Lcom/winlator/xserver/WindowManager;

    iget-object v1, p0, Lcom/winlator/xserver/WindowManager$$ExternalSyntheticLambda0;->f$1:Lcom/winlator/xserver/Window;

    invoke-static {v0, v1}, Lcom/winlator/xserver/WindowManager;->$r8$lambda$Z_Tb4B96U80VuV6uW17zyESeJRw(Lcom/winlator/xserver/WindowManager;Lcom/winlator/xserver/Window;)V

    return-void
.end method
