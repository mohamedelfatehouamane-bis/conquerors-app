.class public Lcom/gpc/operations/notification/DefaultActivityNotificationImpl;
.super Lcom/gpc/operations/notification/BaseNotificationFactory;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultActivityNotification"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/notification/BaseNotificationFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public notification(Landroid/app/Application;Lcom/gpc/operations/notification/NotificationConfig;)V
    .locals 5

    .line 1
    const-string v0, "DefaultActivityNotification"

    const-string v1, "notification"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/gpc/operations/notification/NotificationConfig;->getLaunchActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5
    invoke-virtual {p2}, Lcom/gpc/operations/notification/NotificationConfig;->getLaunchActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 7
    :cond_0
    const-string v2, "notification show default Activity"

    invoke-static {v0, v2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/gpc/operations/notification/BaseNotificationFactory;->getLaunchActivity(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_1

    .line 10
    const-string p1, "launchActivity is null."

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "launchActivity:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 21
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 22
    sget v3, Lcom/gpc/operations/notification/BaseNotificationFactory;->NOTIFICATION_REQUEST_CODE:I

    const/high16 v4, 0xc000000

    invoke-static {p1, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_1

    .line 26
    :cond_2
    sget v3, Lcom/gpc/operations/notification/BaseNotificationFactory;->NOTIFICATION_REQUEST_CODE:I

    const/high16 v4, 0x8000000

    invoke-static {p1, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_1
    const/16 v3, 0x1a

    if-lt v2, v3, :cond_3

    .line 33
    invoke-static {}, Lcom/facebook/internal/Utility$$ExternalSyntheticApiModelOutline0;->m$2()V

    sget-object v2, Lcom/gpc/operations/notification/BaseNotificationFactory;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    sget-object v3, Lcom/gpc/operations/notification/BaseNotificationFactory;->NOTIFICATION_CHANNEL_NAME:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v2

    .line 34
    invoke-static {v1, v2}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 36
    :cond_3
    invoke-virtual {p0, p1, v0, p2}, Lcom/gpc/operations/notification/BaseNotificationFactory;->notificationBuilder(Landroid/app/Application;Landroid/app/PendingIntent;Lcom/gpc/operations/notification/NotificationConfig;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 37
    invoke-virtual {p0}, Lcom/gpc/operations/notification/BaseNotificationFactory;->randomIntValue()I

    move-result p2

    invoke-virtual {v1, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
