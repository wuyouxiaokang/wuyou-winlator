.class public final synthetic Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/SettingsFragment;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Ljava/lang/Runnable;

.field public final synthetic f$4:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/SettingsFragment;Ljava/io/File;Ljava/io/File;Ljava/lang/Runnable;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda27;->f$0:Lcom/winlator/SettingsFragment;

    iput-object p2, p0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda27;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda27;->f$2:Ljava/io/File;

    iput-object p4, p0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda27;->f$3:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda27;->f$4:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda27;->f$0:Lcom/winlator/SettingsFragment;

    iget-object v1, p0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda27;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda27;->f$2:Ljava/io/File;

    iget-object v3, p0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda27;->f$3:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/winlator/SettingsFragment$$ExternalSyntheticLambda27;->f$4:Landroid/app/Activity;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/winlator/SettingsFragment;->$r8$lambda$K1AWu0HUuorgctJLxmaNWUEGfig(Lcom/winlator/SettingsFragment;Ljava/io/File;Ljava/io/File;Ljava/lang/Runnable;Landroid/app/Activity;)V

    return-void
.end method
