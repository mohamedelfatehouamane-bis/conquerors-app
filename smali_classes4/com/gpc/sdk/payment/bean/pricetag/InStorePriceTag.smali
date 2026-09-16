.class public Lcom/gpc/sdk/payment/bean/pricetag/InStorePriceTag;
.super Lcom/gpc/sdk/payment/bean/pricetag/BaseInStorePriceTag;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILcom/gpc/sdk/payment/bean/price/BaseInStorePrice;Lcom/gpc/sdk/payment/bean/GPCGameItemPriceTag;Lcom/gpc/sdk/payment/utils/PaymentLocalize;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gpc/sdk/payment/bean/pricetag/BaseInStorePriceTag;-><init>(ILcom/gpc/sdk/payment/bean/price/BaseInStorePrice;Lcom/gpc/sdk/payment/bean/GPCGameItemPriceTag;Lcom/gpc/sdk/payment/utils/PaymentLocalize;)V

    return-void
.end method


# virtual methods
.method public source()Lcom/gpc/sdk/payment/GPCGameItemPriceSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseInStorePriceTag;->inStorePrice:Lcom/gpc/sdk/payment/bean/price/BaseInStorePrice;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/gpc/sdk/payment/GPCGameItemPriceSource;->GPCGameItemPriceSourceCache:Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    return-object v0

    .line 4
    :cond_0
    invoke-interface {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPrice;->source()Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    move-result-object v0

    return-object v0
.end method
