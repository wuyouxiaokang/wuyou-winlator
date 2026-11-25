.class public final synthetic Lcom/winlator/xserver/extensions/XInputExtension$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/winlator/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/winlator/xserver/extensions/XInputExtension;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/xserver/extensions/XInputExtension;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/xserver/extensions/XInputExtension$$ExternalSyntheticLambda0;->f$0:Lcom/winlator/xserver/extensions/XInputExtension;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/winlator/xserver/extensions/XInputExtension$$ExternalSyntheticLambda0;->f$0:Lcom/winlator/xserver/extensions/XInputExtension;

    check-cast p1, Lcom/winlator/xserver/XClient;

    invoke-static {v0, p1}, Lcom/winlator/xserver/extensions/XInputExtension;->$r8$lambda$k4ZSA9wTqvuiMQOrefXJ6ZdSUpk(Lcom/winlator/xserver/extensions/XInputExtension;Lcom/winlator/xserver/XClient;)V

    return-void
.end method
