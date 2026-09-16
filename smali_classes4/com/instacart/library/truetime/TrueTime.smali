.class public Lcom/instacart/library/truetime/TrueTime;
.super Ljava/lang/Object;
.source "TrueTime.java"


# static fields
.field private static final DISK_CACHE_CLIENT:Lcom/instacart/library/truetime/DiskCacheClient;

.field private static final INSTANCE:Lcom/instacart/library/truetime/TrueTime;

.field private static final SNTP_CLIENT:Lcom/instacart/library/truetime/SntpClient;

.field private static final TAG:Ljava/lang/String; = "TrueTime"

.field private static _rootDelayMax:F

.field private static _rootDispersionMax:F

.field private static _serverResponseDelayMax:I

.field private static _udpSocketTimeoutInMillis:I


# instance fields
.field private _ntpHost:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/instacart/library/truetime/TrueTime;

    invoke-direct {v0}, Lcom/instacart/library/truetime/TrueTime;-><init>()V

    sput-object v0, Lcom/instacart/library/truetime/TrueTime;->INSTANCE:Lcom/instacart/library/truetime/TrueTime;

    .line 14
    new-instance v0, Lcom/instacart/library/truetime/DiskCacheClient;

    invoke-direct {v0}, Lcom/instacart/library/truetime/DiskCacheClient;-><init>()V

    sput-object v0, Lcom/instacart/library/truetime/TrueTime;->DISK_CACHE_CLIENT:Lcom/instacart/library/truetime/DiskCacheClient;

    .line 15
    new-instance v0, Lcom/instacart/library/truetime/SntpClient;

    invoke-direct {v0}, Lcom/instacart/library/truetime/SntpClient;-><init>()V

    sput-object v0, Lcom/instacart/library/truetime/TrueTime;->SNTP_CLIENT:Lcom/instacart/library/truetime/SntpClient;

    const/high16 v0, 0x42c80000    # 100.0f

    .line 17
    sput v0, Lcom/instacart/library/truetime/TrueTime;->_rootDelayMax:F

    .line 18
    sput v0, Lcom/instacart/library/truetime/TrueTime;->_rootDispersionMax:F

    const/16 v0, 0x2ee

    .line 19
    sput v0, Lcom/instacart/library/truetime/TrueTime;->_serverResponseDelayMax:I

    const/16 v0, 0x7530

    .line 20
    sput v0, Lcom/instacart/library/truetime/TrueTime;->_udpSocketTimeoutInMillis:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "1.us.pool.ntp.org"

    iput-object v0, p0, Lcom/instacart/library/truetime/TrueTime;->_ntpHost:Ljava/lang/String;

    return-void
.end method

.method private static _getCachedDeviceUptime()J
    .locals 5

    .line 153
    sget-object v0, Lcom/instacart/library/truetime/TrueTime;->SNTP_CLIENT:Lcom/instacart/library/truetime/SntpClient;

    invoke-virtual {v0}, Lcom/instacart/library/truetime/SntpClient;->wasInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v0}, Lcom/instacart/library/truetime/SntpClient;->getCachedDeviceUptime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/instacart/library/truetime/TrueTime;->DISK_CACHE_CLIENT:Lcom/instacart/library/truetime/DiskCacheClient;

    .line 155
    invoke-virtual {v0}, Lcom/instacart/library/truetime/DiskCacheClient;->getCachedDeviceUptime()J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    return-wide v0

    .line 158
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "expected device time from last boot to be cached. couldn\'t find it."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static _getCachedSntpTime()J
    .locals 5

    .line 165
    sget-object v0, Lcom/instacart/library/truetime/TrueTime;->SNTP_CLIENT:Lcom/instacart/library/truetime/SntpClient;

    invoke-virtual {v0}, Lcom/instacart/library/truetime/SntpClient;->wasInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/instacart/library/truetime/SntpClient;->getCachedSntpTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/instacart/library/truetime/TrueTime;->DISK_CACHE_CLIENT:Lcom/instacart/library/truetime/DiskCacheClient;

    .line 167
    invoke-virtual {v0}, Lcom/instacart/library/truetime/DiskCacheClient;->getCachedSntpTime()J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    return-wide v0

    .line 170
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "expected SNTP time from last boot to be cached. couldn\'t find it."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static build()Lcom/instacart/library/truetime/TrueTime;
    .locals 1

    .line 45
    sget-object v0, Lcom/instacart/library/truetime/TrueTime;->INSTANCE:Lcom/instacart/library/truetime/TrueTime;

    return-object v0
.end method

.method public static clearCachedInfo()V
    .locals 1

    .line 73
    sget-object v0, Lcom/instacart/library/truetime/TrueTime;->DISK_CACHE_CLIENT:Lcom/instacart/library/truetime/DiskCacheClient;

    invoke-virtual {v0}, Lcom/instacart/library/truetime/DiskCacheClient;->clearCachedInfo()V

    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .line 41
    sget-object v0, Lcom/instacart/library/truetime/TrueTime;->SNTP_CLIENT:Lcom/instacart/library/truetime/SntpClient;

    invoke-virtual {v0}, Lcom/instacart/library/truetime/SntpClient;->wasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/instacart/library/truetime/TrueTime;->DISK_CACHE_CLIENT:Lcom/instacart/library/truetime/DiskCacheClient;

    invoke-virtual {v0}, Lcom/instacart/library/truetime/DiskCacheClient;->isTrueTimeCachedFromAPreviousBoot()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static now()Ljava/util/Date;
    .locals 6

    .line 28
    invoke-static {}, Lcom/instacart/library/truetime/TrueTime;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/instacart/library/truetime/TrueTime;->_getCachedSntpTime()J

    move-result-wide v0

    .line 33
    invoke-static {}, Lcom/instacart/library/truetime/TrueTime;->_getCachedDeviceUptime()J

    move-result-wide v2

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 37
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to call init() on TrueTime at least once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static declared-synchronized saveTrueTimeInfoToDisk()V
    .locals 3

    const-class v0, Lcom/instacart/library/truetime/TrueTime;

    monitor-enter v0

    .line 141
    :try_start_0
    sget-object v1, Lcom/instacart/library/truetime/TrueTime;->SNTP_CLIENT:Lcom/instacart/library/truetime/SntpClient;

    invoke-virtual {v1}, Lcom/instacart/library/truetime/SntpClient;->wasInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    sget-object v1, Lcom/instacart/library/truetime/TrueTime;->TAG:Ljava/lang/String;

    const-string v2, "---- SNTP client not available. not caching TrueTime info in disk"

    invoke-static {v1, v2}, Lcom/instacart/library/truetime/TrueLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit v0

    return-void

    .line 145
    :cond_0
    :try_start_1
    sget-object v2, Lcom/instacart/library/truetime/TrueTime;->DISK_CACHE_CLIENT:Lcom/instacart/library/truetime/DiskCacheClient;

    invoke-virtual {v2, v1}, Lcom/instacart/library/truetime/DiskCacheClient;->cacheTrueTimeInfo(Lcom/instacart/library/truetime/SntpClient;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method cacheTrueTimeInfo([J)V
    .locals 1

    .line 149
    sget-object v0, Lcom/instacart/library/truetime/TrueTime;->SNTP_CLIENT:Lcom/instacart/library/truetime/SntpClient;

    invoke-virtual {v0, p1}, Lcom/instacart/library/truetime/SntpClient;->cacheTrueTimeInfo([J)V

    return-void
.end method

.method public initialize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/instacart/library/truetime/TrueTime;->_ntpHost:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/instacart/library/truetime/TrueTime;->initialize(Ljava/lang/String;)V

    return-void
.end method

.method protected initialize(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-static {}, Lcom/instacart/library/truetime/TrueTime;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget-object p1, Lcom/instacart/library/truetime/TrueTime;->TAG:Ljava/lang/String;

    const-string v0, "---- TrueTime already initialized from previous boot/init"

    invoke-static {p1, v0}, Lcom/instacart/library/truetime/TrueLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 128
    :cond_0
    invoke-virtual {p0, p1}, Lcom/instacart/library/truetime/TrueTime;->requestTime(Ljava/lang/String;)[J

    .line 129
    invoke-static {}, Lcom/instacart/library/truetime/TrueTime;->saveTrueTimeInfoToDisk()V

    return-void
.end method

.method requestTime(Ljava/lang/String;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    sget-object v0, Lcom/instacart/library/truetime/TrueTime;->SNTP_CLIENT:Lcom/instacart/library/truetime/SntpClient;

    sget v2, Lcom/instacart/library/truetime/TrueTime;->_rootDelayMax:F

    sget v3, Lcom/instacart/library/truetime/TrueTime;->_rootDispersionMax:F

    sget v4, Lcom/instacart/library/truetime/TrueTime;->_serverResponseDelayMax:I

    sget v5, Lcom/instacart/library/truetime/TrueTime;->_udpSocketTimeoutInMillis:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/instacart/library/truetime/SntpClient;->requestTime(Ljava/lang/String;FFII)[J

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized withConnectionTimeout(I)Lcom/instacart/library/truetime/TrueTime;
    .locals 0

    monitor-enter p0

    .line 77
    :try_start_0
    sput p1, Lcom/instacart/library/truetime/TrueTime;->_udpSocketTimeoutInMillis:I

    .line 78
    sget-object p1, Lcom/instacart/library/truetime/TrueTime;->INSTANCE:Lcom/instacart/library/truetime/TrueTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized withCustomizedCache(Lcom/instacart/library/truetime/CacheInterface;)Lcom/instacart/library/truetime/TrueTime;
    .locals 1

    monitor-enter p0

    .line 65
    :try_start_0
    sget-object v0, Lcom/instacart/library/truetime/TrueTime;->DISK_CACHE_CLIENT:Lcom/instacart/library/truetime/DiskCacheClient;

    invoke-virtual {v0, p1}, Lcom/instacart/library/truetime/DiskCacheClient;->enableCacheInterface(Lcom/instacart/library/truetime/CacheInterface;)V

    .line 66
    sget-object p1, Lcom/instacart/library/truetime/TrueTime;->INSTANCE:Lcom/instacart/library/truetime/TrueTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized withLoggingEnabled(Z)Lcom/instacart/library/truetime/TrueTime;
    .locals 0

    monitor-enter p0

    .line 116
    :try_start_0
    invoke-static {p1}, Lcom/instacart/library/truetime/TrueLog;->setLoggingEnabled(Z)V

    .line 117
    sget-object p1, Lcom/instacart/library/truetime/TrueTime;->INSTANCE:Lcom/instacart/library/truetime/TrueTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized withNtpHost(Ljava/lang/String;)Lcom/instacart/library/truetime/TrueTime;
    .locals 0

    monitor-enter p0

    .line 111
    :try_start_0
    iput-object p1, p0, Lcom/instacart/library/truetime/TrueTime;->_ntpHost:Ljava/lang/String;

    .line 112
    sget-object p1, Lcom/instacart/library/truetime/TrueTime;->INSTANCE:Lcom/instacart/library/truetime/TrueTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized withRootDelayMax(F)Lcom/instacart/library/truetime/TrueTime;
    .locals 6

    monitor-enter p0

    .line 82
    :try_start_0
    sget v0, Lcom/instacart/library/truetime/TrueTime;->_rootDelayMax:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 83
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "The recommended max rootDelay value is %f. You are setting it at %f"

    sget v2, Lcom/instacart/library/truetime/TrueTime;->_rootDelayMax:F

    .line 85
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    .line 83
    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 86
    sget-object v1, Lcom/instacart/library/truetime/TrueTime;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/instacart/library/truetime/TrueLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    sput p1, Lcom/instacart/library/truetime/TrueTime;->_rootDelayMax:F

    .line 90
    sget-object p1, Lcom/instacart/library/truetime/TrueTime;->INSTANCE:Lcom/instacart/library/truetime/TrueTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized withRootDispersionMax(F)Lcom/instacart/library/truetime/TrueTime;
    .locals 6

    monitor-enter p0

    .line 94
    :try_start_0
    sget v0, Lcom/instacart/library/truetime/TrueTime;->_rootDispersionMax:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "The recommended max rootDispersion value is %f. You are setting it at %f"

    sget v2, Lcom/instacart/library/truetime/TrueTime;->_rootDispersionMax:F

    .line 97
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    .line 95
    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    sget-object v1, Lcom/instacart/library/truetime/TrueTime;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/instacart/library/truetime/TrueLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    sput p1, Lcom/instacart/library/truetime/TrueTime;->_rootDispersionMax:F

    .line 102
    sget-object p1, Lcom/instacart/library/truetime/TrueTime;->INSTANCE:Lcom/instacart/library/truetime/TrueTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized withServerResponseDelayMax(I)Lcom/instacart/library/truetime/TrueTime;
    .locals 0

    monitor-enter p0

    .line 106
    :try_start_0
    sput p1, Lcom/instacart/library/truetime/TrueTime;->_serverResponseDelayMax:I

    .line 107
    sget-object p1, Lcom/instacart/library/truetime/TrueTime;->INSTANCE:Lcom/instacart/library/truetime/TrueTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized withSharedPreferencesCache(Landroid/content/Context;)Lcom/instacart/library/truetime/TrueTime;
    .locals 2

    monitor-enter p0

    .line 57
    :try_start_0
    sget-object v0, Lcom/instacart/library/truetime/TrueTime;->DISK_CACHE_CLIENT:Lcom/instacart/library/truetime/DiskCacheClient;

    new-instance v1, Lcom/instacart/library/truetime/SharedPreferenceCacheImpl;

    invoke-direct {v1, p1}, Lcom/instacart/library/truetime/SharedPreferenceCacheImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/instacart/library/truetime/DiskCacheClient;->enableCacheInterface(Lcom/instacart/library/truetime/CacheInterface;)V

    .line 58
    sget-object p1, Lcom/instacart/library/truetime/TrueTime;->INSTANCE:Lcom/instacart/library/truetime/TrueTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
