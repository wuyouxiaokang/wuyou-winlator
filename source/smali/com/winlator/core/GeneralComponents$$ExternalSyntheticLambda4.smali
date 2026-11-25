.class public final synthetic Lcom/winlator/core/GeneralComponents$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/winlator/core/GeneralComponents$Type;

.field public final synthetic f$2:Landroid/widget/Spinner;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/winlator/core/GeneralComponents$Type;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/core/GeneralComponents$$ExternalSyntheticLambda4;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/winlator/core/GeneralComponents$$ExternalSyntheticLambda4;->f$1:Lcom/winlator/core/GeneralComponents$Type;

    iput-object p3, p0, Lcom/winlator/core/GeneralComponents$$ExternalSyntheticLambda4;->f$2:Landroid/widget/Spinner;

    iput-object p4, p0, Lcom/winlator/core/GeneralComponents$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/winlator/core/GeneralComponents$$ExternalSyntheticLambda4;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/winlator/core/GeneralComponents$$ExternalSyntheticLambda4;->f$1:Lcom/winlator/core/GeneralComponents$Type;

    iget-object v2, p0, Lcom/winlator/core/GeneralComponents$$ExternalSyntheticLambda4;->f$2:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/winlator/core/GeneralComponents$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/winlator/core/GeneralComponents;->$r8$lambda$uOTAk__k0t4YYL1DXrhR1tF3Mms(Landroid/content/Context;Lcom/winlator/core/GeneralComponents$Type;Landroid/widget/Spinner;Ljava/lang/String;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
