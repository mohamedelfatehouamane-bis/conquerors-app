.class public Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/String; = "GPCPaymentClientSkuDeta"

.field public static final o:I = 0x1


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:Ljava/lang/String;

.field public g:J

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->l:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;)V
    .locals 6

    const-string v0, ""

    const-string v1, "GPCPaymentClientSkuDeta"

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->l:Ljava/util/Map;

    .line 67
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->a:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getItemId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->b:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->c:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getItemPriceString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->d:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->h:Ljava/lang/String;

    .line 74
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getItemPrice()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double v2, v2, v4

    double-to-long v2, v2

    iput-wide v2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->e:J

    .line 75
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getItemPriceString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->f:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getItemPrice()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double v2, v2, v4

    double-to-long v2, v2

    iput-wide v2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->g:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 78
    invoke-static {v1, v0, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getItemName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->i:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getItemDesc()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->j:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getJsonString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->k:Ljava/lang/String;

    .line 85
    :try_start_1
    const-string v2, "getFreeTrialPeriod"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getFreeTrialPeriod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v2, "getSubscriptionDurationMultiplier"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getSubscriptionDurationMultiplier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v2, "getSubscriptionDurationUnit"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getSubscriptionDurationUnit()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 89
    invoke-static {v1, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
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

    iput-object v1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->l:Ljava/util/Map;

    .line 12
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->b:Ljava/lang/String;

    .line 14
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->c:Ljava/lang/String;

    .line 15
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->d:Ljava/lang/String;

    .line 16
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getPriceAmountMicros()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->e:J

    .line 17
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->h:Ljava/lang/String;

    .line 18
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getOriginalPrice()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->f:Ljava/lang/String;

    .line 19
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getOriginalPriceAmountMicros()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->g:J

    .line 20
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->i:Ljava/lang/String;

    .line 21
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getDescription()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->j:Ljava/lang/String;

    .line 22
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getOriginalJson()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->k:Ljava/lang/String;

    .line 25
    :try_start_0
    const-string p1, "getFreeTrialPeriod"

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getFreeTrialPeriod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string p1, "getIntroductoryPrice"

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getIntroductoryPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string p1, "getIntroductoryPriceAmountMicros"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getIntroductoryPriceAmountMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string p1, "getIntroductoryPriceCycles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getIntroductoryPriceCycles()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string p1, "getIntroductoryPricePeriod"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getIntroductoryPricePeriod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string p1, "getSubscriptionPeriod"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getSubscriptionPeriod()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 32
    const-string p2, "GPCPaymentClientSkuDeta"

    invoke-static {p2, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/huawei/hms/iap/entity/ProductInfo;)V
    .locals 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->l:Ljava/util/Map;

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/ProductInfo;->getPriceType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->a:Ljava/lang/String;

    .line 157
    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/ProductInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->b:Ljava/lang/String;

    .line 158
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->c:Ljava/lang/String;

    .line 159
    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/ProductInfo;->getPrice()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->d:Ljava/lang/String;

    .line 160
    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/ProductInfo;->getMicrosPrice()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->e:J

    .line 161
    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/ProductInfo;->getCurrency()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->h:Ljava/lang/String;

    .line 162
    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/ProductInfo;->getOriginalLocalPrice()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->f:Ljava/lang/String;

    .line 163
    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/ProductInfo;->getOriginalMicroPrice()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->g:J

    .line 164
    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/ProductInfo;->getProductDesc()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->j:Ljava/lang/String;

    .line 165
    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/ProductInfo;->getProductName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->i:Ljava/lang/String;

    .line 166
    iput-object v1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->k:Ljava/lang/String;

    .line 170
    :try_start_0
    const-string p1, "getSubFreeTrialPeriod"

    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubFreeTrialPeriod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string p1, "getSubPeriod"

    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubPeriod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string p1, "getSubGroupId"

    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string p1, "getSubProductLevel"

    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubProductLevel()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->a(Ljava/lang/String;I)V

    .line 174
    const-string p1, "getSubSpecialPeriod"

    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubSpecialPeriod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string p1, "getSubGroupTitle"

    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubGroupTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string p1, "getSubSpecialPeriodCycles"

    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubSpecialPeriodCycles()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->a(Ljava/lang/String;I)V

    .line 177
    const-string p1, "getSubSpecialPrice"

    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubSpecialPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string p1, "getSubSpecialPriceMicros"

    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubSpecialPriceMicros()J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->a(Ljava/lang/String;J)V

    .line 179
    const-string p1, "getOfferUsedStatus"

    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/ProductInfo;->getOfferUsedStatus()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 181
    const-string p2, "GPCPaymentClientSkuDeta"

    invoke-static {p2, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static createfromJson(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;
    .locals 22

    .line 1
    const-string v0, "recurrenceMode"

    const-string v1, "billingPeriod"

    const-string v2, "billingCycleCount"

    const-string v3, "currencyCode"

    const-string v4, "tags"

    const-string v5, "token"

    const-string v6, "subscriptionOfferDetails"

    const-string v7, "_extendJsonObject"

    const-string v8, "json"

    const-string v9, "description"

    const-string v10, "title"

    const-string v11, "priceCurrencyCode"

    const-string v12, "originalPriceAmountMicros"

    const-string v13, "originalPrice"

    const-string v14, "sku"

    const-string v15, "itemType"

    move-object/from16 v16, v0

    const-string v0, "priceAmountMicros"

    move-object/from16 v17, v1

    const-string v1, "type"

    move-object/from16 v18, v2

    const-string v2, "price"

    move-object/from16 v19, v3

    new-instance v3, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;

    invoke-direct {v3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;-><init>()V

    move-object/from16 v20, v4

    .line 3
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    move-object/from16 v21, v5

    move-object/from16 v5, p0

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    const-string v5, "_version"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 6
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 7
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->a:Ljava/lang/String;

    .line 9
    :cond_0
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 10
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->b:Ljava/lang/String;

    .line 12
    :cond_1
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 13
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->c:Ljava/lang/String;

    .line 16
    :cond_2
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 17
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->d:Ljava/lang/String;

    .line 19
    :cond_3
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 20
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v3, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->e:J

    .line 22
    :cond_4
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 23
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->f:Ljava/lang/String;

    .line 25
    :cond_5
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 26
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v3, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->g:J

    .line 28
    :cond_6
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 29
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->h:Ljava/lang/String;

    .line 31
    :cond_7
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 32
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->i:Ljava/lang/String;

    .line 34
    :cond_8
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 35
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->j:Ljava/lang/String;

    .line 37
    :cond_9
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 38
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->k:Ljava/lang/String;

    .line 41
    :cond_a
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 42
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 43
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 44
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 45
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 46
    iget-object v9, v3, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->l:Ljava/util/Map;

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49
    :cond_b
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 50
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->m:Ljava/util/List;

    .line 51
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 52
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_17

    .line 53
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 54
    new-instance v8, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;

    invoke-direct {v8}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;-><init>()V

    .line 55
    iget-object v9, v3, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->m:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v21

    .line 56
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 57
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->setToken(Ljava/lang/String;)V

    :cond_c
    move-object/from16 v10, v20

    .line 59
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 60
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 61
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    .line 62
    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_d

    .line 63
    invoke-virtual {v11, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 64
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 66
    :cond_d
    invoke-virtual {v8, v12}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->setTags(Ljava/util/List;)V

    .line 69
    :cond_e
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 70
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->setType(I)V

    .line 73
    :cond_f
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_16

    .line 74
    new-instance v11, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;

    invoke-direct {v11}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;-><init>()V

    .line 75
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 76
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->setPrice(Ljava/lang/String;)V

    .line 78
    :cond_10
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 79
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->setPriceAmountMicros(J)V

    :cond_11
    move-object/from16 v12, v19

    .line 81
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_12

    .line 82
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->setCurrencyCode(Ljava/lang/String;)V

    :cond_12
    move-object/from16 v13, v18

    .line 84
    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_13

    .line 85
    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v11, v14}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->setBillingCycleCount(I)V

    :cond_13
    move-object/from16 v14, v17

    .line 87
    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_14

    .line 88
    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->setBillingPeriod(Ljava/lang/String;)V

    :cond_14
    move-object/from16 v15, v16

    .line 90
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_15

    .line 91
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v11, v7}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->setRecurrenceMode(I)V

    .line 94
    :cond_15
    invoke-virtual {v8, v11}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->setOriginalContract(Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_16
    move-object/from16 v15, v16

    move-object/from16 v14, v17

    move-object/from16 v13, v18

    move-object/from16 v12, v19

    :goto_3
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v21, v9

    move-object/from16 v20, v10

    move-object/from16 v19, v12

    move-object/from16 v18, v13

    move-object/from16 v17, v14

    move-object/from16 v16, v15

    goto/16 :goto_1

    :cond_17
    return-object v3

    :catch_0
    move-exception v0

    .line 101
    const-string v1, "GPCPaymentClientSkuDeta"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->l:Ljava/util/Map;

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

.method public a(Ljava/lang/String;J)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->l:Ljava/util/Map;

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

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->l:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public createGameItemPriceProxy()Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails$a;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails$a;-><init>(Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;)V

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->j:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->l:Ljava/util/Map;

    return-object v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalPrice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalPriceAmountMicros()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->g:J

    return-wide v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceAmountMicros()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->e:J

    return-wide v0
.end method

.method public getPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionOfferDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->m:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->j:Ljava/lang/String;

    return-void
.end method

.method public setItemType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->a:Ljava/lang/String;

    return-void
.end method

.method public setJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->k:Ljava/lang/String;

    return-void
.end method

.method public setOriginalPrice(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->f:Ljava/lang/String;

    return-void
.end method

.method public setOriginalPriceAmountMicros(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->g:J

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->d:Ljava/lang/String;

    return-void
.end method

.method public setPriceAmountMicros(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->e:J

    return-void
.end method

.method public setPriceCurrencyCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->h:Ljava/lang/String;

    return-void
.end method

.method public setSku(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->b:Ljava/lang/String;

    return-void
.end method

.method public setSubscriptionOfferDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->m:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->i:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->c:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "type"

    const-string v2, "priceAmountMicros"

    const-string v3, "price"

    .line 1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v5, "_version"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    const-string v5, "itemType"

    iget-object v6, v1, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v5, "sku"

    iget-object v6, v1, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget-object v5, v1, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->c:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    iget-object v5, v1, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->d:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    iget-wide v5, v1, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->e:J

    invoke-virtual {v4, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 9
    const-string v5, "originalPrice"

    iget-object v6, v1, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->f:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    const-string v5, "originalPriceAmountMicros"

    iget-wide v6, v1, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->g:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 11
    const-string v5, "priceCurrencyCode"

    iget-object v6, v1, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->h:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    const-string v5, "title"

    iget-object v6, v1, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->i:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string v5, "description"

    iget-object v6, v1, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->j:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    const-string v5, "json"

    iget-object v6, v1, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->k:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 17
    iget-object v6, v1, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->l:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 18
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 19
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 20
    iget-object v8, v1, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->l:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 22
    :cond_0
    const-string v6, "_extendJsonObject"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    iget-object v5, v1, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->m:Ljava/util/List;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_6

    .line 24
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 26
    iget-object v6, v1, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->m:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 27
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 28
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;

    .line 29
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 30
    const-string v9, "token"

    invoke-virtual {v7}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    invoke-virtual {v7}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getTags()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v7}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getTags()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_1

    .line 32
    new-instance v9, Lorg/json/JSONArray;

    invoke-virtual {v7}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getTags()Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 33
    const-string v10, "tags"

    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    :cond_1
    invoke-virtual {v7}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getType()I

    move-result v9

    invoke-virtual {v8, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 36
    invoke-virtual {v7}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getOriginalContract()Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "recurrenceMode"

    const-string v11, "billingPeriod"

    const-string v12, "billingCycleCount"

    const-string v13, "currencyCode"

    if-eqz v9, :cond_2

    .line 37
    :try_start_1
    invoke-virtual {v7}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getOriginalContract()Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;

    move-result-object v9

    .line 38
    invoke-virtual {v9}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getPrice()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    invoke-virtual {v9}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getPriceAmountMicros()J

    move-result-wide v14

    invoke-virtual {v8, v2, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 40
    invoke-virtual {v9}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getCurrencyCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-virtual {v9}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getBillingCycleCount()I

    move-result v14

    invoke-virtual {v8, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {v9}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getBillingPeriod()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v11, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    invoke-virtual {v9}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getRecurrenceMode()I

    move-result v9

    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    :cond_2
    invoke-virtual {v7}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getPromotionContracts()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v7}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getPromotionContracts()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_4

    .line 46
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 47
    invoke-virtual {v7}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getPromotionContracts()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 48
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 49
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 50
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;

    move-object/from16 v16, v0

    .line 51
    invoke-virtual {v15}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    invoke-virtual {v15}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getPriceAmountMicros()J

    move-result-wide v0

    invoke-virtual {v14, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 53
    invoke-virtual {v15}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    invoke-virtual {v15}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getBillingCycleCount()I

    move-result v0

    invoke-virtual {v14, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    invoke-virtual {v15}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getBillingPeriod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    invoke-virtual {v15}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getRecurrenceMode()I

    move-result v0

    invoke-virtual {v14, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    invoke-virtual {v9, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto :goto_2

    :cond_3
    move-object/from16 v16, v0

    .line 59
    const-string v0, "promotionContracts"

    invoke-virtual {v8, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_4
    move-object/from16 v16, v0

    .line 61
    :goto_3
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto/16 :goto_1

    .line 64
    :cond_5
    const-string v0, "subscriptionOfferDetails"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 67
    const-string v1, "GPCPaymentClientSkuDeta"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    :cond_6
    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SkuDetails:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
