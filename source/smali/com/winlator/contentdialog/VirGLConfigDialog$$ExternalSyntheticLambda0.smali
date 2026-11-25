.class public final synthetic Lcom/winlator/contentdialog/VirGLConfigDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/Spinner;

.field public final synthetic f$1:Landroid/widget/CheckBox;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/contentdialog/VirGLConfigDialog$$ExternalSyntheticLambda0;->f$0:Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/winlator/contentdialog/VirGLConfigDialog$$ExternalSyntheticLambda0;->f$1:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/winlator/contentdialog/VirGLConfigDialog$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/winlator/contentdialog/VirGLConfigDialog$$ExternalSyntheticLambda0;->f$0:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/winlator/contentdialog/VirGLConfigDialog$$ExternalSyntheticLambda0;->f$1:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/winlator/contentdialog/VirGLConfigDialog$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/winlator/contentdialog/VirGLConfigDialog;->$r8$lambda$V0TS_jJEI5p5EsgHpjat__7mmLI(Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method
