.class public final synthetic Lcom/winlator/container/ContainerManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/core/Callback;

.field public final synthetic f$1:Lcom/winlator/container/Container;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/core/Callback;Lcom/winlator/container/Container;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/container/ContainerManager$$ExternalSyntheticLambda2;->f$0:Lcom/winlator/core/Callback;

    iput-object p2, p0, Lcom/winlator/container/ContainerManager$$ExternalSyntheticLambda2;->f$1:Lcom/winlator/container/Container;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/container/ContainerManager$$ExternalSyntheticLambda2;->f$0:Lcom/winlator/core/Callback;

    iget-object v1, p0, Lcom/winlator/container/ContainerManager$$ExternalSyntheticLambda2;->f$1:Lcom/winlator/container/Container;

    invoke-static {v0, v1}, Lcom/winlator/container/ContainerManager;->$r8$lambda$KfSdHGr3LLJL9zes4KvfXWlriHk(Lcom/winlator/core/Callback;Lcom/winlator/container/Container;)V

    return-void
.end method
