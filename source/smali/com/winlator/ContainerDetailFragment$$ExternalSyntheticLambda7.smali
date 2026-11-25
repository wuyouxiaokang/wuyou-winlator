.class public final synthetic Lcom/winlator/ContainerDetailFragment$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/winlator/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/winlator/ContainerDetailFragment;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/ContainerDetailFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/ContainerDetailFragment$$ExternalSyntheticLambda7;->f$0:Lcom/winlator/ContainerDetailFragment;

    iput-object p2, p0, Lcom/winlator/ContainerDetailFragment$$ExternalSyntheticLambda7;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/ContainerDetailFragment$$ExternalSyntheticLambda7;->f$0:Lcom/winlator/ContainerDetailFragment;

    iget-object v1, p0, Lcom/winlator/ContainerDetailFragment$$ExternalSyntheticLambda7;->f$1:Landroid/view/View;

    check-cast p1, Lcom/winlator/container/Container;

    invoke-static {v0, v1, p1}, Lcom/winlator/ContainerDetailFragment;->$r8$lambda$V_dxDKOxSUbDBxqkt9W1l8EkTHs(Lcom/winlator/ContainerDetailFragment;Landroid/view/View;Lcom/winlator/container/Container;)V

    return-void
.end method
