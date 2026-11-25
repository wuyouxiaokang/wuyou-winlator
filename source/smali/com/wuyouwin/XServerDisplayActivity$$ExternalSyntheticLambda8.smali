.class public final synthetic Lcom/wuyouwin/XServerDisplayActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/wuyouwin/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/renderer/GLRenderer;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/renderer/GLRenderer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/XServerDisplayActivity$$ExternalSyntheticLambda8;->f$0:Lcom/wuyouwin/renderer/GLRenderer;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/XServerDisplayActivity$$ExternalSyntheticLambda8;->f$0:Lcom/wuyouwin/renderer/GLRenderer;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/wuyouwin/renderer/GLRenderer;->setScreenOffsetYRelativeToCursor(Z)V

    return-void
.end method
