.class public Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/noticehub/GPCNoticeHub;
.implements Lcom/gpc/noticehub/extended/INoticeHub;


# static fields
.field private static final DATA_CENTER_NOTICE_RESULT_KEY:Ljava/lang/String; = "NOTICE_RESULT_KEY"

.field private static final TAG:Ljava/lang/String; = "GPCNoticeHubImpl"


# instance fields
.field private final KEY_GPC_USER_NOTICE:Ljava/lang/String;

.field private cache:Lcom/gpc/operations/migrate/utils/modules/cache/ICache;

.field private final handler:Landroid/os/Handler;

.field private final isRefreshing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private payload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userNoticeRefreshListener:Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->payload:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->isRefreshing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    const-string v0, "gpc_user_notice_%s_%s"

    iput-object v0, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->KEY_GPC_USER_NOTICE:Ljava/lang/String;

    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->isRefreshing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;)Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->userNoticeRefreshListener:Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->payload:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->handleErrorResponse(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->writeCache(Ljava/lang/String;)V

    return-void
.end method

.method private handleErrorResponse(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    move-result-object v0

    const-string v1, "NOTICE_RESULT_KEY"

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1, v2, v0}, Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;->onResult(Lcom/gpc/operations/migrate/error/GPCException;ZLcom/gpc/noticehub/bean/GPCUserNoticeResult;)V

    return-void

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->readCache()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 10
    invoke-interface {p2, p1, v5, v4}, Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;->onResult(Lcom/gpc/operations/migrate/error/GPCException;ZLcom/gpc/noticehub/bean/GPCUserNoticeResult;)V

    return-void

    .line 13
    :cond_1
    invoke-static {v0}, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->parseJson(Ljava/lang/String;)Lcom/gpc/noticehub/bean/GPCUserNoticeResult;

    move-result-object p1

    if-nez p1, :cond_2

    .line 16
    const-string p1, "710105"

    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1, v2, v4}, Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;->onResult(Lcom/gpc/operations/migrate/error/GPCException;ZLcom/gpc/noticehub/bean/GPCUserNoticeResult;)V

    return-void

    .line 21
    :cond_2
    invoke-virtual {p1}, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->getPrimeMembershipNotice()Lcom/gpc/noticehub/bean/notice/GPCPrimeMembershipNotice;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 22
    invoke-virtual {p1}, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->getPrimeMembershipNotice()Lcom/gpc/noticehub/bean/notice/GPCPrimeMembershipNotice;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;->setNotice(I)V

    .line 25
    :cond_3
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    invoke-interface {p2, v0, v2, p1}, Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;->onResult(Lcom/gpc/operations/migrate/error/GPCException;ZLcom/gpc/noticehub/bean/GPCUserNoticeResult;)V

    return-void
.end method

.method private readCache()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v1

    invoke-interface {v1}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v0, "gpc_user_notice_%s_%s"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->cache:Lcom/gpc/operations/migrate/utils/modules/cache/ICache;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->cacheModule()Lcom/gpc/operations/migrate/utils/modules/cache/CacheModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/utils/modules/cache/CacheModule;->createNoticeHubUpdateCache()Lcom/gpc/operations/migrate/utils/modules/cache/ICache;

    move-result-object v1

    iput-object v1, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->cache:Lcom/gpc/operations/migrate/utils/modules/cache/ICache;

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->cache:Lcom/gpc/operations/migrate/utils/modules/cache/ICache;

    invoke-interface {v1, v0}, Lcom/gpc/operations/migrate/utils/modules/cache/ICache;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "readCache key:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " value:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GPCNoticeHubImpl"

    invoke-static {v2, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private writeCache(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v1

    invoke-interface {v1}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v0, "gpc_user_notice_%s_%s"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "writeCache key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPCNoticeHubImpl"

    invoke-static {v2, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->cache:Lcom/gpc/operations/migrate/utils/modules/cache/ICache;

    if-nez v1, :cond_0

    .line 6
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->cacheModule()Lcom/gpc/operations/migrate/utils/modules/cache/CacheModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/utils/modules/cache/CacheModule;->createNoticeHubUpdateCache()Lcom/gpc/operations/migrate/utils/modules/cache/ICache;

    move-result-object v1

    iput-object v1, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->cache:Lcom/gpc/operations/migrate/utils/modules/cache/ICache;

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->cache:Lcom/gpc/operations/migrate/utils/modules/cache/ICache;

    invoke-interface {v1, v0, p1}, Lcom/gpc/operations/migrate/utils/modules/cache/ICache;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public didReceiveLinkOneMessage(ILcom/gpc/operations/helper/ServerMessagePayload;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "didReceiveLinkOneMessage category:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCNoticeHubImpl"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/gpc/operations/helper/ServerMessagePayload;->getCmd()I

    move-result p1

    const/4 p2, 0x1

    if-ne p2, p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->triggerUserNoticeRefresh()V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public didReceiveRemoteNotifications(Landroid/app/Application;Ljava/util/Map;Lcom/gpc/operations/OperationsSDKNotificationConfig;)Z
    .locals 0
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

    const/4 p1, 0x0

    return p1
.end method

.method public didReceiveRemoteNotifications(Landroid/app/Application;Lorg/json/JSONObject;Lcom/gpc/operations/OperationsSDKNotificationConfig;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public initUserNoticeRefreshListener(Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;)V
    .locals 2

    .line 1
    const-string v0, "initUserNoticeRefreshListener called"

    const-string v1, "GPCNoticeHubImpl"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 3
    const-string p1, "initUserNoticeRefreshListener listener is null"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->userNoticeRefreshListener:Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;

    return-void
.end method

.method public onActionModuleNoticeCountUpdate(Ljava/lang/String;I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->userNoticeRefreshListener:Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;

    const/4 v1, 0x0

    const-string v2, "GPCNoticeHubImpl"

    if-nez v0, :cond_0

    .line 2
    const-string p1, "userNoticeRefreshListener is null."

    invoke-static {v2, p1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 6
    :cond_0
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    move-result-object v0

    const-string v3, "NOTICE_RESULT_KEY"

    invoke-virtual {v0, v3}, Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;

    if-nez v0, :cond_2

    .line 8
    invoke-direct {p0}, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->readCache()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 11
    invoke-static {v3}, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->parseJson(Ljava/lang/String;)Lcom/gpc/noticehub/bean/GPCUserNoticeResult;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 15
    const-string p1, "onActionModulePreClose result is null."

    invoke-static {v2, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 19
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->updateNoticeByWebAppId(Ljava/lang/String;I)V

    .line 20
    iget-object p1, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->userNoticeRefreshListener:Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;

    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, v0}, Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;->onResult(Lcom/gpc/operations/migrate/error/GPCException;ZLcom/gpc/noticehub/bean/GPCUserNoticeResult;)V

    return v1
.end method

.method public onActionModulePreClose(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onActionNotificationNoticeHubTrigger()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->triggerUserNoticeRefresh()V

    const/4 v0, 0x1

    return v0
.end method

.method public refreshUserNotice(Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/service/network/NetworkExcutor;->instance()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;

    invoke-direct {v1, p0, p1}, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;-><init>(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setUserNoticeRefreshPayload(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "setUserNoticeRefreshPayload called"

    const-string v1, "GPCNoticeHubImpl"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "payload:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->payload:Ljava/util/Map;

    return-void
.end method

.method public triggerUserNoticeRefresh()V
    .locals 4

    .line 1
    const-string v0, "triggerUserNoticeRefreshListener called"

    const-string v1, "GPCNoticeHubImpl"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->userNoticeRefreshListener:Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;

    if-nez v0, :cond_0

    .line 3
    const-string v0, "userNoticeRefreshListener is null"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->isRefreshing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    const-string v0, "Refresh already in progress"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    new-instance v0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$a;

    invoke-direct {v0, p0}, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$a;-><init>(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;)V

    invoke-virtual {p0, v0}, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->refreshUserNotice(Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;)V

    return-void
.end method
