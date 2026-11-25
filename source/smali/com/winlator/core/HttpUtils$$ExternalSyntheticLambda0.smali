.class public final synthetic Lcom/winlator/core/HttpUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/core/DownloadProgressDialog;

.field public final synthetic f$1:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/core/DownloadProgressDialog;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/core/HttpUtils$$ExternalSyntheticLambda0;->f$0:Lcom/winlator/core/DownloadProgressDialog;

    iput-object p2, p0, Lcom/winlator/core/HttpUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/core/HttpUtils$$ExternalSyntheticLambda0;->f$0:Lcom/winlator/core/DownloadProgressDialog;

    iget-object v1, p0, Lcom/winlator/core/HttpUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/winlator/core/HttpUtils;->$r8$lambda$0QGtg9TtN-KIxCijFwnh6SA_A8g(Lcom/winlator/core/DownloadProgressDialog;Ljava/lang/Integer;)V

    return-void
.end method
