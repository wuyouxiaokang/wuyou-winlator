.class public final synthetic Lcom/wuyouwin/core/ProcessHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/InputStream;


# direct methods
.method public synthetic constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/core/ProcessHelper$$ExternalSyntheticLambda1;->f$0:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/core/ProcessHelper$$ExternalSyntheticLambda1;->f$0:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/wuyouwin/core/ProcessHelper;->$r8$lambda$5Z46QKzM08ejExfPIOoQLnh9h_A(Ljava/io/InputStream;)V

    return-void
.end method
