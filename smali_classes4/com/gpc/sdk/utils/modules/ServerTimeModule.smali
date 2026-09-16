.class public Lcom/gpc/sdk/utils/modules/ServerTimeModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/Module;


# static fields
.field private static final NTP_SERVER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NTP_SERVER_TIME_OUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "ServerTimeModule"

.field private static final TIME_PERIOD:J = 0xea60L

.field private static sInstance:Lcom/gpc/sdk/utils/modules/ServerTimeModule;


# instance fields
.field private context:Landroid/content/Context;

.field private expiresTimeNTP:J

.field private lock:Ljava/util/concurrent/locks/Lock;

.field public ntpServerSelector:I

.field private observer:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

.field private severOffsetTimestampAppConf:J

.field private severOffsetTimestampNTP:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->NTP_SERVER:Ljava/util/List;

    .line 6
    const-string v1, "time.google.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    const-string v1, "time.apple.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    const-string v1, "time.windows.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->severOffsetTimestampNTP:J

    .line 4
    iput-wide v0, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->severOffsetTimestampAppConf:J

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->expiresTimeNTP:J

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->ntpServerSelector:I

    .line 8
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->lock:Ljava/util/concurrent/locks/Lock;

    .line 71
    new-instance v0, Lcom/gpc/sdk/utils/modules/ServerTimeModule$a;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/utils/modules/ServerTimeModule$a;-><init>(Lcom/gpc/sdk/utils/modules/ServerTimeModule;)V

    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->observer:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/sdk/utils/modules/ServerTimeModule;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->expiresTimeNTP:J

    return-wide v0
.end method

.method public static synthetic access$002(Lcom/gpc/sdk/utils/modules/ServerTimeModule;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->expiresTimeNTP:J

    return-wide p1
.end method

.method public static synthetic access$100(Lcom/gpc/sdk/utils/modules/ServerTimeModule;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->lock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method public static synthetic access$200()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->NTP_SERVER:Ljava/util/List;

    return-object v0
.end method

.method public static sharedInstance()Lcom/gpc/sdk/utils/modules/ServerTimeModule;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->sInstance:Lcom/gpc/sdk/utils/modules/ServerTimeModule;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/ServerTimeModule;-><init>()V

    sput-object v0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->sInstance:Lcom/gpc/sdk/utils/modules/ServerTimeModule;

    .line 4
    :cond_0
    sget-object v0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->sInstance:Lcom/gpc/sdk/utils/modules/ServerTimeModule;

    return-object v0
.end method


# virtual methods
.method public getExpiresTimeNTP()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->expiresTimeNTP:J

    return-wide v0
.end method

.method public getNtpServerSelector()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->ntpServerSelector:I

    return v0
.end method

.method public getObserver()Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->observer:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

    return-object v0
.end method

.method public getSeverTimestamp()J
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->severOffsetTimestampNTP:J

    const-string v2, "ServerTimeModule"

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "severOffsetTimestampNTP\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->severOffsetTimestampNTP:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-wide v0, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->severOffsetTimestampNTP:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    return-wide v0

    .line 6
    :cond_0
    iget-wide v0, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->severOffsetTimestampAppConf:J

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "severOffsetTimestampAppConf\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->severOffsetTimestampAppConf:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-wide v0, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->severOffsetTimestampAppConf:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    return-wide v3
.end method

.method public isSynchronizedServerTime()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->severOffsetTimestampNTP:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-wide v0, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->severOffsetTimestampAppConf:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onAsyncInit()V
    .locals 0

    return-void
.end method

.method public onDelayedInit()V
    .locals 0

    return-void
.end method

.method public declared-synchronized onDestroy()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->observer:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

    const-string v2, "primary_app_config_notification"

    invoke-virtual {v0, v2, v1}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->removeObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V
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
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->context:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object p1

    iget-object p2, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->observer:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

    const-string v0, "primary_app_config_notification"

    invoke-virtual {p1, v0, p2}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->addObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

    .line 4
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->sharedInstance()Lcom/gpc/sdk/utils/modules/ServerTimeModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->syncServerTime()V

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUserIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setExpiresTimeNTP(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->expiresTimeNTP:J

    return-void
.end method

.method public setNtpServerSelector(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->ntpServerSelector:I

    return-void
.end method

.method public setObserver(Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->observer:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

    return-void
.end method

.method public syncServerTime()V
    .locals 6

    .line 1
    const-string v0, "syncServerTime"

    const-string v1, "ServerTimeModule"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    const-string v0, "in lock"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->expiresTimeNTP:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 7
    const-string v0, "last NTP Success Time in time period."

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 49
    :cond_0
    :try_start_1
    new-instance v0, Lcom/gpc/util/SDKTask;

    invoke-direct {v0}, Lcom/gpc/util/SDKTask;-><init>()V

    .line 50
    new-instance v1, Lcom/gpc/sdk/utils/modules/ServerTimeModule$b;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/modules/ServerTimeModule$b;-><init>(Lcom/gpc/sdk/utils/modules/ServerTimeModule;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/gpc/util/SDKTask;->excuteForTimeConsuming(Lcom/gpc/util/SDKTask$SDKTaskRunnable;Lcom/gpc/util/SDKTask$SDKTaskResultListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    .line 87
    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 88
    throw v0

    :cond_1
    return-void
.end method

.method public updateServerTimeAppConf(JJ)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x2

    div-long/2addr p3, v0

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->severOffsetTimestampAppConf:J

    return-void
.end method

.method public updateServerTimeNTP(JJ)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x2

    div-long/2addr p3, v0

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->severOffsetTimestampNTP:J

    return-void
.end method
