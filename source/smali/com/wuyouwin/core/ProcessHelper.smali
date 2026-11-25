.class public abstract Lcom/wuyouwin/core/ProcessHelper;
.super Ljava/lang/Object;
.source "ProcessHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/core/ProcessHelper$PStat;,
        Lcom/wuyouwin/core/ProcessHelper$PState;
    }
.end annotation


# static fields
.field private static final debugCallbacks:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$3nSCa6bsJng9bB7xCCy_NB63tzo(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/wuyouwin/core/ProcessHelper;->lambda$getChildProcesses$2(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5Z46QKzM08ejExfPIOoQLnh9h_A(Ljava/io/InputStream;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/wuyouwin/core/ProcessHelper;->lambda$createDebugThread$0(Ljava/io/InputStream;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k9SeqXbiUnM4QCw_t6149diRnu0(Ljava/lang/Process;Lcom/wuyouwin/core/Callback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/wuyouwin/core/ProcessHelper;->lambda$createWaitForThread$1(Ljava/lang/Process;Lcom/wuyouwin/core/Callback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wuyouwin/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method public static addDebugCallback(Lcom/wuyouwin/core/Callback;)V
    .locals 2

    .line 130
    .local p0, "callback":Lcom/wuyouwin/core/Callback;, "Lcom/wuyouwin/core/Callback<Ljava/lang/String;>;"
    sget-object v0, Lcom/wuyouwin/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 131
    :try_start_0
    sget-object v1, Lcom/wuyouwin/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/wuyouwin/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static createDebugThread(Ljava/io/InputStream;)V
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .line 97
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/wuyouwin/core/ProcessHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/wuyouwin/core/ProcessHelper$$ExternalSyntheticLambda1;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method

.method private static createWaitForThread(Ljava/lang/Process;Lcom/wuyouwin/core/Callback;)V
    .locals 2
    .param p0, "process"    # Ljava/lang/Process;

    .line 114
    .local p1, "terminationCallback":Lcom/wuyouwin/core/Callback;, "Lcom/wuyouwin/core/Callback<Ljava/lang/Integer;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/wuyouwin/core/ProcessHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/wuyouwin/core/ProcessHelper$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Process;Lcom/wuyouwin/core/Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method public static exec(Ljava/lang/String;Lcom/wuyouwin/core/EnvVars;Ljava/io/File;)I
    .locals 1
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "envVars"    # Lcom/wuyouwin/core/EnvVars;
    .param p2, "workingDir"    # Ljava/io/File;

    .line 67
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/wuyouwin/core/ProcessHelper;->exec(Ljava/lang/String;Lcom/wuyouwin/core/EnvVars;Ljava/io/File;Lcom/wuyouwin/core/Callback;)I

    move-result v0

    return v0
.end method

.method public static exec(Ljava/lang/String;Lcom/wuyouwin/core/EnvVars;Ljava/io/File;Lcom/wuyouwin/core/Callback;)I
    .locals 7
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "envVars"    # Lcom/wuyouwin/core/EnvVars;
    .param p2, "workingDir"    # Ljava/io/File;

    .line 71
    .local p3, "terminationCallback":Lcom/wuyouwin/core/Callback;, "Lcom/wuyouwin/core/Callback<Ljava/lang/Integer;>;"
    const/4 v0, -0x1

    .line 73
    .local v0, "pid":I
    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-static {p0}, Lcom/wuyouwin/core/ProcessHelper;->splitCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    move-result-object v1

    .line 74
    .local v1, "processBuilder":Ljava/lang/ProcessBuilder;
    sget-object v2, Lcom/wuyouwin/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    const-string v4, "/dev/null"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/ProcessBuilder;->redirectOutput(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    goto :goto_0

    .line 92
    .end local v1    # "processBuilder":Ljava/lang/ProcessBuilder;
    :catch_0
    move-exception v1

    goto :goto_2

    .line 76
    .restart local v1    # "processBuilder":Ljava/lang/ProcessBuilder;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v2

    .line 77
    .local v2, "environment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/wuyouwin/core/EnvVars;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p1, v5}, Lcom/wuyouwin/core/EnvVars;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 79
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4

    .line 80
    .local v4, "process":Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "pid"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 81
    .local v5, "pidField":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 82
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    move v0, v3

    .line 83
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 85
    sget-object v3, Lcom/wuyouwin/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 86
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/wuyouwin/core/ProcessHelper;->createDebugThread(Ljava/io/InputStream;)V

    .line 87
    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/wuyouwin/core/ProcessHelper;->createDebugThread(Ljava/io/InputStream;)V

    .line 90
    :cond_2
    if-eqz p3, :cond_3

    invoke-static {v4, p3}, Lcom/wuyouwin/core/ProcessHelper;->createWaitForThread(Ljava/lang/Process;Lcom/wuyouwin/core/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v1    # "processBuilder":Ljava/lang/ProcessBuilder;
    .end local v2    # "environment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "process":Ljava/lang/Process;
    .end local v5    # "pidField":Ljava/lang/reflect/Field;
    :cond_3
    :goto_2
    nop

    .line 93
    return v0
.end method

.method public static getAffinityMask(Ljava/lang/String;)I
    .locals 10
    .param p0, "cpuList"    # Ljava/lang/String;

    .line 200
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_1

    .line 201
    :cond_1
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 203
    .local v2, "affinityMask":I
    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    .line 204
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v5

    .line 205
    .local v5, "index":B
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    int-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    or-int/2addr v2, v6

    .line 203
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "index":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_2
    return v2

    .line 200
    .end local v1    # "values":[Ljava/lang/String;
    .end local v2    # "affinityMask":I
    :goto_1
    return v0
.end method

.method public static getAffinityMask([Z)I
    .locals 6
    .param p0, "cpuList"    # [Z

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "affinityMask":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 213
    aget-boolean v2, p0, v1

    if-eqz v2, :cond_0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    or-int/2addr v0, v2

    .line 212
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 215
    .end local v1    # "i":I
    return v0
.end method

.method public static getChildProcesses()Ljava/util/List;
    .locals 16

    .line 284
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, "procFile":Ljava/io/File;
    new-instance v1, Lcom/wuyouwin/core/ProcessHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/wuyouwin/core/ProcessHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "pids":[Ljava/lang/String;
    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 287
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wuyouwin/core/ProcessHelper$PStat;>;"
    invoke-static {}, Landroid/system/Os;->getpid()I

    move-result v3

    .line 290
    .local v3, "parentPID":I
    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_a

    aget-object v7, v1, v6

    .line 291
    .local v7, "pid":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/util/Scanner;

    new-instance v9, Ljava/io/FileInputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/proc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/stat"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .local v8, "scanner":Ljava/util/Scanner;
    :try_start_1
    new-instance v9, Lcom/wuyouwin/core/ProcessHelper$PStat;

    invoke-direct {v9}, Lcom/wuyouwin/core/ProcessHelper$PStat;-><init>()V

    .line 293
    .local v9, "pstat":Lcom/wuyouwin/core/ProcessHelper$PStat;
    const/4 v10, 0x0

    .line 295
    .local v10, "index":I
    :goto_1
    invoke-virtual {v8}, Ljava/util/Scanner;->hasNext()Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_4

    const/4 v11, 0x4

    if-ge v10, v11, :cond_4

    .line 296
    add-int/lit8 v13, v10, 0x1

    .end local v10    # "index":I
    .local v13, "index":I
    const/4 v14, 0x2

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_6

    .line 331
    :pswitch_0
    invoke-virtual {v8}, Ljava/util/Scanner;->nextInt()I

    move-result v10

    iput v10, v9, Lcom/wuyouwin/core/ProcessHelper$PStat;->parentPID:I

    goto/16 :goto_6

    .line 291
    .end local v9    # "pstat":Lcom/wuyouwin/core/ProcessHelper$PStat;
    .end local v13    # "index":I
    :catchall_0
    move-exception v4

    goto/16 :goto_8

    .line 308
    .restart local v9    # "pstat":Lcom/wuyouwin/core/ProcessHelper$PStat;
    .restart local v13    # "index":I
    :pswitch_1
    invoke-virtual {v8}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :cond_1
    goto :goto_2

    :sswitch_0
    const-string v11, "Z"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v12, 0x3

    goto :goto_3

    :sswitch_1
    const-string v11, "X"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v12, 0x5

    goto :goto_3

    :sswitch_2
    const-string v12, "T"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v12, v11

    goto :goto_3

    :sswitch_3
    const-string v11, "S"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_3

    :sswitch_4
    const-string v11, "R"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v12, v5

    goto :goto_3

    :sswitch_5
    const-string v11, "D"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v12, v14

    goto :goto_3

    :goto_2
    const/4 v12, -0x1

    :goto_3
    packed-switch v12, :pswitch_data_1

    goto :goto_4

    .line 325
    :pswitch_2
    sget-object v10, Lcom/wuyouwin/core/ProcessHelper$PState;->DEAD:Lcom/wuyouwin/core/ProcessHelper$PState;

    iput-object v10, v9, Lcom/wuyouwin/core/ProcessHelper$PStat;->state:Lcom/wuyouwin/core/ProcessHelper$PState;

    goto :goto_4

    .line 322
    :pswitch_3
    sget-object v10, Lcom/wuyouwin/core/ProcessHelper$PState;->STOPPED:Lcom/wuyouwin/core/ProcessHelper$PState;

    iput-object v10, v9, Lcom/wuyouwin/core/ProcessHelper$PStat;->state:Lcom/wuyouwin/core/ProcessHelper$PState;

    .line 323
    goto :goto_4

    .line 319
    :pswitch_4
    sget-object v10, Lcom/wuyouwin/core/ProcessHelper$PState;->ZOMBIE:Lcom/wuyouwin/core/ProcessHelper$PState;

    iput-object v10, v9, Lcom/wuyouwin/core/ProcessHelper$PStat;->state:Lcom/wuyouwin/core/ProcessHelper$PState;

    .line 320
    goto :goto_4

    .line 316
    :pswitch_5
    sget-object v10, Lcom/wuyouwin/core/ProcessHelper$PState;->WAITING:Lcom/wuyouwin/core/ProcessHelper$PState;

    iput-object v10, v9, Lcom/wuyouwin/core/ProcessHelper$PStat;->state:Lcom/wuyouwin/core/ProcessHelper$PState;

    .line 317
    goto :goto_4

    .line 313
    :pswitch_6
    sget-object v10, Lcom/wuyouwin/core/ProcessHelper$PState;->SLEEPING:Lcom/wuyouwin/core/ProcessHelper$PState;

    iput-object v10, v9, Lcom/wuyouwin/core/ProcessHelper$PStat;->state:Lcom/wuyouwin/core/ProcessHelper$PState;

    .line 314
    goto :goto_4

    .line 310
    :pswitch_7
    sget-object v10, Lcom/wuyouwin/core/ProcessHelper$PState;->RUNNING:Lcom/wuyouwin/core/ProcessHelper$PState;

    iput-object v10, v9, Lcom/wuyouwin/core/ProcessHelper$PStat;->state:Lcom/wuyouwin/core/ProcessHelper$PState;

    .line 311
    nop

    .line 328
    :goto_4
    goto :goto_6

    .line 301
    :pswitch_8
    invoke-virtual {v8}, Ljava/util/Scanner;->delimiter()Ljava/util/regex/Pattern;

    move-result-object v10

    .line 302
    .local v10, "oldDelimiter":Ljava/util/regex/Pattern;
    const-string v11, "\\)"

    invoke-virtual {v8, v11}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 303
    invoke-virtual {v8}, Ljava/util/Scanner;->hasNext()Z

    move-result v11

    nop

    if-eqz v11, :cond_2

    invoke-virtual {v8}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_2
    const-string v11, ""

    :goto_5
    iput-object v11, v9, Lcom/wuyouwin/core/ProcessHelper$PStat;->shortName:Ljava/lang/String;

    .line 304
    invoke-virtual {v8, v10}, Ljava/util/Scanner;->useDelimiter(Ljava/util/regex/Pattern;)Ljava/util/Scanner;

    .line 305
    invoke-virtual {v8}, Ljava/util/Scanner;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v8}, Ljava/util/Scanner;->next()Ljava/lang/String;

    goto :goto_6

    .line 298
    .end local v10    # "oldDelimiter":Ljava/util/regex/Pattern;
    :pswitch_9
    invoke-virtual {v8}, Ljava/util/Scanner;->nextInt()I

    move-result v10

    iput v10, v9, Lcom/wuyouwin/core/ProcessHelper$PStat;->pid:I

    .line 299
    nop

    .line 332
    :cond_3
    :goto_6
    move v10, v13

    goto/16 :goto_1

    .line 336
    .end local v13    # "index":I
    .local v10, "index":I
    :cond_4
    iget v11, v9, Lcom/wuyouwin/core/ProcessHelper$PStat;->parentPID:I

    if-eq v11, v3, :cond_5

    iget v11, v9, Lcom/wuyouwin/core/ProcessHelper$PStat;->pid:I

    if-le v11, v3, :cond_9

    .line 337
    :cond_5
    iget v11, v9, Lcom/wuyouwin/core/ProcessHelper$PStat;->pid:I

    invoke-static {v11}, Lcom/wuyouwin/core/ProcessHelper;->getProcessName(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/wuyouwin/core/ProcessHelper$PStat;->name:Ljava/lang/String;

    .line 338
    iget-object v11, v9, Lcom/wuyouwin/core/ProcessHelper$PStat;->name:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, v9, Lcom/wuyouwin/core/ProcessHelper$PStat;->shortName:Ljava/lang/String;

    iput-object v11, v9, Lcom/wuyouwin/core/ProcessHelper$PStat;->name:Ljava/lang/String;

    .line 339
    :cond_6
    iget-object v11, v9, Lcom/wuyouwin/core/ProcessHelper$PStat;->name:Ljava/lang/String;

    const-string v13, "wine"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    iget-object v11, v9, Lcom/wuyouwin/core/ProcessHelper$PStat;->name:Ljava/lang/String;

    const-string v13, ".exe"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    :cond_7
    goto :goto_7

    :cond_8
    move v12, v5

    :goto_7
    iput-boolean v12, v9, Lcom/wuyouwin/core/ProcessHelper$PStat;->guestProcess:Z

    .line 340
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    .end local v9    # "pstat":Lcom/wuyouwin/core/ProcessHelper$PStat;
    .end local v10    # "index":I
    :cond_9
    :try_start_2
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 345
    .end local v8    # "scanner":Ljava/util/Scanner;
    nop

    .line 290
    .end local v7    # "pid":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 343
    .restart local v7    # "pid":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_a

    .line 291
    .restart local v8    # "scanner":Ljava/util/Scanner;
    :goto_8
    :try_start_3
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "procFile":Ljava/io/File;
    .end local v1    # "pids":[Ljava/lang/String;
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wuyouwin/core/ProcessHelper$PStat;>;"
    .end local v3    # "parentPID":I
    .end local v7    # "pid":Ljava/lang/String;
    :goto_9
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 343
    .end local v8    # "scanner":Ljava/util/Scanner;
    .restart local v0    # "procFile":Ljava/io/File;
    .restart local v1    # "pids":[Ljava/lang/String;
    .restart local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wuyouwin/core/ProcessHelper$PStat;>;"
    .restart local v3    # "parentPID":I
    .restart local v7    # "pid":Ljava/lang/String;
    :goto_a
    nop

    .line 344
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 348
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "pid":Ljava/lang/String;
    :cond_a
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_5
        0x52 -> :sswitch_4
        0x53 -> :sswitch_3
        0x54 -> :sswitch_2
        0x58 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static getMemoryUsage(I)J
    .locals 9
    .param p0, "pid"    # I

    .line 225
    :try_start_0
    new-instance v0, Ljava/util/Scanner;

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/statm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .local v0, "scanner":Ljava/util/Scanner;
    const/4 v1, 0x0

    .line 227
    .local v1, "index":B
    const-wide/16 v2, 0x0

    .line 228
    .local v2, "vmSize":J
    const-wide/16 v4, 0x0

    .line 230
    .local v4, "resident":J
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x2

    if-ge v1, v6, :cond_1

    .line 231
    add-int/lit8 v6, v1, 0x1

    int-to-byte v6, v6

    .line 232
    .local v1, "column":B
    .local v6, "index":B
    if-nez v1, :cond_0

    .line 233
    invoke-virtual {v0}, Ljava/util/Scanner;->nextLong()J

    move-result-wide v7

    move-wide v2, v7

    goto :goto_1

    .line 225
    .end local v1    # "column":B
    .end local v2    # "vmSize":J
    .end local v4    # "resident":J
    .end local v6    # "index":B
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 235
    .restart local v1    # "column":B
    .restart local v2    # "vmSize":J
    .restart local v4    # "resident":J
    .restart local v6    # "index":B
    :cond_0
    invoke-virtual {v0}, Ljava/util/Scanner;->nextLong()J

    move-result-wide v7

    move-wide v4, v7

    .line 236
    .end local v1    # "column":B
    :goto_1
    move v1, v6

    goto :goto_0

    .line 238
    .end local v6    # "index":B
    .local v1, "index":B
    :cond_1
    sget v6, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v6}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    mul-long/2addr v6, v4

    .line 239
    :try_start_2
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 238
    return-wide v6

    .line 240
    .end local v0    # "scanner":Ljava/util/Scanner;
    .end local v1    # "index":B
    .end local v2    # "vmSize":J
    .end local v4    # "resident":J
    :catch_0
    move-exception v0

    goto :goto_4

    .line 225
    .restart local v0    # "scanner":Ljava/util/Scanner;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "pid":I
    :goto_3
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 240
    .end local v0    # "scanner":Ljava/util/Scanner;
    .restart local p0    # "pid":I
    :goto_4
    nop

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public static getProcessCmdLine(I)Ljava/util/List;
    .locals 7
    .param p0, "pid"    # I

    .line 260
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/cmdline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v1, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v3, 0x40

    new-array v3, v3, [C

    .line 266
    .local v3, "chars":[C
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/Reader;->read([C)I

    move-result v4

    move v5, v4

    .local v5, "charsRead":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_3

    .line 267
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_2

    .line 268
    aget-char v6, v3, v4

    if-nez v6, :cond_1

    .line 269
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_3

    .line 270
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v6

    goto :goto_2

    .line 260
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "chars":[C
    .end local v4    # "i":I
    .end local v5    # "charsRead":I
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 273
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "chars":[C
    .restart local v4    # "i":I
    .restart local v5    # "charsRead":I
    :cond_1
    aget-char v6, v3, v4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v4    # "i":I
    :cond_2
    :goto_3
    goto :goto_0

    .line 276
    :cond_3
    nop

    .line 277
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 276
    return-object v2

    .line 278
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "chars":[C
    .end local v5    # "charsRead":I
    :catch_0
    move-exception v0

    goto :goto_6

    .line 260
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    :goto_4
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "pid":I
    :goto_5
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 278
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .restart local p0    # "pid":I
    :goto_6
    nop

    .line 279
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getProcessName(I)Ljava/lang/String;
    .locals 5
    .param p0, "pid"    # I

    .line 246
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/cmdline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v1, "result":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    move v3, v2

    .local v3, "chr":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    if-eqz v3, :cond_0

    .line 250
    int-to-char v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 246
    .end local v1    # "result":Ljava/lang/StringBuilder;
    .end local v3    # "chr":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 252
    .restart local v1    # "result":Ljava/lang/StringBuilder;
    .restart local v3    # "chr":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v4, 0x2f

    if-ne v2, v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wuyouwin/core/FileUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 252
    return-object v2

    .line 254
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .end local v1    # "result":Ljava/lang/StringBuilder;
    .end local v3    # "chr":I
    :catch_0
    move-exception v0

    goto :goto_4

    .line 246
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "pid":I
    :goto_3
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 254
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .restart local p0    # "pid":I
    :goto_4
    nop

    .line 255
    .local v0, "e":Ljava/io/IOException;
    const-string v1, ""

    return-object v1
.end method

.method public static killProcess(I)V
    .locals 1
    .param p0, "pid"    # I

    .line 55
    sget v0, Landroid/system/OsConstants;->SIGKILL:I

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 56
    return-void
.end method

.method private static synthetic lambda$createDebugThread$0(Ljava/io/InputStream;)V
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .line 98
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .local v0, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "line":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 101
    sget-object v1, Lcom/wuyouwin/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    :try_start_2
    sget-object v3, Lcom/wuyouwin/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 103
    sget-object v3, Lcom/wuyouwin/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wuyouwin/core/Callback;

    .local v4, "callback":Lcom/wuyouwin/core/Callback;, "Lcom/wuyouwin/core/Callback<Ljava/lang/String;>;"
    invoke-interface {v4, v2}, Lcom/wuyouwin/core/Callback;->call(Ljava/lang/Object;)V

    .end local v4    # "callback":Lcom/wuyouwin/core/Callback;, "Lcom/wuyouwin/core/Callback<Ljava/lang/String;>;"
    goto :goto_1

    .line 106
    :catchall_0
    move-exception v3

    goto :goto_2

    :cond_0
    monitor-exit v1

    goto :goto_0

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "reader":Ljava/io/BufferedReader;
    .end local p0    # "inputStream":Ljava/io/InputStream;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 98
    .end local v2    # "line":Ljava/lang/String;
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    .restart local p0    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 100
    .restart local v2    # "line":Ljava/lang/String;
    :cond_1
    nop

    .line 108
    .end local v2    # "line":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 109
    .end local v0    # "reader":Ljava/io/BufferedReader;
    :goto_3
    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_3

    .line 98
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "inputStream":Ljava/io/InputStream;
    :goto_5
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 110
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .restart local p0    # "inputStream":Ljava/io/InputStream;
    :goto_6
    return-void
.end method

.method private static synthetic lambda$createWaitForThread$1(Ljava/lang/Process;Lcom/wuyouwin/core/Callback;)V
    .locals 2
    .param p0, "process"    # Ljava/lang/Process;
    .param p1, "terminationCallback"    # Lcom/wuyouwin/core/Callback;

    .line 116
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 117
    .local v0, "status":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/wuyouwin/core/Callback;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v0    # "status":I
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 120
    :goto_1
    return-void
.end method

.method private static synthetic lambda$getChildProcesses$2(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .line 285
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[0-9]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static removeAllDebugCallbacks()V
    .locals 2

    .line 124
    sget-object v0, Lcom/wuyouwin/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 125
    :try_start_0
    sget-object v1, Lcom/wuyouwin/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 126
    monitor-exit v0

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static removeDebugCallback(Lcom/wuyouwin/core/Callback;)V
    .locals 2

    .line 136
    .local p0, "callback":Lcom/wuyouwin/core/Callback;, "Lcom/wuyouwin/core/Callback<Ljava/lang/String;>;"
    sget-object v0, Lcom/wuyouwin/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 137
    :try_start_0
    sget-object v1, Lcom/wuyouwin/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 138
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static resumeProcess(I)V
    .locals 1
    .param p0, "pid"    # I

    .line 51
    sget v0, Landroid/system/OsConstants;->SIGCONT:I

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 52
    return-void
.end method

.method public static splitCommand(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "command"    # Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 144
    .local v1, "startedQuotes":Z
    const-string v2, ""

    .line 146
    .local v2, "value":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "count":I
    :goto_0
    const/4 v5, 0x0

    if-ge v3, v4, :cond_8

    .line 147
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 149
    .local v6, "currChar":C
    const/16 v7, 0x22

    if-eqz v1, :cond_1

    .line 150
    if-ne v6, v7, :cond_0

    .line 151
    const/4 v1, 0x0

    .line 152
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    const-string v2, ""

    goto/16 :goto_2

    .line 158
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 160
    :cond_1
    if-ne v6, v7, :cond_2

    .line 161
    const/4 v1, 0x1

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 165
    :cond_2
    add-int/lit8 v7, v4, -0x1

    if-ge v3, v7, :cond_3

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 166
    .local v5, "nextChar":C
    :cond_3
    const/16 v7, 0x5c

    const/16 v8, 0x20

    if-eq v6, v8, :cond_4

    if-ne v6, v7, :cond_5

    if-ne v5, v8, :cond_5

    :cond_4
    goto :goto_1

    .line 177
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    add-int/lit8 v7, v4, -0x1

    if-ne v3, v7, :cond_7

    .line 179
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    const-string v2, ""

    goto :goto_2

    .line 167
    :goto_1
    if-ne v6, v7, :cond_6

    .line 168
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 171
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 172
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    const-string v2, ""

    .line 146
    .end local v5    # "nextChar":C
    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .end local v6    # "currChar":C
    :cond_8
    nop

    .line 186
    .end local v3    # "i":I
    .end local v4    # "count":I
    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public static suspendProcess(I)V
    .locals 1
    .param p0, "pid"    # I

    .line 47
    sget v0, Landroid/system/OsConstants;->SIGSTOP:I

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 48
    return-void
.end method
