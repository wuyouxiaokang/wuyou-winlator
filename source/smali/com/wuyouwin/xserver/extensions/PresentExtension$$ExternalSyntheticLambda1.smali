.class public final synthetic Lcom/wuyouwin/xserver/extensions/PresentExtension$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/wuyouwin/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/xserver/extensions/PresentExtension;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/xserver/extensions/PresentExtension;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension$$ExternalSyntheticLambda1;->f$0:Lcom/wuyouwin/xserver/extensions/PresentExtension;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/xserver/extensions/PresentExtension$$ExternalSyntheticLambda1;->f$0:Lcom/wuyouwin/xserver/extensions/PresentExtension;

    check-cast p1, Lcom/wuyouwin/xserver/XClient;

    invoke-static {v0, p1}, Lcom/wuyouwin/xserver/extensions/PresentExtension;->$r8$lambda$Q3imovMdIYKYkB-Jw2u5OY_82dw(Lcom/wuyouwin/xserver/extensions/PresentExtension;Lcom/wuyouwin/xserver/XClient;)V

    return-void
.end method
