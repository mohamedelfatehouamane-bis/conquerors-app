.class public Lcom/gpc/sdk/payment/flow/cache/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "CacheLoadingManager"

.field public static final c:Ljava/lang/String; = "GameSubsItems"

.field public static final d:Ljava/lang/String; = "GameSubsItemsMap"

.field public static final e:Ljava/lang/String; = "GameItems"

.field public static final f:Ljava/lang/String; = "GameItemsMap"


# instance fields
.field public a:Lcom/gpc/sdk/payment/flow/cache/ITEMS_SOURCE;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/gpc/sdk/payment/flow/cache/ITEMS_SOURCE;->NONE:Lcom/gpc/sdk/payment/flow/cache/ITEMS_SOURCE;

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/cache/a;->a:Lcom/gpc/sdk/payment/flow/cache/ITEMS_SOURCE;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;
    .locals 3

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 7
    :cond_1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    const-string v2, "GameItemsMap"

    invoke-virtual {v0, v2}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/payment/bean/GPCGameItem;

    return-object p1

    :cond_3
    return-object v1

    .line 14
    :cond_4
    :goto_0
    const-string p1, "CacheLoadingManager"

    const-string v0, "load gameInAppItems warning:list of item is null"

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;"
        }
    .end annotation

    .line 15
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 18
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    const-string v1, "GameItems"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    .line 20
    :cond_2
    :goto_0
    const-string v1, "CacheLoadingManager"

    const-string v2, "load gameInAppItems warning:list of item is null"

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;Lcom/gpc/sdk/payment/bean/GPCGameItem;Z)V
    .locals 16

    move-object/from16 v1, p2

    .line 71
    const-string v2, "CacheLoadingManager"

    .line 0
    const-string v0, "sub item contains promotion tag:"

    const-string v3, "item:"

    .line 71
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getPurchase()Lcom/gpc/sdk/payment/bean/GPCGameItemPurchase;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 73
    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getPurchase()Lcom/gpc/sdk/payment/bean/GPCGameItemPurchase;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->getPriceAmountMicros()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/gpc/sdk/payment/bean/GPCGameItemPurchase;->setGooglePlayPriceAmountMicros(J)V

    .line 74
    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getPurchase()Lcom/gpc/sdk/payment/bean/GPCGameItemPurchase;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gpc/sdk/payment/bean/GPCGameItemPurchase;->setThirdPlatformCurrencyPrice(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getPurchase()Lcom/gpc/sdk/payment/bean/GPCGameItemPurchase;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gpc/sdk/payment/bean/GPCGameItemPurchase;->setThirdPlatformPriceCurrencyCode(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getPurchase()Lcom/gpc/sdk/payment/bean/GPCGameItemPurchase;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->getOriginalPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gpc/sdk/payment/bean/GPCGameItemPurchase;->setThirdPlatformOriginalCurrencyPrice(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getPricing()Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    move-result-object v3

    if-eqz v3, :cond_e

    if-eqz p3, :cond_0

    .line 81
    sget-object v3, Lcom/gpc/sdk/payment/GPCGameItemPriceSource;->GPCGameItemPriceSourceRealTime:Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    goto :goto_0

    .line 83
    :cond_0
    sget-object v3, Lcom/gpc/sdk/payment/GPCGameItemPriceSource;->GPCGameItemPriceSourceCache:Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    .line 86
    :goto_0
    const-string v4, "inapp"

    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 88
    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getPricing()Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->createGameItemPriceProxy()Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;

    move-result-object v4

    invoke-virtual {v0, v4, v5, v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->createInStorePrice(Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;Lcom/gpc/sdk/payment/GPCGameItemPriceSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_1
    const-string v4, "targetOriginalPricingContract found!"

    const-string v6, "targetOriginalPricingContract not found!"

    if-nez p3, :cond_6

    .line 92
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 95
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;

    .line 97
    invoke-virtual {v7}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getOriginalContract()Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;

    move-result-object v8

    .line 98
    invoke-virtual {v7}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getTags()Ljava/util/List;

    move-result-object v10

    invoke-static {v9, v10, v8}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->create(Ljava/lang/String;Ljava/util/List;Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;)Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    move-result-object v8

    .line 100
    invoke-virtual {v7}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getPromotionContracts()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v7}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getPromotionContracts()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_3
    move-object v8, v5

    :cond_4
    :goto_1
    if-eqz v8, :cond_5

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->getPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getPricing()Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    move-result-object v0

    invoke-virtual {v8}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->createGameItemPriceProxy()Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;

    move-result-object v4

    invoke-virtual {v0, v4, v8, v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->createInStorePrice(Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;Lcom/gpc/sdk/payment/GPCGameItemPriceSource;)V

    goto :goto_2

    .line 111
    :cond_5
    invoke-static {v2, v6}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getPricing()Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->createGameItemPriceProxy()Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;

    move-result-object v4

    invoke-virtual {v0, v4, v5, v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->createInStorePrice(Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;Lcom/gpc/sdk/payment/GPCGameItemPriceSource;)V

    .line 115
    :goto_2
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;

    invoke-direct {v0, v5, v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;-><init>(Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;Lcom/gpc/sdk/payment/GPCGameItemPriceSource;)V

    .line 116
    invoke-virtual {v1, v0}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->setPromotionPrice(Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;)V

    return-void

    .line 121
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getPromotionTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 125
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-virtual {v1, v7}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->setPricingGroups(Ljava/util/List;)V

    move-object v8, v5

    move-object v9, v8

    .line 130
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 131
    new-instance v10, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingGroup;

    invoke-direct {v10}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingGroup;-><init>()V

    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;

    .line 133
    invoke-virtual {v11}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getOriginalContract()Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;

    move-result-object v12

    .line 134
    invoke-virtual {v11}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getToken()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getTags()Ljava/util/List;

    move-result-object v14

    invoke-static {v13, v14, v12}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->create(Ljava/lang/String;Ljava/util/List;Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;)Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    move-result-object v12

    .line 137
    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getId()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getType()I

    move-result v14

    invoke-static {v13, v14}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->create(II)Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    move-result-object v13

    .line 138
    invoke-virtual {v12}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->createGameItemPriceProxy()Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;

    move-result-object v14

    invoke-virtual {v13, v14, v12, v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->createInStorePrice(Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;Lcom/gpc/sdk/payment/GPCGameItemPriceSource;)V

    .line 139
    invoke-virtual {v10, v13}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingGroup;->setPrice(Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;)V

    .line 141
    invoke-virtual {v11}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getPromotionContracts()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_7

    .line 142
    invoke-virtual {v11}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getPromotionContracts()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 143
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 144
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;

    .line 145
    invoke-virtual {v11}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getToken()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getTags()Ljava/util/List;

    move-result-object v5

    invoke-static {v15, v5, v14}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->create(Ljava/lang/String;Ljava/util/List;Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;)Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    move-result-object v5

    .line 146
    new-instance v14, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;

    invoke-direct {v14, v5, v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;-><init>(Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;Lcom/gpc/sdk/payment/GPCGameItemPriceSource;)V

    .line 147
    invoke-virtual {v10}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingGroup;->getPromotionPrices()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    goto :goto_4

    .line 150
    :cond_7
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {v11}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getPromotionContracts()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v11}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getPromotionContracts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    move-object v8, v12

    .line 155
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "detailsTAG== details.getTags() :"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getTags()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lcom/gpc/util/CollectionUtils;->toArrayString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "detailsTAG== item.getPromotionTag() :"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getPromotionTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v11}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getTags()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v11}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getTags()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getPromotionTag()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 159
    invoke-virtual {v11}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getPromotionContracts()Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;

    .line 161
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contract :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getPrice()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contract getBillingPeriod:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getBillingPeriod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contract getBillingCycleCount:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getBillingCycleCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contract getRecurrenceMode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getRecurrenceMode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v11}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getTags()Ljava/util/List;

    move-result-object v9

    invoke-static {v8, v9, v5}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->create(Ljava/lang/String;Ljava/util/List;Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;)Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    move-result-object v9

    move-object v8, v12

    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_b
    if-eqz v8, :cond_c

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->getPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getPricing()Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    move-result-object v0

    invoke-virtual {v8}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->createGameItemPriceProxy()Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;

    move-result-object v4

    invoke-virtual {v0, v4, v8, v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->createInStorePrice(Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;Lcom/gpc/sdk/payment/GPCGameItemPriceSource;)V

    goto :goto_5

    .line 174
    :cond_c
    invoke-static {v2, v6}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getPricing()Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->createGameItemPriceProxy()Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->createInStorePrice(Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;Lcom/gpc/sdk/payment/GPCGameItemPriceSource;)V

    :goto_5
    if-eqz v9, :cond_d

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "targetPromotionPricingContract found!"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->getPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;

    invoke-direct {v0, v9, v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;-><init>(Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;Lcom/gpc/sdk/payment/GPCGameItemPriceSource;)V

    .line 181
    invoke-virtual {v1, v0}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->setPromotionPrice(Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;)V

    return-void

    .line 183
    :cond_d
    const-string v0, "targetPromotionPricingContract not found!"

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;

    const/4 v5, 0x0

    invoke-direct {v0, v5, v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;-><init>(Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;Lcom/gpc/sdk/payment/GPCGameItemPriceSource;)V

    .line 185
    invoke-virtual {v1, v0}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->setPromotionPrice(Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 189
    :try_start_3
    const-string v4, ""

    invoke-static {v2, v4, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getPricing()Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->createGameItemPriceProxy()Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->createInStorePrice(Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;Lcom/gpc/sdk/payment/GPCGameItemPriceSource;)V

    .line 191
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;

    invoke-direct {v0, v5, v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;-><init>(Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;Lcom/gpc/sdk/payment/GPCGameItemPriceSource;)V

    .line 192
    invoke-virtual {v1, v0}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->setPromotionPrice(Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fillThirdPlatformPrice\uff1aid: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v1, "fillThirdPlatformPrice"

    invoke-static {v2, v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_6
    return-void
.end method

.method public a(Lcom/gpc/sdk/payment/flow/cache/ITEMS_SOURCE;)V
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "upateItemsSource:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CacheLoadingManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/cache/a;->a:Lcom/gpc/sdk/payment/flow/cache/ITEMS_SOURCE;

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    const-string v1, "CacheLoadingManager"

    if-nez v0, :cond_0

    .line 24
    const-string p1, "null == ModulesManager.dataCenterModule()"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, ""

    if-eqz p1, :cond_2

    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 29
    const-string v2, "save gameInAppItems:list of item is not null"

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v2

    const-string v3, "GameItems"

    invoke-virtual {v2, v3, p1}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 34
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/sdk/payment/bean/GPCGameItem;

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 38
    :cond_1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object p1

    const-string v3, "GameItemsMap"

    invoke-virtual {p1, v3, v2}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    if-eqz p2, :cond_4

    .line 40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_4

    .line 41
    const-string p1, "save gameSubsItems:list of item is not null"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object p1

    const-string v1, "GameSubsItems"

    invoke-virtual {p1, v1, p2}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 45
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 46
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 47
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/payment/bean/GPCGameItem;

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 50
    :cond_3
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object p2

    const-string v0, "GameSubsItemsMap"

    invoke-virtual {p2, v0, p1}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;",
            ">;Z)V"
        }
    .end annotation

    .line 51
    const-string v0, "updateThirdPlatformPrice"

    const-string v1, "CacheLoadingManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 57
    const-string p1, "skuDetailsList is null"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 61
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 62
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;

    .line 64
    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gpc/sdk/payment/flow/cache/a;->a(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;

    move-result-object v1

    if-nez v1, :cond_3

    .line 66
    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gpc/sdk/payment/flow/cache/a;->b(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_2

    .line 70
    invoke-virtual {p0, v0, v1, p2}, Lcom/gpc/sdk/payment/flow/cache/a;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;Lcom/gpc/sdk/payment/bean/GPCGameItem;Z)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;
    .locals 3

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 7
    :cond_1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    const-string v2, "GameSubsItemsMap"

    invoke-virtual {v0, v2}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/payment/bean/GPCGameItem;

    return-object p1

    :cond_3
    return-object v1

    .line 14
    :cond_4
    :goto_0
    const-string p1, "CacheLoadingManager"

    const-string v0, "load gameSubsItems warning:list of item is null"

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 18
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    const-string v2, "GameItemsMap"

    invoke-virtual {v0, v2}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 19
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 24
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 25
    :cond_2
    :goto_0
    const-string v0, "CacheLoadingManager"

    const-string v2, "load gameInAppItems warning:list of item is null"

    invoke-static {v0, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    const-string v1, "GameSubsItems"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    .line 6
    :cond_2
    :goto_0
    const-string v1, "CacheLoadingManager"

    const-string v2, "load gameSubsItems warning:list of item is null"

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    const-string v2, "GameSubsItemsMap"

    invoke-virtual {v0, v2}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 11
    :cond_2
    :goto_0
    const-string v0, "CacheLoadingManager"

    const-string v2, "load gameSubsItems warning:list of item is null"

    invoke-static {v0, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public e()Lcom/gpc/sdk/payment/flow/cache/ITEMS_SOURCE;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/cache/a;->a:Lcom/gpc/sdk/payment/flow/cache/ITEMS_SOURCE;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/cache/a;->c()Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/cache/a;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz v2, :cond_2

    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_0
    return-object v0
.end method

.method public g()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/cache/a;->c()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/cache/a;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method
