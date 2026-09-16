.class public final Lcom/appsflyer/internal/AFi1hSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFi1fSDK;


# static fields
.field private static final values:Ljava/util/BitSet;


# instance fields
.field private final AFInAppEventParameterName:Landroid/hardware/SensorManager;

.field private final AFInAppEventType:Ljava/lang/Object;

.field final AFKeystoreWrapper:Landroid/os/Handler;

.field private final AFLogger:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/appsflyer/internal/AFi1gSDK;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final afInfoLog:Ljava/lang/Runnable;

.field private d:I

.field private e:Z

.field private final force:Ljava/lang/Runnable;

.field private i:J

.field private registerClient:Z

.field private final unregisterClient:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/appsflyer/internal/AFi1gSDK;",
            "Lcom/appsflyer/internal/AFi1gSDK;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/lang/Runnable;

.field private final valueOf:Ljava/util/concurrent/ExecutorService;

.field private final w:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$gG2bYbM6xd_plLNiYDRgV2GWo3A(Lcom/appsflyer/internal/AFi1hSDK;)V
    .locals 0

    invoke-direct {p0}, Lcom/appsflyer/internal/AFi1hSDK;->registerClient()V

    return-void
.end method

.method public static synthetic $r8$lambda$kfdQzkA2tGWeompzI2ysHz1ZtWo(Lcom/appsflyer/internal/AFi1hSDK;)V
    .locals 0

    invoke-direct {p0}, Lcom/appsflyer/internal/AFi1hSDK;->e()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 38
    sput-object v0, Lcom/appsflyer/internal/AFi1hSDK;->values:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/4 v1, 0x2

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/4 v1, 0x4

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 1122
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    .line 2116
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "internal"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2117
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2118
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 104
    invoke-direct {p0, p1, v1, p2}, Lcom/appsflyer/internal/AFi1hSDK;-><init>(Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private constructor <init>(Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFi1hSDK;->AFInAppEventType:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/appsflyer/internal/AFi1hSDK;->values:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFi1hSDK;->unregisterClient:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/BitSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFi1hSDK;->AFLogger:Ljava/util/Map;

    const/4 v0, 0x1

    .line 54
    iput v0, p0, Lcom/appsflyer/internal/AFi1hSDK;->d:I

    const-wide/16 v0, 0x0

    .line 55
    iput-wide v0, p0, Lcom/appsflyer/internal/AFi1hSDK;->i:J

    .line 57
    new-instance v0, Lcom/appsflyer/internal/AFi1hSDK$3;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/AFi1hSDK$3;-><init>(Lcom/appsflyer/internal/AFi1hSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFi1hSDK;->afInfoLog:Ljava/lang/Runnable;

    .line 69
    new-instance v0, Lcom/appsflyer/internal/AFi1hSDK$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/AFi1hSDK$$ExternalSyntheticLambda1;-><init>(Lcom/appsflyer/internal/AFi1hSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFi1hSDK;->w:Ljava/lang/Runnable;

    .line 75
    new-instance v0, Lcom/appsflyer/internal/AFi1hSDK$5;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/AFi1hSDK$5;-><init>(Lcom/appsflyer/internal/AFi1hSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFi1hSDK;->v:Ljava/lang/Runnable;

    .line 91
    new-instance v0, Lcom/appsflyer/internal/AFi1hSDK$1;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/AFi1hSDK$1;-><init>(Lcom/appsflyer/internal/AFi1hSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFi1hSDK;->force:Ljava/lang/Runnable;

    .line 109
    iput-object p1, p0, Lcom/appsflyer/internal/AFi1hSDK;->AFInAppEventParameterName:Landroid/hardware/SensorManager;

    .line 110
    iput-object p2, p0, Lcom/appsflyer/internal/AFi1hSDK;->AFKeystoreWrapper:Landroid/os/Handler;

    .line 111
    iput-object p3, p0, Lcom/appsflyer/internal/AFi1hSDK;->valueOf:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic AFInAppEventParameterName(Lcom/appsflyer/internal/AFi1hSDK;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/appsflyer/internal/AFi1hSDK;->d:I

    return p1
.end method

.method static synthetic AFInAppEventParameterName(Lcom/appsflyer/internal/AFi1hSDK;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/appsflyer/internal/AFi1hSDK;->registerClient:Z

    return p0
.end method

.method static synthetic AFInAppEventType(Lcom/appsflyer/internal/AFi1hSDK;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/appsflyer/internal/AFi1hSDK;->AFKeystoreWrapper:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/AFi1hSDK;)Ljava/lang/Object;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/appsflyer/internal/AFi1hSDK;->AFInAppEventType:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/AFi1hSDK;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/appsflyer/internal/AFi1hSDK;->registerClient:Z

    return p1
.end method

.method static synthetic AFLogger(Lcom/appsflyer/internal/AFi1hSDK;)Landroid/hardware/SensorManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/appsflyer/internal/AFi1hSDK;->AFInAppEventParameterName:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method private d()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1hSDK;->AFInAppEventType:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1hSDK;->unregisterClient:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/internal/AFi1gSDK;

    .line 242
    iget-object v3, p0, Lcom/appsflyer/internal/AFi1hSDK;->AFLogger:Ljava/util/Map;

    const/4 v4, 0x1

    .line 2157
    invoke-virtual {v2, v3, v4}, Lcom/appsflyer/internal/AFi1gSDK;->AFInAppEventType(Ljava/util/Map;Z)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1hSDK;->AFLogger:Ljava/util/Map;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 249
    :cond_1
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/appsflyer/internal/AFi1hSDK;->AFLogger:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 246
    :cond_2
    :goto_1
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 250
    monitor-exit v0

    throw v1
.end method

.method static synthetic d(Lcom/appsflyer/internal/AFi1hSDK;)Ljava/util/Map;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/appsflyer/internal/AFi1hSDK;->AFLogger:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic e(Lcom/appsflyer/internal/AFi1hSDK;)Ljava/lang/Runnable;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/appsflyer/internal/AFi1hSDK;->w:Ljava/lang/Runnable;

    return-object p0
.end method

.method private synthetic e()V
    .locals 6

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1hSDK;->AFInAppEventParameterName:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 186
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 187
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/appsflyer/internal/AFi1hSDK;->valueOf(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    new-instance v2, Lcom/appsflyer/internal/AFi1gSDK;

    iget-object v3, p0, Lcom/appsflyer/internal/AFi1hSDK;->valueOf:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v2, v1, v3}, Lcom/appsflyer/internal/AFi1gSDK;-><init>(Landroid/hardware/Sensor;Ljava/util/concurrent/ExecutorService;)V

    .line 189
    iget-object v3, p0, Lcom/appsflyer/internal/AFi1hSDK;->unregisterClient:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 190
    iget-object v3, p0, Lcom/appsflyer/internal/AFi1hSDK;->unregisterClient:Ljava/util/Map;

    invoke-interface {v3, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_1
    iget-object v3, p0, Lcom/appsflyer/internal/AFi1hSDK;->unregisterClient:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorEventListener;

    .line 193
    iget-object v3, p0, Lcom/appsflyer/internal/AFi1hSDK;->AFInAppEventParameterName:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/appsflyer/internal/AFi1hSDK;->AFKeystoreWrapper:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v1, v5, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 197
    const-string v1, "registerListeners error"

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFi1hSDK;->e:Z

    return-void
.end method

.method static synthetic force(Lcom/appsflyer/internal/AFi1hSDK;)Z
    .locals 1

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFi1hSDK;->e:Z

    return v0
.end method

.method static synthetic registerClient(Lcom/appsflyer/internal/AFi1hSDK;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/appsflyer/internal/AFi1hSDK;->d:I

    return p0
.end method

.method private synthetic registerClient()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1hSDK;->AFInAppEventType:Ljava/lang/Object;

    monitor-enter v0

    .line 16209
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1hSDK;->AFKeystoreWrapper:Landroid/os/Handler;

    new-instance v2, Lcom/appsflyer/internal/AFi1hSDK$2;

    invoke-direct {v2, p0}, Lcom/appsflyer/internal/AFi1hSDK$2;-><init>(Lcom/appsflyer/internal/AFi1hSDK;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private unregisterClient()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1hSDK;->AFInAppEventType:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1hSDK;->unregisterClient:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/appsflyer/internal/AFi1hSDK;->e:Z

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1hSDK;->unregisterClient:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/internal/AFi1gSDK;

    .line 265
    iget-object v3, p0, Lcom/appsflyer/internal/AFi1hSDK;->AFLogger:Ljava/util/Map;

    const/4 v4, 0x0

    .line 2161
    invoke-virtual {v2, v3, v4}, Lcom/appsflyer/internal/AFi1gSDK;->AFInAppEventType(Ljava/util/Map;Z)V

    goto :goto_0

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1hSDK;->AFLogger:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 271
    :cond_1
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/appsflyer/internal/AFi1hSDK;->AFLogger:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 272
    monitor-exit v0

    throw v1
.end method

.method static synthetic unregisterClient(Lcom/appsflyer/internal/AFi1hSDK;)Ljava/util/Map;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/appsflyer/internal/AFi1hSDK;->unregisterClient:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic valueOf(Lcom/appsflyer/internal/AFi1hSDK;)Ljava/lang/Runnable;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/appsflyer/internal/AFi1hSDK;->afInfoLog:Ljava/lang/Runnable;

    return-object p0
.end method

.method private static valueOf(I)Z
    .locals 1

    if-ltz p0, :cond_0

    .line 132
    sget-object v0, Lcom/appsflyer/internal/AFi1hSDK;->values:Ljava/util/BitSet;

    invoke-virtual {v0, p0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic values(Lcom/appsflyer/internal/AFi1hSDK;)Ljava/lang/Runnable;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/appsflyer/internal/AFi1hSDK;->force:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized AFInAppEventParameterName()V
    .locals 2

    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1hSDK;->AFKeystoreWrapper:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsflyer/internal/AFi1hSDK;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
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

.method public final AFInAppEventType()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 314
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 315
    invoke-direct {p0}, Lcom/appsflyer/internal/AFi1hSDK;->unregisterClient()Ljava/util/List;

    move-result-object v1

    .line 317
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v3, "sensors"

    if-nez v2, :cond_0

    .line 318
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFi1hSDK;->d()Ljava/util/List;

    move-result-object v1

    .line 322
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 323
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final AFKeystoreWrapper()Ljava/util/Map;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 295
    invoke-direct/range {p0 .. p0}, Lcom/appsflyer/internal/AFi1hSDK;->d()Ljava/util/List;

    move-result-object v1

    .line 296
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v3, "na"

    const-string v4, "sensors"

    if-nez v2, :cond_c

    .line 298
    new-instance v2, Lcom/appsflyer/internal/AFi1iSDK;

    invoke-direct {v2}, Lcom/appsflyer/internal/AFi1iSDK;-><init>()V

    .line 3167
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3169
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 3170
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 4143
    const-string v7, "sVS"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 4144
    :goto_1
    const-string v11, "sVE"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    :goto_2
    if-eqz v8, :cond_2

    if-eqz v12, :cond_2

    .line 4147
    sget-object v8, Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;->valueOf:Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;

    goto :goto_3

    :cond_2
    if-eqz v8, :cond_3

    .line 4149
    sget-object v8, Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;

    goto :goto_3

    .line 4152
    :cond_3
    sget-object v8, Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;->values:Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;

    .line 3173
    :goto_3
    sget-object v12, Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;->values:Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;

    const-string v13, "er"

    if-eq v8, v12, :cond_a

    .line 3174
    const-string v12, "sT"

    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 3175
    const-string v14, "sN"

    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 3177
    const-string v15, "n"

    if-eqz v14, :cond_4

    .line 3178
    invoke-interface {v6, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 3180
    :cond_4
    const-string v14, "uk"

    invoke-interface {v6, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3183
    :goto_4
    invoke-static {}, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;->values()[Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v15

    aget-object v14, v14, v15

    .line 5110
    new-instance v15, Ljava/util/ArrayList;

    .line 5111
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 5110
    invoke-static {v7}, Lcom/appsflyer/internal/AFi1iSDK;->AFInAppEventParameterName(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v15, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5113
    sget-object v7, Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;->valueOf:Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;

    if-ne v8, v7, :cond_5

    .line 5114
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/internal/AFi1iSDK;->AFInAppEventParameterName(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5117
    :cond_5
    sget-object v5, Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;->values:Lcom/appsflyer/internal/AFi1iSDK$AFa1vSDK;

    const-string v11, "##.#"

    if-ne v14, v5, :cond_7

    .line 6057
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6058
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/math/BigDecimal;

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/math/BigDecimal;

    move-object v14, v8

    .line 6130
    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    .line 6131
    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    .line 6133
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    const-wide v9, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v7, v7, v9

    invoke-static {v7, v8}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v7

    .line 6208
    new-instance v8, Ljava/text/DecimalFormat;

    invoke-direct {v8, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-wide/from16 v17, v9

    .line 6209
    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v8, v9}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 6210
    invoke-virtual {v8, v7}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 6211
    invoke-static {v8}, Lcom/appsflyer/internal/AFc1uSDK;->values(Ljava/lang/String;)D

    move-result-wide v8

    .line 6059
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x2

    .line 6060
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/math/BigDecimal;

    .line 7208
    new-instance v8, Ljava/text/DecimalFormat;

    invoke-direct {v8, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 7209
    sget-object v10, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v8, v10}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 7210
    invoke-virtual {v8, v9}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 7211
    invoke-static {v8}, Lcom/appsflyer/internal/AFc1uSDK;->values(Ljava/lang/String;)D

    move-result-wide v8

    .line 6060
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6061
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 6062
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x5

    if-le v9, v10, :cond_6

    const/4 v9, 0x3

    .line 6063
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/math/BigDecimal;

    const/4 v10, 0x4

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/math/BigDecimal;

    move-object/from16 v16, v10

    .line 8130
    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    .line 8131
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 8133
    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double v0, v0, v17

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    .line 6064
    invoke-virtual {v0, v7}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 8208
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 8209
    sget-object v7, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v1, v7}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 8210
    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8211
    invoke-static {v0}, Lcom/appsflyer/internal/AFc1uSDK;->values(Ljava/lang/String;)D

    move-result-wide v0

    .line 6063
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x5

    .line 6065
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    const/4 v1, 0x2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 9208
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 9209
    sget-object v7, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v1, v7}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 9210
    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9211
    invoke-static {v0}, Lcom/appsflyer/internal/AFc1uSDK;->values(Ljava/lang/String;)D

    move-result-wide v0

    .line 6065
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    move-object/from16 v19, v0

    move-object/from16 v20, v1

    .line 6067
    :goto_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6068
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6069
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_7
    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object v14, v8

    .line 10082
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10083
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x5

    if-le v1, v5, :cond_8

    const/4 v1, 0x3

    .line 10084
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigDecimal;

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/BigDecimal;

    invoke-virtual {v1, v5}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 10208
    new-instance v5, Ljava/text/DecimalFormat;

    invoke-direct {v5, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 10209
    sget-object v7, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v5, v7}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 10210
    invoke-virtual {v5, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 10211
    invoke-static {v1}, Lcom/appsflyer/internal/AFc1uSDK;->values(Ljava/lang/String;)D

    move-result-wide v7

    .line 10084
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    .line 10085
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigDecimal;

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/BigDecimal;

    invoke-virtual {v1, v5}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 11208
    new-instance v5, Ljava/text/DecimalFormat;

    invoke-direct {v5, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 11209
    sget-object v7, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v5, v7}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 11210
    invoke-virtual {v5, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 11211
    invoke-static {v1}, Lcom/appsflyer/internal/AFc1uSDK;->values(Ljava/lang/String;)D

    move-result-wide v7

    .line 10085
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x5

    .line 10086
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigDecimal;

    const/4 v8, 0x2

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/BigDecimal;

    invoke-virtual {v1, v5}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 12208
    new-instance v5, Ljava/text/DecimalFormat;

    invoke-direct {v5, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 12209
    sget-object v7, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v5, v7}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 12210
    invoke-virtual {v5, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 12211
    invoke-static {v1}, Lcom/appsflyer/internal/AFc1uSDK;->values(Ljava/lang/String;)D

    move-result-wide v7

    .line 10086
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10088
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10089
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/BigDecimal;

    .line 13208
    new-instance v7, Ljava/text/DecimalFormat;

    invoke-direct {v7, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 13209
    sget-object v8, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v7, v8}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 13210
    invoke-virtual {v7, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 13211
    invoke-static {v5}, Lcom/appsflyer/internal/AFc1uSDK;->values(Ljava/lang/String;)D

    move-result-wide v7

    .line 10089
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10090
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/BigDecimal;

    .line 14208
    new-instance v7, Ljava/text/DecimalFormat;

    invoke-direct {v7, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 14209
    sget-object v8, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v7, v8}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 14210
    invoke-virtual {v7, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 14211
    invoke-static {v5}, Lcom/appsflyer/internal/AFc1uSDK;->values(Ljava/lang/String;)D

    move-result-wide v7

    .line 10090
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x2

    .line 10091
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/BigDecimal;

    .line 15208
    new-instance v7, Ljava/text/DecimalFormat;

    invoke-direct {v7, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 15209
    sget-object v8, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v7, v8}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 15210
    invoke-virtual {v7, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 15211
    invoke-static {v5}, Lcom/appsflyer/internal/AFc1uSDK;->values(Ljava/lang/String;)D

    move-result-wide v7

    .line 10091
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10092
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 10093
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10094
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    .line 3183
    :goto_6
    const-string v1, "v"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3185
    invoke-static {}, Lcom/appsflyer/internal/AFi1iSDK$AFa1tSDK;->values()[Lcom/appsflyer/internal/AFi1iSDK$AFa1tSDK;

    move-result-object v0

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    .line 15251
    iget-object v0, v0, Lcom/appsflyer/internal/AFi1iSDK$AFa1tSDK;->values:Ljava/lang/String;

    .line 3185
    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3192
    sget-object v0, Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFi1iSDK$AFa1ySDK;

    if-ne v14, v0, :cond_9

    .line 3193
    const-string v0, "no_svs"

    invoke-interface {v2, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    goto/16 :goto_0

    :cond_a
    move-object/from16 v19, v0

    .line 3187
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3188
    invoke-interface {v2, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_b
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 301
    :cond_c
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final valueOf()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1hSDK;->AFKeystoreWrapper:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsflyer/internal/AFi1hSDK;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1hSDK;->AFKeystoreWrapper:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsflyer/internal/AFi1hSDK;->afInfoLog:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final values()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1hSDK;->AFKeystoreWrapper:Landroid/os/Handler;

    new-instance v1, Lcom/appsflyer/internal/AFi1hSDK$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/AFi1hSDK$$ExternalSyntheticLambda0;-><init>(Lcom/appsflyer/internal/AFi1hSDK;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
