.class public final synthetic Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/winlator/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/winlator/XServerDisplayActivity;

.field public final synthetic f$1:Lcom/winlator/renderer/GLRenderer;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/XServerDisplayActivity;Lcom/winlator/renderer/GLRenderer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda3;->f$0:Lcom/winlator/XServerDisplayActivity;

    iput-object p2, p0, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda3;->f$1:Lcom/winlator/renderer/GLRenderer;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda3;->f$0:Lcom/winlator/XServerDisplayActivity;

    iget-object v1, p0, Lcom/winlator/XServerDisplayActivity$$ExternalSyntheticLambda3;->f$1:Lcom/winlator/renderer/GLRenderer;

    check-cast p1, Ljava/lang/Float;

    invoke-static {v0, v1, p1}, Lcom/winlator/XServerDisplayActivity;->$r8$lambda$falVF1nzeyhTYLvW0Cok7Q9W52w(Lcom/winlator/XServerDisplayActivity;Lcom/winlator/renderer/GLRenderer;Ljava/lang/Float;)V

    return-void
.end method
