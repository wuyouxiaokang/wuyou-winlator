.class public final synthetic Lcom/wuyouwin/BaseFileManagerFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/BaseFileManagerFragment;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/BaseFileManagerFragment;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/BaseFileManagerFragment$$ExternalSyntheticLambda3;->f$0:Lcom/wuyouwin/BaseFileManagerFragment;

    iput-object p2, p0, Lcom/wuyouwin/BaseFileManagerFragment$$ExternalSyntheticLambda3;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/BaseFileManagerFragment$$ExternalSyntheticLambda3;->f$0:Lcom/wuyouwin/BaseFileManagerFragment;

    iget-object v1, p0, Lcom/wuyouwin/BaseFileManagerFragment$$ExternalSyntheticLambda3;->f$1:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/wuyouwin/BaseFileManagerFragment;->$r8$lambda$fYRSqDeNjUtkRU4aBvZqQ9bPbZU(Lcom/wuyouwin/BaseFileManagerFragment;Ljava/io/File;)V

    return-void
.end method
