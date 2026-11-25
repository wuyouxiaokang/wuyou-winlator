.class public final synthetic Lcom/winlator/container/Container$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>([ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/container/Container$$ExternalSyntheticLambda0;->f$0:[I

    iput-object p2, p0, Lcom/winlator/container/Container$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/container/Container$$ExternalSyntheticLambda0;->f$0:[I

    iget-object v1, p0, Lcom/winlator/container/Container$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/winlator/container/Container;->$r8$lambda$da_2FUWR3be11v4DHLPZMHuzzY0([ILjava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
