.class public final synthetic Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog;

.field public final synthetic f$1:Landroid/widget/Spinner;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog$$ExternalSyntheticLambda0;->f$0:Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog;

    iput-object p2, p0, Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog$$ExternalSyntheticLambda0;->f$1:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog$$ExternalSyntheticLambda0;->f$0:Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog;

    iget-object v1, p0, Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog$$ExternalSyntheticLambda0;->f$1:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog;->$r8$lambda$ZOO9Gj-CYIJTUWTS4kLR9ZNUdIk(Lcom/wuyouwin/contentdialog/GamepadPlayerConfigDialog;Landroid/widget/Spinner;Ljava/lang/String;Landroid/widget/RadioGroup;I)V

    return-void
.end method
