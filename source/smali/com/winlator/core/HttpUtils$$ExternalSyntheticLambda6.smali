.class public final synthetic Lcom/winlator/core/HttpUtils$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/winlator/core/Callback;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Lcom/winlator/core/DownloadProgressDialog;

.field public final synthetic f$3:Lcom/winlator/core/Callback;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Landroid/app/Activity;Lcom/winlator/core/DownloadProgressDialog;Lcom/winlator/core/Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/core/HttpUtils$$ExternalSyntheticLambda6;->f$0:Ljava/io/File;

    iput-object p2, p0, Lcom/winlator/core/HttpUtils$$ExternalSyntheticLambda6;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/winlator/core/HttpUtils$$ExternalSyntheticLambda6;->f$2:Lcom/winlator/core/DownloadProgressDialog;

    iput-object p4, p0, Lcom/winlator/core/HttpUtils$$ExternalSyntheticLambda6;->f$3:Lcom/winlator/core/Callback;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/winlator/core/HttpUtils$$ExternalSyntheticLambda6;->f$0:Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/core/HttpUtils$$ExternalSyntheticLambda6;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/winlator/core/HttpUtils$$ExternalSyntheticLambda6;->f$2:Lcom/winlator/core/DownloadProgressDialog;

    iget-object v3, p0, Lcom/winlator/core/HttpUtils$$ExternalSyntheticLambda6;->f$3:Lcom/winlator/core/Callback;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/winlator/core/HttpUtils;->$r8$lambda$CWJrjjIn6sx9JS72yxi1QOZ65vs(Ljava/io/File;Landroid/app/Activity;Lcom/winlator/core/DownloadProgressDialog;Lcom/winlator/core/Callback;Ljava/lang/Boolean;)V

    return-void
.end method
