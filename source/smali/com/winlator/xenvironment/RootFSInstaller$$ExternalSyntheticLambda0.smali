.class public final synthetic Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Lcom/winlator/MainActivity;

.field public final synthetic f$2:Lcom/winlator/core/DownloadProgressDialog;

.field public final synthetic f$3:Lcom/winlator/xenvironment/RootFS;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Lcom/winlator/MainActivity;Lcom/winlator/core/DownloadProgressDialog;Lcom/winlator/xenvironment/RootFS;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    iput-object p2, p0, Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda0;->f$1:Lcom/winlator/MainActivity;

    iput-object p3, p0, Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda0;->f$2:Lcom/winlator/core/DownloadProgressDialog;

    iput-object p4, p0, Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda0;->f$3:Lcom/winlator/xenvironment/RootFS;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda0;->f$1:Lcom/winlator/MainActivity;

    iget-object v2, p0, Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda0;->f$2:Lcom/winlator/core/DownloadProgressDialog;

    iget-object v3, p0, Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda0;->f$3:Lcom/winlator/xenvironment/RootFS;

    invoke-static {v0, v1, v2, v3}, Lcom/winlator/xenvironment/RootFSInstaller;->$r8$lambda$-yi_ofvItr4dEUusdbI0en_c--8(Ljava/io/File;Lcom/winlator/MainActivity;Lcom/winlator/core/DownloadProgressDialog;Lcom/winlator/xenvironment/RootFS;)V

    return-void
.end method
