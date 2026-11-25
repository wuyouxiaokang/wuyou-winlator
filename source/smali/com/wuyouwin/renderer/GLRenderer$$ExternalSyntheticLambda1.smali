.class public final synthetic Lcom/wuyouwin/renderer/GLRenderer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/renderer/GLRenderer;

.field public final synthetic f$1:Lcom/wuyouwin/xserver/Window;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/renderer/GLRenderer;Lcom/wuyouwin/xserver/Window;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/renderer/GLRenderer$$ExternalSyntheticLambda1;->f$0:Lcom/wuyouwin/renderer/GLRenderer;

    iput-object p2, p0, Lcom/wuyouwin/renderer/GLRenderer$$ExternalSyntheticLambda1;->f$1:Lcom/wuyouwin/xserver/Window;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/renderer/GLRenderer$$ExternalSyntheticLambda1;->f$0:Lcom/wuyouwin/renderer/GLRenderer;

    iget-object v1, p0, Lcom/wuyouwin/renderer/GLRenderer$$ExternalSyntheticLambda1;->f$1:Lcom/wuyouwin/xserver/Window;

    invoke-static {v0, v1}, Lcom/wuyouwin/renderer/GLRenderer;->$r8$lambda$BbDFjtB0fvAVQk-uwtCPYwtyYqc(Lcom/wuyouwin/renderer/GLRenderer;Lcom/wuyouwin/xserver/Window;)V

    return-void
.end method
