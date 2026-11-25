.class public Lcom/winlator/xenvironment/components/PulseAudioComponent;
.super Lcom/winlator/xenvironment/EnvironmentComponent;
.source "PulseAudioComponent.java"


# static fields
.field private static final lock:Ljava/lang/Object;

.field private static pid:I


# instance fields
.field private performanceMode:B

.field private final socketConfig:Lcom/winlator/xconnector/UnixSocketConfig;

.field private volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/4 v0, -0x1

    sput v0, Lcom/winlator/xenvironment/components/PulseAudioComponent;->pid:I

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/winlator/xenvironment/components/PulseAudioComponent;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/winlator/xconnector/UnixSocketConfig;)V
    .locals 1
    .param p1, "socketConfig"    # Lcom/winlator/xconnector/UnixSocketConfig;

    .line 22
    invoke-direct {p0}, Lcom/winlator/xenvironment/EnvironmentComponent;-><init>()V

    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/winlator/xenvironment/components/PulseAudioComponent;->volume:F

    .line 19
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/winlator/xenvironment/components/PulseAudioComponent;->performanceMode:B

    .line 23
    iput-object p1, p0, Lcom/winlator/xenvironment/components/PulseAudioComponent;->socketConfig:Lcom/winlator/xconnector/UnixSocketConfig;

    .line 24
    return-void
.end method

.method private execPulseAudio()I
    .locals 9

    .line 61
    iget-object v0, p0, Lcom/winlator/xenvironment/EnvironmentComponent;->environment:Lcom/winlator/xenvironment/XEnvironment;

    invoke-virtual {v0}, Lcom/winlator/xenvironment/XEnvironment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 63
    .local v1, "nativeLibraryDir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "/pulseaudio"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .local v2, "workingDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 66
    const/16 v3, 0x1f9

    invoke-static {v2, v3}, Lcom/winlator/core/FileUtils;->chmod(Ljava/io/File;I)V

    .line 69
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, "default.pa"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    .local v3, "configFile":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load-module module-native-protocol-unix auth-anonymous=1 auth-cookie-enabled=0 socket=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/winlator/xenvironment/components/PulseAudioComponent;->socketConfig:Lcom/winlator/xconnector/UnixSocketConfig;

    iget-object v5, v5, Lcom/winlator/xconnector/UnixSocketConfig;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load-module module-aaudio-sink volume="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/winlator/xenvironment/components/PulseAudioComponent;->volume:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " performance_mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v6, p0, Lcom/winlator/xenvironment/components/PulseAudioComponent;->performanceMode:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v5, v6, v4

    const-string v4, "set-default-sink AAudioSink"

    const/4 v5, 0x2

    aput-object v4, v6, v5

    const-string v4, "\n"

    invoke-static {v4, v6}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/winlator/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z

    .line 76
    new-instance v4, Ljava/io/File;

    const-string v5, "modules"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    .local v4, "modulesDir":Ljava/io/File;
    new-instance v5, Lcom/winlator/core/EnvVars;

    invoke-direct {v5}, Lcom/winlator/core/EnvVars;-><init>()V

    .line 78
    .local v5, "envVars":Lcom/winlator/core/EnvVars;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/system/lib64:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "LD_LIBRARY_PATH"

    invoke-virtual {v5, v7, v6}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 79
    const-string v6, "HOME"

    invoke-virtual {v5, v6, v2}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 80
    iget-object v6, p0, Lcom/winlator/xenvironment/EnvironmentComponent;->environment:Lcom/winlator/xenvironment/XEnvironment;

    invoke-virtual {v6}, Lcom/winlator/xenvironment/XEnvironment;->getTmpDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "TMPDIR"

    invoke-virtual {v5, v7, v6}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 82
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/libpulseaudio.so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, "command":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " --system=false"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 84
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " --disable-shm=true"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 85
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " --fail=false"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 86
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " -n --file=default.pa"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 87
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " --daemonize=false"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 88
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " --use-pid-file=false"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 89
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " --exit-idle-time=-1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 91
    invoke-static {v6, v5, v2}, Lcom/winlator/core/ProcessHelper;->exec(Ljava/lang/String;Lcom/winlator/core/EnvVars;Ljava/io/File;)I

    move-result v7

    return v7
.end method


# virtual methods
.method public setPerformanceMode(I)V
    .locals 1
    .param p1, "performanceMode"    # I

    .line 57
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/winlator/xenvironment/components/PulseAudioComponent;->performanceMode:B

    .line 58
    return-void
.end method

.method public setVolume(F)V
    .locals 0
    .param p1, "volume"    # F

    .line 49
    iput p1, p0, Lcom/winlator/xenvironment/components/PulseAudioComponent;->volume:F

    .line 50
    return-void
.end method

.method public start()V
    .locals 2

    .line 28
    sget-object v0, Lcom/winlator/xenvironment/components/PulseAudioComponent;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lcom/winlator/xenvironment/components/PulseAudioComponent;->stop()V

    .line 30
    invoke-direct {p0}, Lcom/winlator/xenvironment/components/PulseAudioComponent;->execPulseAudio()I

    move-result v1

    sput v1, Lcom/winlator/xenvironment/components/PulseAudioComponent;->pid:I

    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 31
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stop()V
    .locals 3

    .line 36
    sget-object v0, Lcom/winlator/xenvironment/components/PulseAudioComponent;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_0
    sget v1, Lcom/winlator/xenvironment/components/PulseAudioComponent;->pid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 38
    sget v1, Lcom/winlator/xenvironment/components/PulseAudioComponent;->pid:I

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 39
    sput v2, Lcom/winlator/xenvironment/components/PulseAudioComponent;->pid:I

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 42
    return-void

    .line 41
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
