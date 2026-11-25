.class public final synthetic Lcom/winlator/xserver/Keyboard$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/xserver/Keyboard;

.field public final synthetic f$1:Lcom/winlator/xserver/XKeycode;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/xserver/Keyboard;Lcom/winlator/xserver/XKeycode;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/xserver/Keyboard$$ExternalSyntheticLambda0;->f$0:Lcom/winlator/xserver/Keyboard;

    iput-object p2, p0, Lcom/winlator/xserver/Keyboard$$ExternalSyntheticLambda0;->f$1:Lcom/winlator/xserver/XKeycode;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/xserver/Keyboard$$ExternalSyntheticLambda0;->f$0:Lcom/winlator/xserver/Keyboard;

    iget-object v1, p0, Lcom/winlator/xserver/Keyboard$$ExternalSyntheticLambda0;->f$1:Lcom/winlator/xserver/XKeycode;

    invoke-static {v0, v1}, Lcom/winlator/xserver/Keyboard;->$r8$lambda$BizGNC5IajwBigS9oCBeZtOuH5M(Lcom/winlator/xserver/Keyboard;Lcom/winlator/xserver/XKeycode;)V

    return-void
.end method
