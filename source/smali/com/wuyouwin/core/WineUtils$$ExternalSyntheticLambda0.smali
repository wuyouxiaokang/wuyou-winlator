.class public final synthetic Lcom/wuyouwin/core/WineUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/wuyouwin/core/Callback;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Lcom/wuyouwin/core/Callback;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Lcom/wuyouwin/core/Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/core/WineUtils$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    iput-object p2, p0, Lcom/wuyouwin/core/WineUtils$$ExternalSyntheticLambda0;->f$1:Lcom/wuyouwin/core/Callback;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/core/WineUtils$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    iget-object v1, p0, Lcom/wuyouwin/core/WineUtils$$ExternalSyntheticLambda0;->f$1:Lcom/wuyouwin/core/Callback;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Lcom/wuyouwin/core/WineUtils;->$r8$lambda$L7Wi2nubBBsyU72lshMOBVVMo1U(Ljava/io/File;Lcom/wuyouwin/core/Callback;Ljava/lang/Integer;)V

    return-void
.end method
