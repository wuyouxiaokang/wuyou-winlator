.class Lcom/winlator/contentdialog/SoundFontTestDialog$2;
.super Ljava/lang/Object;
.source "SoundFontTestDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

.field final synthetic val$midiHandler:Lcom/winlator/winhandler/MIDIHandler;


# direct methods
.method constructor <init>(Lcom/winlator/contentdialog/SoundFontTestDialog;Lcom/winlator/winhandler/MIDIHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/contentdialog/SoundFontTestDialog;

    .line 41
    iput-object p1, p0, Lcom/winlator/contentdialog/SoundFontTestDialog$2;->this$0:Lcom/winlator/contentdialog/SoundFontTestDialog;

    iput-object p2, p0, Lcom/winlator/contentdialog/SoundFontTestDialog$2;->val$midiHandler:Lcom/winlator/winhandler/MIDIHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 44
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/winlator/contentdialog/SoundFontTestDialog$2;->val$midiHandler:Lcom/winlator/winhandler/MIDIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Lcom/winlator/winhandler/MIDIHandler;->programChange(II)V

    .line 45
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 48
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
