.class public Lcom/gpc/tsh/pay/bean/pricetag/InStorePriceTag;
.super Lcom/gpc/tsh/pay/bean/pricetag/BaseInStorePriceTag;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILcom/gpc/tsh/pay/bean/price/BaseInStorePrice;Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;Lcom/gpc/tsh/pay/utils/PaymentLocalize;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gpc/tsh/pay/bean/pricetag/BaseInStorePriceTag;-><init>(ILcom/gpc/tsh/pay/bean/price/BaseInStorePrice;Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;Lcom/gpc/tsh/pay/utils/PaymentLocalize;)V

    return-void
.end method


# virtual methods
.method public source()Lcom/gpc/tsh/pay/GameItemPriceSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseInStorePriceTag;->inStorePrice:Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/gpc/tsh/pay/GameItemPriceSource;->GPCGameItemPriceSourceCache:Lcom/gpc/tsh/pay/GameItemPriceSource;

    return-object v0

    .line 4
    :cond_0
    invoke-interface {v0}, Lcom/gpc/tsh/pay/bean/GPCGameItemPrice;->source()Lcom/gpc/tsh/pay/GameItemPriceSource;

    move-result-object v0

    return-object v0
.end method
