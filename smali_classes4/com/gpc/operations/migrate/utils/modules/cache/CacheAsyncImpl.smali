.class public Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync;


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheSyncImpl"


# instance fields
.field public cache:Lcom/gpc/operations/migrate/utils/modules/cache/ICache;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/utils/modules/cache/ICache;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl;->cache:Lcom/gpc/operations/migrate/utils/modules/cache/ICache;

    return-void
.end method


# virtual methods
.method public clear(Ljava/lang/String;Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$ClearCacheListener;)V
    .locals 0

    return-void
.end method

.method public read(Ljava/lang/String;Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$ReadCacheListener;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/utils/SDKTask;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/SDKTask;-><init>()V

    .line 2
    new-instance v1, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$a;

    invoke-direct {v1, p0, p1}, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$a;-><init>(Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl;Ljava/lang/String;)V

    new-instance p1, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$b;

    invoke-direct {p1, p0, p2}, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$b;-><init>(Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl;Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$ReadCacheListener;)V

    invoke-virtual {v0, v1, p1}, Lcom/gpc/operations/migrate/utils/SDKTask;->excuteForTimeConsuming(Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskRunnable;Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskResultListener;)V

    return-void
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$WriteCacheListener;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/utils/SDKTask;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/SDKTask;-><init>()V

    .line 2
    new-instance v1, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$c;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$c;-><init>(Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$WriteCacheListener;)V

    new-instance p1, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$d;

    invoke-direct {p1, p0, p3}, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$d;-><init>(Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl;Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$WriteCacheListener;)V

    invoke-virtual {v0, v1, p1}, Lcom/gpc/operations/migrate/utils/SDKTask;->excuteForTimeConsuming(Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskRunnable;Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskResultListener;)V

    return-void
.end method
