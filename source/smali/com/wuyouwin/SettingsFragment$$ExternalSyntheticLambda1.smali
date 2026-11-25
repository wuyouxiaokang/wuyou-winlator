.class public final synthetic Lcom/wuyouwin/SettingsFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/SettingsFragment;

.field public final synthetic f$1:Landroid/widget/CheckBox;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/SettingsFragment;Landroid/widget/CheckBox;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/SettingsFragment$$ExternalSyntheticLambda1;->f$0:Lcom/wuyouwin/SettingsFragment;

    iput-object p2, p0, Lcom/wuyouwin/SettingsFragment$$ExternalSyntheticLambda1;->f$1:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/wuyouwin/SettingsFragment$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/SettingsFragment$$ExternalSyntheticLambda1;->f$0:Lcom/wuyouwin/SettingsFragment;

    iget-object v1, p0, Lcom/wuyouwin/SettingsFragment$$ExternalSyntheticLambda1;->f$1:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/wuyouwin/SettingsFragment$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/wuyouwin/SettingsFragment;->$r8$lambda$1bOiC-UkxZUBGjma6137xPDQ7zI(Lcom/wuyouwin/SettingsFragment;Landroid/widget/CheckBox;Landroid/content/Context;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
