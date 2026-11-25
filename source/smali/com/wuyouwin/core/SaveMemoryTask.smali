.class public Lcom/wuyouwin/core/SaveMemoryTask;
.super Ljava/util/TimerTask;
.source "SaveMemoryTask.java"


# instance fields
.field private cachedProcessName:Ljava/lang/String;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wuyouwin/core/SaveMemoryTask;->cachedProcessName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 27
    invoke-static {}, Lcom/wuyouwin/core/ProcessHelper;->getChildProcesses()Ljava/util/List;

    move-result-object v0

    .line 28
    .local v0, "processes":Ljava/util/List;, "Ljava/util/List<Lcom/wuyouwin/core/ProcessHelper$PStat;>;"
    const/4 v1, 0x0

    .line 29
    .local v1, "steamPID":I
    const/4 v2, 0x0

    .line 30
    .local v2, "saveMemory":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wuyouwin/core/ProcessHelper$PStat;

    .line 31
    .local v4, "process":Lcom/wuyouwin/core/ProcessHelper$PStat;
    iget-object v5, v4, Lcom/wuyouwin/core/ProcessHelper$PStat;->name:Ljava/lang/String;

    const-string v6, "steam.exe"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 32
    iget v1, v4, Lcom/wuyouwin/core/ProcessHelper$PStat;->pid:I

    goto :goto_2

    .line 34
    :cond_0
    if-lez v1, :cond_1

    iget-object v5, v4, Lcom/wuyouwin/core/ProcessHelper$PStat;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/wuyouwin/core/SaveMemoryTask;->cachedProcessName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 35
    const/4 v2, 0x1

    goto :goto_2

    .line 37
    :cond_1
    if-lez v1, :cond_3

    iget v5, v4, Lcom/wuyouwin/core/ProcessHelper$PStat;->pid:I

    if-le v5, v1, :cond_3

    iget v5, v4, Lcom/wuyouwin/core/ProcessHelper$PStat;->pid:I

    invoke-static {v5}, Lcom/wuyouwin/core/ProcessHelper;->getMemoryUsage(I)J

    move-result-wide v5

    const-wide/32 v7, 0x1dcd6500

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    .line 38
    iget v5, v4, Lcom/wuyouwin/core/ProcessHelper$PStat;->pid:I

    invoke-static {v5}, Lcom/wuyouwin/core/ProcessHelper;->getProcessCmdLine(I)Ljava/util/List;

    move-result-object v5

    .line 39
    .local v5, "cmdLine":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 40
    .local v7, "cmd":Ljava/lang/String;
    const-string v8, "steamapps"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 41
    iget-object v6, v4, Lcom/wuyouwin/core/ProcessHelper$PStat;->name:Ljava/lang/String;

    iput-object v6, p0, Lcom/wuyouwin/core/SaveMemoryTask;->cachedProcessName:Ljava/lang/String;

    .line 42
    const/4 v2, 0x1

    .line 43
    goto :goto_2

    .line 40
    :cond_2
    nop

    .line 45
    .end local v7    # "cmd":Ljava/lang/String;
    goto :goto_1

    .line 47
    .end local v5    # "cmdLine":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    goto :goto_3

    .line 48
    .end local v4    # "process":Lcom/wuyouwin/core/ProcessHelper$PStat;
    :cond_4
    goto :goto_0

    .line 50
    :cond_5
    :goto_3
    if-eqz v2, :cond_8

    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wuyouwin/core/ProcessHelper$PStat;

    .line 52
    .restart local v4    # "process":Lcom/wuyouwin/core/ProcessHelper$PStat;
    iget-object v5, v4, Lcom/wuyouwin/core/ProcessHelper$PStat;->name:Ljava/lang/String;

    const-string v6, "steamwebhelper.exe"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 53
    iget v5, v4, Lcom/wuyouwin/core/ProcessHelper$PStat;->pid:I

    invoke-static {v5}, Lcom/wuyouwin/core/ProcessHelper;->killProcess(I)V

    .line 55
    .end local v4    # "process":Lcom/wuyouwin/core/ProcessHelper$PStat;
    :cond_6
    goto :goto_4

    :cond_7
    goto :goto_5

    .line 57
    :cond_8
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/wuyouwin/core/SaveMemoryTask;->cachedProcessName:Ljava/lang/String;

    .line 58
    :goto_5
    return-void
.end method

.method public declared-synchronized start()V
    .locals 7

    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/wuyouwin/core/SaveMemoryTask;->timer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 13
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/core/SaveMemoryTask;->timer:Ljava/util/Timer;

    .line 14
    iget-object v1, p0, Lcom/wuyouwin/core/SaveMemoryTask;->timer:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1f4

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    .line 11
    .end local p0    # "this":Lcom/wuyouwin/core/SaveMemoryTask;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
