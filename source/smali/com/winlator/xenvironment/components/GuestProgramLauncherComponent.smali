.class public Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;
.super Lcom/winlator/xenvironment/EnvironmentComponent;
.source "GuestProgramLauncherComponent.java"


# static fields
.field private static final lock:Ljava/lang/Object;

.field private static pid:I


# instance fields
.field private box64Preset:Ljava/lang/String;

.field private envVars:Lcom/winlator/core/EnvVars;

.field private guestExecutable:Ljava/lang/String;

.field private terminationCallback:Lcom/winlator/core/Callback;


# direct methods
.method public static synthetic $r8$lambda$ao0w8-Z1QuIKt0FJV0IPhv_SFmI(Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->lambda$execGuestProgram$0(Ljava/lang/Integer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/4 v0, -0x1

    sput v0, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->pid:I

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/winlator/xenvironment/EnvironmentComponent;-><init>()V

    .line 30
    const-string v0, "CONSERVATIVE"

    iput-object v0, p0, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->box64Preset:Ljava/lang/String;

    return-void
.end method

.method private addBox64EnvVars(Lcom/winlator/core/EnvVars;)V
    .locals 10
    .param p1, "envVars"    # Lcom/winlator/core/EnvVars;

    .line 137
    iget-object v0, p0, Lcom/winlator/xenvironment/EnvironmentComponent;->environment:Lcom/winlator/xenvironment/XEnvironment;

    invoke-virtual {v0}, Lcom/winlator/xenvironment/XEnvironment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 138
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/winlator/xenvironment/EnvironmentComponent;->environment:Lcom/winlator/xenvironment/XEnvironment;

    invoke-virtual {v1}, Lcom/winlator/xenvironment/XEnvironment;->getRootFS()Lcom/winlator/xenvironment/RootFS;

    move-result-object v1

    .line 139
    .local v1, "rootFS":Lcom/winlator/xenvironment/RootFS;
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 140
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "box64_logs"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 141
    .local v3, "box64Logs":I
    const-string v5, "save_logs_to_file"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 143
    .local v4, "saveToFile":Z
    const-string v5, "0"

    const-string v6, "1"

    const/4 v7, 0x1

    if-lt v3, v7, :cond_0

    move-object v8, v5

    goto :goto_0

    :cond_0
    move-object v8, v6

    :goto_0
    const-string v9, "BOX64_NOBANNER"

    invoke-virtual {p1, v9, v8}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 144
    const-string v8, "BOX64_DYNAREC"

    invoke-virtual {p1, v8, v6}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 145
    const-string v8, "BOX64_UNITYPLAYER"

    invoke-virtual {p1, v8, v5}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 146
    const-string v8, "BOX64_DYNACACHE"

    invoke-virtual {p1, v8, v5}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 148
    if-lt v3, v7, :cond_2

    .line 149
    const-string v5, "BOX64_LOG"

    invoke-virtual {p1, v5, v6}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 150
    const-string v5, "BOX64_DYNAREC_MISSING"

    invoke-virtual {p1, v5, v6}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 152
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 153
    const-string v5, "BOX64_SHOWSEGV"

    invoke-virtual {p1, v5, v6}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 154
    const-string v5, "BOX64_DLSYM_ERROR"

    invoke-virtual {p1, v5, v6}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 155
    const-string v5, "stderr"

    const-string v6, "BOX64_TRACE_FILE"

    invoke-virtual {p1, v6, v5}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 157
    if-eqz v4, :cond_2

    .line 158
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/winlator/widget/LogView;->getLogFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "log_file"

    invoke-interface {v2, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 159
    .local v5, "parent":Ljava/io/File;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 160
    new-instance v7, Ljava/io/File;

    const-string v8, "trace"

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    .local v7, "traceDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 162
    :cond_1
    invoke-static {v7}, Lcom/winlator/core/FileUtils;->clear(Ljava/io/File;)Z

    .line 164
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "/box64-%pid.txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v6, v8}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 170
    .end local v5    # "parent":Ljava/io/File;
    .end local v7    # "traceDir":Ljava/io/File;
    :cond_2
    iget-object v5, p0, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->box64Preset:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/winlator/box64/Box64PresetManager;->getEnvVars(Landroid/content/Context;Ljava/lang/String;)Lcom/winlator/core/EnvVars;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/winlator/core/EnvVars;->putAll(Lcom/winlator/core/EnvVars;)V

    .line 172
    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Lcom/winlator/xenvironment/RootFS;->getRootDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "/etc/config.box64rc"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 173
    .local v5, "box64RCFile":Ljava/io/File;
    const-string v6, "BOX64_RCFILE"

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 174
    return-void
.end method

.method private copyDefaultBox64RCFile()V
    .locals 5

    .line 131
    iget-object v0, p0, Lcom/winlator/xenvironment/EnvironmentComponent;->environment:Lcom/winlator/xenvironment/XEnvironment;

    invoke-virtual {v0}, Lcom/winlator/xenvironment/XEnvironment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 132
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/winlator/xenvironment/EnvironmentComponent;->environment:Lcom/winlator/xenvironment/XEnvironment;

    invoke-virtual {v1}, Lcom/winlator/xenvironment/XEnvironment;->getRootFS()Lcom/winlator/xenvironment/RootFS;

    move-result-object v1

    .line 133
    .local v1, "rootFS":Lcom/winlator/xenvironment/RootFS;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/winlator/xenvironment/RootFS;->getRootDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "/etc/config.box64rc"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "box64/default.box64rc"

    invoke-static {v0, v3, v2}, Lcom/winlator/core/FileUtils;->copy(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 134
    return-void
.end method

.method private execGuestProgram()I
    .locals 6

    .line 87
    iget-object v0, p0, Lcom/winlator/xenvironment/EnvironmentComponent;->environment:Lcom/winlator/xenvironment/XEnvironment;

    invoke-virtual {v0}, Lcom/winlator/xenvironment/XEnvironment;->getRootFS()Lcom/winlator/xenvironment/RootFS;

    move-result-object v0

    .line 88
    .local v0, "rootFS":Lcom/winlator/xenvironment/RootFS;
    invoke-virtual {v0}, Lcom/winlator/xenvironment/RootFS;->getRootDir()Ljava/io/File;

    move-result-object v1

    .line 90
    .local v1, "rootDir":Ljava/io/File;
    new-instance v2, Lcom/winlator/core/EnvVars;

    invoke-direct {v2}, Lcom/winlator/core/EnvVars;-><init>()V

    .line 91
    .local v2, "envVars":Lcom/winlator/core/EnvVars;
    invoke-direct {p0, v2}, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->addBox64EnvVars(Lcom/winlator/core/EnvVars;)V

    .line 92
    invoke-static {v2}, Lcom/winlator/core/LocaleHelper;->setEnvVars(Lcom/winlator/core/EnvVars;)V

    invoke-static {v2}, Lcom/wuyou/WlLocale;->force(Lcom/winlator/core/EnvVars;)V

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/home/xuser"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HOME"

    invoke-virtual {v2, v4, v3}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 95
    const-string v3, "USER"

    const-string v4, "xuser"

    invoke-virtual {v2, v3, v4}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TMPDIR"

    invoke-virtual {v2, v4, v3}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 97
    const-string v3, "DISPLAY"

    const-string v4, ":0"

    invoke-virtual {v2, v3, v4}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/winlator/xenvironment/RootFS;->getWinePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/bin:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/usr/local/bin:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/usr/bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PATH"

    invoke-virtual {v2, v4, v3}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 99
    invoke-virtual {v0}, Lcom/winlator/xenvironment/RootFS;->getLibDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LD_LIBRARY_PATH"

    invoke-virtual {v2, v4, v3}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/lib/x86_64-linux-gnu"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BOX64_LD_LIBRARY_PATH"

    invoke-virtual {v2, v4, v3}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/tmp/.sysvshm/SM0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ANDROID_SYSVSHM_SERVER"

    invoke-virtual {v2, v4, v3}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 103
    iget-object v3, p0, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->envVars:Lcom/winlator/core/EnvVars;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->envVars:Lcom/winlator/core/EnvVars;

    invoke-virtual {v2, v3}, Lcom/winlator/core/EnvVars;->putAll(Lcom/winlator/core/EnvVars;)V

    .line 105
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/tmp/shm"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    .local v3, "shmDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 108
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/usr/local/bin/box64 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->guestExecutable:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "command":Ljava/lang/String;
    new-instance v5, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;)V

    invoke-static {v4, v2, v1, v5}, Lcom/winlator/core/ProcessHelper;->exec(Ljava/lang/String;Lcom/winlator/core/EnvVars;Ljava/io/File;Lcom/winlator/core/Callback;)I

    move-result v5

    return v5
.end method

.method private extractBox64File()V
    .locals 7

    .line 119
    iget-object v0, p0, Lcom/winlator/xenvironment/EnvironmentComponent;->environment:Lcom/winlator/xenvironment/XEnvironment;

    invoke-virtual {v0}, Lcom/winlator/xenvironment/XEnvironment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 120
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 121
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "box64_version"

    const-string v3, "0.4.4"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "box64Version":Ljava/lang/String;
    const-string v4, ""

    const-string v5, "current_box64_version"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "currentBox64Version":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 125
    sget-object v6, Lcom/winlator/core/GeneralComponents$Type;->BOX64:Lcom/winlator/core/GeneralComponents$Type;

    invoke-static {v6, v0, v2, v3}, Lcom/winlator/core/GeneralComponents;->extractFile(Lcom/winlator/core/GeneralComponents$Type;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    :cond_0
    return-void
.end method

.method private synthetic lambda$execGuestProgram$0(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "status"    # Ljava/lang/Integer;

    .line 111
    sget-object v0, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    const/4 v1, -0x1

    :try_start_0
    sput v1, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->pid:I

    .line 113
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object v0, p0, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->terminationCallback:Lcom/winlator/core/Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->terminationCallback:Lcom/winlator/core/Callback;

    invoke-interface {v0, p1}, Lcom/winlator/core/Callback;->call(Ljava/lang/Object;)V

    .line 115
    :cond_0
    return-void

    .line 113
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public onPause()V
    .locals 6

    .line 178
    sget-object v0, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_0
    sget v1, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->pid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 180
    invoke-static {}, Lcom/winlator/core/ProcessHelper;->getChildProcesses()Ljava/util/List;

    move-result-object v1

    .line 181
    .local v1, "processes":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/core/ProcessHelper$PStat;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 182
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/winlator/core/ProcessHelper$PStat;

    .line 183
    .local v3, "process":Lcom/winlator/core/ProcessHelper$PStat;
    iget-boolean v4, v3, Lcom/winlator/core/ProcessHelper$PStat;->guestProcess:Z

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/winlator/core/ProcessHelper$PStat;->state:Lcom/winlator/core/ProcessHelper$PState;

    sget-object v5, Lcom/winlator/core/ProcessHelper$PState;->STOPPED:Lcom/winlator/core/ProcessHelper$PState;

    if-eq v4, v5, :cond_0

    .line 184
    iget v4, v3, Lcom/winlator/core/ProcessHelper$PStat;->pid:I

    invoke-static {v4}, Lcom/winlator/core/ProcessHelper;->suspendProcess(I)V

    goto :goto_1

    .line 188
    .end local v1    # "processes":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/core/ProcessHelper$PStat;>;"
    .end local v2    # "i":I
    .end local v3    # "process":Lcom/winlator/core/ProcessHelper$PStat;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 181
    .restart local v1    # "processes":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/core/ProcessHelper$PStat;>;"
    .restart local v2    # "i":I
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 188
    .end local v1    # "processes":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/core/ProcessHelper$PStat;>;"
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    .line 189
    return-void

    .line 188
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onResume()V
    .locals 6

    .line 193
    sget-object v0, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_0
    sget v1, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->pid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 195
    invoke-static {}, Lcom/winlator/core/ProcessHelper;->getChildProcesses()Ljava/util/List;

    move-result-object v1

    .line 196
    .local v1, "processes":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/core/ProcessHelper$PStat;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 197
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/winlator/core/ProcessHelper$PStat;

    .line 198
    .local v3, "process":Lcom/winlator/core/ProcessHelper$PStat;
    iget-boolean v4, v3, Lcom/winlator/core/ProcessHelper$PStat;->guestProcess:Z

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/winlator/core/ProcessHelper$PStat;->state:Lcom/winlator/core/ProcessHelper$PState;

    sget-object v5, Lcom/winlator/core/ProcessHelper$PState;->STOPPED:Lcom/winlator/core/ProcessHelper$PState;

    if-ne v4, v5, :cond_0

    .line 199
    iget v4, v3, Lcom/winlator/core/ProcessHelper$PStat;->pid:I

    invoke-static {v4}, Lcom/winlator/core/ProcessHelper;->resumeProcess(I)V

    goto :goto_1

    .line 203
    .end local v1    # "processes":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/core/ProcessHelper$PStat;>;"
    .end local v2    # "i":I
    .end local v3    # "process":Lcom/winlator/core/ProcessHelper$PStat;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 196
    .restart local v1    # "processes":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/core/ProcessHelper$PStat;>;"
    .restart local v2    # "i":I
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "processes":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/core/ProcessHelper$PStat;>;"
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    .line 204
    return-void

    .line 203
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBox64Preset(Ljava/lang/String;)V
    .locals 0
    .param p1, "box64Preset"    # Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->box64Preset:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setEnvVars(Lcom/winlator/core/EnvVars;)V
    .locals 0
    .param p1, "envVars"    # Lcom/winlator/core/EnvVars;

    .line 75
    iput-object p1, p0, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->envVars:Lcom/winlator/core/EnvVars;

    .line 76
    return-void
.end method

.method public setGuestExecutable(Ljava/lang/String;)V
    .locals 0
    .param p1, "guestExecutable"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->guestExecutable:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setTerminationCallback(Lcom/winlator/core/Callback;)V
    .locals 0

    .line 59
    .local p1, "terminationCallback":Lcom/winlator/core/Callback;, "Lcom/winlator/core/Callback<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->terminationCallback:Lcom/winlator/core/Callback;

    .line 60
    return-void
.end method

.method public start()V
    .locals 2

    .line 36
    sget-object v0, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->stop()V

    .line 38
    invoke-direct {p0}, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->extractBox64File()V

    .line 39
    invoke-direct {p0}, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->copyDefaultBox64RCFile()V

    .line 40
    invoke-direct {p0}, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->execGuestProgram()I

    move-result v1

    sput v1, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->pid:I

    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 41
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stop()V
    .locals 3

    .line 46
    sget-object v0, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    sget v1, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->pid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 48
    sget v1, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->pid:I

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 49
    sput v2, Lcom/winlator/xenvironment/components/GuestProgramLauncherComponent;->pid:I

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 52
    return-void

    .line 51
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
