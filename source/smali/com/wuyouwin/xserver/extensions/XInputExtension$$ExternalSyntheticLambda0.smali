.class public final synthetic Lcom/wuyouwin/xserver/extensions/XInputExtension$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/wuyouwin/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/xserver/extensions/XInputExtension;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/xserver/extensions/XInputExtension;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/xserver/extensions/XInputExtension$$ExternalSyntheticLambda0;->f$0:Lcom/wuyouwin/xserver/extensions/XInputExtension;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/xserver/extensions/XInputExtension$$ExternalSyntheticLambda0;->f$0:Lcom/wuyouwin/xserver/extensions/XInputExtension;

    check-cast p1, Lcom/wuyouwin/xserver/XClient;

    invoke-static {v0, p1}, Lcom/wuyouwin/xserver/extensions/XInputExtension;->$r8$lambda$k4ZSA9wTqvuiMQOrefXJ6ZdSUpk(Lcom/wuyouwin/xserver/extensions/XInputExtension;Lcom/wuyouwin/xserver/XClient;)V

    return-void
.end method
