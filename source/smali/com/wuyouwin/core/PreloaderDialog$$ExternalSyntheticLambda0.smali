.class public final synthetic Lcom/wuyouwin/core/PreloaderDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/core/PreloaderDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/core/PreloaderDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/core/PreloaderDialog$$ExternalSyntheticLambda0;->f$0:Lcom/wuyouwin/core/PreloaderDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/core/PreloaderDialog$$ExternalSyntheticLambda0;->f$0:Lcom/wuyouwin/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/wuyouwin/core/PreloaderDialog;->close()V

    return-void
.end method
