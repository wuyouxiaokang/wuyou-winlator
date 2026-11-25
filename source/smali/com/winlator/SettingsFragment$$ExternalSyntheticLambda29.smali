.class public final synthetic Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/winlator/core/Callback;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicLong;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicLong;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda29;->f$0:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p2, p0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda29;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda29;->f$0:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda29;->f$1:Landroid/widget/EditText;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, p1}, Lcom/winlator/SettingsFragment;->$r8$lambda$iX1oKYib92dmuiaZXgBz78sTP2M(Ljava/util/concurrent/atomic/AtomicLong;Landroid/widget/EditText;Ljava/lang/Long;)V

    return-void
.end method
