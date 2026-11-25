.class public final synthetic Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Lcom/wuyouwin/core/Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/wuyouwin/core/Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda2;->f$2:Lcom/wuyouwin/core/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Lcom/wuyouwin/core/WineInstaller$$ExternalSyntheticLambda2;->f$2:Lcom/wuyouwin/core/Callback;

    invoke-static {v0, v1, v2}, Lcom/wuyouwin/core/WineInstaller;->$r8$lambda$yrcHvAieoJ2soynfhc_owQyzsDI(Landroid/content/Context;Landroid/net/Uri;Lcom/wuyouwin/core/Callback;)V

    return-void
.end method
