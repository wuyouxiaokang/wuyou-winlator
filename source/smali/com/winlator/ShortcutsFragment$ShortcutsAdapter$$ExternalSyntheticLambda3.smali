.class public final synthetic Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;

.field public final synthetic f$1:Lcom/winlator/container/Shortcut;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/container/Shortcut;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda3;->f$0:Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;

    iput-object p2, p0, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda3;->f$1:Lcom/winlator/container/Shortcut;

    iput-object p3, p0, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda3;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda3;->f$0:Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;

    iget-object v1, p0, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda3;->f$1:Lcom/winlator/container/Shortcut;

    iget-object v2, p0, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda3;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, v2, p1}, Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;->$r8$lambda$umzkim_cEomi3NUTihQ9n54xdko(Lcom/winlator/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/container/Shortcut;Landroid/content/Context;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
