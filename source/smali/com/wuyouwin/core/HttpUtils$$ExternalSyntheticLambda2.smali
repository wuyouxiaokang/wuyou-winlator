.class public final synthetic Lcom/wuyouwin/core/HttpUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/wuyouwin/core/Callback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/wuyouwin/core/Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/core/HttpUtils$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/wuyouwin/core/HttpUtils$$ExternalSyntheticLambda2;->f$1:Lcom/wuyouwin/core/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/core/HttpUtils$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/wuyouwin/core/HttpUtils$$ExternalSyntheticLambda2;->f$1:Lcom/wuyouwin/core/Callback;

    invoke-static {v0, v1}, Lcom/wuyouwin/core/HttpUtils;->$r8$lambda$wMi5z-859Cg89ZPwO_hIrGuadVI(Ljava/lang/String;Lcom/wuyouwin/core/Callback;)V

    return-void
.end method
