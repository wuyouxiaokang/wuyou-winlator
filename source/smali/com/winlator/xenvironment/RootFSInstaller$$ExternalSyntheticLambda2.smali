.class public final synthetic Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/core/DownloadProgressDialog;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/core/DownloadProgressDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda2;->f$0:Lcom/winlator/core/DownloadProgressDialog;

    iput p2, p0, Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda2;->f$0:Lcom/winlator/core/DownloadProgressDialog;

    iget v1, p0, Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda2;->f$1:I

    invoke-static {v0, v1}, Lcom/winlator/xenvironment/RootFSInstaller;->$r8$lambda$EMpuVNxdUto2RkVYNVIp7YmlFlI(Lcom/winlator/core/DownloadProgressDialog;I)V

    return-void
.end method
