.class public abstract Landroidx/core/app/NotificationCompat$BubbleMetadata;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BubbleMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$BubbleMetadata$Api30Impl;,
        Landroidx/core/app/NotificationCompat$BubbleMetadata$Api29Impl;
    }
.end annotation


# direct methods
.method public static toPlatform(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroid/app/Notification$BubbleMetadata;
    .locals 3
    .param p0, "compatMetadata"    # Landroidx/core/app/NotificationCompat$BubbleMetadata;

    .line 6942
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 6943
    return-object v0

    .line 6945
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    .line 6946
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Api30Impl;->toPlatform(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    return-object v0

    .line 6947
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_2

    .line 6948
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Api29Impl;->toPlatform(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    return-object v0

    .line 6950
    :cond_2
    return-object v0
.end method


# virtual methods
.method public abstract getAutoExpandBubble()Z
.end method

.method public abstract getDeleteIntent()Landroid/app/PendingIntent;
.end method

.method public abstract getDesiredHeight()I
.end method

.method public abstract getDesiredHeightResId()I
.end method

.method public abstract getIcon()Landroidx/core/graphics/drawable/IconCompat;
.end method

.method public abstract getIntent()Landroid/app/PendingIntent;
.end method

.method public abstract getShortcutId()Ljava/lang/String;
.end method

.method public abstract isNotificationSuppressed()Z
.end method
