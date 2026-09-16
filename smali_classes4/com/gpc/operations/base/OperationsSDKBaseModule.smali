.class public abstract Lcom/gpc/operations/base/OperationsSDKBaseModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/OperationsSDKModule;


# static fields
.field private static final TAG:Ljava/lang/String; = "OperationsSDKBaseModule"


# instance fields
.field protected enableNotificationsInGame:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/gpc/operations/base/OperationsSDKBaseModule;->enableNotificationsInGame:Z

    return-void
.end method


# virtual methods
.method public didReceiveLinkOneMessage(ILjava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public didReceiveRemoteNotifications(Landroid/app/Application;Ljava/util/Map;Lcom/gpc/operations/OperationsSDKNotificationConfig;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/OperationsSDKNotificationConfig;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "OperationsSDKBaseModule"

    if-eqz p2, :cond_5

    .line 3
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 8
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "didReceiveRemoteNotifications payload:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p2}, Lcom/gpc/operations/base/OperationsSDKBaseModule;->enableDidReceiveRemoteNotifications(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 13
    const-string p1, "enableDidReceiveRemoteNotifications is false."

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 18
    :cond_1
    invoke-virtual {p0, p2}, Lcom/gpc/operations/base/OperationsSDKBaseModule;->enableTriggerNoticeHub(Ljava/util/Map;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_2

    .line 20
    const-string v2, "enableTriggerNoticeHub is true."

    invoke-static {v1, v2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object v2, Lcom/gpc/operations/utils/EventHub;->Companion:Lcom/gpc/operations/utils/EventHub$Companion;

    const-string v4, "ACTION_NOTICE_HUB_TRIGGER"

    invoke-virtual {v2, v4, v3}, Lcom/gpc/operations/utils/EventHub$Companion;->postEvent(Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    :cond_2
    invoke-static {p2}, Lcom/gpc/operations/utils/JsonUtils;->map2JsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {p0, p2}, Lcom/gpc/operations/base/OperationsSDKBaseModule;->enableNotifyWebAppData(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 28
    const-string v4, "enableNotifyWebAppData is true."

    invoke-static {v1, v4}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object v1, Lcom/gpc/operations/utils/EventHub;->Companion:Lcom/gpc/operations/utils/EventHub$Companion;

    const-string v4, "ACTION_WEB_APP_NOTIFICATION"

    invoke-virtual {v1, v4, v2}, Lcom/gpc/operations/utils/EventHub$Companion;->postEvent(Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    :cond_3
    new-instance v1, Lcom/gpc/operations/notification/NotificationConfig;

    invoke-direct {v1}, Lcom/gpc/operations/notification/NotificationConfig;-><init>()V

    .line 34
    const-string v4, "m_web_app"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/gpc/operations/notification/NotificationConfig;->setWebAppId(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1, v2}, Lcom/gpc/operations/notification/NotificationConfig;->setRaw(Ljava/lang/String;)V

    .line 36
    const-string v2, "msg"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gpc/operations/notification/NotificationConfig;->setContent(Ljava/lang/String;)V

    .line 37
    const-string v2, "m_title"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gpc/operations/notification/NotificationConfig;->setTitle(Ljava/lang/String;)V

    if-nez p3, :cond_4

    .line 39
    invoke-virtual {v1, v0}, Lcom/gpc/operations/notification/NotificationConfig;->setSmallIcon(I)V

    .line 40
    invoke-virtual {v1, v0}, Lcom/gpc/operations/notification/NotificationConfig;->setLargeIcon(I)V

    .line 41
    invoke-virtual {v1, v3}, Lcom/gpc/operations/notification/NotificationConfig;->setLaunchActivityName(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_4
    invoke-virtual {p3}, Lcom/gpc/operations/OperationsSDKNotificationConfig;->getSmallIcon()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/gpc/operations/notification/NotificationConfig;->setSmallIcon(I)V

    .line 44
    invoke-virtual {p3}, Lcom/gpc/operations/OperationsSDKNotificationConfig;->getLargeIcon()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/gpc/operations/notification/NotificationConfig;->setLargeIcon(I)V

    .line 45
    invoke-virtual {p3}, Lcom/gpc/operations/OperationsSDKNotificationConfig;->getLaunchActivityName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/gpc/operations/notification/NotificationConfig;->setLaunchActivityName(Ljava/lang/String;)V

    .line 49
    :goto_0
    invoke-virtual {p0, v1, p2}, Lcom/gpc/operations/base/OperationsSDKBaseModule;->processNotificationData(Lcom/gpc/operations/notification/NotificationConfig;Ljava/util/Map;)V

    .line 52
    invoke-virtual {p0, p1, v1}, Lcom/gpc/operations/base/OperationsSDKBaseModule;->showNotification(Landroid/app/Application;Lcom/gpc/operations/notification/NotificationConfig;)V

    const/4 p1, 0x1

    return p1

    .line 53
    :cond_5
    :goto_1
    const-string p1, "payload is null or empty."

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public didReceiveRemoteNotifications(Landroid/app/Application;Lorg/json/JSONObject;Lcom/gpc/operations/OperationsSDKNotificationConfig;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/gpc/operations/utils/JsonUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/gpc/operations/base/OperationsSDKBaseModule;->didReceiveRemoteNotifications(Landroid/app/Application;Ljava/util/Map;Lcom/gpc/operations/OperationsSDKNotificationConfig;)Z

    move-result p1

    return p1
.end method

.method public abstract enableDidReceiveRemoteNotifications(Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public enableNotifyWebAppData(Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public enableTriggerNoticeHub(Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public handleNotificationInGame(Landroid/app/Application;Lcom/gpc/operations/notification/NotificationConfig;)V
    .locals 0

    return-void
.end method

.method public isAppInForeground(Landroid/content/Context;)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/gpc/operations/utils/SDKBackgroundUtil;->isAppInForeground(Landroid/content/Context;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    const-string v0, "OperationsSDKBaseModule"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public isReady()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "OperationsSDKBaseModule"

    if-nez v0, :cond_0

    .line 2
    const-string v0, "is not ready for proxy is null."

    invoke-static {v2, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_0
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v3

    invoke-interface {v3}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    const-string v0, "is ready."

    invoke-static {v2, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 11
    :cond_1
    const-string v0, "is not ready for userId and gameId is null."

    invoke-static {v2, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public abstract notification(Landroid/app/Application;Lcom/gpc/operations/notification/NotificationConfig;)V
.end method

.method public processNotificationData(Lcom/gpc/operations/notification/NotificationConfig;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/operations/notification/NotificationConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setNotificationsEnabledInGame(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setNotificationsEnabledInGame:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OperationsSDKBaseModule"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lcom/gpc/operations/base/OperationsSDKBaseModule;->enableNotificationsInGame:Z

    return-void
.end method

.method public showNotification(Landroid/app/Application;Lcom/gpc/operations/notification/NotificationConfig;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/operations/base/OperationsSDKBaseModule;->isAppInForeground(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/gpc/operations/base/OperationsSDKBaseModule;->notification(Landroid/app/Application;Lcom/gpc/operations/notification/NotificationConfig;)V

    return-void

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/gpc/operations/base/OperationsSDKBaseModule;->enableNotificationsInGame:Z

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/gpc/operations/base/OperationsSDKBaseModule;->notification(Landroid/app/Application;Lcom/gpc/operations/notification/NotificationConfig;)V

    .line 12
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/gpc/operations/base/OperationsSDKBaseModule;->handleNotificationInGame(Landroid/app/Application;Lcom/gpc/operations/notification/NotificationConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 14
    const-string p2, "OperationsSDKBaseModule"

    const-string v0, "handleNotificationInGame"

    invoke-static {p2, v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
