.class public final synthetic Lcom/wuyouwin/winhandler/MIDIHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/wuyouwin/winhandler/MIDIHandler;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/nio/ByteBuffer;


# direct methods
.method public synthetic constructor <init>(Lcom/wuyouwin/winhandler/MIDIHandler;ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wuyouwin/winhandler/MIDIHandler$$ExternalSyntheticLambda0;->f$0:Lcom/wuyouwin/winhandler/MIDIHandler;

    iput p2, p0, Lcom/wuyouwin/winhandler/MIDIHandler$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/wuyouwin/winhandler/MIDIHandler$$ExternalSyntheticLambda0;->f$2:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/wuyouwin/winhandler/MIDIHandler$$ExternalSyntheticLambda0;->f$0:Lcom/wuyouwin/winhandler/MIDIHandler;

    iget v1, p0, Lcom/wuyouwin/winhandler/MIDIHandler$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/wuyouwin/winhandler/MIDIHandler$$ExternalSyntheticLambda0;->f$2:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2}, Lcom/wuyouwin/winhandler/MIDIHandler;->$r8$lambda$wwLMZiOLubwJqZbVUPTn4KO05E4(Lcom/wuyouwin/winhandler/MIDIHandler;ILjava/nio/ByteBuffer;)V

    return-void
.end method
