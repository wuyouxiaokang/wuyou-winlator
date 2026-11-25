.class public final synthetic Lcom/wuyouwin/winhandler/GamepadHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/winhandler/GamepadHandler;

.field public final synthetic f$1:Ljava/nio/ByteBuffer;

.field public final synthetic f$2:B

.field public final synthetic f$3:Lcom/wuyouwin/inputcontrols/GamepadState;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/winhandler/GamepadHandler;Ljava/nio/ByteBuffer;BLcom/wuyouwin/inputcontrols/GamepadState;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/winhandler/GamepadHandler$$ExternalSyntheticLambda0;->f$0:Lcom/wuyouwin/winhandler/GamepadHandler;

    iput-object p2, p0, Lcom/wuyouwin/winhandler/GamepadHandler$$ExternalSyntheticLambda0;->f$1:Ljava/nio/ByteBuffer;

    iput-byte p3, p0, Lcom/wuyouwin/winhandler/GamepadHandler$$ExternalSyntheticLambda0;->f$2:B

    iput-object p4, p0, Lcom/wuyouwin/winhandler/GamepadHandler$$ExternalSyntheticLambda0;->f$3:Lcom/wuyouwin/inputcontrols/GamepadState;

    iput p5, p0, Lcom/wuyouwin/winhandler/GamepadHandler$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/winhandler/GamepadHandler$$ExternalSyntheticLambda0;->f$0:Lcom/wuyouwin/winhandler/GamepadHandler;

    iget-object v1, p0, Lcom/wuyouwin/winhandler/GamepadHandler$$ExternalSyntheticLambda0;->f$1:Ljava/nio/ByteBuffer;

    iget-byte v2, p0, Lcom/wuyouwin/winhandler/GamepadHandler$$ExternalSyntheticLambda0;->f$2:B

    iget-object v3, p0, Lcom/wuyouwin/winhandler/GamepadHandler$$ExternalSyntheticLambda0;->f$3:Lcom/wuyouwin/inputcontrols/GamepadState;

    iget v4, p0, Lcom/wuyouwin/winhandler/GamepadHandler$$ExternalSyntheticLambda0;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/wuyouwin/winhandler/GamepadHandler;->$r8$lambda$bWmfYegZAJBOP9qVkLp3TCM0f_Y(Lcom/wuyouwin/winhandler/GamepadHandler;Ljava/nio/ByteBuffer;BLcom/wuyouwin/inputcontrols/GamepadState;I)V

    return-void
.end method
