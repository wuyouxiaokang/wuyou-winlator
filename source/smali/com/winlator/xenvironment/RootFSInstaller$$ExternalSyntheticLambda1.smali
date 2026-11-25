.class public final synthetic Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/winlator/core/TarCompressorUtils$OnExtractFileListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicLong;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lcom/winlator/MainActivity;

.field public final synthetic f$3:Lcom/winlator/core/DownloadProgressDialog;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicLong;JLcom/winlator/MainActivity;Lcom/winlator/core/DownloadProgressDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicLong;

    iput-wide p2, p0, Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda1;->f$1:J

    iput-object p4, p0, Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda1;->f$2:Lcom/winlator/MainActivity;

    iput-object p5, p0, Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda1;->f$3:Lcom/winlator/core/DownloadProgressDialog;

    return-void
.end method


# virtual methods
.method public final onExtractFile(Ljava/io/File;J)Ljava/io/File;
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v1, p0, Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda1;->f$1:J

    iget-object v3, p0, Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda1;->f$2:Lcom/winlator/MainActivity;

    iget-object v4, p0, Lcom/winlator/xenvironment/RootFSInstaller$$ExternalSyntheticLambda1;->f$3:Lcom/winlator/core/DownloadProgressDialog;

    move-object v5, p1

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/winlator/xenvironment/RootFSInstaller;->$r8$lambda$Dzd9CgAVDz2ByBfp9d5pVKeppls(Ljava/util/concurrent/atomic/AtomicLong;JLcom/winlator/MainActivity;Lcom/winlator/core/DownloadProgressDialog;Ljava/io/File;J)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
