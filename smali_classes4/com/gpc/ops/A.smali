.class public Lcom/gpc/ops/A;
.super Lcom/gpc/operations/notification/BaseNotificationFactory;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/ops/B;


# static fields
.field public static final a:Ljava/lang/String; = "TSHActivityNotification"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/notification/BaseNotificationFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Application;Lcom/gpc/operations/notification/NotificationConfig;Lcom/gpc/tsh/bean/TSHybridAppearance;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/gpc/operations/notification/NotificationConfig;->getTicketId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    const-string p3, "getTicketId is null."

    const-string v0, "TSHActivityNotification"

    invoke-static {v0, p3}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/gpc/operations/notification/NotificationConfig;->getLaunchActivityName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 4
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 5
    invoke-virtual {p2}, Lcom/gpc/operations/notification/NotificationConfig;->getLaunchActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 7
    :cond_0
    const-string p3, "notification show default Activity"

    invoke-static {v0, p3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/gpc/operations/notification/BaseNotificationFactory;->getLaunchActivity(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object p3

    if-nez p3, :cond_1

    .line 10
    const-string p1, "launchActivity is null."

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "launchActivity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object p3, v0

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p2}, Lcom/gpc/operations/notification/NotificationConfig;->getTicketId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/gpc/tsh/helper/TSHIntentHelper;->getTicketPanel(Landroid/content/Context;Ljava/lang/String;Lcom/gpc/tsh/bean/TSHybridAppearance;)Landroid/content/Intent;

    move-result-object p3

    .line 21
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 22
    sget v1, Lcom/gpc/operations/notification/BaseNotificationFactory;->NOTIFICATION_REQUEST_CODE:I

    const/high16 v2, 0xc000000

    invoke-static {p1, v1, p3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    goto :goto_1

    .line 26
    :cond_3
    sget v1, Lcom/gpc/operations/notification/BaseNotificationFactory;->NOTIFICATION_REQUEST_CODE:I

    const/high16 v2, 0x8000000

    invoke-static {p1, v1, p3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 31
    :goto_1
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_4

    .line 34
    invoke-static {}, Lcom/facebook/internal/Utility$$ExternalSyntheticApiModelOutline0;->m$2()V

    sget-object v0, Lcom/gpc/operations/notification/BaseNotificationFactory;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    sget-object v2, Lcom/gpc/operations/notification/BaseNotificationFactory;->NOTIFICATION_CHANNEL_NAME:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 35
    invoke-static {v1, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 37
    :cond_4
    invoke-virtual {p0, p1, p3, p2}, Lcom/gpc/operations/notification/BaseNotificationFactory;->notificationBuilder(Landroid/app/Application;Landroid/app/PendingIntent;Lcom/gpc/operations/notification/NotificationConfig;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 38
    invoke-virtual {p0}, Lcom/gpc/operations/notification/BaseNotificationFactory;->randomIntValue()I

    move-result p2

    invoke-virtual {v1, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
