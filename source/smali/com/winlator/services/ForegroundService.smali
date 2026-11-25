.class public Lcom/winlator/services/ForegroundService;
.super Landroid/app/Service;
.source "ForegroundService.java"


# static fields
.field private static final appInPipMode:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile instance:Lcom/winlator/services/ForegroundService;

.field private static volatile isAppInBackground:Z

.field private static volatile isScreenLocked:Z

.field private static volatile isSessionInBackground:Z

.field private static volatile prefs:Landroid/content/SharedPreferences;

.field private static final serviceRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile serviceStopping:Z

.field private static final sessionActive:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final appLifecycleObserver:Landroidx/lifecycle/DefaultLifecycleObserver;

.field private notificationId:I

.field private notificationUtils:Lcom/winlator/services/NotificationUtils;

.field private screenReceiverHandler:Landroid/os/Handler;

.field private screenReceiverThread:Landroid/os/HandlerThread;

.field private screenStateReceiver:Landroid/content/BroadcastReceiver;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$05rWXrC8OKKO5rSvKRVxOXgfCG4()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/winlator/services/ForegroundService;->lambda$onTaskRemoved$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$P4yyT0_rd-EmoUN4-tgjUZQHbOU()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/winlator/services/ForegroundService;->lambda$onTaskRemoved$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$eP8sl4dsRzsfzORiIk1dK90NGVY()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/winlator/services/ForegroundService;->lambda$onTaskRemoved$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/winlator/services/ForegroundService;->sessionActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/winlator/services/ForegroundService;->serviceRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    sput-boolean v1, Lcom/winlator/services/ForegroundService;->serviceStopping:Z

    .line 41
    sput-boolean v1, Lcom/winlator/services/ForegroundService;->isSessionInBackground:Z

    .line 46
    sput-boolean v1, Lcom/winlator/services/ForegroundService;->isAppInBackground:Z

    .line 47
    sput-boolean v1, Lcom/winlator/services/ForegroundService;->isScreenLocked:Z

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/winlator/services/ForegroundService;->appInPipMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/winlator/services/ForegroundService;->notificationId:I

    .line 148
    new-instance v0, Lcom/winlator/services/ForegroundService$1;

    invoke-direct {v0, p0}, Lcom/winlator/services/ForegroundService$1;-><init>(Lcom/winlator/services/ForegroundService;)V

    iput-object v0, p0, Lcom/winlator/services/ForegroundService;->appLifecycleObserver:Landroidx/lifecycle/DefaultLifecycleObserver;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 31
    sput-boolean p0, Lcom/winlator/services/ForegroundService;->isAppInBackground:Z

    return p0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .line 31
    invoke-static {p0}, Lcom/winlator/services/ForegroundService;->updateForegroundState(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 31
    sput-boolean p0, Lcom/winlator/services/ForegroundService;->isScreenLocked:Z

    return p0
.end method

.method static synthetic access$300(Lcom/winlator/services/ForegroundService;)V
    .locals 0
    .param p0, "x0"    # Lcom/winlator/services/ForegroundService;

    .line 31
    invoke-direct {p0}, Lcom/winlator/services/ForegroundService;->acquireWakeLock()V

    return-void
.end method

.method static synthetic access$400(Lcom/winlator/services/ForegroundService;)V
    .locals 0
    .param p0, "x0"    # Lcom/winlator/services/ForegroundService;

    .line 31
    invoke-direct {p0}, Lcom/winlator/services/ForegroundService;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    .line 385
    iget-object v0, p0, Lcom/winlator/services/ForegroundService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    return-void

    .line 386
    :cond_0
    sget-object v0, Lcom/winlator/services/ForegroundService;->prefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    return-void

    .line 387
    :cond_1
    sget-object v0, Lcom/winlator/services/ForegroundService;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "enable_background_wakelock"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/winlator/services/ForegroundService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_3

    .line 389
    iget-object v0, p0, Lcom/winlator/services/ForegroundService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 390
    const-string v0, "FGService"

    const-string v1, "WakeLock acquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_3
    return-void
.end method

.method private ensureForeground()V
    .locals 8

    .line 275
    sget-object v0, Lcom/winlator/services/ForegroundService;->sessionActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 278
    .local v0, "containerActive":Z
    if-eqz v0, :cond_0

    const-class v1, Lcom/winlator/XServerDisplayActivity;

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_0
    const-class v1, Lcom/winlator/MainActivity;

    goto :goto_0

    .line 280
    .local v7, "targetActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    iget-object v2, p0, Lcom/winlator/services/ForegroundService;->notificationUtils:Lcom/winlator/services/NotificationUtils;

    .line 281
    invoke-static {}, Lcom/winlator/services/ForegroundService;->getNotificationContent()Ljava/lang/String;

    move-result-object v3

    .line 280
    const-string v4, "Winlator"

    const-class v5, Lcom/winlator/XServerDisplayActivity;

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/winlator/services/NotificationUtils;->createForegroundNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Landroid/app/Notification;

    move-result-object v1

    .line 289
    .local v1, "n":Landroid/app/Notification;
    iget v2, p0, Lcom/winlator/services/ForegroundService;->notificationId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 290
    const-string v2, "winlator.FGS"

    invoke-static {p0, v2}, Lcom/winlator/services/NotificationUtils;->generateNotificationId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/winlator/services/ForegroundService;->notificationId:I

    .line 295
    :cond_1
    :try_start_0
    sget-object v2, Lcom/winlator/services/ForegroundService;->serviceRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    .line 296
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_2

    .line 297
    iget v2, p0, Lcom/winlator/services/ForegroundService;->notificationId:I

    const/4 v3, 0x2

    invoke-static {p0, v2, v1, v3}, Lcom/winlator/services/ForegroundService$$ExternalSyntheticApiModelOutline0;->m(Lcom/winlator/services/ForegroundService;ILandroid/app/Notification;I)V

    goto :goto_2

    .line 306
    :catch_0
    move-exception v2

    goto :goto_3

    .line 300
    :cond_2
    iget v2, p0, Lcom/winlator/services/ForegroundService;->notificationId:I

    invoke-virtual {p0, v2, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_2

    .line 304
    :cond_3
    iget-object v2, p0, Lcom/winlator/services/ForegroundService;->notificationUtils:Lcom/winlator/services/NotificationUtils;

    iget v3, p0, Lcom/winlator/services/ForegroundService;->notificationId:I

    invoke-virtual {v2, v3, v1}, Lcom/winlator/services/NotificationUtils;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_2
    goto :goto_4

    .line 306
    :goto_3
    nop

    .line 307
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "FGService"

    const-string v4, "Failed to startForeground in ensureForeground()"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method private static getNotificationContent()Ljava/lang/String;
    .locals 2

    .line 373
    sget-object v0, Lcom/winlator/services/ForegroundService;->instance:Lcom/winlator/services/ForegroundService;

    .line 374
    .local v0, "svc":Lcom/winlator/services/ForegroundService;
    if-nez v0, :cond_0

    const-string v1, "Winlator is running in the background"

    return-object v1

    .line 376
    :cond_0
    sget-object v1, Lcom/winlator/services/ForegroundService;->sessionActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 377
    sget-boolean v1, Lcom/winlator/services/ForegroundService;->isSessionInBackground:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/winlator/services/ForegroundService;->isDeviceLocked()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/winlator/services/ForegroundService;->isInPictureInPictureMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 378
    :cond_1
    const v1, 0x7f1000b4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 379
    :cond_2
    const v1, 0x7f1000b5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 377
    :goto_0
    return-object v1

    .line 381
    :cond_3
    const v1, 0x7f1000b6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static hasReason()Z
    .locals 1

    .line 166
    sget-object v0, Lcom/winlator/services/ForegroundService;->sessionActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static isDeviceLocked()Z
    .locals 1

    .line 141
    sget-boolean v0, Lcom/winlator/services/ForegroundService;->isScreenLocked:Z

    return v0
.end method

.method private static isInPictureInPictureMode()Z
    .locals 1

    .line 134
    sget-object v0, Lcom/winlator/services/ForegroundService;->appInPipMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$onTaskRemoved$0()V
    .locals 1

    .line 335
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method private static synthetic lambda$onTaskRemoved$1()V
    .locals 4

    .line 329
    sget-object v0, Lcom/winlator/services/ForegroundService;->serviceRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 330
    sget-object v0, Lcom/winlator/services/ForegroundService;->instance:Lcom/winlator/services/ForegroundService;

    if-eqz v0, :cond_0

    .line 331
    sget-object v0, Lcom/winlator/services/ForegroundService;->instance:Lcom/winlator/services/ForegroundService;

    invoke-direct {v0}, Lcom/winlator/services/ForegroundService;->stopForegroundCompat()V

    .line 332
    sget-object v0, Lcom/winlator/services/ForegroundService;->instance:Lcom/winlator/services/ForegroundService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 334
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/winlator/services/ForegroundService$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/winlator/services/ForegroundService$$ExternalSyntheticLambda3;-><init>()V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 336
    return-void
.end method

.method private static synthetic lambda$onTaskRemoved$2()V
    .locals 2

    .line 328
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/winlator/services/ForegroundService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/winlator/services/ForegroundService$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static onPauseSession(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .line 84
    if-nez p0, :cond_0

    return-void

    .line 85
    :cond_0
    sget-object v0, Lcom/winlator/services/ForegroundService;->sessionActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "FGService"

    if-nez v0, :cond_1

    .line 86
    const-string v0, "onPauseSession called with no active session; ignoring"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/winlator/services/ForegroundService;->isSessionInBackground:Z

    .line 90
    const-string v0, "onPauseSession"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {p0}, Lcom/winlator/services/ForegroundService;->updateForegroundState(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method public static onResumeSession(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .line 95
    if-nez p0, :cond_0

    return-void

    .line 96
    :cond_0
    sget-object v0, Lcom/winlator/services/ForegroundService;->sessionActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "FGService"

    if-nez v0, :cond_1

    .line 97
    const-string v0, "onResumeSession called with no active session; ignoring"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void

    .line 100
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/winlator/services/ForegroundService;->isSessionInBackground:Z

    .line 101
    const-string v0, "onResumeSession"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v0, Lcom/winlator/services/ForegroundService;->instance:Lcom/winlator/services/ForegroundService;

    if-eqz v0, :cond_2

    .line 103
    sget-object v0, Lcom/winlator/services/ForegroundService;->instance:Lcom/winlator/services/ForegroundService;

    invoke-direct {v0}, Lcom/winlator/services/ForegroundService;->releaseWakeLock()V

    .line 105
    :cond_2
    invoke-static {p0}, Lcom/winlator/services/ForegroundService;->updateForegroundState(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/winlator/services/ForegroundService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/services/ForegroundService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/winlator/services/ForegroundService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 397
    const-string v0, "FGService"

    const-string v1, "WakeLock released"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    return-void
.end method

.method public static setPipMode(Z)V
    .locals 2
    .param p0, "inPip"    # Z

    .line 126
    sget-object v0, Lcom/winlator/services/ForegroundService;->appInPipMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 127
    sget-object v0, Lcom/winlator/services/ForegroundService;->instance:Lcom/winlator/services/ForegroundService;

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/winlator/services/ForegroundService;->instance:Lcom/winlator/services/ForegroundService;

    invoke-direct {v0}, Lcom/winlator/services/ForegroundService;->ensureForeground()V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPipMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FGService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    return-void
.end method

.method public static startSession(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .line 64
    if-nez p0, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/winlator/services/ForegroundService;->prefs:Landroid/content/SharedPreferences;

    .line 66
    sget-object v0, Lcom/winlator/services/ForegroundService;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "FGService"

    if-eqz v0, :cond_2

    .line 67
    sget-object v0, Lcom/winlator/services/ForegroundService;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_background_protection"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    const-string v0, "startSession called with background protection disabled; ignoring"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void

    .line 77
    :cond_1
    sget-object v0, Lcom/winlator/services/ForegroundService;->sessionActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 78
    sput-boolean v3, Lcom/winlator/services/ForegroundService;->isSessionInBackground:Z

    .line 79
    const-string v0, "startSession"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {p0}, Lcom/winlator/services/ForegroundService;->updateForegroundState(Landroid/content/Context;)V

    .line 81
    return-void

    .line 73
    :cond_2
    const-string v0, "startSession called with null SharedPreferences; aborting protection"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method private stopForegroundCompat()V
    .locals 3

    .line 313
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FGService"

    const-string v2, "Failed to stopForeground in stopForegroundCompat()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static stopSession(Landroid/content/Context;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .line 109
    if-nez p0, :cond_0

    return-void

    .line 110
    :cond_0
    sget-object v0, Lcom/winlator/services/ForegroundService;->sessionActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 111
    :cond_1
    sput-boolean v2, Lcom/winlator/services/ForegroundService;->isSessionInBackground:Z

    .line 112
    sget-object v0, Lcom/winlator/services/ForegroundService;->instance:Lcom/winlator/services/ForegroundService;

    if-eqz v0, :cond_2

    .line 113
    sget-object v0, Lcom/winlator/services/ForegroundService;->instance:Lcom/winlator/services/ForegroundService;

    invoke-direct {v0}, Lcom/winlator/services/ForegroundService;->releaseWakeLock()V

    .line 115
    :cond_2
    invoke-static {p0}, Lcom/winlator/services/ForegroundService;->updateForegroundState(Landroid/content/Context;)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopping session in keep-alive services. Request by: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    const-string v1, "FGService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method private static declared-synchronized updateForegroundState(Landroid/content/Context;)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    const-class v0, Lcom/winlator/services/ForegroundService;

    monitor-enter v0

    .line 170
    :try_start_0
    sget-object v1, Lcom/winlator/services/ForegroundService;->instance:Lcom/winlator/services/ForegroundService;

    .line 172
    .local v1, "svc":Lcom/winlator/services/ForegroundService;
    invoke-static {}, Lcom/winlator/services/ForegroundService;->hasReason()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    if-eqz v1, :cond_0

    sget-boolean v2, Lcom/winlator/services/ForegroundService;->serviceStopping:Z

    if-nez v2, :cond_0

    .line 174
    invoke-direct {v1}, Lcom/winlator/services/ForegroundService;->ensureForeground()V

    goto :goto_1

    .line 169
    .end local v1    # "svc":Lcom/winlator/services/ForegroundService;
    .end local p0    # "ctx":Landroid/content/Context;
    :catchall_0
    move-exception p0

    goto :goto_2

    .line 176
    .restart local v1    # "svc":Lcom/winlator/services/ForegroundService;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 177
    .local v2, "app":Landroid/content/Context;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/winlator/services/ForegroundService;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "com.winlator.action.ENSURE_FOREGROUND"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :try_start_1
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    goto :goto_0

    .line 181
    :catch_0
    move-exception v4

    .line 182
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "FGService"

    const-string v6, "Failed to start foreground services"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    .end local v2    # "app":Landroid/content/Context;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 185
    :cond_1
    if-eqz v1, :cond_2

    .line 186
    const-string v2, "FGService"

    const-string v3, "No active reason remains; stopping foreground services"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v2, 0x1

    sput-boolean v2, Lcom/winlator/services/ForegroundService;->serviceStopping:Z

    .line 188
    sget-object v2, Lcom/winlator/services/ForegroundService;->serviceRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 189
    invoke-direct {v1}, Lcom/winlator/services/ForegroundService;->stopForegroundCompat()V

    .line 190
    invoke-virtual {v1}, Landroid/app/Service;->stopSelf()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    .line 169
    .end local v1    # "svc":Lcom/winlator/services/ForegroundService;
    .end local p0    # "ctx":Landroid/content/Context;
    :goto_2
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 367
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .line 197
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 199
    new-instance v0, Lcom/winlator/services/NotificationUtils;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/winlator/services/NotificationUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/winlator/services/ForegroundService;->notificationUtils:Lcom/winlator/services/NotificationUtils;

    .line 201
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 202
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 203
    const-string v2, "Winlator:ForegroundService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/winlator/services/ForegroundService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 207
    iget-object v2, p0, Lcom/winlator/services/ForegroundService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 210
    :cond_0
    sput-object p0, Lcom/winlator/services/ForegroundService;->instance:Lcom/winlator/services/ForegroundService;

    .line 213
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    .line 214
    invoke-interface {v2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 215
    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v2

    xor-int/2addr v1, v2

    sput-boolean v1, Lcom/winlator/services/ForegroundService;->isAppInBackground:Z

    .line 217
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    .line 218
    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v2, p0, Lcom/winlator/services/ForegroundService;->appLifecycleObserver:Landroidx/lifecycle/DefaultLifecycleObserver;

    .line 219
    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 223
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ForegroundService-ScreenReceiver"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/winlator/services/ForegroundService;->screenReceiverThread:Landroid/os/HandlerThread;

    .line 224
    iget-object v1, p0, Lcom/winlator/services/ForegroundService;->screenReceiverThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 225
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/winlator/services/ForegroundService;->screenReceiverThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/winlator/services/ForegroundService;->screenReceiverHandler:Landroid/os/Handler;

    .line 229
    new-instance v1, Lcom/winlator/services/ForegroundService$2;

    invoke-direct {v1, p0}, Lcom/winlator/services/ForegroundService$2;-><init>(Lcom/winlator/services/ForegroundService;)V

    iput-object v1, p0, Lcom/winlator/services/ForegroundService;->screenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 250
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 251
    .local v1, "screenFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    iget-object v2, p0, Lcom/winlator/services/ForegroundService;->screenStateReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/winlator/services/ForegroundService;->screenReceiverHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 255
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 341
    const/4 v0, 0x0

    sput-object v0, Lcom/winlator/services/ForegroundService;->instance:Lcom/winlator/services/ForegroundService;

    .line 342
    const/4 v1, 0x0

    sput-boolean v1, Lcom/winlator/services/ForegroundService;->serviceStopping:Z

    .line 343
    sget-object v2, Lcom/winlator/services/ForegroundService;->serviceRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 344
    sput-boolean v1, Lcom/winlator/services/ForegroundService;->isSessionInBackground:Z

    .line 346
    invoke-direct {p0}, Lcom/winlator/services/ForegroundService;->releaseWakeLock()V

    .line 348
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    .line 349
    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v2, p0, Lcom/winlator/services/ForegroundService;->appLifecycleObserver:Landroidx/lifecycle/DefaultLifecycleObserver;

    .line 350
    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 352
    iget-object v1, p0, Lcom/winlator/services/ForegroundService;->screenStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/winlator/services/ForegroundService;->screenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 354
    :goto_0
    iput-object v0, p0, Lcom/winlator/services/ForegroundService;->screenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/winlator/services/ForegroundService;->notificationUtils:Lcom/winlator/services/NotificationUtils;

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/winlator/services/ForegroundService;->notificationUtils:Lcom/winlator/services/NotificationUtils;

    iget v1, p0, Lcom/winlator/services/ForegroundService;->notificationId:I

    invoke-virtual {v0, v1}, Lcom/winlator/services/NotificationUtils;->cancel(I)V

    .line 361
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 362
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 260
    const/4 v0, 0x0

    sput-boolean v0, Lcom/winlator/services/ForegroundService;->serviceStopping:Z

    .line 261
    invoke-direct {p0}, Lcom/winlator/services/ForegroundService;->ensureForeground()V

    .line 262
    sget-object v1, Lcom/winlator/services/ForegroundService;->serviceRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 264
    invoke-static {}, Lcom/winlator/services/ForegroundService;->hasReason()Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    const-string v1, "FGService"

    const-string v3, "onStartCommand found no active reason; stopping immediately"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    sput-boolean v2, Lcom/winlator/services/ForegroundService;->serviceStopping:Z

    .line 267
    invoke-direct {p0}, Lcom/winlator/services/ForegroundService;->stopForegroundCompat()V

    .line 268
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 269
    sget-object v1, Lcom/winlator/services/ForegroundService;->serviceRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 271
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 3
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .line 322
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 323
    const-string v0, "FGService"

    const-string v1, "Task removed by user. Tearing down session and exiting process."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    sget-object v0, Lcom/winlator/services/ForegroundService;->sessionActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 326
    sput-boolean v1, Lcom/winlator/services/ForegroundService;->isSessionInBackground:Z

    .line 328
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/winlator/services/ForegroundService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/winlator/services/ForegroundService$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "ForegroundServiceCleanup"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 337
    return-void
.end method
