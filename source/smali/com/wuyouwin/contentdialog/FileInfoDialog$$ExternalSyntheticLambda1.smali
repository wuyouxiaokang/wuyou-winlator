.class public final synthetic Lcom/wuyouwin/contentdialog/FileInfoDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/contentdialog/FileInfoDialog$$ExternalSyntheticLambda1;->f$0:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/wuyouwin/contentdialog/FileInfoDialog$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/contentdialog/FileInfoDialog$$ExternalSyntheticLambda1;->f$0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wuyouwin/contentdialog/FileInfoDialog$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1}, Lcom/wuyouwin/contentdialog/FileInfoDialog;->$r8$lambda$ly98t4Mr7vq-SucdG2UhN2RxBLk(Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicLong;)V

    return-void
.end method
