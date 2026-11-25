.class Lcom/winlator/contentdialog/SoundFontTestDialog$3;
.super Ljava/lang/Object;
.source "SoundFontTestDialog.java"

# interfaces
.implements Lcom/winlator/widget/SimplePianoKeyboard$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/contentdialog/SoundFontTestDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/contentdialog/SoundFontTestDialog;

.field final synthetic val$channel:[I

.field final synthetic val$midiHandler:Lcom/winlator/winhandler/MIDIHandler;


# direct methods
.method constructor <init>(Lcom/winlator/contentdialog/SoundFontTestDialog;Lcom/winlator/winhandler/MIDIHandler;[I)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/contentdialog/SoundFontTestDialog;

    .line 52
    iput-object p1, p0, Lcom/winlator/contentdialog/SoundFontTestDialog$3;->this$0:Lcom/winlator/contentdialog/SoundFontTestDialog;

    iput-object p2, p0, Lcom/winlator/contentdialog/SoundFontTestDialog$3;->val$midiHandler:Lcom/winlator/winhandler/MIDIHandler;

    iput-object p3, p0, Lcom/winlator/contentdialog/SoundFontTestDialog$3;->val$channel:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(I)V
    .locals 4
    .param p1, "index"    # I

    .line 55
    iget-object v0, p0, Lcom/winlator/contentdialog/SoundFontTestDialog$3;->val$midiHandler:Lcom/winlator/winhandler/MIDIHandler;

    iget-object v1, p0, Lcom/winlator/contentdialog/SoundFontTestDialog$3;->val$channel:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/lit8 v2, p1, 0x3c

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/winhandler/MIDIHandler;->noteOn(III)V

    .line 56
    return-void
.end method

.method public onKeyUp(I)V
    .locals 3
    .param p1, "index"    # I

    .line 60
    iget-object v0, p0, Lcom/winlator/contentdialog/SoundFontTestDialog$3;->val$midiHandler:Lcom/winlator/winhandler/MIDIHandler;

    iget-object v1, p0, Lcom/winlator/contentdialog/SoundFontTestDialog$3;->val$channel:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/lit8 v2, p1, 0x3c

    invoke-virtual {v0, v1, v2}, Lcom/winlator/winhandler/MIDIHandler;->noteOff(II)V

    .line 61
    return-void
.end method
