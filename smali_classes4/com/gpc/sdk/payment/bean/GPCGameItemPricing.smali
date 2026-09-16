.class public Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Ljava/lang/String; = "GPCGameItemPricing"


# instance fields
.field protected inStorePrice:Lcom/gpc/sdk/payment/bean/price/BaseInStorePrice;

.field protected inStorePriceTag:Lcom/gpc/sdk/payment/bean/pricetag/BaseInStorePriceTag;

.field protected itemId:I

.field protected itemType:I

.field protected priceTag:Lcom/gpc/sdk/payment/bean/pricetag/PriceTag;

.field protected standardPrice:Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;

.field protected standardPriceTag:Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(II)Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;-><init>()V

    .line 2
    iput p0, v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->itemId:I

    .line 3
    iput p1, v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->itemType:I

    .line 4
    new-instance p0, Lcom/gpc/sdk/payment/bean/pricetag/PriceTag;

    new-instance v1, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$a;

    invoke-direct {v1, v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$a;-><init>(Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;)V

    .line 14
    invoke-static {}, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->e()Lcom/gpc/sdk/payment/utils/PaymentConfiguration;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->a(I)Lcom/gpc/sdk/payment/utils/PaymentLocalize;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/gpc/sdk/payment/bean/pricetag/PriceTag;-><init>(Lcom/gpc/sdk/payment/bean/pricetag/PriceTag$PriceTagProxy;Lcom/gpc/sdk/payment/utils/PaymentLocalize;)V

    iput-object p0, v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->priceTag:Lcom/gpc/sdk/payment/bean/pricetag/PriceTag;

    return-object v0
.end method

.method public static create(IILorg/json/JSONObject;Lcom/gpc/sdk/payment/GPCGameItemPriceSource;)Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;
    .locals 3

    .line 15
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;-><init>()V

    .line 16
    iput p0, v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->itemId:I

    .line 17
    iput p1, v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->itemType:I

    .line 19
    invoke-static {p0, p2, p3}, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->a(ILorg/json/JSONObject;Lcom/gpc/sdk/payment/GPCGameItemPriceSource;)Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;

    move-result-object p2

    iput-object p2, v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->standardPrice:Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;

    .line 20
    invoke-static {}, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->e()Lcom/gpc/sdk/payment/utils/PaymentConfiguration;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->a(I)Lcom/gpc/sdk/payment/utils/PaymentLocalize;

    move-result-object v1

    invoke-static {p0, p2, v1, p3}, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->a(ILcom/gpc/sdk/payment/bean/price/BaseStandardPrice;Lcom/gpc/sdk/payment/utils/PaymentLocalize;Lcom/gpc/sdk/payment/GPCGameItemPriceSource;)Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;

    move-result-object p2

    iput-object p2, v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->standardPriceTag:Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;

    .line 23
    new-instance p3, Lcom/gpc/sdk/payment/bean/pricetag/InStorePriceTag;

    invoke-static {}, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->e()Lcom/gpc/sdk/payment/utils/PaymentConfiguration;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->a(I)Lcom/gpc/sdk/payment/utils/PaymentLocalize;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p3, p0, v2, p2, v1}, Lcom/gpc/sdk/payment/bean/pricetag/InStorePriceTag;-><init>(ILcom/gpc/sdk/payment/bean/price/BaseInStorePrice;Lcom/gpc/sdk/payment/bean/GPCGameItemPriceTag;Lcom/gpc/sdk/payment/utils/PaymentLocalize;)V

    iput-object p3, v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->inStorePriceTag:Lcom/gpc/sdk/payment/bean/pricetag/BaseInStorePriceTag;

    .line 25
    new-instance p0, Lcom/gpc/sdk/payment/bean/pricetag/PriceTag;

    new-instance p2, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2;

    invoke-direct {p2, v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2;-><init>(Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;)V

    .line 60
    invoke-static {}, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->e()Lcom/gpc/sdk/payment/utils/PaymentConfiguration;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->a(I)Lcom/gpc/sdk/payment/utils/PaymentLocalize;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/gpc/sdk/payment/bean/pricetag/PriceTag;-><init>(Lcom/gpc/sdk/payment/bean/pricetag/PriceTag$PriceTagProxy;Lcom/gpc/sdk/payment/utils/PaymentLocalize;)V

    iput-object p0, v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->priceTag:Lcom/gpc/sdk/payment/bean/pricetag/PriceTag;

    return-object v0
.end method


# virtual methods
.method public createInStorePrice(Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;Lcom/gpc/sdk/payment/GPCGameItemPriceSource;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->itemId:I

    invoke-static {v0, p1, p2, p3}, Lcom/gpc/sdk/payment/bean/price/BaseInStorePrice;->a(ILcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;Lcom/gpc/sdk/payment/GPCGameItemPriceSource;)Lcom/gpc/sdk/payment/bean/price/BaseInStorePrice;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->inStorePrice:Lcom/gpc/sdk/payment/bean/price/BaseInStorePrice;

    .line 2
    new-instance p2, Lcom/gpc/sdk/payment/bean/pricetag/InStorePriceTag;

    iget p3, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->itemId:I

    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->standardPriceTag:Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;

    invoke-static {}, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->e()Lcom/gpc/sdk/payment/utils/PaymentConfiguration;

    move-result-object v1

    iget v2, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->itemType:I

    invoke-virtual {v1, v2}, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->a(I)Lcom/gpc/sdk/payment/utils/PaymentLocalize;

    move-result-object v1

    invoke-direct {p2, p3, p1, v0, v1}, Lcom/gpc/sdk/payment/bean/pricetag/InStorePriceTag;-><init>(ILcom/gpc/sdk/payment/bean/price/BaseInStorePrice;Lcom/gpc/sdk/payment/bean/GPCGameItemPriceTag;Lcom/gpc/sdk/payment/utils/PaymentLocalize;)V

    iput-object p2, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->inStorePriceTag:Lcom/gpc/sdk/payment/bean/pricetag/BaseInStorePriceTag;

    return-void
.end method

.method public getInStorePrice()Lcom/gpc/sdk/payment/bean/GPCGameItemPrice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->inStorePrice:Lcom/gpc/sdk/payment/bean/price/BaseInStorePrice;

    return-object v0
.end method

.method public getInStorePriceTag()Lcom/gpc/sdk/payment/bean/GPCGameItemPriceTag;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->inStorePriceTag:Lcom/gpc/sdk/payment/bean/pricetag/BaseInStorePriceTag;

    return-object v0
.end method

.method public getPriceTag()Lcom/gpc/sdk/payment/bean/GPCGameItemPriceTag;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->priceTag:Lcom/gpc/sdk/payment/bean/pricetag/PriceTag;

    return-object v0
.end method

.method public getStandardPrice(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItemPrice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->standardPrice:Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->c(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->standardPrice:Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;

    return-object p1
.end method

.method public getStandardPriceTag(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItemPriceTag;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->standardPrice:Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->c(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->standardPriceTag:Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;

    return-object p1
.end method

.method public isInStorePriceAvailable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->inStorePrice:Lcom/gpc/sdk/payment/bean/price/BaseInStorePrice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/price/BaseInStorePrice;->b()Z

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
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->standardPrice:Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->d()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStandardPriceAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->standardPrice:Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->b(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
