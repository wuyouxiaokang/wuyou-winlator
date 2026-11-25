.class public Lcom/winlator/core/Win32AppWorkarounds;
.super Ljava/lang/Object;
.source "Win32AppWorkarounds.java"

# interfaces
.implements Lcom/winlator/winhandler/OnPreExecListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/core/Win32AppWorkarounds$EnvVarsWorkaround;,
        Lcom/winlator/core/Win32AppWorkarounds$ScreenSizeWorkaround;,
        Lcom/winlator/core/Win32AppWorkarounds$DXWrapperWorkaround;,
        Lcom/winlator/core/Win32AppWorkarounds$WinComponentsWorkaround;,
        Lcom/winlator/core/Win32AppWorkarounds$Workaround;,
        Lcom/winlator/core/Win32AppWorkarounds$WindowWorkaround;,
        Lcom/winlator/core/Win32AppWorkarounds$PreExecWorkaround;
    }
.end annotation


# instance fields
.field private final activity:Lcom/winlator/XServerDisplayActivity;

.field private saveMemoryTask:Lcom/winlator/core/SaveMemoryTask;

.field private final taskAffinityMask:S

.field private final taskAffinityMaskWoW64:S


# direct methods
.method public static synthetic $r8$lambda$2Ypt2kVtaenwQcguiqv1w2pp4sk(Lcom/winlator/core/Win32AppWorkarounds;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/core/Win32AppWorkarounds;->lambda$getWorkaroundFor$12(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$77YYzCNsEeUkxWmVoqn9d45IUyQ()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {}, Lcom/winlator/core/Win32AppWorkarounds;->lambda$getWorkaroundFor$2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$9dr1Ck91q3-6pxwJMiv3FvT7diY(Lcom/winlator/xserver/ScreenInfo;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/winlator/core/Win32AppWorkarounds;->lambda$getWorkaroundFor$3(Lcom/winlator/xserver/ScreenInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CHsm-mc8jCl2hxqA8ZkDvaxe-OU(Lcom/winlator/core/EnvVars;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/winlator/core/Win32AppWorkarounds;->lambda$getWorkaroundFor$0(Lcom/winlator/core/EnvVars;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CUzlr6xcKmHRF2ACGydxHFbkwvY(Lcom/winlator/winhandler/WinHandler;Lcom/winlator/xserver/Window;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/winlator/core/Win32AppWorkarounds;->lambda$getWorkaroundFor$11(Lcom/winlator/winhandler/WinHandler;Lcom/winlator/xserver/Window;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JVJh-_lRjB3w48quTv21imgeiHo(Lcom/winlator/core/Win32AppWorkarounds;Lcom/winlator/xserver/Window;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/core/Win32AppWorkarounds;->lambda$getWorkaroundFor$9(Lcom/winlator/xserver/Window;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q8HDn29p1mznC3z7DvggLlXN2q4(Lcom/winlator/winhandler/WinHandler;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/winlator/core/Win32AppWorkarounds;->lambda$runGameExecutable$14(Lcom/winlator/winhandler/WinHandler;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ciKm1KUjTRUt_zy9MeCfBe_P29g(Lcom/winlator/winhandler/WinHandler;Lcom/winlator/xserver/Window;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/winlator/core/Win32AppWorkarounds;->lambda$getWorkaroundFor$10(Lcom/winlator/winhandler/WinHandler;Lcom/winlator/xserver/Window;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dUCVzPwxV-TkdQk-I4AM27Yl-wQ(Lcom/winlator/core/KeyValueSet;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/winlator/core/Win32AppWorkarounds;->lambda$getWorkaroundFor$6(Lcom/winlator/core/KeyValueSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$emDYDGTesDePMyEVjIBWp40N0rg(Lcom/winlator/core/Win32AppWorkarounds;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/core/Win32AppWorkarounds;->lambda$getWorkaroundFor$8(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kj_sZ-oF7IAnn4Zzl_dkuyesel4(Lcom/winlator/winhandler/WinHandler;Lcom/winlator/xserver/Window;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/winlator/core/Win32AppWorkarounds;->lambda$getWorkaroundFor$5(Lcom/winlator/winhandler/WinHandler;Lcom/winlator/xserver/Window;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pDLNheibrjpi9V3vIMae4w1jgXY(Lcom/winlator/core/Win32AppWorkarounds;Lcom/winlator/core/EnvVars;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/core/Win32AppWorkarounds;->lambda$getWorkaroundFor$1(Lcom/winlator/core/EnvVars;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qfxQBsUgYz6GaOA-hOu0V7v61G0(Lcom/winlator/winhandler/WinHandler;Lcom/winlator/xserver/Window;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/winlator/core/Win32AppWorkarounds;->lambda$getWorkaroundFor$4(Lcom/winlator/winhandler/WinHandler;Lcom/winlator/xserver/Window;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rZWp_gZToEhtMaBGWlHcUIHO1Zk(Lcom/winlator/core/Win32AppWorkarounds;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/core/Win32AppWorkarounds;->lambda$getWorkaroundFor$13(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zL5AW-x0n0ArvLr94vDUEHgg3es()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {}, Lcom/winlator/core/Win32AppWorkarounds;->lambda$getWorkaroundFor$7()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/winlator/XServerDisplayActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/winlator/XServerDisplayActivity;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/winlator/core/Win32AppWorkarounds;->activity:Lcom/winlator/XServerDisplayActivity;

    .line 57
    invoke-virtual {p1}, Lcom/winlator/XServerDisplayActivity;->getContainer()Lcom/winlator/container/Container;

    move-result-object v0

    .line 58
    .local v0, "container":Lcom/winlator/container/Container;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/winlator/container/Container;->getCPUList(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/winlator/core/ProcessHelper;->getAffinityMask(Ljava/lang/String;)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/winlator/core/Win32AppWorkarounds;->taskAffinityMask:S

    .line 59
    invoke-virtual {v0, v1}, Lcom/winlator/container/Container;->getCPUListWoW64(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/winlator/core/ProcessHelper;->getAffinityMask(Ljava/lang/String;)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/winlator/core/Win32AppWorkarounds;->taskAffinityMaskWoW64:S

    .line 60
    invoke-virtual {p1}, Lcom/winlator/XServerDisplayActivity;->getWinHandler()Lcom/winlator/winhandler/WinHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/winlator/winhandler/WinHandler;->setOnPreExecListener(Lcom/winlator/winhandler/OnPreExecListener;)V

    .line 61
    return-void
.end method

.method private applyWorkaround(Lcom/winlator/core/Win32AppWorkarounds$Workaround;)V
    .locals 3
    .param p1, "workaround"    # Lcom/winlator/core/Win32AppWorkarounds$Workaround;

    .line 64
    instance-of v0, p1, Lcom/winlator/core/Win32AppWorkarounds$EnvVarsWorkaround;

    if-eqz v0, :cond_0

    .line 65
    move-object v0, p1

    check-cast v0, Lcom/winlator/core/Win32AppWorkarounds$EnvVarsWorkaround;

    iget-object v1, p0, Lcom/winlator/core/Win32AppWorkarounds;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-virtual {v1}, Lcom/winlator/XServerDisplayActivity;->getOverrideEnvVars()Lcom/winlator/core/EnvVars;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/winlator/core/Win32AppWorkarounds$EnvVarsWorkaround;->apply(Lcom/winlator/core/EnvVars;)V

    goto :goto_0

    .line 67
    :cond_0
    instance-of v0, p1, Lcom/winlator/core/Win32AppWorkarounds$ScreenSizeWorkaround;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/winlator/core/Win32AppWorkarounds;->activity:Lcom/winlator/XServerDisplayActivity;

    new-instance v1, Lcom/winlator/xserver/ScreenInfo;

    move-object v2, p1

    check-cast v2, Lcom/winlator/core/Win32AppWorkarounds$ScreenSizeWorkaround;

    invoke-interface {v2}, Lcom/winlator/core/Win32AppWorkarounds$ScreenSizeWorkaround;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/winlator/xserver/ScreenInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/winlator/XServerDisplayActivity;->setScreenInfo(Lcom/winlator/xserver/ScreenInfo;)V

    goto :goto_0

    .line 70
    :cond_1
    instance-of v0, p1, Lcom/winlator/core/Win32AppWorkarounds$DXWrapperWorkaround;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/winlator/core/Win32AppWorkarounds;->activity:Lcom/winlator/XServerDisplayActivity;

    move-object v1, p1

    check-cast v1, Lcom/winlator/core/Win32AppWorkarounds$DXWrapperWorkaround;

    invoke-interface {v1}, Lcom/winlator/core/Win32AppWorkarounds$DXWrapperWorkaround;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/winlator/XServerDisplayActivity;->setDXWrapper(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_2
    instance-of v0, p1, Lcom/winlator/core/Win32AppWorkarounds$WinComponentsWorkaround;

    if-eqz v0, :cond_3

    .line 74
    new-instance v0, Lcom/winlator/core/KeyValueSet;

    const-string v1, "direct3d=1,directsound=1,directmusic=1,directshow=0,directplay=0,xaudio=1,vcrun2005=0,vcrun2010=1,wmdecoder=1"

    invoke-direct {v0, v1}, Lcom/winlator/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "wincomponents":Lcom/winlator/core/KeyValueSet;
    move-object v1, p1

    check-cast v1, Lcom/winlator/core/Win32AppWorkarounds$WinComponentsWorkaround;

    invoke-interface {v1, v0}, Lcom/winlator/core/Win32AppWorkarounds$WinComponentsWorkaround;->setValue(Lcom/winlator/core/KeyValueSet;)V

    .line 76
    iget-object v1, p0, Lcom/winlator/core/Win32AppWorkarounds;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-virtual {v0}, Lcom/winlator/core/KeyValueSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/XServerDisplayActivity;->setWinComponents(Ljava/lang/String;)V

    .line 78
    .end local v0    # "wincomponents":Lcom/winlator/core/KeyValueSet;
    :cond_3
    :goto_0
    return-void
.end method

.method private getExecutableDir(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "dosPath"    # Ljava/lang/String;

    .line 194
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/core/Win32AppWorkarounds;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-virtual {v1}, Lcom/winlator/XServerDisplayActivity;->getContainer()Lcom/winlator/container/Container;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/winlator/core/WineUtils;->dosToUnixPath(Ljava/lang/String;Lcom/winlator/container/Container;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/winlator/core/FileUtils;->getDirname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getWorkaroundFor(Ljava/lang/String;)Lcom/winlator/core/Win32AppWorkarounds$Workaround;
    .locals 4
    .param p1, "className"    # Ljava/lang/String;

    .line 129
    const-string v0, "steam://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "appIdentifier":Ljava/lang/String;
    goto :goto_0

    .line 132
    .end local v0    # "appIdentifier":Ljava/lang/String;
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .restart local v0    # "appIdentifier":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/winlator/core/Win32AppWorkarounds;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-virtual {v2}, Lcom/winlator/XServerDisplayActivity;->getWinHandler()Lcom/winlator/winhandler/WinHandler;

    move-result-object v2

    .line 135
    .local v2, "winHandler":Lcom/winlator/winhandler/WinHandler;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto/16 :goto_1

    :sswitch_0
    const-string v1, "bof4.exe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    goto/16 :goto_2

    :sswitch_1
    const-string v1, "launcher.exe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x11

    goto/16 :goto_2

    :sswitch_2
    const-string v1, "valkyria.exe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto/16 :goto_2

    :sswitch_3
    const-string v1, "294860"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto/16 :goto_2

    :sswitch_4
    const-string v1, "ffxii_tza.exe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto/16 :goto_2

    :sswitch_5
    const-string v1, "fate.exe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto/16 :goto_2

    :sswitch_6
    const-string v1, "steam.exe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x12

    goto/16 :goto_2

    :sswitch_7
    const-string v1, "sonicgenerations.exe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto/16 :goto_2

    :sswitch_8
    const-string v1, "chronocross_launcher.exe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    goto/16 :goto_2

    :sswitch_9
    const-string v1, "dino.exe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    goto :goto_2

    :sswitch_a
    const-string v3, "71340"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :sswitch_b
    const-string v1, "dino2.exe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xb

    goto :goto_2

    :sswitch_c
    const-string v1, "blacklist_dx11_game.exe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_2

    :sswitch_d
    const-string v1, "blacklist_game.exe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_2

    :sswitch_e
    const-string v1, "ff9_launcher.exe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x10

    goto :goto_2

    :sswitch_f
    const-string v1, "psychotoxic.exe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto :goto_2

    :sswitch_10
    const-string v1, "discipl2.exe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xd

    goto :goto_2

    :sswitch_11
    const-string v1, "cnc3.exe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xe

    goto :goto_2

    :sswitch_12
    const-string v1, "start.exe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xf

    goto :goto_2

    :goto_1
    const/4 v1, -0x1

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 189
    const/4 v1, 0x0

    return-object v1

    .line 181
    :pswitch_0
    new-instance v1, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/core/Win32AppWorkarounds;)V

    return-object v1

    .line 179
    :pswitch_1
    new-instance v1, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/core/Win32AppWorkarounds;)V

    return-object v1

    .line 177
    :pswitch_2
    new-instance v1, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda11;

    invoke-direct {v1, v2}, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda11;-><init>(Lcom/winlator/winhandler/WinHandler;)V

    return-object v1

    .line 172
    :pswitch_3
    new-instance v1, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda10;-><init>(Lcom/winlator/core/Win32AppWorkarounds;)V

    return-object v1

    .line 165
    :pswitch_4
    new-instance v1, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda9;-><init>(Lcom/winlator/core/Win32AppWorkarounds;)V

    return-object v1

    .line 163
    :pswitch_5
    new-instance v1, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda8;-><init>()V

    return-object v1

    .line 161
    :pswitch_6
    new-instance v1, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda7;-><init>()V

    return-object v1

    .line 151
    :pswitch_7
    new-instance v1, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda6;

    invoke-direct {v1, v2}, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda6;-><init>(Lcom/winlator/winhandler/WinHandler;)V

    return-object v1

    .line 148
    :pswitch_8
    iget-object v1, p0, Lcom/winlator/core/Win32AppWorkarounds;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-virtual {v1}, Lcom/winlator/XServerDisplayActivity;->getScreenInfo()Lcom/winlator/xserver/ScreenInfo;

    move-result-object v1

    .line 149
    .local v1, "screenInfo":Lcom/winlator/xserver/ScreenInfo;
    new-instance v3, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1}, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda5;-><init>(Lcom/winlator/xserver/ScreenInfo;)V

    return-object v3

    .line 146
    .end local v1    # "screenInfo":Lcom/winlator/xserver/ScreenInfo;
    :pswitch_9
    new-instance v1, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda4;-><init>()V

    return-object v1

    .line 143
    :pswitch_a
    new-instance v1, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/core/Win32AppWorkarounds;)V

    return-object v1

    .line 140
    :pswitch_b
    new-instance v1, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda0;-><init>()V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7efbc97a -> :sswitch_12
        -0x6d294881 -> :sswitch_11
        -0x5e21961a -> :sswitch_10
        -0x5cb754b9 -> :sswitch_f
        -0x248f4236 -> :sswitch_e
        -0x21a39108 -> :sswitch_d
        -0x4352761 -> :sswitch_c
        0x1453110 -> :sswitch_b
        0x31e18d5 -> :sswitch_a
        0x84b8d2a -> :sswitch_9
        0x210f7c46 -> :sswitch_8
        0x257ffc53 -> :sswitch_7
        0x37381c74 -> :sswitch_6
        0x3a8c3590 -> :sswitch_5
        0x40e049d8 -> :sswitch_4
        0x588e0705 -> :sswitch_3
        0x5eaedfff -> :sswitch_2
        0x60e4b2c4 -> :sswitch_1
        0x6508673f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$getWorkaroundFor$0(Lcom/winlator/core/EnvVars;)V
    .locals 2
    .param p0, "envVars"    # Lcom/winlator/core/EnvVars;

    .line 140
    const-string v0, "WINEESYNC"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    return-void
.end method

.method private synthetic lambda$getWorkaroundFor$1(Lcom/winlator/core/EnvVars;)V
    .locals 2
    .param p1, "envVars"    # Lcom/winlator/core/EnvVars;

    .line 143
    iget-short v0, p0, Lcom/winlator/core/Win32AppWorkarounds;->taskAffinityMaskWoW64:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    const-string v1, "WINEOVERRIDEAFFINITYMASK"

    invoke-virtual {p1, v1, v0}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    return-void
.end method

.method private static synthetic lambda$getWorkaroundFor$10(Lcom/winlator/winhandler/WinHandler;Lcom/winlator/xserver/Window;)V
    .locals 3
    .param p0, "winHandler"    # Lcom/winlator/winhandler/WinHandler;
    .param p1, "window"    # Lcom/winlator/xserver/Window;

    .line 177
    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->getHandle()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/winlator/winhandler/WinHandler;->bringToFront(Ljava/lang/String;J)V

    return-void
.end method

.method private static synthetic lambda$getWorkaroundFor$11(Lcom/winlator/winhandler/WinHandler;Lcom/winlator/xserver/Window;)V
    .locals 3
    .param p0, "winHandler"    # Lcom/winlator/winhandler/WinHandler;
    .param p1, "window"    # Lcom/winlator/xserver/Window;

    .line 177
    new-instance v0, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda12;-><init>(Lcom/winlator/winhandler/WinHandler;Lcom/winlator/xserver/Window;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/winlator/core/AppUtils;->runDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$getWorkaroundFor$12(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/winlator/core/Win32AppWorkarounds;->runGameExecutable(Lcom/winlator/xserver/Window;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$getWorkaroundFor$13(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/winlator/core/Win32AppWorkarounds;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-virtual {v0}, Lcom/winlator/XServerDisplayActivity;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "save_mem_on_run_from_steam"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/winlator/core/Win32AppWorkarounds;->saveMemoryTask:Lcom/winlator/core/SaveMemoryTask;

    if-nez v0, :cond_0

    new-instance v0, Lcom/winlator/core/SaveMemoryTask;

    invoke-direct {v0}, Lcom/winlator/core/SaveMemoryTask;-><init>()V

    iput-object v0, p0, Lcom/winlator/core/Win32AppWorkarounds;->saveMemoryTask:Lcom/winlator/core/SaveMemoryTask;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/winlator/core/Win32AppWorkarounds;->saveMemoryTask:Lcom/winlator/core/SaveMemoryTask;

    invoke-virtual {v0}, Lcom/winlator/core/SaveMemoryTask;->start()V

    .line 186
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$getWorkaroundFor$2()Ljava/lang/String;
    .locals 1

    .line 146
    const-string v0, "1024x768"

    return-object v0
.end method

.method private static synthetic lambda$getWorkaroundFor$3(Lcom/winlator/xserver/ScreenInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "screenInfo"    # Lcom/winlator/xserver/ScreenInfo;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-short v1, p0, Lcom/winlator/xserver/ScreenInfo;->width:S

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/winlator/xserver/ScreenInfo;->height:S

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$getWorkaroundFor$4(Lcom/winlator/winhandler/WinHandler;Lcom/winlator/xserver/Window;)V
    .locals 3
    .param p0, "winHandler"    # Lcom/winlator/winhandler/WinHandler;
    .param p1, "window"    # Lcom/winlator/xserver/Window;

    .line 154
    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->getHandle()J

    move-result-wide v0

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/winlator/winhandler/WinHandler;->showWindow(JI)V

    .line 155
    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->getHandle()J

    move-result-wide v0

    const/16 v2, 0x9

    invoke-virtual {p0, v0, v1, v2}, Lcom/winlator/winhandler/WinHandler;->showWindow(JI)V

    .line 156
    return-void
.end method

.method private static synthetic lambda$getWorkaroundFor$5(Lcom/winlator/winhandler/WinHandler;Lcom/winlator/xserver/Window;)V
    .locals 3
    .param p0, "winHandler"    # Lcom/winlator/winhandler/WinHandler;
    .param p1, "window"    # Lcom/winlator/xserver/Window;

    .line 152
    iget-object v0, p1, Lcom/winlator/xserver/Window;->attributes:Lcom/winlator/xserver/WindowAttributes;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/winlator/xserver/WindowAttributes;->setTransparent(Z)V

    .line 153
    new-instance v0, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda13;-><init>(Lcom/winlator/winhandler/WinHandler;Lcom/winlator/xserver/Window;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/winlator/core/AppUtils;->runDelayed(Ljava/lang/Runnable;J)V

    .line 157
    return-void
.end method

.method private static synthetic lambda$getWorkaroundFor$6(Lcom/winlator/core/KeyValueSet;)V
    .locals 2
    .param p0, "wincomponents"    # Lcom/winlator/core/KeyValueSet;

    .line 161
    const-string v0, "directshow"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/winlator/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/KeyValueSet;

    return-void
.end method

.method private static synthetic lambda$getWorkaroundFor$7()Ljava/lang/String;
    .locals 1

    .line 163
    const-string v0, "wined3d"

    return-object v0
.end method

.method private synthetic lambda$getWorkaroundFor$8(Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 166
    invoke-direct {p0, p1}, Lcom/winlator/core/Win32AppWorkarounds;->getExecutableDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 167
    .local v0, "executableDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "CNC3_english_1.10.SkuDef"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    .local v1, "oldFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    const-string v3, "CNC3_english_1.10.SkuDef.old"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 169
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private synthetic lambda$getWorkaroundFor$9(Lcom/winlator/xserver/Window;)V
    .locals 2
    .param p1, "window"    # Lcom/winlator/xserver/Window;

    .line 173
    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Easy Anti-Cheat Launch Error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/winlator/core/Win32AppWorkarounds;->runGameExecutable(Lcom/winlator/xserver/Window;Ljava/lang/String;)Z

    .line 175
    return-void
.end method

.method private static synthetic lambda$runGameExecutable$14(Lcom/winlator/winhandler/WinHandler;Ljava/lang/String;)V
    .locals 1
    .param p0, "winHandler"    # Lcom/winlator/winhandler/WinHandler;
    .param p1, "filename"    # Ljava/lang/String;

    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/winlator/winhandler/WinHandler;->exec(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private runGameExecutable(Lcom/winlator/xserver/Window;Ljava/lang/String;)Z
    .locals 9
    .param p1, "window"    # Lcom/winlator/xserver/Window;
    .param p2, "dosPath"    # Ljava/lang/String;

    .line 198
    const-string v0, "BorderlandsPreSequel.exe"

    const-string v1, "bin/DBXV2.exe"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "relativePaths":[Ljava/lang/String;
    iget-object v1, p0, Lcom/winlator/core/Win32AppWorkarounds;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-virtual {v1}, Lcom/winlator/XServerDisplayActivity;->getWinHandler()Lcom/winlator/winhandler/WinHandler;

    move-result-object v1

    .line 201
    .local v1, "winHandler":Lcom/winlator/winhandler/WinHandler;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->getProcessId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/winlator/winhandler/WinHandler;->getExecutablePath(I)Ljava/lang/String;

    move-result-object p2

    .line 202
    :cond_0
    invoke-direct {p0, p2}, Lcom/winlator/core/Win32AppWorkarounds;->getExecutableDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 204
    .local v2, "executableDir":Ljava/io/File;
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v0, v5

    .line 205
    .local v6, "relativePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 206
    invoke-static {p2}, Lcom/winlator/core/FileUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    const-string v5, "\\"

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "filename":Ljava/lang/String;
    new-instance v4, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda14;

    invoke-direct {v4, v1, v3}, Lcom/winlator/core/Win32AppWorkarounds$$ExternalSyntheticLambda14;-><init>(Lcom/winlator/winhandler/WinHandler;Ljava/lang/String;)V

    const-wide/16 v7, 0x1f4

    invoke-static {v4, v7, v8}, Lcom/winlator/core/AppUtils;->runDelayed(Ljava/lang/Runnable;J)V

    .line 208
    const/4 v4, 0x1

    return v4

    .line 205
    .end local v3    # "filename":Ljava/lang/String;
    :cond_1
    nop

    .line 204
    .end local v6    # "relativePath":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 211
    :cond_2
    return v4
.end method

.method private setProcessAffinity(Lcom/winlator/xserver/Window;I)V
    .locals 4
    .param p1, "window"    # Lcom/winlator/xserver/Window;
    .param p2, "processAffinity"    # I

    .line 91
    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->getProcessId()I

    move-result v0

    .line 92
    .local v0, "processId":I
    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "className":Ljava/lang/String;
    iget-object v2, p0, Lcom/winlator/core/Win32AppWorkarounds;->activity:Lcom/winlator/XServerDisplayActivity;

    invoke-virtual {v2}, Lcom/winlator/XServerDisplayActivity;->getWinHandler()Lcom/winlator/winhandler/WinHandler;

    move-result-object v2

    .line 95
    .local v2, "winHandler":Lcom/winlator/winhandler/WinHandler;
    const-string v3, "steam.exe"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 97
    :cond_0
    if-lez v0, :cond_1

    .line 98
    invoke-virtual {v2, v0, p2}, Lcom/winlator/winhandler/WinHandler;->setProcessAffinity(II)V

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 101
    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/winlator/winhandler/WinHandler;->setProcessAffinity(Ljava/lang/String;I)V

    .line 103
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public applyStartupWorkarounds(Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 81
    invoke-direct {p0, p1}, Lcom/winlator/core/Win32AppWorkarounds;->getWorkaroundFor(Ljava/lang/String;)Lcom/winlator/core/Win32AppWorkarounds$Workaround;

    move-result-object v0

    .line 82
    .local v0, "workaround":Lcom/winlator/core/Win32AppWorkarounds$Workaround;
    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    nop

    .line 87
    invoke-direct {p0, v0}, Lcom/winlator/core/Win32AppWorkarounds;->applyWorkaround(Lcom/winlator/core/Win32AppWorkarounds$Workaround;)V

    .line 88
    return-void
.end method

.method public applyWindowWorkarounds(Lcom/winlator/xserver/Window;)V
    .locals 4
    .param p1, "window"    # Lcom/winlator/xserver/Window;

    .line 106
    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/winlator/core/Win32AppWorkarounds;->getWorkaroundFor(Ljava/lang/String;)Lcom/winlator/core/Win32AppWorkarounds$Workaround;

    move-result-object v0

    .line 107
    .local v0, "workaround":Lcom/winlator/core/Win32AppWorkarounds$Workaround;
    instance-of v1, v0, Lcom/winlator/core/Win32AppWorkarounds$WindowWorkaround;

    if-eqz v1, :cond_0

    .line 108
    move-object v1, v0

    check-cast v1, Lcom/winlator/core/Win32AppWorkarounds$WindowWorkaround;

    invoke-interface {v1, p1}, Lcom/winlator/core/Win32AppWorkarounds$WindowWorkaround;->apply(Lcom/winlator/xserver/Window;)V

    goto :goto_0

    .line 110
    :cond_0
    nop

    .line 119
    :goto_0
    sget-object v1, Lcom/winlator/xserver/Window$WMHints;->WINDOW_GROUP:Lcom/winlator/xserver/Window$WMHints;

    invoke-virtual {p1, v1}, Lcom/winlator/xserver/Window;->getWMHintsValue(Lcom/winlator/xserver/Window$WMHints;)I

    move-result v1

    .line 120
    .local v1, "windowGroup":I
    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->isRenderable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p1, Lcom/winlator/xserver/XResource;->id:I

    if-ne v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 121
    .local v2, "canApplyProcessAffinity":Z
    :goto_1
    if-eqz v2, :cond_3

    .line 122
    invoke-virtual {p1}, Lcom/winlator/xserver/Window;->isWoW64()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-short v3, p0, Lcom/winlator/core/Win32AppWorkarounds;->taskAffinityMaskWoW64:S

    goto :goto_2

    :cond_2
    iget-short v3, p0, Lcom/winlator/core/Win32AppWorkarounds;->taskAffinityMask:S

    .line 123
    .local v3, "processAffinity":I
    :goto_2
    if-eqz v3, :cond_3

    invoke-direct {p0, p1, v3}, Lcom/winlator/core/Win32AppWorkarounds;->setProcessAffinity(Lcom/winlator/xserver/Window;I)V

    .line 125
    .end local v3    # "processAffinity":I
    :cond_3
    return-void
.end method

.method public onPreExec(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 216
    invoke-static {p1}, Lcom/winlator/core/FileUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "className":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/winlator/core/Win32AppWorkarounds;->getWorkaroundFor(Ljava/lang/String;)Lcom/winlator/core/Win32AppWorkarounds$Workaround;

    move-result-object v1

    .line 219
    .local v1, "workaround":Lcom/winlator/core/Win32AppWorkarounds$Workaround;
    instance-of v2, v1, Lcom/winlator/core/Win32AppWorkarounds$PreExecWorkaround;

    if-eqz v2, :cond_0

    .line 220
    move-object v2, v1

    check-cast v2, Lcom/winlator/core/Win32AppWorkarounds$PreExecWorkaround;

    invoke-interface {v2, p1}, Lcom/winlator/core/Win32AppWorkarounds$PreExecWorkaround;->apply(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 222
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
