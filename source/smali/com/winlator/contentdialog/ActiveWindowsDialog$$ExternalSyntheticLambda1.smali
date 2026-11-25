.class public final synthetic Lcom/winlator/contentdialog/ActiveWindowsDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/winlator/core/Callback;


# instance fields
.field public final synthetic f$0:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/contentdialog/ActiveWindowsDialog$$ExternalSyntheticLambda1;->f$0:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/winlator/contentdialog/ActiveWindowsDialog$$ExternalSyntheticLambda1;->f$0:Landroid/widget/ImageView;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lcom/winlator/contentdialog/ActiveWindowsDialog;->$r8$lambda$fk5kprbzYJkO2tpNcj8c4HSpDEs(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method
