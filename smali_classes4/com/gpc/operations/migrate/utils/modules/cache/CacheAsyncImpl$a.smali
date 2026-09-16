.class public Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskRunnable;


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
        "Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskRunnable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$a;->b:Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl;

    iput-object p2, p0, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$a;->run()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$a;->b:Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl;

    iget-object v0, v0, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl;->cache:Lcom/gpc/operations/migrate/utils/modules/cache/ICache;

    iget-object v1, p0, Lcom/gpc/operations/migrate/utils/modules/cache/CacheAsyncImpl$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/gpc/operations/migrate/utils/modules/cache/ICache;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
