.class public Lcom/winlator/winhandler/MIDIHandler;
.super Ljava/lang/Object;
.source "MIDIHandler.java"


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private final midiInClients:Ljava/util/List;

.field private nativePtr:J

.field private opened:Z

.field private outputPort:Landroid/media/midi/MidiOutputPort;

.field private final outputPortReceiver:Landroid/media/midi/MidiReceiver;

.field private final receiveData:Ljava/nio/ByteBuffer;

.field private final receivePacket:Ljava/net/DatagramPacket;

.field private socket:Ljava/net/DatagramSocket;

.field private final winHandler:Lcom/winlator/winhandler/WinHandler;


# direct methods
.method public static synthetic $r8$lambda$XY__exVBuYzPubjZKjVt3IwzECI(Lcom/winlator/winhandler/MIDIHandler;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/winhandler/MIDIHandler;->lambda$open$2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lq_eObUjOl06LOjlFzqgTU32Ol0(Lcom/winlator/winhandler/MIDIHandler;Landroid/media/midi/MidiDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/winhandler/MIDIHandler;->lambda$outputPortConnect$0(Landroid/media/midi/MidiDevice;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wwLMZiOLubwJqZbVUPTn4KO05E4(Lcom/winlator/winhandler/MIDIHandler;ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/winlator/winhandler/MIDIHandler;->lambda$sendShortMsg$1(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-string v0, "midihandler"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/winlator/winhandler/WinHandler;)V
    .locals 3
    .param p1, "winHandler"    # Lcom/winlator/winhandler/WinHandler;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/winlator/winhandler/MIDIHandler;->receiveData:Ljava/nio/ByteBuffer;

    .line 37
    new-instance v1, Ljava/net/DatagramPacket;

    iget-object v2, p0, Lcom/winlator/winhandler/MIDIHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v1, p0, Lcom/winlator/winhandler/MIDIHandler;->receivePacket:Ljava/net/DatagramPacket;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/winhandler/MIDIHandler;->opened:Z

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/winlator/winhandler/MIDIHandler;->midiInClients:Ljava/util/List;

    .line 45
    new-instance v0, Lcom/winlator/winhandler/MIDIHandler$1;

    invoke-direct {v0, p0}, Lcom/winlator/winhandler/MIDIHandler$1;-><init>(Lcom/winlator/winhandler/MIDIHandler;)V

    iput-object v0, p0, Lcom/winlator/winhandler/MIDIHandler;->outputPortReceiver:Landroid/media/midi/MidiReceiver;

    .line 53
    iput-object p1, p0, Lcom/winlator/winhandler/MIDIHandler;->winHandler:Lcom/winlator/winhandler/WinHandler;

    .line 54
    return-void
.end method

.method private native controlChange(JIII)V
.end method

.method private native destroy(J)V
.end method

.method public static getInstrumentNames()[Ljava/lang/String;
    .locals 128

    .line 237
    const-string v126, "Applause"

    const-string v127, "Gunshot"

    const-string v0, "Acoustic Piano"

    const-string v1, "Bright Acoustic Piano"

    const-string v2, "Electric Grand Piano"

    const-string v3, "Honky-tonk Piano"

    const-string v4, "Electric Piano 1"

    const-string v5, "Electric Piano 2"

    const-string v6, "Harpsichord"

    const-string v7, "Clavi"

    const-string v8, "Celesta"

    const-string v9, "Glockenspiel"

    const-string v10, "Music Box"

    const-string v11, "Vibraphone"

    const-string v12, "Marimba"

    const-string v13, "Xylophone"

    const-string v14, "Tubular Bells"

    const-string v15, "Dulcimer"

    const-string v16, "Drawbar Organ"

    const-string v17, "Percussive Organ"

    const-string v18, "Rock Organ"

    const-string v19, "Church Organ"

    const-string v20, "Reed Organ"

    const-string v21, "Accordion"

    const-string v22, "Harmonica"

    const-string v23, "Tango Accordion"

    const-string v24, "Acoustic Guitar (nylon)"

    const-string v25, "Acoustic Guitar (steel)"

    const-string v26, "Electric Guitar (jazz)"

    const-string v27, "Electric Guitar (clean)"

    const-string v28, "Electric Guitar (muted)"

    const-string v29, "Overdriven Guitar"

    const-string v30, "Distortion Guitar"

    const-string v31, "Guitar harmonics"

    const-string v32, "Acoustic Bass"

    const-string v33, "Electric Bass (finger)"

    const-string v34, "Electric Bass (pick)"

    const-string v35, "Fretless Bass"

    const-string v36, "Slap Bass 1"

    const-string v37, "Slap Bass 2"

    const-string v38, "Synth Bass 1"

    const-string v39, "Synth Bass 2"

    const-string v40, "Violin"

    const-string v41, "Viola"

    const-string v42, "Cello"

    const-string v43, "Contrabass"

    const-string v44, "Tremolo Strings"

    const-string v45, "Pizzicato Strings"

    const-string v46, "Orchestral Harp"

    const-string v47, "Timpani"

    const-string v48, "String Ensemble 1"

    const-string v49, "String Ensemble 2"

    const-string v50, "SynthStrings 1"

    const-string v51, "SynthStrings 2"

    const-string v52, "Choir Aahs"

    const-string v53, "Voice Oohs"

    const-string v54, "Synth Voice"

    const-string v55, "Orchestra Hit"

    const-string v56, "Trumpet"

    const-string v57, "Trombone"

    const-string v58, "Tuba"

    const-string v59, "Muted Trumpet"

    const-string v60, "French Horn"

    const-string v61, "Brass Section"

    const-string v62, "SynthBrass 1"

    const-string v63, "SynthBrass 2"

    const-string v64, "Soprano Sax"

    const-string v65, "Alto Sax"

    const-string v66, "Tenor Sax"

    const-string v67, "Baritone Sax"

    const-string v68, "Oboe"

    const-string v69, "English Horn"

    const-string v70, "Bassoon"

    const-string v71, "Clarinet"

    const-string v72, "Piccolo"

    const-string v73, "Flute"

    const-string v74, "Recorder"

    const-string v75, "Pan Flute"

    const-string v76, "Blown Bottle"

    const-string v77, "Shakuhachi"

    const-string v78, "Whistle"

    const-string v79, "Ocarina"

    const-string v80, "Lead 1 (square)"

    const-string v81, "Lead 2 (sawtooth)"

    const-string v82, "Lead 3 (calliope)"

    const-string v83, "Lead 4 (chiff)"

    const-string v84, "Lead 5 (charang)"

    const-string v85, "Lead 6 (voice)"

    const-string v86, "Lead 7 (fifths)"

    const-string v87, "Lead 8 (bass + lead)"

    const-string v88, "Pad 1 (new age)"

    const-string v89, "Pad 2 (warm)"

    const-string v90, "Pad 3 (polysynth)"

    const-string v91, "Pad 4 (choir)"

    const-string v92, "Pad 5 (bowed)"

    const-string v93, "Pad 6 (metallic)"

    const-string v94, "Pad 7 (halo)"

    const-string v95, "Pad 8 (sweep)"

    const-string v96, "FX 1 (rain)"

    const-string v97, "FX 2 (soundtrack)"

    const-string v98, "FX 3 (crystal)"

    const-string v99, "FX 4 (atmosphere)"

    const-string v100, "FX 5 (brightness)"

    const-string v101, "FX 6 (goblins)"

    const-string v102, "FX 7 (echoes)"

    const-string v103, "FX 8 (sci-fi)"

    const-string v104, "Sitar"

    const-string v105, "Banjo"

    const-string v106, "Shamisen"

    const-string v107, "Koto"

    const-string v108, "Kalimba"

    const-string v109, "Bag pipe"

    const-string v110, "Fiddle"

    const-string v111, "Shanai"

    const-string v112, "Tinkle Bell"

    const-string v113, "Agogo"

    const-string v114, "Steel Drums"

    const-string v115, "Woodblock"

    const-string v116, "Taiko Drum"

    const-string v117, "Melodic Tom"

    const-string v118, "Synth Drum"

    const-string v119, "Reverse Cymbal"

    const-string v120, "Guitar Fret Noise"

    const-string v121, "Breath Noise"

    const-string v122, "Seashore"

    const-string v123, "Bird Tweet"

    const-string v124, "Telephone Ring"

    const-string v125, "Helicopter"

    filled-new-array/range {v0 .. v127}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNotes()[Ljava/lang/String;
    .locals 13

    .line 241
    const/4 v0, 0x6

    .line 242
    .local v0, "octaves":B
    const-string v11, "A#"

    const-string v12, "B"

    const-string v1, "C"

    const-string v2, "C#"

    const-string v3, "D"

    const-string v4, "D#"

    const-string v5, "E"

    const-string v6, "F"

    const-string v7, "F#"

    const-string v8, "G"

    const-string v9, "G#"

    const-string v10, "A"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "symbols":[Ljava/lang/String;
    array-length v2, v1

    mul-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 245
    .local v2, "notes":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 246
    .local v3, "index":I
    const/4 v4, 0x1

    .local v4, "i":B
    :goto_0
    if-gt v4, v0, :cond_1

    .line 247
    array-length v5, v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v1, v6

    .local v7, "symbol":Ljava/lang/String;
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "index":I
    .local v8, "index":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v3

    .end local v7    # "symbol":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move v3, v8

    goto :goto_1

    .line 246
    .end local v8    # "index":I
    .restart local v3    # "index":I
    :cond_0
    add-int/lit8 v5, v4, 0x1

    int-to-byte v4, v5

    goto :goto_0

    :cond_1
    nop

    .line 250
    .end local v4    # "i":B
    return-object v2
.end method

.method private native keyPressure(JIII)V
.end method

.method private synthetic lambda$open$2(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 128
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lcom/winlator/winhandler/MIDIHandler;->socket:Ljava/net/DatagramSocket;

    .line 129
    iget-object v0, p0, Lcom/winlator/winhandler/MIDIHandler;->socket:Ljava/net/DatagramSocket;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 130
    iget-object v0, p0, Lcom/winlator/winhandler/MIDIHandler;->socket:Ljava/net/DatagramSocket;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 131
    iget-object v0, p0, Lcom/winlator/winhandler/MIDIHandler;->socket:Ljava/net/DatagramSocket;

    new-instance v3, Ljava/net/InetSocketAddress;

    const/16 v4, 0x1f0e

    invoke-direct {v3, v1, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v3}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 133
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    goto :goto_3

    .line 135
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/winlator/winhandler/MIDIHandler;->opened:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    .line 137
    :try_start_1
    iget-object v0, p0, Lcom/winlator/winhandler/MIDIHandler;->socket:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lcom/winlator/winhandler/MIDIHandler;->receivePacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 139
    iget-object v0, p0, Lcom/winlator/winhandler/MIDIHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 140
    iget-object v0, p0, Lcom/winlator/winhandler/MIDIHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 141
    .local v0, "isShortData":Z
    :goto_1
    iget-object v1, p0, Lcom/winlator/winhandler/MIDIHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iget-object v3, p0, Lcom/winlator/winhandler/MIDIHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iget-object v4, p0, Lcom/winlator/winhandler/MIDIHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-direct {p0, v1, v3, v4}, Lcom/winlator/winhandler/MIDIHandler;->processData(BBB)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    .end local v0    # "isShortData":Z
    :goto_2
    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    .line 146
    :cond_2
    :goto_3
    nop

    .line 147
    return-void
.end method

.method private synthetic lambda$outputPortConnect$0(Landroid/media/midi/MidiDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/media/midi/MidiDevice;

    .line 72
    iget-object v0, p0, Lcom/winlator/winhandler/MIDIHandler;->outputPortReceiver:Landroid/media/midi/MidiReceiver;

    monitor-enter v0

    .line 73
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/winlator/winhandler/MIDIHandler;->outputPort:Landroid/media/midi/MidiOutputPort;

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    .line 74
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/media/midi/MidiDevice;->openOutputPort(I)Landroid/media/midi/MidiOutputPort;

    move-result-object v1

    iput-object v1, p0, Lcom/winlator/winhandler/MIDIHandler;->outputPort:Landroid/media/midi/MidiOutputPort;

    .line 75
    iget-object v1, p0, Lcom/winlator/winhandler/MIDIHandler;->outputPort:Landroid/media/midi/MidiOutputPort;

    iget-object v2, p0, Lcom/winlator/winhandler/MIDIHandler;->outputPortReceiver:Landroid/media/midi/MidiReceiver;

    invoke-virtual {v1, v2}, Landroid/media/midi/MidiSender;->connect(Landroid/media/midi/MidiReceiver;)V

    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 73
    :goto_0
    monitor-exit v0

    return-void

    .line 76
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$sendShortMsg$1(ILjava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "port"    # I
    .param p2, "sendData"    # Ljava/nio/ByteBuffer;

    .line 115
    iget-object v0, p0, Lcom/winlator/winhandler/MIDIHandler;->winHandler:Lcom/winlator/winhandler/WinHandler;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/winlator/winhandler/WinHandler;->sendPacket(I[B)Z

    return-void
.end method

.method private native loadSoundFont(JLjava/lang/String;)V
.end method

.method private native nativeAllocate()J
.end method

.method private native noteOff(JII)V
.end method

.method private native noteOn(JIII)V
.end method

.method public static parseNoteNumber(Ljava/lang/String;)I
    .locals 9
    .param p0, "note"    # Ljava/lang/String;

    .line 254
    const-string v0, "^([A-Za-z#]+)([0-9]{1})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 255
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 257
    .local v1, "matcher":Ljava/util/regex/Matcher;
    const/4 v2, 0x1

    .line 258
    .local v2, "octave":I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 259
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 260
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 263
    :cond_0
    add-int/lit8 v3, v2, -0x1

    const/16 v6, 0xc

    mul-int/2addr v3, v6

    .line 264
    .local v3, "offset":I
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, -0x1

    sparse-switch v7, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v4, "Gb"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "Eb"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x5

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "G#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v5, "Db"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    :sswitch_4
    const-string v4, "F#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x8

    goto/16 :goto_1

    :sswitch_5
    const-string v4, "Bb"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xf

    goto/16 :goto_1

    :sswitch_6
    const-string v4, "D#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto/16 :goto_1

    :sswitch_7
    const-string v4, "Ab"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v6

    goto/16 :goto_1

    :sswitch_8
    const-string v4, "C#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_1

    :sswitch_9
    const-string v4, "A#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xe

    goto :goto_1

    :sswitch_a
    const-string v4, "G"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xa

    goto :goto_1

    :sswitch_b
    const-string v4, "F"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x7

    goto :goto_1

    :sswitch_c
    const-string v4, "E"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_d
    const-string v4, "D"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_e
    const-string v4, "C"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_f
    const-string v4, "B"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    goto :goto_1

    :sswitch_10
    const-string v4, "A"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xd

    goto :goto_1

    :goto_0
    move v4, v8

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 295
    return v8

    .line 293
    :pswitch_0
    add-int/lit8 v4, v3, 0xb

    return v4

    .line 291
    :pswitch_1
    add-int/lit8 v4, v3, 0xa

    return v4

    .line 288
    :pswitch_2
    add-int/lit8 v4, v3, 0x9

    return v4

    .line 286
    :pswitch_3
    add-int/lit8 v4, v3, 0x8

    return v4

    .line 283
    :pswitch_4
    add-int/lit8 v4, v3, 0x7

    return v4

    .line 281
    :pswitch_5
    add-int/lit8 v4, v3, 0x6

    return v4

    .line 278
    :pswitch_6
    add-int/lit8 v4, v3, 0x5

    return v4

    .line 276
    :pswitch_7
    add-int/lit8 v4, v3, 0x4

    return v4

    .line 274
    :pswitch_8
    add-int/lit8 v4, v3, 0x3

    return v4

    .line 271
    :pswitch_9
    add-int/lit8 v4, v3, 0x2

    return v4

    .line 269
    :pswitch_a
    add-int/lit8 v4, v3, 0x1

    return v4

    .line 266
    :pswitch_b
    add-int/lit8 v4, v3, 0x0

    return v4

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_10
        0x42 -> :sswitch_f
        0x43 -> :sswitch_e
        0x44 -> :sswitch_d
        0x45 -> :sswitch_c
        0x46 -> :sswitch_b
        0x47 -> :sswitch_a
        0x802 -> :sswitch_9
        0x840 -> :sswitch_8
        0x841 -> :sswitch_7
        0x85f -> :sswitch_6
        0x860 -> :sswitch_5
        0x89d -> :sswitch_4
        0x89e -> :sswitch_3
        0x8bc -> :sswitch_2
        0x8bd -> :sswitch_1
        0x8fb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private native pitchBend(JII)V
.end method

.method private processData(BBB)V
    .locals 8
    .param p1, "status"    # B
    .param p2, "param1"    # B
    .param p3, "param2"    # B

    .line 170
    and-int/lit16 v0, p1, 0xf0

    .line 171
    .local v0, "command":I
    and-int/lit8 v7, p1, 0xf

    .line 173
    .local v7, "channel":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 190
    :sswitch_0
    iget-wide v1, p0, Lcom/winlator/winhandler/MIDIHandler;->nativePtr:J

    shl-int/lit8 v3, p3, 0x7

    add-int/2addr v3, p2

    invoke-direct {p0, v1, v2, v7, v3}, Lcom/winlator/winhandler/MIDIHandler;->pitchBend(JII)V

    goto :goto_0

    .line 187
    :sswitch_1
    iget-wide v1, p0, Lcom/winlator/winhandler/MIDIHandler;->nativePtr:J

    invoke-direct {p0, v1, v2, v7, p2}, Lcom/winlator/winhandler/MIDIHandler;->programChange(JII)V

    .line 188
    goto :goto_0

    .line 184
    :sswitch_2
    iget-wide v2, p0, Lcom/winlator/winhandler/MIDIHandler;->nativePtr:J

    move-object v1, p0

    move v4, v7

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/winlator/winhandler/MIDIHandler;->controlChange(JIII)V

    .line 185
    goto :goto_0

    .line 181
    :sswitch_3
    iget-wide v2, p0, Lcom/winlator/winhandler/MIDIHandler;->nativePtr:J

    move-object v1, p0

    move v4, v7

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/winlator/winhandler/MIDIHandler;->keyPressure(JIII)V

    .line 182
    goto :goto_0

    .line 178
    :sswitch_4
    iget-wide v2, p0, Lcom/winlator/winhandler/MIDIHandler;->nativePtr:J

    move-object v1, p0

    move v4, v7

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/winlator/winhandler/MIDIHandler;->noteOn(JIII)V

    .line 179
    goto :goto_0

    .line 175
    :sswitch_5
    iget-wide v1, p0, Lcom/winlator/winhandler/MIDIHandler;->nativePtr:J

    invoke-direct {p0, v1, v2, v7, p2}, Lcom/winlator/winhandler/MIDIHandler;->noteOff(JII)V

    .line 176
    nop

    .line 193
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_5
        0x90 -> :sswitch_4
        0xa0 -> :sswitch_3
        0xb0 -> :sswitch_2
        0xc0 -> :sswitch_1
        0xe0 -> :sswitch_0
    .end sparse-switch
.end method

.method private native programChange(JII)V
.end method


# virtual methods
.method public addClient(I)V
    .locals 2
    .param p1, "port"    # I

    .line 104
    iget-object v0, p0, Lcom/winlator/winhandler/MIDIHandler;->midiInClients:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/winlator/winhandler/MIDIHandler;->midiInClients:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    return-void
.end method

.method public close()V
    .locals 5

    .line 151
    iget-object v0, p0, Lcom/winlator/winhandler/MIDIHandler;->midiInClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 152
    iget-boolean v0, p0, Lcom/winlator/winhandler/MIDIHandler;->opened:Z

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/winhandler/MIDIHandler;->opened:Z

    .line 155
    iget-object v0, p0, Lcom/winlator/winhandler/MIDIHandler;->executorService:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/winlator/winhandler/MIDIHandler;->executorService:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-interface {v0, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 160
    :goto_1
    iput-object v1, p0, Lcom/winlator/winhandler/MIDIHandler;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/winlator/winhandler/MIDIHandler;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/winlator/winhandler/MIDIHandler;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 165
    iput-object v1, p0, Lcom/winlator/winhandler/MIDIHandler;->socket:Ljava/net/DatagramSocket;

    .line 167
    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 4

    .line 212
    iget-wide v0, p0, Lcom/winlator/winhandler/MIDIHandler;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 213
    iget-wide v0, p0, Lcom/winlator/winhandler/MIDIHandler;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lcom/winlator/winhandler/MIDIHandler;->destroy(J)V

    .line 214
    iput-wide v2, p0, Lcom/winlator/winhandler/MIDIHandler;->nativePtr:J

    .line 216
    :cond_0
    return-void
.end method

.method public init()Z
    .locals 6

    .line 94
    iget-wide v0, p0, Lcom/winlator/winhandler/MIDIHandler;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/winlator/winhandler/MIDIHandler;->nativeAllocate()J

    move-result-wide v4

    .line 96
    .local v4, "nativePtr":J
    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 97
    iput-wide v4, p0, Lcom/winlator/winhandler/MIDIHandler;->nativePtr:J

    .line 98
    return v1

    .line 100
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public loadSoundFont(Ljava/lang/String;)V
    .locals 2
    .param p1, "soundfontPath"    # Ljava/lang/String;

    .line 204
    iget-wide v0, p0, Lcom/winlator/winhandler/MIDIHandler;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/winlator/winhandler/MIDIHandler;->loadSoundFont(JLjava/lang/String;)V

    .line 205
    return-void
.end method

.method public noteOff(II)V
    .locals 2
    .param p1, "channel"    # I
    .param p2, "note"    # I

    .line 200
    iget-wide v0, p0, Lcom/winlator/winhandler/MIDIHandler;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/winlator/winhandler/MIDIHandler;->noteOff(JII)V

    .line 201
    return-void
.end method

.method public noteOn(III)V
    .locals 6
    .param p1, "channel"    # I
    .param p2, "note"    # I
    .param p3, "velocity"    # I

    .line 196
    iget-wide v1, p0, Lcom/winlator/winhandler/MIDIHandler;->nativePtr:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/winlator/winhandler/MIDIHandler;->noteOn(JIII)V

    .line 197
    return-void
.end method

.method public open(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 122
    invoke-virtual {p0}, Lcom/winlator/winhandler/MIDIHandler;->close()V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/winhandler/MIDIHandler;->opened:Z

    .line 125
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/winhandler/MIDIHandler;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 126
    iget-object v0, p0, Lcom/winlator/winhandler/MIDIHandler;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/winlator/winhandler/MIDIHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/winlator/winhandler/MIDIHandler$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/winhandler/MIDIHandler;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method public outputPortConnect()V
    .locals 9

    .line 61
    iget-object v0, p0, Lcom/winlator/winhandler/MIDIHandler;->winHandler:Lcom/winlator/winhandler/WinHandler;

    iget-object v0, v0, Lcom/winlator/winhandler/WinHandler;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-virtual {v0}, Lcom/winlator/XServerDisplayActivity;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "midi_input_device"

    const-string v2, "auto"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "selectedDevice":Ljava/lang/String;
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/winlator/winhandler/MIDIHandler;->winHandler:Lcom/winlator/winhandler/WinHandler;

    iget-object v1, v1, Lcom/winlator/winhandler/WinHandler;->activity:Lcom/winlator/XServerDisplayActivity;

    const-string v3, "midi"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/midi/MidiManager;

    .line 65
    .local v1, "mm":Landroid/media/midi/MidiManager;
    invoke-virtual {v1}, Landroid/media/midi/MidiManager;->getDevices()[Landroid/media/midi/MidiDeviceInfo;

    move-result-object v3

    .line 67
    .local v3, "infos":[Landroid/media/midi/MidiDeviceInfo;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    nop

    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 68
    .local v6, "info":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {v6}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result v7

    if-lez v7, :cond_2

    .line 69
    invoke-virtual {v6}, Landroid/media/midi/MidiDeviceInfo;->getProperties()Landroid/os/Bundle;

    move-result-object v7

    .line 70
    .local v7, "properties":Landroid/os/Bundle;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "name"

    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 71
    :cond_1
    new-instance v2, Lcom/winlator/winhandler/MIDIHandler$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/winlator/winhandler/MIDIHandler$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/winhandler/MIDIHandler;)V

    new-instance v4, Landroid/os/Handler;

    .line 77
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 71
    invoke-virtual {v1, v6, v2, v4}, Landroid/media/midi/MidiManager;->openDevice(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    .line 78
    goto :goto_1

    .line 67
    .end local v6    # "info":Landroid/media/midi/MidiDeviceInfo;
    .end local v7    # "properties":Landroid/os/Bundle;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 82
    :cond_3
    :goto_1
    return-void
.end method

.method public outputPortDisconnect()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/winlator/winhandler/MIDIHandler;->outputPortReceiver:Landroid/media/midi/MidiReceiver;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/winlator/winhandler/MIDIHandler;->outputPort:Landroid/media/midi/MidiOutputPort;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/winlator/winhandler/MIDIHandler;->outputPort:Landroid/media/midi/MidiOutputPort;

    iget-object v2, p0, Lcom/winlator/winhandler/MIDIHandler;->outputPortReceiver:Landroid/media/midi/MidiReceiver;

    invoke-virtual {v1, v2}, Landroid/media/midi/MidiSender;->disconnect(Landroid/media/midi/MidiReceiver;)V

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/winlator/winhandler/MIDIHandler;->outputPort:Landroid/media/midi/MidiOutputPort;

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 91
    return-void

    .line 90
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public programChange(II)V
    .locals 2
    .param p1, "channel"    # I
    .param p2, "program"    # I

    .line 208
    iget-wide v0, p0, Lcom/winlator/winhandler/MIDIHandler;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/winlator/winhandler/MIDIHandler;->programChange(JII)V

    .line 209
    return-void
.end method

.method public sendShortMsg(BBBB)Z
    .locals 6
    .param p1, "command"    # B
    .param p2, "channel"    # B
    .param p3, "param1"    # B
    .param p4, "param2"    # B

    .line 108
    iget-object v0, p0, Lcom/winlator/winhandler/MIDIHandler;->winHandler:Lcom/winlator/winhandler/WinHandler;

    iget-boolean v0, v0, Lcom/winlator/winhandler/WinHandler;->initReceived:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/winhandler/MIDIHandler;->midiInClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_1

    .line 109
    :cond_1
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 110
    .local v0, "sendData":Ljava/nio/ByteBuffer;
    or-int v2, p1, p2

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 111
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 112
    const/4 v2, 0x2

    invoke-virtual {v0, v2, p4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 114
    iget-object v2, p0, Lcom/winlator/winhandler/MIDIHandler;->midiInClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 115
    .local v3, "port":I
    iget-object v4, p0, Lcom/winlator/winhandler/MIDIHandler;->winHandler:Lcom/winlator/winhandler/WinHandler;

    new-instance v5, Lcom/winlator/winhandler/MIDIHandler$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v3, v0}, Lcom/winlator/winhandler/MIDIHandler$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/winhandler/MIDIHandler;ILjava/nio/ByteBuffer;)V

    invoke-virtual {v4, v5}, Lcom/winlator/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 116
    .end local v3    # "port":I
    goto :goto_0

    .line 118
    :cond_2
    return v1

    .line 108
    .end local v0    # "sendData":Ljava/nio/ByteBuffer;
    :goto_1
    return v1
.end method
