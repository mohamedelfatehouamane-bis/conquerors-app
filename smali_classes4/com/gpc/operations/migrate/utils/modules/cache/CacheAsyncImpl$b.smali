.class public Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl;->read(Ljava/lang/String;Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$ReadCacheListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskResultListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$ReadCacheListener;

.field public final synthetic b:Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl;Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$ReadCacheListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$b;->b:Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl;

    iput-object p2, p0, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$b;->a:Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$ReadCacheListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$b;->onResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-string v0, "CacheSyncImpl"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$b;->a:Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$ReadCacheListener;

    if-eqz p1, :cond_1

    .line 7
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$ReadCacheListener;->onComplete(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
