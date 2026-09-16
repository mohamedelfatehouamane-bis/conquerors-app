.class public Lcom/gpc/photoselector/util/ExcutorUtils;
.super Ljava/lang/Object;
.source "ExcutorUtils.java"


# static fields
.field private static final CACHE_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final CORE_POOL_SIZE:I = 0x1

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I = 0x2

.field private static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 16
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x80

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v6, Lcom/gpc/photoselector/util/ExcutorUtils;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 17
    new-instance v7, Lcom/gpc/photoselector/util/ExcutorUtils$1;

    invoke-direct {v7}, Lcom/gpc/photoselector/util/ExcutorUtils$1;-><init>()V

    sput-object v7, Lcom/gpc/photoselector/util/ExcutorUtils;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 26
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/gpc/photoselector/util/ExcutorUtils;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 30
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/gpc/photoselector/util/ExcutorUtils;->CACHE_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 50
    :try_start_0
    invoke-static {}, Lcom/gpc/photoselector/util/ExcutorUtils;->instanceExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 52
    :catch_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static executeCache(Ljava/lang/Runnable;)V
    .locals 1

    .line 42
    :try_start_0
    invoke-static {}, Lcom/gpc/photoselector/util/ExcutorUtils;->instanceCacheExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 44
    :catch_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static instanceCacheExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 37
    sget-object v0, Lcom/gpc/photoselector/util/ExcutorUtils;->CACHE_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static instanceExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 33
    sget-object v0, Lcom/gpc/photoselector/util/ExcutorUtils;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-object v0
.end method
