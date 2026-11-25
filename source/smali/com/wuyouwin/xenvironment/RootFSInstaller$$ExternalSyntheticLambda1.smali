.class public final synthetic Lcom/wuyouwin/xenvironment/RootFSInstaller$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/wuyouwin/core/TarCompressorUtils$OnExtractFileListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicLong;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lcom/wuyouwin/MainActivity;

.field public final synthetic f$3:Lcom/wuyouwin/core/DownloadProgressDialog;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicLong;JLcom/wuyouwin/MainActivity;Lcom/wuyouwin/core/DownloadProgressDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/xenvironment/RootFSInstaller$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicLong;

    iput-wide p2, p0, Lcom/wuyouwin/xenvironment/RootFSInstaller$$ExternalSyntheticLambda1;->f$1:J

    iput-object p4, p0, Lcom/wuyouwin/xenvironment/RootFSInstaller$$ExternalSyntheticLambda1;->f$2:Lcom/wuyouwin/MainActivity;

    iput-object p5, p0, Lcom/wuyouwin/xenvironment/RootFSInstaller$$ExternalSyntheticLambda1;->f$3:Lcom/wuyouwin/core/DownloadProgressDialog;

    return-void
.end method


# virtual methods
.method public final onExtractFile(Ljava/io/File;J)Ljava/io/File;
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/xenvironment/RootFSInstaller$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v1, p0, Lcom/wuyouwin/xenvironment/RootFSInstaller$$ExternalSyntheticLambda1;->f$1:J

    iget-object v3, p0, Lcom/wuyouwin/xenvironment/RootFSInstaller$$ExternalSyntheticLambda1;->f$2:Lcom/wuyouwin/MainActivity;

    iget-object v4, p0, Lcom/wuyouwin/xenvironment/RootFSInstaller$$ExternalSyntheticLambda1;->f$3:Lcom/wuyouwin/core/DownloadProgressDialog;

    move-object v5, p1

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/wuyouwin/xenvironment/RootFSInstaller;->$r8$lambda$Dzd9CgAVDz2ByBfp9d5pVKeppls(Ljava/util/concurrent/atomic/AtomicLong;JLcom/wuyouwin/MainActivity;Lcom/wuyouwin/core/DownloadProgressDialog;Ljava/io/File;J)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
