.class public Lcom/gpc/ops/g;
.super Lcom/gpc/operations/notification/BaseNotificationFactory;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/ops/i;


# static fields
.field public static final a:Ljava/lang/String; = "LiveChatActivityNotification"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/notification/BaseNotificationFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Application;Lcom/gpc/operations/notification/NotificationConfig;Lcom/gpc/livechat/bean/LiveChatAppearance;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/gpc/operations/notification/NotificationConfig;->getLaunchActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 3
    invoke-virtual {p2}, Lcom/gpc/operations/notification/NotificationConfig;->getLaunchActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 5
    :cond_0
    const-string v0, "LiveChatActivityNotification"

    const-string v1, "notification show default Activity"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {p1, p3}, Lcom/gpc/ops/h;->a(Landroid/content/Context;Lcom/gpc/livechat/bean/LiveChatAppearance;)Landroid/content/Intent;

    move-result-object p3

    .line 10
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 11
    sget v1, Lcom/gpc/operations/notification/BaseNotificationFactory;->NOTIFICATION_REQUEST_CODE:I

    const/high16 v2, 0xc000000

    invoke-static {p1, v1, p3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    goto :goto_1

    .line 15
    :cond_1
    sget v1, Lcom/gpc/operations/notification/BaseNotificationFactory;->NOTIFICATION_REQUEST_CODE:I

    const/high16 v2, 0x8000000

    invoke-static {p1, v1, p3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 20
    :goto_1
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_2

    .line 23
    invoke-static {}, Lcom/facebook/internal/Utility$$ExternalSyntheticApiModelOutline0;->m$2()V

    sget-object v0, Lcom/gpc/operations/notification/BaseNotificationFactory;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    sget-object v2, Lcom/gpc/operations/notification/BaseNotificationFactory;->NOTIFICATION_CHANNEL_NAME:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 24
    invoke-static {v1, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 26
    :cond_2
    invoke-virtual {p0, p1, p3, p2}, Lcom/gpc/operations/notification/BaseNotificationFactory;->notificationBuilder(Landroid/app/Application;Landroid/app/PendingIntent;Lcom/gpc/operations/notification/NotificationConfig;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 27
    invoke-virtual {p0}, Lcom/gpc/operations/notification/BaseNotificationFactory;->randomIntValue()I

    move-result p2

    invoke-virtual {v1, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
