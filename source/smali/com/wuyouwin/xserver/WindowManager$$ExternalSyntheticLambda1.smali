.class public final synthetic Lcom/wuyouwin/xserver/WindowManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/xserver/WindowManager;

.field public final synthetic f$1:Lcom/wuyouwin/xserver/Window;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/xserver/WindowManager;Lcom/wuyouwin/xserver/Window;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/xserver/WindowManager$$ExternalSyntheticLambda1;->f$0:Lcom/wuyouwin/xserver/WindowManager;

    iput-object p2, p0, Lcom/wuyouwin/xserver/WindowManager$$ExternalSyntheticLambda1;->f$1:Lcom/wuyouwin/xserver/Window;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/xserver/WindowManager$$ExternalSyntheticLambda1;->f$0:Lcom/wuyouwin/xserver/WindowManager;

    iget-object v1, p0, Lcom/wuyouwin/xserver/WindowManager$$ExternalSyntheticLambda1;->f$1:Lcom/wuyouwin/xserver/Window;

    invoke-static {v0, v1}, Lcom/wuyouwin/xserver/WindowManager;->$r8$lambda$DIpb-S306oSWiBvQAAeRLEKAVpo(Lcom/wuyouwin/xserver/WindowManager;Lcom/wuyouwin/xserver/Window;)V

    return-void
.end method
