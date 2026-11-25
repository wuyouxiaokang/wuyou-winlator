.class public final synthetic Lcom/wuyouwin/core/HttpUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/core/DownloadProgressDialog;

.field public final synthetic f$1:Lcom/wuyouwin/core/Callback;

.field public final synthetic f$2:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/core/DownloadProgressDialog;Lcom/wuyouwin/core/Callback;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/core/HttpUtils$$ExternalSyntheticLambda1;->f$0:Lcom/wuyouwin/core/DownloadProgressDialog;

    iput-object p2, p0, Lcom/wuyouwin/core/HttpUtils$$ExternalSyntheticLambda1;->f$1:Lcom/wuyouwin/core/Callback;

    iput-object p3, p0, Lcom/wuyouwin/core/HttpUtils$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/core/HttpUtils$$ExternalSyntheticLambda1;->f$0:Lcom/wuyouwin/core/DownloadProgressDialog;

    iget-object v1, p0, Lcom/wuyouwin/core/HttpUtils$$ExternalSyntheticLambda1;->f$1:Lcom/wuyouwin/core/Callback;

    iget-object v2, p0, Lcom/wuyouwin/core/HttpUtils$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lcom/wuyouwin/core/HttpUtils;->$r8$lambda$KzUbijlzhg31vjZCOesfxYHPpPI(Lcom/wuyouwin/core/DownloadProgressDialog;Lcom/wuyouwin/core/Callback;Ljava/lang/Boolean;)V

    return-void
.end method
