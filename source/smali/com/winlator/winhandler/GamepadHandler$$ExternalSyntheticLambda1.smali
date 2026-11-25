.class public final synthetic Lcom/winlator/winhandler/GamepadHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/winhandler/GamepadHandler;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/winhandler/GamepadHandler;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/winhandler/GamepadHandler$$ExternalSyntheticLambda1;->f$0:Lcom/winlator/winhandler/GamepadHandler;

    iput p2, p0, Lcom/winlator/winhandler/GamepadHandler$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/winhandler/GamepadHandler$$ExternalSyntheticLambda1;->f$0:Lcom/winlator/winhandler/GamepadHandler;

    iget v1, p0, Lcom/winlator/winhandler/GamepadHandler$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1}, Lcom/winlator/winhandler/GamepadHandler;->$r8$lambda$8wtHW09uRmCedj6xyBSpMZyTyZs(Lcom/winlator/winhandler/GamepadHandler;I)V

    return-void
.end method
