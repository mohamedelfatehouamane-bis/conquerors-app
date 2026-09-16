.class public Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GPCPaymentClientSkuDeta"

.field private static final VERSION:I = 0x1


# instance fields
.field private _extendFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private itemType:Ljava/lang/String;

.field private json:Ljava/lang/String;

.field private originalPrice:Ljava/lang/String;

.field private originalPriceAmountMicros:J

.field private price:Ljava/lang/String;

.field private priceAmountMicros:J

.field private priceCurrencyCode:Ljava/lang/String;

.field private sku:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->_extendFields:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/SkuDetails;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, ""

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->_extendFields:Ljava/util/Map;

    .line 10
    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->itemType:Ljava/lang/String;

    .line 11
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->sku:Ljava/lang/String;

    .line 12
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->type:Ljava/lang/String;

    .line 13
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->price:Ljava/lang/String;

    .line 14
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getPriceAmountMicros()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->priceAmountMicros:J

    .line 15
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->priceCurrencyCode:Ljava/lang/String;

    .line 16
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getOriginalPrice()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->originalPrice:Ljava/lang/String;

    .line 17
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getOriginalPriceAmountMicros()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->originalPriceAmountMicros:J

    .line 18
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->title:Ljava/lang/String;

    .line 19
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getDescription()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->description:Ljava/lang/String;

    .line 20
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getOriginalJson()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->json:Ljava/lang/String;

    .line 23
    :try_start_0
    const-string p1, "getFreeTrialPeriod"

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getFreeTrialPeriod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->putExtendField(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string p1, "getIntroductoryPrice"

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getIntroductoryPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->putExtendField(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string p1, "getIntroductoryPriceAmountMicros"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getIntroductoryPriceAmountMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->putExtendField(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string p1, "getIntroductoryPriceCycles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getIntroductoryPriceCycles()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->putExtendField(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string p1, "getIntroductoryPricePeriod"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getIntroductoryPricePeriod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->putExtendField(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string p1, "getSubscriptionPeriod"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getSubscriptionPeriod()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->putExtendField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 30
    const-string p2, "GPCPaymentClientSkuDeta"

    invoke-static {p2, v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static createfromJson(Ljava/lang/String;)Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;
    .locals 14

    .line 1
    const-string v0, "_extendJsonObject"

    const-string v1, "json"

    const-string v2, "description"

    const-string v3, "title"

    const-string v4, "priceCurrencyCode"

    const-string v5, "originalPriceAmountMicros"

    const-string v6, "originalPrice"

    const-string v7, "priceAmountMicros"

    const-string v8, "price"

    const-string v9, "type"

    const-string v10, "sku"

    const-string v11, "itemType"

    new-instance v12, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;

    invoke-direct {v12}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;-><init>()V

    .line 3
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    const-string p0, "_version"

    invoke-virtual {v13, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 6
    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 7
    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v12, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->itemType:Ljava/lang/String;

    .line 9
    :cond_0
    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 10
    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v12, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->sku:Ljava/lang/String;

    .line 12
    :cond_1
    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 13
    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v12, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->type:Ljava/lang/String;

    .line 16
    :cond_2
    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 17
    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v12, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->price:Ljava/lang/String;

    .line 19
    :cond_3
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 20
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v12, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->priceAmountMicros:J

    .line 22
    :cond_4
    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 23
    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v12, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->originalPrice:Ljava/lang/String;

    .line 25
    :cond_5
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 26
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v12, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->originalPriceAmountMicros:J

    .line 28
    :cond_6
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 29
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v12, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->priceCurrencyCode:Ljava/lang/String;

    .line 31
    :cond_7
    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8

    .line 32
    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v12, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->title:Ljava/lang/String;

    .line 34
    :cond_8
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 35
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v12, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->description:Ljava/lang/String;

    .line 37
    :cond_9
    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_a

    .line 38
    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v12, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->json:Ljava/lang/String;

    .line 41
    :cond_a
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_b

    .line 42
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 44
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 46
    iget-object v2, v12, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->_extendFields:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_b
    return-object v12

    :catch_0
    move-exception p0

    .line 52
    const-string v0, "GPCPaymentClientSkuDeta"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v12
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->_extendFields:Ljava/util/Map;

    return-object v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->json:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalPrice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->originalPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalPriceAmountMicros()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->originalPriceAmountMicros:J

    return-wide v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceAmountMicros()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->priceAmountMicros:J

    return-wide v0
.end method

.method public getPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->priceCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->type:Ljava/lang/String;

    return-object v0
.end method

.method public putExtendField(Ljava/lang/String;I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->_extendFields:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putExtendField(Ljava/lang/String;J)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->_extendFields:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putExtendField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->_extendFields:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v1, "_version"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    const-string v1, "itemType"

    iget-object v2, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->itemType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v1, "sku"

    iget-object v2, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->sku:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string v1, "type"

    iget-object v2, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string v1, "price"

    iget-object v2, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->price:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string v1, "priceAmountMicros"

    iget-wide v2, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->priceAmountMicros:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 9
    const-string v1, "originalPrice"

    iget-object v2, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->originalPrice:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    const-string v1, "originalPriceAmountMicros"

    iget-wide v2, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->originalPriceAmountMicros:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 11
    const-string v1, "priceCurrencyCode"

    iget-object v2, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->priceCurrencyCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    const-string v1, "title"

    iget-object v2, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string v1, "description"

    iget-object v2, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    const-string v1, "json"

    iget-object v2, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->json:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 17
    iget-object v2, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->_extendFields:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 18
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 20
    iget-object v4, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->_extendFields:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 22
    :cond_0
    const-string v2, "_extendJsonObject"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 24
    const-string v2, "GPCPaymentClientSkuDeta"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SkuDetails:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->json:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
