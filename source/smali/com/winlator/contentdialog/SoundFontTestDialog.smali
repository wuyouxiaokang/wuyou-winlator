.class public Lcom/winlator/contentdialog/SoundFontTestDialog;
.super Lcom/winlator/contentdialog/ContentDialog;
.source "SoundFontTestDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "soundfont"    # Ljava/lang/String;

    .line 16
    const v0, 0x7f0c00a4

    invoke-direct {p0, p1, v0}, Lcom/winlator/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 17
    const v0, 0x7f0800b8

    invoke-virtual {p0, v0}, Lcom/winlator/contentdialog/ContentDialog;->setIcon(I)V

    .line 18
    invoke-virtual {p0, p2}, Lcom/winlator/contentdialog/ContentDialog;->setTitle(Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/winlator/core/GeneralComponents$Type;->SOUNDFONT:Lcom/winlator/core/GeneralComponents$Type;

    invoke-static {v0, p1, p2}, Lcom/winlator/core/GeneralComponents;->getDefinitivePath(Lcom/winlator/core/GeneralComponents$Type;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "soundfontPath":Ljava/lang/String;
    new-instance v1, Lcom/winlator/winhandler/MIDIHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/winlator/winhandler/MIDIHandler;-><init>(Lcom/winlator/winhandler/WinHandler;)V

    .line 23
    .local v1, "midiHandler":Lcom/winlator/winhandler/MIDIHandler;
    invoke-virtual {v1}, Lcom/winlator/winhandler/MIDIHandler;->init()Z

    .line 24
    invoke-virtual {v1, v0}, Lcom/winlator/winhandler/MIDIHandler;->loadSoundFont(Ljava/lang/String;)V

    .line 26
    const/4 v2, 0x0

    filled-new-array {v2}, [I

    move-result-object v2

    .line 27
    .local v2, "channel":[I
    const v3, 0x7f0900c6

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 28
    .local v3, "sInstrument":Landroid/widget/Spinner;
    const v4, 0x7f0900b5

    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 29
    .local v4, "sChannel":Landroid/widget/Spinner;
    new-instance v5, Lcom/winlator/contentdialog/SoundFontTestDialog$1;

    invoke-direct {v5, p0, v2, v1, v3}, Lcom/winlator/contentdialog/SoundFontTestDialog$1;-><init>(Lcom/winlator/contentdialog/SoundFontTestDialog;[ILcom/winlator/winhandler/MIDIHandler;Landroid/widget/Spinner;)V

    invoke-virtual {v4, v5}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 40
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x1090009

    invoke-static {}, Lcom/winlator/winhandler/MIDIHandler;->getInstrumentNames()[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p1, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 41
    new-instance v5, Lcom/winlator/contentdialog/SoundFontTestDialog$2;

    invoke-direct {v5, p0, v1}, Lcom/winlator/contentdialog/SoundFontTestDialog$2;-><init>(Lcom/winlator/contentdialog/SoundFontTestDialog;Lcom/winlator/winhandler/MIDIHandler;)V

    invoke-virtual {v3, v5}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 51
    const v5, 0x7f0900e0

    invoke-virtual {p0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/winlator/widget/SimplePianoKeyboard;

    .line 52
    .local v5, "pianoKeyboard":Lcom/winlator/widget/SimplePianoKeyboard;
    new-instance v6, Lcom/winlator/contentdialog/SoundFontTestDialog$3;

    invoke-direct {v6, p0, v1, v2}, Lcom/winlator/contentdialog/SoundFontTestDialog$3;-><init>(Lcom/winlator/contentdialog/SoundFontTestDialog;Lcom/winlator/winhandler/MIDIHandler;[I)V

    invoke-virtual {v5, v6}, Lcom/winlator/widget/SimplePianoKeyboard;->setOnKeyListener(Lcom/winlator/widget/SimplePianoKeyboard$OnKeyListener;)V

    .line 64
    const v6, 0x7f09006a

    invoke-virtual {p0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 65
    return-void
.end method
