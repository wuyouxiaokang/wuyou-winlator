.class public final synthetic Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;

.field public final synthetic f$1:Lcom/winlator/container/Shortcut;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/container/Shortcut;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda4;->f$0:Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;

    iput-object p2, p0, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda4;->f$1:Lcom/winlator/container/Shortcut;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda4;->f$0:Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;

    iget-object v1, p0, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda4;->f$1:Lcom/winlator/container/Shortcut;

    invoke-static {v0, v1}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;->$r8$lambda$N--l2D15WJ5xfatR3u2r-Cu9CyM(Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/container/Shortcut;)V

    return-void
.end method
