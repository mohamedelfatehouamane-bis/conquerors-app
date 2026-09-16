.class public interface abstract Lcom/gpc/sdk/payment/flow/composing/cache/ISkuDetailsListCacheStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract canWrite()Z
.end method

.method public abstract writeCache(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract writeCacheIfNeed(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;",
            ">;)V"
        }
    .end annotation
.end method
