.class public abstract Lcom/gpc/sdk/payment/bean/price/BaseInStorePrice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/bean/GPCGameItemPrice;


# static fields
.field public static final a:Ljava/lang/String; = "BaseInStorePrice"


# instance fields
.field protected contract:Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

.field protected itemId:I

.field protected skuDetails:Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;


# direct methods
.method public constructor <init>(ILcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/gpc/sdk/payment/bean/price/BaseInStorePrice;->itemId:I

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/payment/bean/price/BaseInStorePrice;->skuDetails:Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;

    .line 4
    iput-object p3, p0, Lcom/gpc/sdk/payment/bean/price/BaseInStorePrice;->contract:Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    return-void
.end method

.method public static declared-synchronized a(ILcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;Lcom/gpc/sdk/payment/GPCGameItemPriceSource;)Lcom/gpc/sdk/payment/bean/price/BaseInStorePrice;
    .locals 3

    const-string v0, "UNKNOWN:"

    const-class v1, Lcom/gpc/sdk/payment/bean/price/BaseInStorePrice;

    monitor-enter v1

    .line 2
    :try_start_0
    sget-object v2, Lcom/gpc/sdk/payment/GPCGameItemPriceSource;->GPCGameItemPriceSourceCache:Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    if-ne v2, p3, :cond_0

    .line 3
    new-instance p3, Lcom/gpc/sdk/payment/bean/price/InStorePriceCache;

    invoke-direct {p3, p0, p1, p2}, Lcom/gpc/sdk/payment/bean/price/InStorePriceCache;-><init>(ILcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v2, Lcom/gpc/sdk/payment/GPCGameItemPriceSource;->GPCGameItemPriceSourceRealTime:Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    if-ne v2, p3, :cond_1

    .line 5
    new-instance p3, Lcom/gpc/sdk/payment/bean/price/InStorePrice;

    invoke-direct {p3, p0, p1, p2}, Lcom/gpc/sdk/payment/bean/price/InStorePrice;-><init>(ILcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "BaseInStorePrice"

    invoke-static {v0, p3}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance p3, Lcom/gpc/sdk/payment/bean/price/InStorePriceCache;

    invoke-direct {p3, p0, p1, p2}, Lcom/gpc/sdk/payment/bean/price/InStorePriceCache;-><init>(ILcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object p3

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public a()Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseInStorePrice;->skuDetails:Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseInStorePrice;->skuDetails:Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAmount()D
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseInStorePrice;->skuDetails:Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;

    invoke-interface {v0}, Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;->getPriceAmountMicros()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseInStorePrice;->skuDetails:Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;

    invoke-interface {v0}, Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalAmount()D
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseInStorePrice;->skuDetails:Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;

    invoke-interface {v0}, Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;->getOriginalPriceAmountMicros()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getPriceContract()Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseInStorePrice;->contract:Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    return-object v0
.end method
