.class public final synthetic Lcom/winlator/winhandler/MIDIHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/winhandler/MIDIHandler;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/winhandler/MIDIHandler;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/winhandler/MIDIHandler$$ExternalSyntheticLambda1;->f$0:Lcom/winlator/winhandler/MIDIHandler;

    iput-object p2, p0, Lcom/winlator/winhandler/MIDIHandler$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/winhandler/MIDIHandler$$ExternalSyntheticLambda1;->f$0:Lcom/winlator/winhandler/MIDIHandler;

    iget-object v1, p0, Lcom/winlator/winhandler/MIDIHandler$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/winlator/winhandler/MIDIHandler;->$r8$lambda$XY__exVBuYzPubjZKjVt3IwzECI(Lcom/winlator/winhandler/MIDIHandler;Ljava/lang/Runnable;)V

    return-void
.end method
