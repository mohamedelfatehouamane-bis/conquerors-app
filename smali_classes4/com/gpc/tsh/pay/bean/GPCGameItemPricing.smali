.class public Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "GPCGameItemPricing"


# instance fields
.field protected inStorePrice:Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;

.field protected inStorePriceTag:Lcom/gpc/tsh/pay/bean/pricetag/BaseInStorePriceTag;

.field protected itemId:I

.field protected priceTag:Lcom/gpc/tsh/pay/bean/pricetag/PriceTag;

.field protected standardPrice:Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;

.field protected standardPriceTag:Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(ILorg/json/JSONObject;Lcom/gpc/tsh/pay/GameItemPriceSource;)Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;

    invoke-direct {v0}, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;-><init>()V

    .line 2
    iput p0, v0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->itemId:I

    .line 4
    invoke-static {p0, p1, p2}, Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;->create(ILorg/json/JSONObject;Lcom/gpc/tsh/pay/GameItemPriceSource;)Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;

    move-result-object p1

    iput-object p1, v0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->standardPrice:Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;

    .line 5
    invoke-static {}, Lcom/gpc/tsh/pay/utils/PaymentConfiguration;->b()Lcom/gpc/tsh/pay/utils/PaymentConfiguration;

    move-result-object v1

    invoke-static {p0, p1, v1, p2}, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->create(ILcom/gpc/tsh/pay/bean/price/BaseStandardPrice;Lcom/gpc/tsh/pay/utils/PaymentLocalize;Lcom/gpc/tsh/pay/GameItemPriceSource;)Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;

    move-result-object p1

    iput-object p1, v0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->standardPriceTag:Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;

    .line 8
    new-instance p2, Lcom/gpc/tsh/pay/bean/pricetag/InStorePriceTag;

    invoke-static {}, Lcom/gpc/tsh/pay/utils/PaymentConfiguration;->b()Lcom/gpc/tsh/pay/utils/PaymentConfiguration;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p2, p0, v2, p1, v1}, Lcom/gpc/tsh/pay/bean/pricetag/InStorePriceTag;-><init>(ILcom/gpc/tsh/pay/bean/price/BaseInStorePrice;Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;Lcom/gpc/tsh/pay/utils/PaymentLocalize;)V

    iput-object p2, v0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->inStorePriceTag:Lcom/gpc/tsh/pay/bean/pricetag/BaseInStorePriceTag;

    .line 10
    new-instance p0, Lcom/gpc/tsh/pay/bean/pricetag/PriceTag;

    new-instance p1, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing$a;

    invoke-direct {p1, v0}, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing$a;-><init>(Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;)V

    .line 25
    invoke-static {}, Lcom/gpc/tsh/pay/utils/PaymentConfiguration;->b()Lcom/gpc/tsh/pay/utils/PaymentConfiguration;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/gpc/tsh/pay/bean/pricetag/PriceTag;-><init>(Lcom/gpc/tsh/pay/bean/pricetag/PriceTag$PriceTagProxy;Lcom/gpc/tsh/pay/utils/PaymentLocalize;)V

    iput-object p0, v0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->priceTag:Lcom/gpc/tsh/pay/bean/pricetag/PriceTag;

    return-object v0
.end method


# virtual methods
.method public createInStorePrice(Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;Lcom/gpc/tsh/pay/GameItemPriceSource;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->itemId:I

    invoke-static {v0, p1, p2}, Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;->create(ILcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;Lcom/gpc/tsh/pay/GameItemPriceSource;)Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->inStorePrice:Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;

    .line 2
    new-instance p2, Lcom/gpc/tsh/pay/bean/pricetag/InStorePriceTag;

    iget v0, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->itemId:I

    iget-object v1, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->standardPriceTag:Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;

    invoke-static {}, Lcom/gpc/tsh/pay/utils/PaymentConfiguration;->b()Lcom/gpc/tsh/pay/utils/PaymentConfiguration;

    move-result-object v2

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/gpc/tsh/pay/bean/pricetag/InStorePriceTag;-><init>(ILcom/gpc/tsh/pay/bean/price/BaseInStorePrice;Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;Lcom/gpc/tsh/pay/utils/PaymentLocalize;)V

    iput-object p2, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->inStorePriceTag:Lcom/gpc/tsh/pay/bean/pricetag/BaseInStorePriceTag;

    return-void
.end method

.method public getInStorePrice()Lcom/gpc/tsh/pay/bean/GPCGameItemPrice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->inStorePrice:Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;

    return-object v0
.end method

.method public getInStorePriceTag()Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->inStorePriceTag:Lcom/gpc/tsh/pay/bean/pricetag/BaseInStorePriceTag;

    return-object v0
.end method

.method public getPriceTag()Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->priceTag:Lcom/gpc/tsh/pay/bean/pricetag/PriceTag;

    return-object v0
.end method

.method public getStandardPrice()Lcom/gpc/tsh/pay/bean/GPCGameItemPrice;
    .locals 1

    .line 5
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->getStandardPrice(Ljava/lang/String;)Lcom/gpc/tsh/pay/bean/GPCGameItemPrice;

    move-result-object v0

    return-object v0
.end method

.method public getStandardPrice(Ljava/lang/String;)Lcom/gpc/tsh/pay/bean/GPCGameItemPrice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->standardPrice:Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;->setCurrency(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->standardPrice:Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;

    return-object p1
.end method

.method public getStandardPriceTag()Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;
    .locals 1

    .line 5
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->getStandardPriceTag(Ljava/lang/String;)Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;

    move-result-object v0

    return-object v0
.end method

.method public getStandardPriceTag(Ljava/lang/String;)Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->standardPrice:Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;->setCurrency(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->standardPriceTag:Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;

    return-object p1
.end method

.method public isInStorePriceAvailable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->inStorePrice:Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStandardPriceAvailable()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->standardPrice:Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;->isAvailable()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStandardPriceAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->standardPrice:Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;->isAvailable(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
