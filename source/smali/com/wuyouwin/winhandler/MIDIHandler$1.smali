.class Lcom/wuyouwin/winhandler/MIDIHandler$1;
.super Landroid/media/midi/MidiReceiver;
.source "MIDIHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyouwin/winhandler/MIDIHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuyouwin/winhandler/MIDIHandler;


# direct methods
.method constructor <init>(Lcom/wuyouwin/winhandler/MIDIHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wuyouwin/winhandler/MIDIHandler;

    .line 45
    iput-object p1, p0, Lcom/wuyouwin/winhandler/MIDIHandler$1;->this$0:Lcom/wuyouwin/winhandler/MIDIHandler;

    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onSend([BIIJ)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J

    .line 48
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lcom/wuyouwin/winhandler/MIDIHandler$1;->this$0:Lcom/wuyouwin/winhandler/MIDIHandler;

    add-int/lit8 v2, v0, 0x0

    aget-byte v2, p1, v2

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p1, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/wuyouwin/winhandler/MIDIHandler;->sendShortMsg(BBBB)Z

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 49
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
