.class public final synthetic Lcom/winlator/core/WineInstaller$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/winlator/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/winlator/core/Callback;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$2:Lcom/winlator/core/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/core/Callback;Ljava/util/concurrent/atomic/AtomicReference;Lcom/winlator/core/Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/core/WineInstaller$$ExternalSyntheticLambda4;->f$0:Lcom/winlator/core/Callback;

    iput-object p2, p0, Lcom/winlator/core/WineInstaller$$ExternalSyntheticLambda4;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/winlator/core/WineInstaller$$ExternalSyntheticLambda4;->f$2:Lcom/winlator/core/Callback;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/winlator/core/WineInstaller$$ExternalSyntheticLambda4;->f$0:Lcom/winlator/core/Callback;

    iget-object v1, p0, Lcom/winlator/core/WineInstaller$$ExternalSyntheticLambda4;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/winlator/core/WineInstaller$$ExternalSyntheticLambda4;->f$2:Lcom/winlator/core/Callback;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, v2, p1}, Lcom/winlator/core/WineInstaller;->$r8$lambda$tFZUJw-tfVynBxnDL4xqqT1pJBs(Lcom/winlator/core/Callback;Ljava/util/concurrent/atomic/AtomicReference;Lcom/winlator/core/Callback;Ljava/lang/Integer;)V

    return-void
.end method
