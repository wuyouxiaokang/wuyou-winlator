.class public final synthetic Lcom/winlator/widget/EnvVarsView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/winlator/widget/EnvVarsView$GetValueCallback;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/widget/EnvVarsView$$ExternalSyntheticLambda3;->f$0:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/winlator/widget/EnvVarsView$$ExternalSyntheticLambda3;->f$0:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/winlator/widget/EnvVarsView;->$r8$lambda$IuQPPQ9FWagSdXpVnSUSew4L86I(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
