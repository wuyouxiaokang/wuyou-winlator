.class public final synthetic Lcom/winlator/ContainerFileManagerFragment$LoadIconTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/ContainerFileManagerFragment$LoadIconTask;

.field public final synthetic f$1:Lcom/winlator/container/FileInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/ContainerFileManagerFragment$LoadIconTask;Lcom/winlator/container/FileInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/ContainerFileManagerFragment$LoadIconTask$$ExternalSyntheticLambda0;->f$0:Lcom/winlator/ContainerFileManagerFragment$LoadIconTask;

    iput-object p2, p0, Lcom/winlator/ContainerFileManagerFragment$LoadIconTask$$ExternalSyntheticLambda0;->f$1:Lcom/winlator/container/FileInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/ContainerFileManagerFragment$LoadIconTask$$ExternalSyntheticLambda0;->f$0:Lcom/winlator/ContainerFileManagerFragment$LoadIconTask;

    iget-object v1, p0, Lcom/winlator/ContainerFileManagerFragment$LoadIconTask$$ExternalSyntheticLambda0;->f$1:Lcom/winlator/container/FileInfo;

    invoke-static {v0, v1}, Lcom/winlator/ContainerFileManagerFragment$LoadIconTask;->$r8$lambda$zwy44dk7Bm72SAjMyhHs5Om6x34(Lcom/winlator/ContainerFileManagerFragment$LoadIconTask;Lcom/winlator/container/FileInfo;)V

    return-void
.end method
