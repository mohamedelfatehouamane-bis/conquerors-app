.class public Lcom/gpc/operations/migrate/account/SessionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/modules/Module;


# static fields
.field private static final TAG:Ljava/lang/String; = "SessionManager"

.field private static currentSession:Lcom/gpc/operations/migrate/account/Session;

.field private static sInstance:Lcom/gpc/operations/migrate/account/SessionManager;


# instance fields
.field private observer:Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/gpc/operations/migrate/account/SessionManager;->observer:Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/operations/migrate/account/SessionManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/migrate/account/SessionManager;->notifySessionExpired()V

    return-void
.end method

.method private notifySessionExpired()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/operations/migrate/notification/NotificationCenter;

    move-result-object v0

    new-instance v1, Lcom/gpc/operations/migrate/notification/Notification;

    sget-object v2, Lcom/gpc/operations/migrate/account/SessionManager;->currentSession:Lcom/gpc/operations/migrate/account/Session;

    const-string v3, "session_has_been_expired"

    invoke-direct {v1, v3, v2}, Lcom/gpc/operations/migrate/notification/Notification;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/notification/NotificationCenter;->postNotification(Lcom/gpc/operations/migrate/notification/Notification;)V

    return-void
.end method

.method public static sharedInstance()Lcom/gpc/operations/migrate/account/SessionManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/migrate/account/SessionManager;->sInstance:Lcom/gpc/operations/migrate/account/SessionManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/operations/migrate/account/SessionManager;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/account/SessionManager;-><init>()V

    sput-object v0, Lcom/gpc/operations/migrate/account/SessionManager;->sInstance:Lcom/gpc/operations/migrate/account/SessionManager;

    .line 4
    :cond_0
    sget-object v0, Lcom/gpc/operations/migrate/account/SessionManager;->sInstance:Lcom/gpc/operations/migrate/account/SessionManager;

    return-object v0
.end method


# virtual methods
.method public currentSession()Lcom/gpc/operations/migrate/account/Session;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/migrate/account/SessionManager;->currentSession:Lcom/gpc/operations/migrate/account/Session;

    return-object v0
.end method

.method public invalidateCurrentSession()Lcom/gpc/operations/migrate/account/Session;
    .locals 3

    .line 1
    const-string v0, "SessionManager"

    const-string v1, "invalidateCurrentSession"

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/operations/migrate/notification/NotificationCenter;

    move-result-object v0

    new-instance v1, Lcom/gpc/operations/migrate/notification/Notification;

    const-string v2, "session_has_been_invalid"

    invoke-direct {v1, v2}, Lcom/gpc/operations/migrate/notification/Notification;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/notification/NotificationCenter;->postNotification(Lcom/gpc/operations/migrate/notification/Notification;)V

    .line 3
    sget-object v0, Lcom/gpc/operations/migrate/account/SessionManager;->currentSession:Lcom/gpc/operations/migrate/account/Session;

    return-object v0
.end method

.method public onAsyncInit()V
    .locals 2

    .line 1
    const-string v0, "SessionManager"

    const-string v1, "\u4ece\u7f13\u5b58\u4e2d\u6062\u590d Session \u6570\u636e"

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/gpc/operations/migrate/account/SessionManager;->currentSession:Lcom/gpc/operations/migrate/account/Session;

    return-void
.end method

.method public onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onIGXIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/migrate/account/SessionManager;->currentSession:Lcom/gpc/operations/migrate/account/Session;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/gpc/operations/migrate/account/SessionManager;->currentSession:Lcom/gpc/operations/migrate/account/Session;

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/account/Session;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    sput-object p1, Lcom/gpc/operations/migrate/account/SessionManager;->currentSession:Lcom/gpc/operations/migrate/account/Session;

    .line 4
    const-string p1, "SessionManager"

    const-string p2, "onIGXIdChange"

    invoke-static {p1, p2}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInitFinish()V
    .locals 0

    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/operations/migrate/Configuration;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/gpc/operations/migrate/account/SessionManager$a;

    invoke-direct {p1, p0}, Lcom/gpc/operations/migrate/account/SessionManager$a;-><init>(Lcom/gpc/operations/migrate/account/SessionManager;)V

    iput-object p1, p0, Lcom/gpc/operations/migrate/account/SessionManager;->observer:Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;

    .line 9
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/operations/migrate/notification/NotificationCenter;

    move-result-object p1

    iget-object p2, p0, Lcom/gpc/operations/migrate/account/SessionManager;->observer:Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;

    const-string v0, "service_session_has_been_expired"

    invoke-virtual {p1, v0, p2}, Lcom/gpc/operations/migrate/notification/NotificationCenter;->addObserver(Ljava/lang/String;Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;)V

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public quickCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/account/Session;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 1
    invoke-virtual/range {v0 .. v8}, Lcom/gpc/operations/migrate/account/SessionManager;->quickCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;)Lcom/gpc/operations/migrate/account/Session;

    move-result-object p1

    return-object p1
.end method

.method public quickCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;)Lcom/gpc/operations/migrate/account/Session;
    .locals 1

    .line 2
    new-instance v0, Lcom/gpc/operations/migrate/account/Session;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/account/Session;-><init>()V

    .line 3
    invoke-virtual {v0, p2}, Lcom/gpc/operations/migrate/account/Session;->setUserId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p4}, Lcom/gpc/operations/migrate/account/Session;->setHasBind(Z)V

    .line 6
    invoke-virtual {v0, p6}, Lcom/gpc/operations/migrate/account/Session;->setThirdPlatformAccessKey(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p7}, Lcom/gpc/operations/migrate/account/Session;->setThirdPlatformId(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p3}, Lcom/gpc/operations/migrate/account/Session;->setAccesskey(Ljava/lang/String;)V

    .line 12
    const-string p6, ""

    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_0

    .line 13
    invoke-static {p5}, Lcom/gpc/operations/migrate/utils/DeviceUtil;->timestampToUTC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 15
    :cond_0
    invoke-virtual {v0, p5}, Lcom/gpc/operations/migrate/account/Session;->setTimeToVerify(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p8}, Lcom/gpc/operations/migrate/account/Session;->setSsoToken(Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;)V

    .line 18
    new-instance p6, Ljava/lang/StringBuilder;

    const-string p7, "quickCreate => loginType: "

    invoke-direct {p6, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 21
    invoke-virtual {v0}, Lcom/gpc/operations/migrate/account/Session;->getThirdPlatformAccessKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|thirdPlatformId:"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Lcom/gpc/operations/migrate/account/Session;->getThirdPlatformId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    const-string p3, "SessionManager"

    invoke-static {p3, p1}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object p1, Lcom/gpc/operations/migrate/account/SessionManager;->currentSession:Lcom/gpc/operations/migrate/account/Session;

    if-nez p1, :cond_1

    .line 30
    const-string p1, "quickCreate currentSession is null!!"

    invoke-static {p3, p1}, Lcom/gpc/operations/migrate/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sput-object v0, Lcom/gpc/operations/migrate/account/SessionManager;->currentSession:Lcom/gpc/operations/migrate/account/Session;

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/account/Session;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 35
    const-string p4, "quickCreate update currentSession data"

    invoke-static {p3, p4}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object p3, Lcom/gpc/operations/migrate/account/SessionManager;->currentSession:Lcom/gpc/operations/migrate/account/Session;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/account/Session;->getUserId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/gpc/operations/migrate/account/Session;->setUserId(Ljava/lang/String;)V

    .line 37
    sget-object p3, Lcom/gpc/operations/migrate/account/SessionManager;->currentSession:Lcom/gpc/operations/migrate/account/Session;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/account/Session;->getAccesskey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/gpc/operations/migrate/account/Session;->setAccesskey(Ljava/lang/String;)V

    .line 38
    sget-object p3, Lcom/gpc/operations/migrate/account/SessionManager;->currentSession:Lcom/gpc/operations/migrate/account/Session;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/account/Session;->getTimeToVerify()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/gpc/operations/migrate/account/Session;->setTimeToVerify(Ljava/lang/String;)V

    .line 39
    sget-object p3, Lcom/gpc/operations/migrate/account/SessionManager;->currentSession:Lcom/gpc/operations/migrate/account/Session;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/account/Session;->isHasBind()Z

    move-result p4

    invoke-virtual {p3, p4}, Lcom/gpc/operations/migrate/account/Session;->setHasBind(Z)V

    .line 40
    sget-object p3, Lcom/gpc/operations/migrate/account/SessionManager;->currentSession:Lcom/gpc/operations/migrate/account/Session;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/account/Session;->getThirdPlatformId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/gpc/operations/migrate/account/Session;->setThirdPlatformId(Ljava/lang/String;)V

    .line 41
    sget-object p3, Lcom/gpc/operations/migrate/account/SessionManager;->currentSession:Lcom/gpc/operations/migrate/account/Session;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/account/Session;->getThirdPlatformAccessKey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/gpc/operations/migrate/account/Session;->setThirdPlatformAccessKey(Ljava/lang/String;)V

    .line 42
    sget-object p3, Lcom/gpc/operations/migrate/account/SessionManager;->currentSession:Lcom/gpc/operations/migrate/account/Session;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/account/Session;->getExtra()Ljava/util/Map;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/gpc/operations/migrate/account/Session;->setExtra(Ljava/util/Map;)V

    .line 43
    sget-object p3, Lcom/gpc/operations/migrate/account/SessionManager;->currentSession:Lcom/gpc/operations/migrate/account/Session;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/account/Session;->getSsoToken()Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/gpc/operations/migrate/account/Session;->setSsoToken(Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;)V

    .line 44
    invoke-static {p1, p2}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->onIGXIdChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_0
    sget-object p1, Lcom/gpc/operations/migrate/account/SessionManager;->currentSession:Lcom/gpc/operations/migrate/account/Session;

    return-object p1
.end method
