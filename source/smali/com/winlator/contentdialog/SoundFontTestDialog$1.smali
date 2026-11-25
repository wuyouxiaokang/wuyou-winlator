.class Lcom/winlator/contentdialog/SoundFontTestDialog$1;
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

.field final synthetic val$channel:[I

.field final synthetic val$midiHandler:Lcom/winlator/winhandler/MIDIHandler;

.field final synthetic val$sInstrument:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/winlator/contentdialog/SoundFontTestDialog;[ILcom/winlator/winhandler/MIDIHandler;Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/contentdialog/SoundFontTestDialog;

    .line 29
    iput-object p1, p0, Lcom/winlator/contentdialog/SoundFontTestDialog$1;->this$0:Lcom/winlator/contentdialog/SoundFontTestDialog;

    iput-object p2, p0, Lcom/winlator/contentdialog/SoundFontTestDialog$1;->val$channel:[I

    iput-object p3, p0, Lcom/winlator/contentdialog/SoundFontTestDialog$1;->val$midiHandler:Lcom/winlator/winhandler/MIDIHandler;

    iput-object p4, p0, Lcom/winlator/contentdialog/SoundFontTestDialog$1;->val$sInstrument:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 32
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/winlator/contentdialog/SoundFontTestDialog$1;->val$channel:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v1, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    aput v1, v0, v2

    .line 33
    iget-object v0, p0, Lcom/winlator/contentdialog/SoundFontTestDialog$1;->val$midiHandler:Lcom/winlator/winhandler/MIDIHandler;

    iget-object v1, p0, Lcom/winlator/contentdialog/SoundFontTestDialog$1;->val$channel:[I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/winlator/contentdialog/SoundFontTestDialog$1;->val$sInstrument:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/winlator/winhandler/MIDIHandler;->programChange(II)V

    .line 34
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 37
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
