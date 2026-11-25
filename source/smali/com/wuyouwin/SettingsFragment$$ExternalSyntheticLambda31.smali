.class public final synthetic Lcom/wuyouwin/SettingsFragment$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/SettingsFragment$$ExternalSyntheticLambda31;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/wuyouwin/SettingsFragment$$ExternalSyntheticLambda31;->f$1:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/SettingsFragment$$ExternalSyntheticLambda31;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/wuyouwin/SettingsFragment$$ExternalSyntheticLambda31;->f$1:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1}, Lcom/wuyouwin/SettingsFragment;->$r8$lambda$iAOlTB5ucO2lRlAS_W27Xaz3vI8(Landroid/widget/EditText;Ljava/util/concurrent/atomic/AtomicLong;)V

    return-void
.end method
