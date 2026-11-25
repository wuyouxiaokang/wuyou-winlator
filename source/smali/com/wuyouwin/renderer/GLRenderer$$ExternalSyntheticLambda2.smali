.class public final synthetic Lcom/wuyouwin/renderer/GLRenderer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/renderer/GLRenderer;

.field public final synthetic f$1:Lcom/wuyouwin/xserver/Drawable;

.field public final synthetic f$2:Lcom/wuyouwin/core/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/renderer/GLRenderer;Lcom/wuyouwin/xserver/Drawable;Lcom/wuyouwin/core/Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/renderer/GLRenderer$$ExternalSyntheticLambda2;->f$0:Lcom/wuyouwin/renderer/GLRenderer;

    iput-object p2, p0, Lcom/wuyouwin/renderer/GLRenderer$$ExternalSyntheticLambda2;->f$1:Lcom/wuyouwin/xserver/Drawable;

    iput-object p3, p0, Lcom/wuyouwin/renderer/GLRenderer$$ExternalSyntheticLambda2;->f$2:Lcom/wuyouwin/core/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/renderer/GLRenderer$$ExternalSyntheticLambda2;->f$0:Lcom/wuyouwin/renderer/GLRenderer;

    iget-object v1, p0, Lcom/wuyouwin/renderer/GLRenderer$$ExternalSyntheticLambda2;->f$1:Lcom/wuyouwin/xserver/Drawable;

    iget-object v2, p0, Lcom/wuyouwin/renderer/GLRenderer$$ExternalSyntheticLambda2;->f$2:Lcom/wuyouwin/core/Callback;

    invoke-static {v0, v1, v2}, Lcom/wuyouwin/renderer/GLRenderer;->$r8$lambda$4mojsVTINrVDEnjdhP18m-n_AGQ(Lcom/wuyouwin/renderer/GLRenderer;Lcom/wuyouwin/xserver/Drawable;Lcom/wuyouwin/core/Callback;)V

    return-void
.end method
