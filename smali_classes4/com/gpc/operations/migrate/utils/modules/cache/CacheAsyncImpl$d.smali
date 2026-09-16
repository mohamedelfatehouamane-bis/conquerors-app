.class public Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskResultListener;


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
        "Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskResultListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$WriteCacheListener;

.field public final synthetic b:Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl;Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$WriteCacheListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$d;->b:Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl;

    iput-object p2, p0, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$d;->a:Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$WriteCacheListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    const-string p2, "CacheSyncImpl"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$d;->a:Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$WriteCacheListener;

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$WriteCacheListener;->onComplete(Lcom/gpc/operations/migrate/error/GPCException;Z)V

    :cond_1
    return-void
.end method
