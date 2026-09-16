.class public Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl;->write(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$WriteCacheListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskRunnable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$WriteCacheListener;

.field public final synthetic d:Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$WriteCacheListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$c;->d:Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl;

    iput-object p2, p0, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$c;->c:Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$WriteCacheListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$c;->d:Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl;

    iget-object v0, v0, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl;->cache:Lcom/gpc/operations/migrate/utils/modules/cache/ICache;

    iget-object v1, p0, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$c;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/gpc/operations/migrate/utils/modules/cache/ICache;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$c;->c:Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$WriteCacheListener;

    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$WriteCacheListener;->onComplete(Lcom/gpc/operations/migrate/error/GPCException;Z)V

    const/4 v0, 0x0

    return-object v0
.end method
