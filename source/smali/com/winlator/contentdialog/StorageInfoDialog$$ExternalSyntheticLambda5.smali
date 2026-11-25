.class public final synthetic Lcom/winlator/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Lcom/winlator/container/Container;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/winlator/container/Container;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda5;->f$0:Ljava/io/File;

    iput-object p2, p0, Lcom/winlator/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda5;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/winlator/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda5;->f$2:Lcom/winlator/container/Container;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/winlator/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda5;->f$0:Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda5;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/winlator/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda5;->f$2:Lcom/winlator/container/Container;

    invoke-static {v0, v1, v2}, Lcom/winlator/contentdialog/StorageInfoDialog;->$r8$lambda$5ya8mG3JJHcMZ069qG9x5stga4I(Ljava/io/File;Ljava/io/File;Lcom/winlator/container/Container;)V

    return-void
.end method
