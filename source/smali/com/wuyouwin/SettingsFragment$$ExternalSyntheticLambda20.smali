.class public final synthetic Lcom/wuyouwin/SettingsFragment$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/wuyouwin/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/SettingsFragment;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/SettingsFragment;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/SettingsFragment$$ExternalSyntheticLambda20;->f$0:Lcom/wuyouwin/SettingsFragment;

    iput-object p2, p0, Lcom/wuyouwin/SettingsFragment$$ExternalSyntheticLambda20;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/SettingsFragment$$ExternalSyntheticLambda20;->f$0:Lcom/wuyouwin/SettingsFragment;

    iget-object v1, p0, Lcom/wuyouwin/SettingsFragment$$ExternalSyntheticLambda20;->f$1:Landroid/content/Context;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, v1, p1}, Lcom/wuyouwin/SettingsFragment;->$r8$lambda$L1FLHH0LlYjdpo1rgmn8kkoWpAo(Lcom/wuyouwin/SettingsFragment;Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
