.class public abstract Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/bean/GPCGameItemPrice;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseInStorePrice"


# instance fields
.field protected itemId:I

.field protected skuDetails:Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;


# direct methods
.method public constructor <init>(ILcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;->itemId:I

    .line 3
    iput-object p2, p0, Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;->skuDetails:Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;

    return-void
.end method

.method public static declared-synchronized create(ILcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;Lcom/gpc/tsh/pay/GameItemPriceSource;)Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;
    .locals 3

    const-string v0, "UNKNOWN:"

    const-class v1, Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;

    monitor-enter v1

    .line 1
    :try_start_0
    sget-object v2, Lcom/gpc/tsh/pay/GameItemPriceSource;->GPCGameItemPriceSourceCache:Lcom/gpc/tsh/pay/GameItemPriceSource;

    if-ne v2, p2, :cond_0

    .line 2
    new-instance p2, Lcom/gpc/tsh/pay/bean/price/InStorePriceCache;

    invoke-direct {p2, p0, p1}, Lcom/gpc/tsh/pay/bean/price/InStorePriceCache;-><init>(ILcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v2, Lcom/gpc/tsh/pay/GameItemPriceSource;->GPCGameItemPriceSourceRealTime:Lcom/gpc/tsh/pay/GameItemPriceSource;

    if-ne v2, p2, :cond_1

    .line 4
    new-instance p2, Lcom/gpc/tsh/pay/bean/price/InStorePrice;

    invoke-direct {p2, p0, p1}, Lcom/gpc/tsh/pay/bean/price/InStorePrice;-><init>(ILcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BaseInStorePrice"

    invoke-static {v0, p2}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p2, Lcom/gpc/tsh/pay/bean/price/InStorePriceCache;

    invoke-direct {p2, p0, p1}, Lcom/gpc/tsh/pay/bean/price/InStorePriceCache;-><init>(ILcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object p2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public getAmount()D
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;->skuDetails:Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->getPriceAmountMicros()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;->skuDetails:Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalAmount()D
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;->skuDetails:Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->getOriginalPriceAmountMicros()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getSkuDetails()Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;->skuDetails:Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;->skuDetails:Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->getPrice()Ljava/lang/String;

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
