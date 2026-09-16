.class public Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/modules/Module;


# static fields
.field private static final TAG:Ljava/lang/String; = "ServerTimeModule"

.field private static sInstance:Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;


# instance fields
.field private context:Landroid/content/Context;

.field private isSynchronized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lock:Ljava/util/concurrent/locks/Lock;

.field private observer:Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;

.field private severOffsetTimestamp:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->severOffsetTimestamp:J

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->isSynchronized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->lock:Ljava/util/concurrent/locks/Lock;

    .line 66
    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule$a;

    invoke-direct {v0, p0}, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule$a;-><init>(Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;)V

    iput-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->observer:Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->lock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->isSynchronized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->severOffsetTimestamp:J

    return-wide v0
.end method

.method public static synthetic access$202(Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->severOffsetTimestamp:J

    return-wide p1
.end method

.method public static sharedInstance()Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->sInstance:Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;-><init>()V

    sput-object v0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->sInstance:Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;

    .line 4
    :cond_0
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->sInstance:Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;

    return-object v0
.end method


# virtual methods
.method public getIsSynchronized()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->isSynchronized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public getObserver()Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->observer:Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;

    return-object v0
.end method

.method public getSeverOffsetTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->severOffsetTimestamp:J

    return-wide v0
.end method

.method public declared-synchronized getSeverTimestamp()J
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->severOffsetTimestamp:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isSynchronizedServerTime()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->isSynchronized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onAsyncInit()V
    .locals 0

    return-void
.end method

.method public declared-synchronized onDestroy()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/operations/migrate/notification/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->observer:Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;

    const-string v2, "primary_app_config_notification"

    invoke-virtual {v0, v2, v1}, Lcom/gpc/operations/migrate/notification/NotificationCenter;->removeObserver(Ljava/lang/String;Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;)V

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/operations/migrate/notification/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->observer:Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;

    const-string v2, "GPC_APIGATEWAY_CONFIGRATION_SYNCHRONIZE_V1"

    invoke-virtual {v0, v2, v1}, Lcom/gpc/operations/migrate/notification/NotificationCenter;->removeObserver(Ljava/lang/String;Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;)V
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

.method public onIGXIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInitFinish()V
    .locals 0

    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/operations/migrate/Configuration;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->context:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/operations/migrate/notification/NotificationCenter;

    move-result-object p1

    iget-object p2, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->observer:Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;

    const-string v0, "primary_app_config_notification"

    invoke-virtual {p1, v0, p2}, Lcom/gpc/operations/migrate/notification/NotificationCenter;->addObserver(Ljava/lang/String;Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;)V

    .line 3
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/operations/migrate/notification/NotificationCenter;

    move-result-object p1

    iget-object p2, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->observer:Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;

    const-string v0, "GPC_APIGATEWAY_CONFIGRATION_SYNCHRONIZE_V1"

    invoke-virtual {p1, v0, p2}, Lcom/gpc/operations/migrate/notification/NotificationCenter;->addObserver(Ljava/lang/String;Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;)V

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setIsSynchronized(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->isSynchronized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public setObserver(Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->observer:Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;

    return-void
.end method

.method public setSeverOffsetTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->severOffsetTimestamp:J

    return-void
.end method

.method public declared-synchronized updateServerTime(JJ)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x2

    div-long/2addr p3, v0

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->severOffsetTimestamp:J
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
