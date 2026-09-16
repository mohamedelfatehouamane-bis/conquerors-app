.class public Lcom/gpc/sdk/payment/bean/price/InStorePriceCache;
.super Lcom/gpc/sdk/payment/bean/price/BaseInStorePrice;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/gpc/sdk/payment/bean/price/BaseInStorePrice;-><init>(ILcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;)V

    return-void
.end method


# virtual methods
.method public source()Lcom/gpc/sdk/payment/GPCGameItemPriceSource;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/payment/GPCGameItemPriceSource;->GPCGameItemPriceSourceCache:Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    return-object v0
.end method
