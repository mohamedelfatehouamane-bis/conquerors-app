.class public interface abstract Lcom/gpc/sdk/utils/modules/cache/ICacheSync;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/utils/modules/cache/ICacheSync$ReadCacheListener;,
        Lcom/gpc/sdk/utils/modules/cache/ICacheSync$ClearCacheListener;,
        Lcom/gpc/sdk/utils/modules/cache/ICacheSync$WriteCacheListener;
    }
.end annotation


# virtual methods
.method public abstract clear(Ljava/lang/String;Lcom/gpc/sdk/utils/modules/cache/ICacheSync$ClearCacheListener;)V
.end method

.method public abstract read(Ljava/lang/String;Lcom/gpc/sdk/utils/modules/cache/ICacheSync$ReadCacheListener;)Ljava/lang/String;
.end method

.method public abstract write(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/utils/modules/cache/ICacheSync$WriteCacheListener;)V
.end method
