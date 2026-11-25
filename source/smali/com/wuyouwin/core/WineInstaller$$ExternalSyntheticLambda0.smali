.class public final synthetic Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/wuyouwin/core/Callback;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Lcom/wuyouwin/core/PreloaderDialog;

.field public final synthetic f$3:Ljava/io/File;

.field public final synthetic f$4:Lcom/wuyouwin/core/WineInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/io/File;Lcom/wuyouwin/core/PreloaderDialog;Ljava/io/File;Lcom/wuyouwin/core/WineInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda0;->f$2:Lcom/wuyouwin/core/PreloaderDialog;

    iput-object p4, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda0;->f$3:Ljava/io/File;

    iput-object p5, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda0;->f$4:Lcom/wuyouwin/core/WineInfo;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda0;->f$2:Lcom/wuyouwin/core/PreloaderDialog;

    iget-object v3, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda0;->f$3:Ljava/io/File;

    iget-object v4, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda0;->f$4:Lcom/wuyouwin/core/WineInfo;

    move-object v5, p1

    check-cast v5, Ljava/lang/Integer;

    invoke-static/range {v0 .. v5}, Lcom/wuyouwin/core/WineInstaller;->$r8$lambda$Mm8Q9yf4OjaINEf5xsAXTsYnUdk(Landroid/app/Activity;Ljava/io/File;Lcom/wuyouwin/core/PreloaderDialog;Ljava/io/File;Lcom/wuyouwin/core/WineInfo;Ljava/lang/Integer;)V

    return-void
.end method
