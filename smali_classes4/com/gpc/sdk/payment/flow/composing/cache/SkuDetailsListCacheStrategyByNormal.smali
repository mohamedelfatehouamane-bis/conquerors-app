.class public Lcom/gpc/sdk/payment/flow/composing/cache/SkuDetailsListCacheStrategyByNormal;
.super Lcom/gpc/sdk/payment/flow/composing/cache/AbstractSkuDetailsListCacheStrategy;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "SkuDetailsListCacheStrategyByNormal"


# instance fields
.field public b:Lcom/gpc/sdk/utils/modules/cache/ICache;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/modules/cache/ICache;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/payment/flow/composing/cache/AbstractSkuDetailsListCacheStrategy;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/cache/SkuDetailsListCacheStrategyByNormal;->b:Lcom/gpc/sdk/utils/modules/cache/ICache;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/composing/cache/SkuDetailsListCacheStrategyByNormal;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public canWrite()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public writeCache(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "writeCache"

    const-string v1, "SkuDetailsListCacheStrategyByNormal"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "skuDetailsList:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 10
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "payment.itemcache"

    if-eqz v3, :cond_2

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;

    .line 13
    :try_start_0
    invoke-virtual {v3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->toJson()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 15
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 18
    sget-object v5, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "writeCacheInternal throwable:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->sdkLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v4, ""

    invoke-static {v1, v4, v3}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 24
    :cond_2
    :try_start_1
    const-string p1, "array"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 26
    sget-object v1, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "writeCacheInternal array throwable:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->sdkLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :goto_1
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/cache/SkuDetailsListCacheStrategyByNormal;->b:Lcom/gpc/sdk/utils/modules/cache/ICache;

    if-eqz p1, :cond_3

    .line 31
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/cache/SkuDetailsListCacheStrategyByNormal;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/gpc/sdk/utils/modules/cache/ICache;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 32
    :cond_4
    :goto_2
    const-string p1, "skuDetailsList is null."

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
