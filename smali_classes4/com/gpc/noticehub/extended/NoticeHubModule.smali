.class public Lcom/gpc/noticehub/extended/NoticeHubModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/OperationsSDKModule;
.implements Lcom/gpc/operations/utils/EventHub$OnEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "NoticeHubModule"


# instance fields
.field private noticeHub:Lcom/gpc/noticehub/extended/INoticeHub;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/gpc/operations/utils/EventHub;->Companion:Lcom/gpc/operations/utils/EventHub$Companion;

    const-string v1, "ACTION_MODULE_PRE_CLOSE"

    invoke-virtual {v0, v1, p0}, Lcom/gpc/operations/utils/EventHub$Companion;->register(Ljava/lang/String;Lcom/gpc/operations/utils/EventHub$OnEventListener;)V

    .line 3
    const-string v1, "ACTION_MODULE_NOTICE_COUNT_UPDATE"

    invoke-virtual {v0, v1, p0}, Lcom/gpc/operations/utils/EventHub$Companion;->register(Ljava/lang/String;Lcom/gpc/operations/utils/EventHub$OnEventListener;)V

    .line 4
    const-string v1, "ACTION_NOTICE_HUB_TRIGGER"

    invoke-virtual {v0, v1, p0}, Lcom/gpc/operations/utils/EventHub$Companion;->register(Ljava/lang/String;Lcom/gpc/operations/utils/EventHub$OnEventListener;)V

    return-void
.end method


# virtual methods
.method public didReceiveLinkOneMessage(ILjava/lang/String;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "didReceiveLinkOneMessage category:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NoticeHubModule"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/noticehub/extended/NoticeHubModule;->isReady()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 6
    :cond_0
    invoke-static {p2}, Lcom/gpc/operations/helper/ServerMessagePayload;->create(Ljava/lang/String;)Lcom/gpc/operations/helper/ServerMessagePayload;

    move-result-object v0

    if-nez p2, :cond_1

    .line 8
    const-string p1, "payload format conversion failed."

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 11
    :cond_1
    iget-object p2, p0, Lcom/gpc/noticehub/extended/NoticeHubModule;->noticeHub:Lcom/gpc/noticehub/extended/INoticeHub;

    if-eqz p2, :cond_2

    .line 12
    invoke-interface {p2, p1, v0}, Lcom/gpc/noticehub/extended/INoticeHub;->didReceiveLinkOneMessage(ILcom/gpc/operations/helper/ServerMessagePayload;)Z

    move-result p1

    return p1

    :cond_2
    return v2
.end method

.method public didReceiveRemoteNotifications(Landroid/app/Application;Ljava/util/Map;Lcom/gpc/operations/OperationsSDKNotificationConfig;)Z
    .locals 1
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

    .line 3
    iget-object v0, p0, Lcom/gpc/noticehub/extended/NoticeHubModule;->noticeHub:Lcom/gpc/noticehub/extended/INoticeHub;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/noticehub/extended/INoticeHub;->didReceiveRemoteNotifications(Landroid/app/Application;Ljava/util/Map;Lcom/gpc/operations/OperationsSDKNotificationConfig;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public didReceiveRemoteNotifications(Landroid/app/Application;Lorg/json/JSONObject;Lcom/gpc/operations/OperationsSDKNotificationConfig;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/noticehub/extended/NoticeHubModule;->noticeHub:Lcom/gpc/noticehub/extended/INoticeHub;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/noticehub/extended/INoticeHub;->didReceiveRemoteNotifications(Landroid/app/Application;Lorg/json/JSONObject;Lcom/gpc/operations/OperationsSDKNotificationConfig;)Z

    move-result p1

    return p1

    :cond_0
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

    const-string v2, "NoticeHubModule"

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

.method public onReceive(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "ACTION_MODULE_PRE_CLOSE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "NoticeHubModule"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onReceive ACTION_MODULE_PRE_CLOSE "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/noticehub/extended/NoticeHubModule;->noticeHub:Lcom/gpc/noticehub/extended/INoticeHub;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, p2}, Lcom/gpc/noticehub/extended/INoticeHub;->onActionModulePreClose(Ljava/lang/String;)Z

    return v1

    :cond_0
    return v3

    .line 9
    :cond_1
    const-string v0, "ACTION_MODULE_NOTICE_COUNT_UPDATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onReceive ACTION_MODULE_NOTICE_COUNT_UPDATE "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/gpc/noticehub/extended/NoticeHubModule;->noticeHub:Lcom/gpc/noticehub/extended/INoticeHub;

    if-eqz p1, :cond_3

    .line 13
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    const-string p1, "eventValue is empty."

    invoke-static {v2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 17
    :cond_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18
    const-string p2, "webAppId"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    const-string v0, "count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 20
    iget-object v0, p0, Lcom/gpc/noticehub/extended/NoticeHubModule;->noticeHub:Lcom/gpc/noticehub/extended/INoticeHub;

    invoke-interface {v0, p2, p1}, Lcom/gpc/noticehub/extended/INoticeHub;->onActionModuleNoticeCountUpdate(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v3

    .line 28
    :cond_4
    const-string p2, "ACTION_NOTICE_HUB_TRIGGER"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 29
    const-string p1, "onReceive ACTION_NOTICE_HUB_TRIGGER."

    invoke-static {v2, p1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/gpc/noticehub/extended/NoticeHubModule;->isReady()Z

    move-result p1

    if-nez p1, :cond_5

    return v3

    .line 33
    :cond_5
    iget-object p1, p0, Lcom/gpc/noticehub/extended/NoticeHubModule;->noticeHub:Lcom/gpc/noticehub/extended/INoticeHub;

    if-eqz p1, :cond_6

    .line 34
    invoke-interface {p1}, Lcom/gpc/noticehub/extended/INoticeHub;->onActionNotificationNoticeHubTrigger()Z

    move-result p1

    return p1

    :cond_6
    return v3
.end method

.method public setNoticeHub(Lcom/gpc/noticehub/extended/INoticeHub;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/noticehub/extended/NoticeHubModule;->noticeHub:Lcom/gpc/noticehub/extended/INoticeHub;

    return-void
.end method

.method public setNotificationsEnabledInGame(Z)V
    .locals 0

    return-void
.end method
