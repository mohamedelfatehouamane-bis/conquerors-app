.class Lcom/instacart/library/truetime/DiskCacheClient;
.super Ljava/lang/Object;
.source "DiskCacheClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DiskCacheClient"


# instance fields
.field private _cacheInterface:Lcom/instacart/library/truetime/CacheInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/instacart/library/truetime/DiskCacheClient;->_cacheInterface:Lcom/instacart/library/truetime/CacheInterface;

    return-void
.end method

.method private cacheUnavailable()Z
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/instacart/library/truetime/DiskCacheClient;->_cacheInterface:Lcom/instacart/library/truetime/CacheInterface;

    if-nez v0, :cond_0

    .line 94
    sget-object v0, Lcom/instacart/library/truetime/DiskCacheClient;->TAG:Ljava/lang/String;

    const-string v1, "Cannot use disk caching strategy for TrueTime. CacheInterface unavailable"

    invoke-static {v0, v1}, Lcom/instacart/library/truetime/TrueLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method cacheTrueTimeInfo(Lcom/instacart/library/truetime/SntpClient;)V
    .locals 11

    .line 38
    invoke-direct {p0}, Lcom/instacart/library/truetime/DiskCacheClient;->cacheUnavailable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-virtual {p1}, Lcom/instacart/library/truetime/SntpClient;->getCachedSntpTime()J

    move-result-wide v0

    .line 43
    invoke-virtual {p1}, Lcom/instacart/library/truetime/SntpClient;->getCachedDeviceUptime()J

    move-result-wide v2

    sub-long v4, v0, v2

    .line 46
    sget-object p1, Lcom/instacart/library/truetime/DiskCacheClient;->TAG:Ljava/lang/String;

    .line 48
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 49
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 50
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v6, 0x1

    aput-object v7, v9, v6

    const/4 v6, 0x2

    aput-object v8, v9, v6

    .line 47
    const-string v6, "Caching true time info to disk sntp [%s] device [%s] boot [%s]"

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 46
    invoke-static {p1, v6}, Lcom/instacart/library/truetime/TrueLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/instacart/library/truetime/DiskCacheClient;->_cacheInterface:Lcom/instacart/library/truetime/CacheInterface;

    const-string v6, "com.instacart.library.truetime.cached_boot_time"

    invoke-interface {p1, v6, v4, v5}, Lcom/instacart/library/truetime/CacheInterface;->put(Ljava/lang/String;J)V

    .line 53
    iget-object p1, p0, Lcom/instacart/library/truetime/DiskCacheClient;->_cacheInterface:Lcom/instacart/library/truetime/CacheInterface;

    const-string v4, "com.instacart.library.truetime.cached_device_uptime"

    invoke-interface {p1, v4, v2, v3}, Lcom/instacart/library/truetime/CacheInterface;->put(Ljava/lang/String;J)V

    .line 54
    iget-object p1, p0, Lcom/instacart/library/truetime/DiskCacheClient;->_cacheInterface:Lcom/instacart/library/truetime/CacheInterface;

    const-string v2, "com.instacart.library.truetime.cached_sntp_time"

    invoke-interface {p1, v2, v0, v1}, Lcom/instacart/library/truetime/CacheInterface;->put(Ljava/lang/String;J)V

    return-void
.end method

.method clearCachedInfo()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/instacart/library/truetime/DiskCacheClient;->_cacheInterface:Lcom/instacart/library/truetime/CacheInterface;

    invoke-virtual {p0, v0}, Lcom/instacart/library/truetime/DiskCacheClient;->clearCachedInfo(Lcom/instacart/library/truetime/CacheInterface;)V

    return-void
.end method

.method clearCachedInfo(Lcom/instacart/library/truetime/CacheInterface;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 33
    invoke-interface {p1}, Lcom/instacart/library/truetime/CacheInterface;->clear()V

    :cond_0
    return-void
.end method

.method enableCacheInterface(Lcom/instacart/library/truetime/CacheInterface;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/instacart/library/truetime/DiskCacheClient;->_cacheInterface:Lcom/instacart/library/truetime/CacheInterface;

    return-void
.end method

.method getCachedDeviceUptime()J
    .locals 4

    .line 75
    invoke-direct {p0}, Lcom/instacart/library/truetime/DiskCacheClient;->cacheUnavailable()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/instacart/library/truetime/DiskCacheClient;->_cacheInterface:Lcom/instacart/library/truetime/CacheInterface;

    const-string v3, "com.instacart.library.truetime.cached_device_uptime"

    invoke-interface {v0, v3, v1, v2}, Lcom/instacart/library/truetime/CacheInterface;->get(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method getCachedSntpTime()J
    .locals 4

    .line 83
    invoke-direct {p0}, Lcom/instacart/library/truetime/DiskCacheClient;->cacheUnavailable()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/instacart/library/truetime/DiskCacheClient;->_cacheInterface:Lcom/instacart/library/truetime/CacheInterface;

    const-string v3, "com.instacart.library.truetime.cached_sntp_time"

    invoke-interface {v0, v3, v1, v2}, Lcom/instacart/library/truetime/CacheInterface;->get(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method isTrueTimeCachedFromAPreviousBoot()Z
    .locals 7

    .line 59
    invoke-direct {p0}, Lcom/instacart/library/truetime/DiskCacheClient;->cacheUnavailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/instacart/library/truetime/DiskCacheClient;->_cacheInterface:Lcom/instacart/library/truetime/CacheInterface;

    const-string v2, "com.instacart.library.truetime.cached_boot_time"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/instacart/library/truetime/CacheInterface;->get(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_1

    return v1

    .line 69
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/instacart/library/truetime/DiskCacheClient;->getCachedDeviceUptime()J

    move-result-wide v4

    const/4 v0, 0x1

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    const/4 v1, 0x1

    .line 70
    :cond_2
    sget-object v2, Lcom/instacart/library/truetime/DiskCacheClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "---- boot time changed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/instacart/library/truetime/TrueLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    xor-int/2addr v0, v1

    return v0
.end method
