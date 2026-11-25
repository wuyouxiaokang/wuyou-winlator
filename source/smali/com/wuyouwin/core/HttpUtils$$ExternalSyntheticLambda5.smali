.class public final synthetic Lcom/wuyouwin/core/HttpUtils$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/wuyouwin/core/Callback;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Lcom/wuyouwin/core/DownloadProgressDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/wuyouwin/core/DownloadProgressDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/core/HttpUtils$$ExternalSyntheticLambda5;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/wuyouwin/core/HttpUtils$$ExternalSyntheticLambda5;->f$1:Lcom/wuyouwin/core/DownloadProgressDialog;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/core/HttpUtils$$ExternalSyntheticLambda5;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/wuyouwin/core/HttpUtils$$ExternalSyntheticLambda5;->f$1:Lcom/wuyouwin/core/DownloadProgressDialog;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Lcom/wuyouwin/core/HttpUtils;->$r8$lambda$JI-AKc5eHwLpgc5kc2sJmuZWKM4(Landroid/app/Activity;Lcom/wuyouwin/core/DownloadProgressDialog;Ljava/lang/Integer;)V

    return-void
.end method
