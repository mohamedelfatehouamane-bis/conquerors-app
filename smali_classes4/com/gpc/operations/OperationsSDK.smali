.class public Lcom/gpc/operations/OperationsSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "OperationsSDK"

.field private static sInstance:Lcom/gpc/operations/OperationsSDK;


# instance fields
.field protected gameCommunity:Lcom/gpc/gamecommunity/GameCommunity;

.field protected internalWebApp:Lcom/gpc/webapp/extended/WebApp;

.field private isInit:Z

.field protected liveChat:Lcom/gpc/livechat/LiveChat;

.field protected modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/operations/OperationsSDKModule;",
            ">;"
        }
    .end annotation
.end field

.field private noAskedNotificationUIEnable:Z

.field protected noticeHub:Lcom/gpc/noticehub/GPCNoticeHub;

.field protected noticeHubModule:Lcom/gpc/noticehub/extended/NoticeHubModule;

.field protected primeMembership:Lcom/gpc/primemembership/PrimeMembership;

.field protected tsHybrid:Lcom/gpc/tsh/TSHybrid;

.field protected version:Lcom/gpc/operations/utils/SDKVersion;

.field protected webApp:Lcom/gpc/webapp/GPCWebApp;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/OperationsSDK;->modules:Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/gpc/operations/OperationsSDK;->isInit:Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/gpc/operations/OperationsSDK;->noAskedNotificationUIEnable:Z

    .line 16
    new-instance v0, Lcom/gpc/operations/utils/SDKVersion;

    const-string v1, "v1.30.0"

    const/16 v2, 0xe7

    invoke-direct {v0, v1, v2}, Lcom/gpc/operations/utils/SDKVersion;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/gpc/operations/OperationsSDK;->version:Lcom/gpc/operations/utils/SDKVersion;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OperationsSDK :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/operations/OperationsSDK;->version:Lcom/gpc/operations/utils/SDKVersion;

    invoke-virtual {v1}, Lcom/gpc/operations/utils/SDKVersion;->getCodebaseVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OperationsSDK"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/gpc/operations/OperationsSDK;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 20
    new-instance v0, Lcom/gpc/webapp/extended/WebApp;

    invoke-direct {v0}, Lcom/gpc/webapp/extended/WebApp;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/OperationsSDK;->internalWebApp:Lcom/gpc/webapp/extended/WebApp;

    .line 22
    new-instance v1, Lcom/gpc/tsh/TSHybridKotlin;

    invoke-direct {v1, v0}, Lcom/gpc/tsh/TSHybridKotlin;-><init>(Lcom/gpc/webapp/extended/WebApp;)V

    .line 23
    new-instance v0, Lcom/gpc/tsh/TSHybrid;

    invoke-direct {v0, v1}, Lcom/gpc/tsh/TSHybrid;-><init>(Lcom/gpc/tsh/TSHybridKotlin;)V

    iput-object v0, p0, Lcom/gpc/operations/OperationsSDK;->tsHybrid:Lcom/gpc/tsh/TSHybrid;

    .line 24
    iget-object v0, p0, Lcom/gpc/operations/OperationsSDK;->modules:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/gpc/operations/OperationsSDK;->internalWebApp:Lcom/gpc/webapp/extended/WebApp;

    const-string v1, "ticket"

    invoke-virtual {v0, v1}, Lcom/gpc/webapp/extended/WebApp;->registerWebApp(Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/gpc/livechat/extended/LiveChatImpl;

    iget-object v1, p0, Lcom/gpc/operations/OperationsSDK;->internalWebApp:Lcom/gpc/webapp/extended/WebApp;

    invoke-direct {v0, v1}, Lcom/gpc/livechat/extended/LiveChatImpl;-><init>(Lcom/gpc/webapp/extended/WebApp;)V

    .line 28
    iput-object v0, p0, Lcom/gpc/operations/OperationsSDK;->liveChat:Lcom/gpc/livechat/LiveChat;

    .line 29
    iget-object v1, p0, Lcom/gpc/operations/OperationsSDK;->modules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/gpc/operations/OperationsSDK;->internalWebApp:Lcom/gpc/webapp/extended/WebApp;

    const-string v1, "livechat"

    invoke-virtual {v0, v1}, Lcom/gpc/webapp/extended/WebApp;->registerWebApp(Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/gpc/primemembership/extended/PrimeMembershipImpl;

    iget-object v1, p0, Lcom/gpc/operations/OperationsSDK;->internalWebApp:Lcom/gpc/webapp/extended/WebApp;

    invoke-direct {v0, v1}, Lcom/gpc/primemembership/extended/PrimeMembershipImpl;-><init>(Lcom/gpc/webapp/extended/WebApp;)V

    iput-object v0, p0, Lcom/gpc/operations/OperationsSDK;->primeMembership:Lcom/gpc/primemembership/PrimeMembership;

    .line 33
    iget-object v0, p0, Lcom/gpc/operations/OperationsSDK;->internalWebApp:Lcom/gpc/webapp/extended/WebApp;

    const-string v1, "prime"

    invoke-virtual {v0, v1}, Lcom/gpc/webapp/extended/WebApp;->registerWebApp(Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/gpc/gamecommunity/extended/GameCommunityImpl;

    iget-object v1, p0, Lcom/gpc/operations/OperationsSDK;->internalWebApp:Lcom/gpc/webapp/extended/WebApp;

    invoke-direct {v0, v1}, Lcom/gpc/gamecommunity/extended/GameCommunityImpl;-><init>(Lcom/gpc/webapp/extended/WebApp;)V

    iput-object v0, p0, Lcom/gpc/operations/OperationsSDK;->gameCommunity:Lcom/gpc/gamecommunity/GameCommunity;

    .line 35
    iget-object v0, p0, Lcom/gpc/operations/OperationsSDK;->internalWebApp:Lcom/gpc/webapp/extended/WebApp;

    const-string v1, "game_community"

    invoke-virtual {v0, v1}, Lcom/gpc/webapp/extended/WebApp;->registerWebApp(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/gpc/noticehub/extended/NoticeHubModule;

    invoke-direct {v0}, Lcom/gpc/noticehub/extended/NoticeHubModule;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/OperationsSDK;->noticeHubModule:Lcom/gpc/noticehub/extended/NoticeHubModule;

    .line 38
    invoke-static {}, Lcom/gpc/noticehub/extended/UOPS;->sharedInstance()Lcom/gpc/noticehub/extended/UOPS;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/operations/OperationsSDK;->noticeHubModule:Lcom/gpc/noticehub/extended/NoticeHubModule;

    invoke-virtual {v0, v1}, Lcom/gpc/noticehub/extended/UOPS;->setNoticeHubModule(Lcom/gpc/noticehub/extended/NoticeHubModule;)V

    .line 39
    new-instance v0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;

    invoke-direct {v0}, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/gpc/operations/OperationsSDK;->noticeHub:Lcom/gpc/noticehub/GPCNoticeHub;

    .line 41
    iget-object v1, p0, Lcom/gpc/operations/OperationsSDK;->noticeHubModule:Lcom/gpc/noticehub/extended/NoticeHubModule;

    invoke-virtual {v1, v0}, Lcom/gpc/noticehub/extended/NoticeHubModule;->setNoticeHub(Lcom/gpc/noticehub/extended/INoticeHub;)V

    .line 42
    iget-object v0, p0, Lcom/gpc/operations/OperationsSDK;->modules:Ljava/util/List;

    iget-object v1, p0, Lcom/gpc/operations/OperationsSDK;->noticeHubModule:Lcom/gpc/noticehub/extended/NoticeHubModule;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v0, Lcom/gpc/webapp/GPCWebApp;

    iget-object v1, p0, Lcom/gpc/operations/OperationsSDK;->internalWebApp:Lcom/gpc/webapp/extended/WebApp;

    invoke-direct {v0, v1}, Lcom/gpc/webapp/GPCWebApp;-><init>(Lcom/gpc/webapp/extended/WebApp;)V

    iput-object v0, p0, Lcom/gpc/operations/OperationsSDK;->webApp:Lcom/gpc/webapp/GPCWebApp;

    .line 45
    iget-object v0, p0, Lcom/gpc/operations/OperationsSDK;->modules:Ljava/util/List;

    iget-object v1, p0, Lcom/gpc/operations/OperationsSDK;->internalWebApp:Lcom/gpc/webapp/extended/WebApp;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initJudge()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/gpc/operations/OperationsSDK;->isInit:Z

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    const-string v0, "OperationsSDK"

    const-string v1, "OperationsSDK not init"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized sharedInstance()Lcom/gpc/operations/OperationsSDK;
    .locals 2

    const-class v0, Lcom/gpc/operations/OperationsSDK;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/gpc/operations/OperationsSDK;->sInstance:Lcom/gpc/operations/OperationsSDK;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/gpc/operations/OperationsSDK;

    invoke-direct {v1}, Lcom/gpc/operations/OperationsSDK;-><init>()V

    sput-object v1, Lcom/gpc/operations/OperationsSDK;->sInstance:Lcom/gpc/operations/OperationsSDK;

    .line 4
    :cond_0
    sget-object v1, Lcom/gpc/operations/OperationsSDK;->sInstance:Lcom/gpc/operations/OperationsSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public contactCustomerService(Landroid/app/Activity;Lcom/gpc/operations/listener/ContactCustomerServiceListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/gpc/operations/OperationsSDK;->contactCustomerServiceWithPayload(Landroid/app/Activity;Ljava/util/Map;Lcom/gpc/operations/listener/ContactCustomerServiceListener;)V

    return-void
.end method

.method public contactCustomerServiceWithPayload(Landroid/app/Activity;Ljava/util/Map;Lcom/gpc/operations/listener/ContactCustomerServiceListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/listener/ContactCustomerServiceListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v5

    .line 2
    new-instance v1, Lcom/gpc/operations/OperationsSDK$d;

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/gpc/operations/OperationsSDK$d;-><init>(Lcom/gpc/operations/OperationsSDK;Landroid/app/Activity;Lcom/gpc/operations/listener/ContactCustomerServiceListener;Lcom/gpc/operations/compact/OperationsCompatProxy;Ljava/util/Map;)V

    invoke-interface {v5, v1}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getSSOTokenForWeb(Lcom/gpc/operations/compact/OperationsCompatProxy$GetWebSSOTokenListener;)V

    return-void
.end method

.method public didReceiveLinkOneMessage(ILjava/lang/String;)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "didReceiveLinkOneMessage category:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", payload:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OperationsSDK"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/gpc/operations/OperationsSDK;->initJudge()V

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/OperationsSDK;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gpc/operations/OperationsSDKModule;

    if-nez v3, :cond_1

    .line 8
    :try_start_0
    invoke-interface {v4, p1, p2}, Lcom/gpc/operations/OperationsSDKModule;->didReceiveLinkOneMessage(ILjava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 10
    const-string v5, ""

    invoke-static {v1, v5, v4}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public didReceiveRemoteNotifications(Landroid/app/Application;Ljava/util/Map;Lcom/gpc/operations/OperationsSDKNotificationConfig;)Z
    .locals 6
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

    .line 4
    const-string v0, "didReceiveRemoteNotifications Map"

    const-string v1, "OperationsSDK"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/gpc/operations/OperationsSDK;->initJudge()V

    .line 6
    iget-object v0, p0, Lcom/gpc/operations/OperationsSDK;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    const/4 v3, 0x0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gpc/operations/OperationsSDKModule;

    if-nez v3, :cond_1

    .line 11
    :try_start_0
    invoke-interface {v4, p1, p2, p3}, Lcom/gpc/operations/OperationsSDKModule;->didReceiveRemoteNotifications(Landroid/app/Application;Ljava/util/Map;Lcom/gpc/operations/OperationsSDKNotificationConfig;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 13
    const-string v5, ""

    invoke-static {v1, v5, v4}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public didReceiveRemoteNotifications(Landroid/app/Application;Lorg/json/JSONObject;Lcom/gpc/operations/OperationsSDKNotificationConfig;)Z
    .locals 2

    .line 1
    const-string v0, "OperationsSDK"

    const-string v1, "didReceiveRemoteNotifications JSONObject"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lcom/gpc/operations/utils/JsonUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/gpc/operations/OperationsSDK;->didReceiveRemoteNotifications(Landroid/app/Application;Ljava/util/Map;Lcom/gpc/operations/OperationsSDKNotificationConfig;)Z

    move-result p1

    return p1
.end method

.method public gameCommunity()Lcom/gpc/gamecommunity/GameCommunity;
    .locals 2

    .line 1
    const-string v0, "OperationsSDK"

    const-string v1, "gameCommunity"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/gpc/operations/OperationsSDK;->initJudge()V

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/OperationsSDK;->gameCommunity:Lcom/gpc/gamecommunity/GameCommunity;

    return-object v0
.end method

.method public getI18N()Lcom/gpc/operations/migrate/utils/modules/OPSI18N;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->getI18N()Lcom/gpc/operations/migrate/utils/modules/OPSI18N;

    move-result-object v0

    return-object v0
.end method

.method public getNoticeHub()Lcom/gpc/noticehub/GPCNoticeHub;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/OperationsSDK;->noticeHub:Lcom/gpc/noticehub/GPCNoticeHub;

    return-object v0
.end method

.method public getPermissionsController()Lcom/gpc/operations/permision/PermissionsController;
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/permision/PermissionsController;

    invoke-direct {v0}, Lcom/gpc/operations/permision/PermissionsController;-><init>()V

    return-object v0
.end method

.method public getVersion()Lcom/gpc/operations/utils/SDKVersion;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/OperationsSDK;->version:Lcom/gpc/operations/utils/SDKVersion;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/OperationsSDK;->version:Lcom/gpc/operations/utils/SDKVersion;

    invoke-virtual {v0}, Lcom/gpc/operations/utils/SDKVersion;->getGeneralName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebApp()Lcom/gpc/webapp/GPCWebApp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/OperationsSDK;->webApp:Lcom/gpc/webapp/GPCWebApp;

    return-object v0
.end method

.method public init(Lcom/gpc/operations/OPSOnPreparedListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/gpc/operations/OperationsSDK;->initWithConfig(Ljava/lang/String;Lcom/gpc/operations/OPSOnPreparedListener;)V

    return-void
.end method

.method public declared-synchronized initWithConfig(Ljava/lang/String;Lcom/gpc/operations/OPSOnPreparedListener;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    const-string v0, "OperationsSDK"

    const-string v1, "initWithConfig"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/gpc/operations/OperationsSDK;->isInit:Z

    if-eqz v0, :cond_0

    .line 3
    const-string v0, "OperationsSDK"

    const-string v1, "OperationsSDK is inited"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->onDestroy()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/gpc/operations/OperationsSDK;->isInit:Z

    .line 8
    :cond_0
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->onCreate()V

    .line 9
    new-instance v0, Lcom/gpc/operations/migrate/Configuration;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/Configuration;-><init>()V

    .line 10
    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/Configuration;->setFamilyConfTxt(Ljava/lang/String;)V

    .line 11
    new-instance p1, Lcom/gpc/operations/OperationsSDK$a;

    invoke-direct {p1, p0}, Lcom/gpc/operations/OperationsSDK$a;-><init>(Lcom/gpc/operations/OperationsSDK;)V

    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/Configuration;->setProxy(Lcom/gpc/operations/migrate/Configuration$ConfigurationProxy;)V

    .line 30
    sget-object p1, Lcom/gpc/operations/OperationsSDKApplication;->sApplication:Landroid/app/Application;

    invoke-static {p1, v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->onPreInit(Landroid/content/Context;Lcom/gpc/operations/migrate/Configuration;)V

    .line 31
    new-instance p1, Lcom/gpc/operations/migrate/utils/SDKTask;

    invoke-direct {p1}, Lcom/gpc/operations/migrate/utils/SDKTask;-><init>()V

    .line 32
    new-instance v0, Lcom/gpc/operations/OperationsSDK$b;

    invoke-direct {v0, p0}, Lcom/gpc/operations/OperationsSDK$b;-><init>(Lcom/gpc/operations/OperationsSDK;)V

    new-instance v1, Lcom/gpc/operations/OperationsSDK$c;

    invoke-direct {v1, p0, p2}, Lcom/gpc/operations/OperationsSDK$c;-><init>(Lcom/gpc/operations/OperationsSDK;Lcom/gpc/operations/OPSOnPreparedListener;)V

    invoke-virtual {p1, v0, v1}, Lcom/gpc/operations/migrate/utils/SDKTask;->excuteForTimeConsuming(Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskRunnable;Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskResultListener;)V

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/gpc/operations/OperationsSDK;->isInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isInit()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/operations/OperationsSDK;->isInit:Z

    return v0
.end method

.method public liveChat()Lcom/gpc/livechat/LiveChat;
    .locals 2

    .line 1
    const-string v0, "OperationsSDK"

    const-string v1, "liveChat"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/gpc/operations/OperationsSDK;->initJudge()V

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/OperationsSDK;->liveChat:Lcom/gpc/livechat/LiveChat;

    return-object v0
.end method

.method public onRequestPermissionResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/operations/permision/GPCEasyPermission;->sharedInstance()Lcom/gpc/operations/permision/GPCEasyPermission;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gpc/operations/permision/GPCEasyPermission;->handlePermissionResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onUserLoginSuccessful()V
    .locals 2

    .line 1
    const-string v0, "onUserLoginSuccessful"

    const-string v1, "OperationsSDK"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->repaymentModule()Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->isRepaymentEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-string v0, "onUserLoginSuccessful, commitAfterQuery"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->repaymentModule()Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->getCommitter()Lcom/gpc/ops/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/ops/v;->a()V

    :cond_0
    return-void
.end method

.method public primeMembership()Lcom/gpc/primemembership/PrimeMembership;
    .locals 2

    .line 1
    const-string v0, "OperationsSDK"

    const-string v1, "primeMembership"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/gpc/operations/OperationsSDK;->initJudge()V

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/OperationsSDK;->primeMembership:Lcom/gpc/primemembership/PrimeMembership;

    return-object v0
.end method

.method public registerRepayment(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 2

    .line 1
    const-string v0, "OperationsSDK"

    const-string v1, "registerRepayment"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->repaymentModule()Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->registerRepayment(Landroid/app/Activity;Ljava/lang/Object;)V

    return-void
.end method

.method public requestPostNotificationsPermission(Landroid/app/Activity;Lcom/gpc/operations/permision/listener/OnRequestPermissionResultListener;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;-><init>()V

    sget-object v1, Lcom/gpc/operations/permision/ui/GPCPermissionUIMode;->DEFAULT:Lcom/gpc/operations/permision/ui/GPCPermissionUIMode;

    .line 2
    invoke-virtual {v0, v1}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->UIMode(Lcom/gpc/operations/permision/ui/GPCPermissionUIMode;)Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/gpc/operations/OperationsSDK;->noAskedNotificationUIEnable:Z

    .line 3
    invoke-virtual {v0, v1}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->noAskedNotificationUIEnable(Z)Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration$Builder;->build()Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/gpc/operations/permision/GPCEasyPermission;->sharedInstance()Lcom/gpc/operations/permision/GPCEasyPermission;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/gpc/operations/permision/GPCEasyPermission;->setRequestPermissionResultListener(Lcom/gpc/operations/permision/listener/OnRequestPermissionResultListener;)V

    .line 6
    invoke-static {}, Lcom/gpc/operations/permision/GPCEasyPermission;->sharedInstance()Lcom/gpc/operations/permision/GPCEasyPermission;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/gpc/operations/permision/GPCEasyPermission;->setUIConfiguration(Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;)V

    .line 7
    invoke-static {}, Lcom/gpc/operations/permision/GPCEasyPermission;->sharedInstance()Lcom/gpc/operations/permision/GPCEasyPermission;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/gpc/operations/permision/GPCEasyPermission;->requestNotificationPermission(Landroid/app/Activity;)V

    return-void
.end method

.method public setConfFileName(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setConfFileName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OperationsSDK"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sput-object p1, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->S_CONF_FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method public setIntentModel(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setIntentModel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OperationsSDK"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/operations/base/RunningTimeConfiguration;->getInstance()Lcom/gpc/operations/base/RunningTimeConfiguration;

    move-result-object v0

    iput-boolean p1, v0, Lcom/gpc/operations/base/RunningTimeConfiguration;->isIntentModel:Z

    return-void
.end method

.method public setNoAskedNotificationUIEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/OperationsSDK;->noAskedNotificationUIEnable:Z

    return-void
.end method

.method public setNotificationsEnabledInGame(Z)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setNotificationsEnabledInGame:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OperationsSDK"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/gpc/operations/OperationsSDK;->initJudge()V

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/OperationsSDK;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/operations/OperationsSDKModule;

    .line 8
    :try_start_0
    invoke-interface {v2, p1}, Lcom/gpc/operations/OperationsSDKModule;->setNotificationsEnabledInGame(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 10
    const-string v3, ""

    invoke-static {v1, v3, v2}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProxy(Lcom/gpc/operations/compact/OperationsCompatProxy;)V
    .locals 2

    .line 1
    const-string v0, "OperationsSDK"

    const-string v1, "setProxy"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/operations/base/CompatProxyManager;->setProxy(Lcom/gpc/operations/compact/OperationsCompatProxy;)V

    return-void
.end method

.method public ticketService()Lcom/gpc/tsh/TSHybrid;
    .locals 2

    .line 1
    const-string v0, "OperationsSDK"

    const-string v1, "ticketService"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/gpc/operations/OperationsSDK;->initJudge()V

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/OperationsSDK;->tsHybrid:Lcom/gpc/tsh/TSHybrid;

    return-object v0
.end method

.method public unregisterRepayment()V
    .locals 2

    .line 1
    const-string v0, "OperationsSDK"

    const-string v1, "unregisterRepayment"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->repaymentModule()Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->destroyRepayment()V

    return-void
.end method
