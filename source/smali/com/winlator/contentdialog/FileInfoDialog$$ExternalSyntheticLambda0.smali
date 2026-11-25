.class public final synthetic Lcom/winlator/contentdialog/FileInfoDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/winlator/core/Callback;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicLong;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicLong;

.field public final synthetic f$2:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Landroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/contentdialog/FileInfoDialog$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p2, p0, Lcom/winlator/contentdialog/FileInfoDialog$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p3, p0, Lcom/winlator/contentdialog/FileInfoDialog$$ExternalSyntheticLambda0;->f$2:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/winlator/contentdialog/FileInfoDialog$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/winlator/contentdialog/FileInfoDialog$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, p0, Lcom/winlator/contentdialog/FileInfoDialog$$ExternalSyntheticLambda0;->f$2:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, p1}, Lcom/winlator/contentdialog/FileInfoDialog;->$r8$lambda$wwwmMTfHLpEGqwpmO5slijZH1sw(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Landroid/widget/TextView;Ljava/lang/Long;)V

    return-void
.end method
