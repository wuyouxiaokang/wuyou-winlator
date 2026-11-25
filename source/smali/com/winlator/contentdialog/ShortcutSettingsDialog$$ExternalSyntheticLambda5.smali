.class public final synthetic Lcom/winlator/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda5;->f$0:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/winlator/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda5;->f$0:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/winlator/contentdialog/ShortcutSettingsDialog;->$r8$lambda$NsL7tGT-xfVIQE8Rq4iZhsogt7Q(Landroid/widget/EditText;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
