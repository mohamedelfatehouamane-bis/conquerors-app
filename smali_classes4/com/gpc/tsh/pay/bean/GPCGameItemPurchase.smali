.class public Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GPCGameItemPurchase"


# instance fields
.field private USDPrice:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private currency:Lcom/gpc/tsh/pay/bean/GPCCurrency$Currency;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private googlePlayPriceAmountMicros:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private memo:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private priceRawConfig:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private thirdPlatformCurrencyPrice:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private thirdPlatformOriginalCurrencyPrice:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private thirdPlatformPriceCurrencyCode:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized createFromJSON(Lorg/json/JSONObject;)Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;

    invoke-direct {v1}, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;-><init>()V

    .line 3
    const-string v2, "pcc_price_cfg"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    const-string v2, "pcc_price_cfg"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->priceRawConfig:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    const-string v2, ""

    iput-object v2, v1, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->priceRawConfig:Ljava/lang/String;

    .line 9
    :goto_0
    const-string v2, "pcc_memo"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->memo:Ljava/lang/String;

    .line 11
    const-string v2, "pcc_price_usd"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12
    const-string v2, "pcc_price_usd"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->USDPrice:D

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    .line 14
    iput-wide v2, v1, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->USDPrice:D

    .line 18
    :goto_1
    sget-object p0, Lcom/gpc/tsh/pay/bean/GPCCurrency$Currency;->USD:Lcom/gpc/tsh/pay/bean/GPCCurrency$Currency;

    invoke-static {p0}, Lcom/gpc/tsh/pay/bean/GPCCurrency;->detectByCountry(Lcom/gpc/tsh/pay/bean/GPCCurrency$Currency;)Lcom/gpc/tsh/pay/bean/GPCCurrency$Currency;

    move-result-object p0

    iput-object p0, v1, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->currency:Lcom/gpc/tsh/pay/bean/GPCCurrency$Currency;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized createFromJsonV2(Lorg/json/JSONObject;)Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-class v0, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;

    invoke-direct {v1}, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;-><init>()V

    .line 2
    const-string v2, "price_cfg"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    const-string v2, "price_cfg"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->priceRawConfig:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    const-string v2, ""

    iput-object v2, v1, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->priceRawConfig:Ljava/lang/String;

    .line 8
    :goto_0
    const-string v2, "price_usd"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    const-string v2, "price_usd"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->USDPrice:D

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    .line 11
    iput-wide v2, v1, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->USDPrice:D

    .line 15
    :goto_1
    sget-object p0, Lcom/gpc/tsh/pay/bean/GPCCurrency$Currency;->USD:Lcom/gpc/tsh/pay/bean/GPCCurrency$Currency;

    invoke-static {p0}, Lcom/gpc/tsh/pay/bean/GPCCurrency;->detectByCountry(Lcom/gpc/tsh/pay/bean/GPCCurrency$Currency;)Lcom/gpc/tsh/pay/bean/GPCCurrency$Currency;

    move-result-object p0

    iput-object p0, v1, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->currency:Lcom/gpc/tsh/pay/bean/GPCCurrency$Currency;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private lookUpCurrencyPrice(Ljava/lang/String;)Ljava/lang/Double;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lookUpCurrencyPrice for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCGameItemPurchase"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->priceRawConfig:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    const-string p1, "priceRawConfig is null."

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 8
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->priceRawConfig:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 10
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 14
    const-string v2, ""

    invoke-static {v1, v2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public getCurrency()Lcom/gpc/tsh/pay/bean/GPCCurrency$Currency;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->currency:Lcom/gpc/tsh/pay/bean/GPCCurrency$Currency;

    return-object v0
.end method

.method public getCurrencyDisplay()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->currency:Lcom/gpc/tsh/pay/bean/GPCCurrency$Currency;

    invoke-static {v0}, Lcom/gpc/tsh/pay/bean/GPCCurrency;->getDisplayName(Lcom/gpc/tsh/pay/bean/GPCCurrency$Currency;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedPrice()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->currency:Lcom/gpc/tsh/pay/bean/GPCCurrency$Currency;

    invoke-virtual {p0, v1}, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->getPriceByCurrency(Lcom/gpc/tsh/pay/bean/GPCCurrency$Currency;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGooglePlayPriceAmountMicros()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->googlePlayPriceAmountMicros:J

    return-wide v0
.end method

.method public declared-synchronized getMemo()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->memo:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPrice()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->currency:Lcom/gpc/tsh/pay/bean/GPCCurrency$Currency;

    invoke-virtual {p0, v0}, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->getPriceByCurrency(Lcom/gpc/tsh/pay/bean/GPCCurrency$Currency;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPriceByCurrency(Lcom/gpc/tsh/pay/bean/GPCCurrency$Currency;)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->lookUpCurrencyPrice(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "The price of %s is not found"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPriceRawConfig()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->priceRawConfig:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getThirdPlatformCurrencyPrice()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->thirdPlatformCurrencyPrice:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getThirdPlatformOriginalCurrencyPrice()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->thirdPlatformOriginalCurrencyPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdPlatformPriceCurrencyCode()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->thirdPlatformPriceCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getUSDPrice()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->USDPrice:D

    return-wide v0
.end method

.method public setCurrency(Lcom/gpc/tsh/pay/bean/GPCCurrency$Currency;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->currency:Lcom/gpc/tsh/pay/bean/GPCCurrency$Currency;

    return-void
.end method

.method public setGooglePlayPriceAmountMicros(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->googlePlayPriceAmountMicros:J

    return-void
.end method

.method public declared-synchronized setThirdPlatformCurrencyPrice(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->thirdPlatformCurrencyPrice:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setThirdPlatformOriginalCurrencyPrice(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->thirdPlatformOriginalCurrencyPrice:Ljava/lang/String;

    return-void
.end method

.method public setThirdPlatformPriceCurrencyCode(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->thirdPlatformPriceCurrencyCode:Ljava/lang/String;

    return-void
.end method
