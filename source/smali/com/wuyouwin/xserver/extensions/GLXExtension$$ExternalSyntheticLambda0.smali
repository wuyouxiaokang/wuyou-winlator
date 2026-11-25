.class public final synthetic Lcom/wuyouwin/xserver/extensions/GLXExtension$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/wuyouwin/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/xserver/extensions/GLXExtension;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/xserver/extensions/GLXExtension;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/xserver/extensions/GLXExtension$$ExternalSyntheticLambda0;->f$0:Lcom/wuyouwin/xserver/extensions/GLXExtension;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/xserver/extensions/GLXExtension$$ExternalSyntheticLambda0;->f$0:Lcom/wuyouwin/xserver/extensions/GLXExtension;

    check-cast p1, Lcom/wuyouwin/xserver/XClient;

    invoke-static {v0, p1}, Lcom/wuyouwin/xserver/extensions/GLXExtension;->$r8$lambda$mHQvGHM2_mx_y4_x6LGG1-rlbV0(Lcom/wuyouwin/xserver/extensions/GLXExtension;Lcom/wuyouwin/xserver/XClient;)V

    return-void
.end method
