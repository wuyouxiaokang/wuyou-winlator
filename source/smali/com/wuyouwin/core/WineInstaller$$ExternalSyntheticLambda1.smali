.class public final synthetic Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Integer;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Lcom/wuyouwin/core/PreloaderDialog;

.field public final synthetic f$4:Ljava/io/File;

.field public final synthetic f$5:Lcom/wuyouwin/core/WineInfo;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;Landroid/app/Activity;Ljava/io/File;Lcom/wuyouwin/core/PreloaderDialog;Ljava/io/File;Lcom/wuyouwin/core/WineInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda1;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda1;->f$2:Ljava/io/File;

    iput-object p4, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda1;->f$3:Lcom/wuyouwin/core/PreloaderDialog;

    iput-object p5, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda1;->f$4:Ljava/io/File;

    iput-object p6, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda1;->f$5:Lcom/wuyouwin/core/WineInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda1;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda1;->f$2:Ljava/io/File;

    iget-object v3, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda1;->f$3:Lcom/wuyouwin/core/PreloaderDialog;

    iget-object v4, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda1;->f$4:Ljava/io/File;

    iget-object v5, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda1;->f$5:Lcom/wuyouwin/core/WineInfo;

    invoke-static/range {v0 .. v5}, Lcom/wuyouwin/core/WineInstaller;->$r8$lambda$6c1QqqVFx6kKMWVCKP-7mH96Mic(Ljava/lang/Integer;Landroid/app/Activity;Ljava/io/File;Lcom/wuyouwin/core/PreloaderDialog;Ljava/io/File;Lcom/wuyouwin/core/WineInfo;)V

    return-void
.end method
