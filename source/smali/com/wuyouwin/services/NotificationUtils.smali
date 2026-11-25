.class public Lcom/wuyouwin/services/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# static fields
.field private static volatile instance:Ljava/lang/ref/WeakReference;


# instance fields
.field private final context:Landroid/content/Context;

.field private final notificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/wuyouwin/services/NotificationUtils;->context:Landroid/content/Context;

    .line 40
    iget-object v1, p0, Lcom/wuyouwin/services/NotificationUtils;->context:Landroid/content/Context;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/wuyouwin/services/NotificationUtils;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/wuyouwin/services/NotificationUtils;->notificationManager:Landroid/app/NotificationManager;

    .line 41
    invoke-virtual {p0}, Lcom/wuyouwin/services/NotificationUtils;->createNotificationChannel()V

    .line 42
    return-void
.end method

.method public static generateNotificationId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationIDName"    # Ljava/lang/String;

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "contextKey":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/wuyouwin/services/NotificationUtils;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .line 23
    sget-object v0, Lcom/wuyouwin/services/NotificationUtils;->instance:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wuyouwin/services/NotificationUtils;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wuyouwin/services/NotificationUtils;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 24
    .local v0, "inst":Lcom/wuyouwin/services/NotificationUtils;
    :goto_0
    if-nez v0, :cond_3

    .line 25
    const-class v2, Lcom/wuyouwin/services/NotificationUtils;

    monitor-enter v2

    .line 26
    :try_start_0
    sget-object v3, Lcom/wuyouwin/services/NotificationUtils;->instance:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    sget-object v1, Lcom/wuyouwin/services/NotificationUtils;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/services/NotificationUtils;

    goto :goto_1

    .line 31
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 26
    :cond_1
    :goto_1
    move-object v0, v1

    .line 27
    if-nez v0, :cond_2

    .line 28
    new-instance v1, Lcom/wuyouwin/services/NotificationUtils;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/wuyouwin/services/NotificationUtils;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .line 29
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/wuyouwin/services/NotificationUtils;->instance:Ljava/lang/ref/WeakReference;

    .line 31
    :cond_2
    monitor-exit v2

    goto :goto_3

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 33
    :cond_3
    :goto_3
    return-object v0
.end method


# virtual methods
.method public cancel(I)V
    .locals 1
    .param p1, "id"    # I

    .line 77
    iget-object v0, p0, Lcom/wuyouwin/services/NotificationUtils;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 78
    return-void
.end method

.method public createForegroundNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Landroid/app/Notification;
    .locals 7
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p4, "exitAction"    # Ljava/lang/String;

    .line 84
    .local p3, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "targetActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wuyouwin/services/NotificationUtils;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/wuyouwin/services/NotificationUtils;->context:Landroid/content/Context;

    const/high16 v2, 0xc000000

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 92
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/wuyouwin/services/NotificationUtils;->context:Landroid/content/Context;

    const-string v5, "winlator_foreground_service"

    invoke-direct {v2, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 94
    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 95
    const v4, 0x7f0800b4

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 96
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 97
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 98
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 99
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 102
    .local v2, "builder":Landroidx/core/app/NotificationCompat$Builder;
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 103
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/wuyouwin/services/NotificationUtils;->context:Landroid/content/Context;

    invoke-direct {v4, v5, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v4, "stopIntent":Landroid/content/Intent;
    invoke-virtual {v4, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-object v5, p0, Lcom/wuyouwin/services/NotificationUtils;->context:Landroid/content/Context;

    const/high16 v6, 0x4000000

    invoke-static {v5, v3, v4, v6}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 108
    .local v5, "stopPendingIntent":Landroid/app/PendingIntent;
    const-string v6, "Exit"

    invoke-virtual {v2, v3, v6, v5}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 111
    .end local v4    # "stopIntent":Landroid/content/Intent;
    .end local v5    # "stopPendingIntent":Landroid/app/PendingIntent;
    :cond_0
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    return-object v3
.end method

.method public createNotificationChannel()V
    .locals 6

    .line 161
    iget-object v1, p0, Lcom/wuyouwin/services/NotificationUtils;->context:Landroid/content/Context;

    const/4 v4, 0x2

    const-string v5, "Allows to display Winlator foreground notifications"

    const-string v2, "winlator_foreground_service"

    const-string v3, "Winlator Foreground Service"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/wuyouwin/services/NotificationUtils;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 168
    return-void
.end method

.method public createNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "importance"    # I

    .line 154
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/wuyouwin/services/NotificationUtils;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 155
    return-void
.end method

.method public createNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "importance"    # I
    .param p5, "desc"    # Ljava/lang/String;

    .line 138
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 139
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-nez v1, :cond_1

    .line 140
    new-instance v1, Landroid/app/NotificationChannel;

    invoke-direct {v1, p2, p3, p4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 141
    .local v1, "channel":Landroid/app/NotificationChannel;
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    invoke-virtual {v1, p5}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 144
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 145
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 146
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 148
    .end local v1    # "channel":Landroid/app/NotificationChannel;
    :cond_1
    return-void
.end method

.method public notify(ILandroid/app/Notification;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .line 70
    iget-object v0, p0, Lcom/wuyouwin/services/NotificationUtils;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 71
    return-void
.end method
