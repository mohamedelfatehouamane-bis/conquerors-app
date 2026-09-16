.class public Lcom/gpc/ops/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String; = "PaymentItemsCacheManager"

.field public static final d:Ljava/lang/String; = "GameSubsItems"

.field public static final e:Ljava/lang/String; = "GameSubsItemsMap"

.field public static final f:Ljava/lang/String; = "GameItems"

.field public static final g:Ljava/lang/String; = "GameItemsMap"


# instance fields
.field public a:Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;

.field public b:Lcom/gpc/tsh/pay/bean/PaymentType;


# direct methods
.method public constructor <init>(Lcom/gpc/tsh/pay/bean/PaymentType;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;->NONE:Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;

    iput-object v0, p0, Lcom/gpc/ops/p;->a:Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;

    .line 6
    iput-object p1, p0, Lcom/gpc/ops/p;->b:Lcom/gpc/tsh/pay/bean/PaymentType;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/gpc/tsh/pay/bean/GPCGameItem;
    .locals 3

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

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
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gpc/ops/p;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;->get(Ljava/lang/String;)Ljava/lang/Object;

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

    check-cast p1, Lcom/gpc/tsh/pay/bean/GPCGameItem;

    return-object p1

    :cond_3
    return-object v1

    .line 14
    :cond_4
    :goto_0
    const-string p1, "PaymentItemsCacheManager"

    const-string v0, "load gameInAppItems warning:list of item is null"

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCGameItem;",
            ">;"
        }
    .end annotation

    .line 15
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 18
    :cond_0
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gpc/ops/p;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;->get(Ljava/lang/String;)Ljava/lang/Object;

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
    const-string v1, "PaymentItemsCacheManager"

    const-string v2, "load gameInAppItems warning:list of item is null"

    invoke-static {v1, v2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;Lcom/gpc/tsh/pay/bean/GPCGameItem;Z)V
    .locals 3

    .line 68
    :try_start_0
    invoke-virtual {p2}, Lcom/gpc/tsh/pay/bean/GPCGameItem;->getPurchase()Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p2}, Lcom/gpc/tsh/pay/bean/GPCGameItem;->getPurchase()Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;

    move-result-object v0

    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->getPriceAmountMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->setGooglePlayPriceAmountMicros(J)V

    .line 70
    invoke-virtual {p2}, Lcom/gpc/tsh/pay/bean/GPCGameItem;->getPurchase()Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;

    move-result-object v0

    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->setThirdPlatformCurrencyPrice(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Lcom/gpc/tsh/pay/bean/GPCGameItem;->getPurchase()Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;

    move-result-object v0

    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->setThirdPlatformPriceCurrencyCode(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Lcom/gpc/tsh/pay/bean/GPCGameItem;->getPurchase()Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;

    move-result-object v0

    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->getOriginalPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->setThirdPlatformOriginalCurrencyPrice(Ljava/lang/String;)V

    .line 75
    :cond_0
    invoke-virtual {p2}, Lcom/gpc/tsh/pay/bean/GPCGameItem;->getPricing()Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    .line 78
    sget-object p3, Lcom/gpc/tsh/pay/GameItemPriceSource;->GPCGameItemPriceSourceRealTime:Lcom/gpc/tsh/pay/GameItemPriceSource;

    goto :goto_0

    .line 80
    :cond_1
    sget-object p3, Lcom/gpc/tsh/pay/GameItemPriceSource;->GPCGameItemPriceSourceCache:Lcom/gpc/tsh/pay/GameItemPriceSource;

    .line 82
    :goto_0
    invoke-virtual {p2}, Lcom/gpc/tsh/pay/bean/GPCGameItem;->getPricing()Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->createInStorePrice(Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;Lcom/gpc/tsh/pay/GameItemPriceSource;)V

    .line 85
    :cond_2
    new-instance p3, Lcom/gpc/tsh/pay/bean/GPCGameItemDetails;

    invoke-direct {p3}, Lcom/gpc/tsh/pay/bean/GPCGameItemDetails;-><init>()V

    .line 86
    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->getExtendFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/gpc/tsh/pay/bean/GPCGameItemDetails;->setExtendFields(Ljava/util/Map;)V

    .line 87
    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->getJson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/gpc/tsh/pay/bean/GPCGameItemDetails;->setJson(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2, p3}, Lcom/gpc/tsh/pay/bean/GPCGameItem;->setDetails(Lcom/gpc/tsh/pay/bean/GPCGameItemDetails;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 90
    const-string p2, "PaymentItemsCacheManager"

    const-string p3, "fillThirdPlatformPrice"

    invoke-static {p2, p3, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;)V
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

    const-string v1, "PaymentItemsCacheManager"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/gpc/ops/p;->a:Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCGameItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCGameItem;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, ""

    const-string v1, "PaymentItemsCacheManager"

    if-eqz p1, :cond_2

    .line 27
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 28
    const-string v2, "save gameInAppItems:list of item is not null"

    invoke-static {v1, v2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/ops/p;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 33
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/tsh/pay/bean/GPCGameItem;

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/gpc/tsh/pay/bean/GPCGameItem;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 37
    :cond_1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gpc/ops/p;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    if-eqz p2, :cond_4

    .line 39
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_4

    .line 40
    const-string p1, "save gameSubsItems:list of item is not null"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gpc/ops/p;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 44
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 45
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 46
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/tsh/pay/bean/GPCGameItem;

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/gpc/tsh/pay/bean/GPCGameItem;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 49
    :cond_3
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    move-result-object p2

    invoke-virtual {p0}, Lcom/gpc/ops/p;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;",
            ">;Z)V"
        }
    .end annotation

    .line 50
    const-string v0, "updateThirdPlatformPrice"

    const-string v1, "PaymentItemsCacheManager"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 55
    const-string p1, "skuDetailsList is null"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 58
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 59
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;

    .line 61
    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gpc/ops/p;->a(Ljava/lang/String;)Lcom/gpc/tsh/pay/bean/GPCGameItem;

    move-result-object v1

    if-nez v1, :cond_3

    .line 63
    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gpc/ops/p;->b(Ljava/lang/String;)Lcom/gpc/tsh/pay/bean/GPCGameItem;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_2

    .line 67
    invoke-virtual {p0, v0, v1, p2}, Lcom/gpc/ops/p;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;Lcom/gpc/tsh/pay/bean/GPCGameItem;Z)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/gpc/tsh/pay/bean/GPCGameItem;
    .locals 3

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

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
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gpc/ops/p;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;->get(Ljava/lang/String;)Ljava/lang/Object;

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

    check-cast p1, Lcom/gpc/tsh/pay/bean/GPCGameItem;

    return-object p1

    :cond_3
    return-object v1

    .line 14
    :cond_4
    :goto_0
    const-string p1, "PaymentItemsCacheManager"

    const-string v0, "load gameSubsItems warning:list of item is null"

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

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
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 18
    :cond_0
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gpc/ops/p;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;->get(Ljava/lang/String;)Ljava/lang/Object;

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
    const-string v0, "PaymentItemsCacheManager"

    const-string v2, "load gameInAppItems warning:list of item is null"

    invoke-static {v0, v2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GameItems_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/ops/p;->b:Lcom/gpc/tsh/pay/bean/PaymentType;

    invoke-virtual {v1}, Lcom/gpc/tsh/pay/bean/PaymentType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GameItemsMap_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/ops/p;->b:Lcom/gpc/tsh/pay/bean/PaymentType;

    invoke-virtual {v1}, Lcom/gpc/tsh/pay/bean/PaymentType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCGameItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gpc/ops/p;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;->get(Ljava/lang/String;)Ljava/lang/Object;

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
    const-string v1, "PaymentItemsCacheManager"

    const-string v2, "load gameSubsItems warning:list of item is null"

    invoke-static {v1, v2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public f()Ljava/util/List;
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
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gpc/ops/p;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;->get(Ljava/lang/String;)Ljava/lang/Object;

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
    const-string v0, "PaymentItemsCacheManager"

    const-string v2, "load gameSubsItems warning:list of item is null"

    invoke-static {v0, v2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GameSubsItems_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/ops/p;->b:Lcom/gpc/tsh/pay/bean/PaymentType;

    invoke-virtual {v1}, Lcom/gpc/tsh/pay/bean/PaymentType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GameSubsItemsMap_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/ops/p;->b:Lcom/gpc/tsh/pay/bean/PaymentType;

    invoke-virtual {v1}, Lcom/gpc/tsh/pay/bean/PaymentType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/p;->a:Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCGameItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/ops/p;->e()Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lcom/gpc/ops/p;->a()Ljava/util/List;

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

.method public k()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/ops/p;->e()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/gpc/ops/p;->a()Ljava/util/List;

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
