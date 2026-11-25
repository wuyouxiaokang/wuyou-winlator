.class public final synthetic Lcom/winlator/widget/ImagePickerView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:[Landroid/widget/PopupWindow;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/io/File;[Landroid/widget/PopupWindow;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/widget/ImagePickerView$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/winlator/widget/ImagePickerView$$ExternalSyntheticLambda2;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/winlator/widget/ImagePickerView$$ExternalSyntheticLambda2;->f$2:[Landroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/winlator/widget/ImagePickerView$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/winlator/widget/ImagePickerView$$ExternalSyntheticLambda2;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/winlator/widget/ImagePickerView$$ExternalSyntheticLambda2;->f$2:[Landroid/widget/PopupWindow;

    invoke-static {v0, v1, v2, p1}, Lcom/winlator/widget/ImagePickerView;->$r8$lambda$G3lcVwAWVbP3BPIjuZImp23udPE(Landroid/content/Context;Ljava/io/File;[Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method
