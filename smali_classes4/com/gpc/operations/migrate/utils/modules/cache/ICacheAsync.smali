.class public interface abstract Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$ReadCacheListener;,
        Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$ClearCacheListener;,
        Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$WriteCacheListener;
    }
.end annotation


# virtual methods
.method public abstract clear(Ljava/lang/String;Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$ClearCacheListener;)V
.end method

.method public abstract read(Ljava/lang/String;Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$ReadCacheListener;)V
.end method

.method public abstract write(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/utils/modules/cache/ICacheAsync$WriteCacheListener;)V
.end method
