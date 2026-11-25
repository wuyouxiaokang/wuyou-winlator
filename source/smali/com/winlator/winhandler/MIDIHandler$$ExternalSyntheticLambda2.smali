.class public final synthetic Lcom/winlator/winhandler/MIDIHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/midi/MidiManager$OnDeviceOpenedListener;


# instance fields
.field public final synthetic f$0:Lcom/winlator/winhandler/MIDIHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/winhandler/MIDIHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/winhandler/MIDIHandler$$ExternalSyntheticLambda2;->f$0:Lcom/winlator/winhandler/MIDIHandler;

    return-void
.end method


# virtual methods
.method public final onDeviceOpened(Landroid/media/midi/MidiDevice;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/winlator/winhandler/MIDIHandler$$ExternalSyntheticLambda2;->f$0:Lcom/winlator/winhandler/MIDIHandler;

    invoke-static {v0, p1}, Lcom/winlator/winhandler/MIDIHandler;->$r8$lambda$lq_eObUjOl06LOjlFzqgTU32Ol0(Lcom/winlator/winhandler/MIDIHandler;Landroid/media/midi/MidiDevice;)V

    return-void
.end method
