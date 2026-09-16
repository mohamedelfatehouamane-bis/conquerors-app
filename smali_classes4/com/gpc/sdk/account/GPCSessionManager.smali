.class public Lcom/gpc/sdk/account/GPCSessionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/Module;


# static fields
.field private static final TAG:Ljava/lang/String; = "GPCSessionManager"

.field private static currentSession:Lcom/gpc/sdk/account/GPCSession;

.field private static sInstance:Lcom/gpc/sdk/account/GPCSessionManager;


# instance fields
.field private observer:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

.field private sessionStorage:Lcom/gpc/sdk/account/utils/SessionStorage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/gpc/sdk/account/GPCSessionManager;->observer:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/sdk/account/GPCSessionManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/account/GPCSessionManager;->notifySessionExpired()V

    return-void
.end method

.method private notifySessionExpired()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/account/GPCSessionManager;->setSessionToExpire()V

    .line 3
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/notification/GPCNotification;

    sget-object v2, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession:Lcom/gpc/sdk/account/GPCSession;

    const-string v3, "session_has_been_expired"

    invoke-direct {v1, v3, v2}, Lcom/gpc/sdk/notification/GPCNotification;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->postNotification(Lcom/gpc/sdk/notification/GPCNotification;)V

    return-void
.end method

.method private setSessionToExpire()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb800

    sub-long/2addr v0, v2

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expireTime:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gpc/util/DeviceUtil;->timestampToUTC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GPCSessionManager"

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v2, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession:Lcom/gpc/sdk/account/GPCSession;

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "session.getTimeToVerify(): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSession;->getTimeToVerify()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/util/DeviceUtil;->timestampToUTC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/gpc/sdk/account/GPCSession;->setTimeToVerify(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->storeCurrentSession()V

    :cond_0
    return-void
.end method

.method public static sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/account/GPCSessionManager;->sInstance:Lcom/gpc/sdk/account/GPCSessionManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/sdk/account/GPCSessionManager;

    invoke-direct {v0}, Lcom/gpc/sdk/account/GPCSessionManager;-><init>()V

    sput-object v0, Lcom/gpc/sdk/account/GPCSessionManager;->sInstance:Lcom/gpc/sdk/account/GPCSessionManager;

    .line 4
    :cond_0
    sget-object v0, Lcom/gpc/sdk/account/GPCSessionManager;->sInstance:Lcom/gpc/sdk/account/GPCSessionManager;

    return-object v0
.end method

.method private declared-synchronized storeSession(Lcom/gpc/sdk/account/GPCSession;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/gpc/sdk/account/GPCSessionManager;->sessionStorage()Lcom/gpc/sdk/account/utils/SessionStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/account/utils/SessionStorage;->storeToCache(Lcom/gpc/sdk/account/GPCSession;)V
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


# virtual methods
.method public currentSession()Lcom/gpc/sdk/account/GPCSession;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession:Lcom/gpc/sdk/account/GPCSession;

    return-object v0
.end method

.method public invalidateCurrentSession()Lcom/gpc/sdk/account/GPCSession;
    .locals 3

    .line 1
    const-string v0, "GPCSessionManager"

    const-string v1, "invalidateCurrentSession"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/gpc/sdk/account/GPCSessionManager;->setSessionToExpire()V

    .line 3
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/notification/GPCNotification;

    const-string v2, "session_has_been_invalid"

    invoke-direct {v1, v2}, Lcom/gpc/sdk/notification/GPCNotification;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->postNotification(Lcom/gpc/sdk/notification/GPCNotification;)V

    .line 4
    sget-object v0, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession:Lcom/gpc/sdk/account/GPCSession;

    return-object v0
.end method

.method public onAsyncInit()V
    .locals 2

    .line 1
    const-string v0, "GPCSessionManager"

    const-string v1, "\u4ece\u7f13\u5b58\u4e2d\u6062\u590d Session \u6570\u636e"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->restoreAsCurrent()Lcom/gpc/sdk/account/GPCSession;

    return-void
.end method

.method public onDelayedInit()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession:Lcom/gpc/sdk/account/GPCSession;

    return-void
.end method

.method public onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInitFinish()V
    .locals 0

    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/sdk/GPCConfiguration;)V
    .locals 1

    .line 1
    new-instance p2, Lcom/gpc/sdk/account/utils/SessionStorage;

    invoke-direct {p2, p1}, Lcom/gpc/sdk/account/utils/SessionStorage;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/gpc/sdk/account/GPCSessionManager;->sessionStorage:Lcom/gpc/sdk/account/utils/SessionStorage;

    .line 3
    new-instance p1, Lcom/gpc/sdk/account/GPCSessionManager$a;

    invoke-direct {p1, p0}, Lcom/gpc/sdk/account/GPCSessionManager$a;-><init>(Lcom/gpc/sdk/account/GPCSessionManager;)V

    iput-object p1, p0, Lcom/gpc/sdk/account/GPCSessionManager;->observer:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

    .line 11
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object p1

    iget-object p2, p0, Lcom/gpc/sdk/account/GPCSessionManager;->observer:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

    const-string v0, "service_session_has_been_expired"

    invoke-virtual {p1, v0, p2}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->addObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUserIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession:Lcom/gpc/sdk/account/GPCSession;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession:Lcom/gpc/sdk/account/GPCSession;

    invoke-virtual {p2}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    sput-object p1, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession:Lcom/gpc/sdk/account/GPCSession;

    .line 4
    const-string p1, "GPCSessionManager"

    const-string p2, "onIGXIdChange"

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public quickCreate(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/account/GPCSession;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 1
    invoke-virtual/range {v0 .. v9}, Lcom/gpc/sdk/account/GPCSessionManager;->quickCreate(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;Z)Lcom/gpc/sdk/account/GPCSession;

    move-result-object p1

    return-object p1
.end method

.method public quickCreate(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;)Lcom/gpc/sdk/account/GPCSession;
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 2
    invoke-virtual/range {v0 .. v9}, Lcom/gpc/sdk/account/GPCSessionManager;->quickCreate(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;Z)Lcom/gpc/sdk/account/GPCSession;

    move-result-object p1

    return-object p1
.end method

.method public quickCreate(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;Z)Lcom/gpc/sdk/account/GPCSession;
    .locals 1

    .line 3
    new-instance v0, Lcom/gpc/sdk/account/GPCSession;

    invoke-direct {v0, p8}, Lcom/gpc/sdk/account/GPCSession;-><init>(Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/account/GPCSession;->setLoginType(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)V

    .line 6
    invoke-virtual {v0, p2}, Lcom/gpc/sdk/account/GPCSession;->setUserId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p4}, Lcom/gpc/sdk/account/GPCSession;->setHasBind(Z)V

    .line 8
    invoke-virtual {v0, p9}, Lcom/gpc/sdk/account/GPCSession;->setAccountNewlyCreated(Z)V

    .line 9
    invoke-virtual {v0, p6}, Lcom/gpc/sdk/account/GPCSession;->setThirdPlatformAccessKey(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p7}, Lcom/gpc/sdk/account/GPCSession;->setThirdPlatformId(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p3}, Lcom/gpc/sdk/account/GPCSession;->setAccesskey(Ljava/lang/String;)V

    .line 15
    const-string p6, ""

    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_0

    .line 16
    invoke-static {p5}, Lcom/gpc/util/DeviceUtil;->timestampToUTC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 18
    :cond_0
    invoke-virtual {v0, p5}, Lcom/gpc/sdk/account/GPCSession;->setTimeToVerify(Ljava/lang/String;)V

    .line 20
    new-instance p6, Ljava/lang/StringBuilder;

    const-string p7, "quickCreate => loginType: "

    invoke-direct {p6, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|IGXId: "

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|accesskey: "

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|hasBind: "

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "|timeToVerify(UTC):"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|thirdPlatformAccessKey:"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getThirdPlatformAccessKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|thirdPlatformId:"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getThirdPlatformId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|isAccountNewlyCreated:"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->isAccountNewlyCreated()Z

    move-result p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    const-string p3, "GPCSessionManager"

    invoke-static {p3, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object p1, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession:Lcom/gpc/sdk/account/GPCSession;

    if-nez p1, :cond_1

    .line 35
    const-string p1, "quickCreate currentSession is null!!"

    invoke-static {p3, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sput-object v0, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession:Lcom/gpc/sdk/account/GPCSession;

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 39
    const-string p4, "quickCreate update currentSession data"

    invoke-static {p3, p4}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-object p3, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession:Lcom/gpc/sdk/account/GPCSession;

    invoke-virtual {p3, v0}, Lcom/gpc/sdk/account/GPCSession;->upateSession(Lcom/gpc/sdk/account/GPCSession;)V

    .line 41
    invoke-static {p1, p2}, Lcom/gpc/sdk/utils/modules/ModulesManager;->onIGXIdChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :goto_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/account/GPCSessionManager;->refreshSessionTimestamp(Ljava/util/Date;)V

    .line 46
    invoke-virtual {p0}, Lcom/gpc/sdk/account/GPCSessionManager;->storeCurrentSession()V

    .line 47
    sget-object p1, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession:Lcom/gpc/sdk/account/GPCSession;

    return-object p1
.end method

.method public refreshSessionTimestamp(Ljava/util/Date;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/account/GPCSessionManager;->sessionStorage()Lcom/gpc/sdk/account/utils/SessionStorage;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/account/utils/SessionStorage;->saveLastRefreshSessionTimestamp(J)V

    return-void
.end method

.method public restoreAsCurrent()Lcom/gpc/sdk/account/GPCSession;
    .locals 2

    .line 1
    const-string v0, "GPCSessionManager"

    const-string v1, "restoreAsCurrent"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession:Lcom/gpc/sdk/account/GPCSession;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/gpc/sdk/account/GPCSessionManager;->sessionStorage()Lcom/gpc/sdk/account/utils/SessionStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/utils/SessionStorage;->restoreCacheAsCurrent()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession:Lcom/gpc/sdk/account/GPCSession;

    .line 4
    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->dumpToLogCat()V

    .line 6
    :cond_0
    sget-object v0, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession:Lcom/gpc/sdk/account/GPCSession;

    return-object v0
.end method

.method public declared-synchronized sessionStorage()Lcom/gpc/sdk/account/utils/SessionStorage;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCSessionManager;->sessionStorage:Lcom/gpc/sdk/account/utils/SessionStorage;

    if-nez v0, :cond_0

    .line 2
    const-string v0, "GPCSessionManager"

    const-string v1, "sessionStorage create by sessionStorage"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/gpc/sdk/account/utils/SessionStorage;

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/sdk/account/utils/SessionStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/sdk/account/GPCSessionManager;->sessionStorage:Lcom/gpc/sdk/account/utils/SessionStorage;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCSessionManager;->sessionStorage:Lcom/gpc/sdk/account/utils/SessionStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public shouldRefreshSession(Ljava/util/Date;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/account/GPCSessionManager;->sessionStorage()Lcom/gpc/sdk/account/utils/SessionStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/utils/SessionStorage;->readLastRefreshSessionTimestamp()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x5265c00

    cmp-long p1, v2, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized storeCurrentSession()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    const-string v0, "GPCSessionManager"

    const-string v1, "storeCurrentSession"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession:Lcom/gpc/sdk/account/GPCSession;

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->dumpToLogCat()V

    .line 3
    sget-object v0, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession:Lcom/gpc/sdk/account/GPCSession;

    invoke-direct {p0, v0}, Lcom/gpc/sdk/account/GPCSessionManager;->storeSession(Lcom/gpc/sdk/account/GPCSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
