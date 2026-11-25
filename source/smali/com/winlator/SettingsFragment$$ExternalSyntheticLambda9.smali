.class public final synthetic Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/Spinner;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Spinner;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda9;->f$0:Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda9;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda9;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda9;->f$0:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda9;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda9;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p1}, Lcom/winlator/SettingsFragment;->$r8$lambda$uct61tW4hI_OHyUNoR6jgr_Ax38(Landroid/widget/Spinner;Landroid/content/Context;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method
