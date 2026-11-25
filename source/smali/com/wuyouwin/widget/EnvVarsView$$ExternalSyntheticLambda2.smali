.class public final synthetic Lcom/wuyouwin/widget/EnvVarsView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/wuyouwin/widget/EnvVarsView$GetValueCallback;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/widget/MultiSelectionComboBox;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/widget/MultiSelectionComboBox;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/widget/EnvVarsView$$ExternalSyntheticLambda2;->f$0:Lcom/wuyouwin/widget/MultiSelectionComboBox;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/widget/EnvVarsView$$ExternalSyntheticLambda2;->f$0:Lcom/wuyouwin/widget/MultiSelectionComboBox;

    invoke-virtual {v0}, Lcom/wuyouwin/widget/MultiSelectionComboBox;->getSelectedItemsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
