.class public Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPrice;

.field public b:Lcom/gpc/sdk/payment/bean/GPCPromotionPriceTag;

.field public c:Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

.field public d:Lcom/gpc/sdk/payment/GPCGameItemPriceSource;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;Lcom/gpc/sdk/payment/GPCGameItemPriceSource;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;->c:Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;->d:Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    .line 4
    sget-object v0, Lcom/gpc/sdk/payment/GPCGameItemPriceSource;->GPCGameItemPriceSourceRealTime:Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    if-ne p2, v0, :cond_0

    if-eqz p1, :cond_0

    .line 5
    new-instance p2, Lcom/gpc/sdk/payment/bean/pricetag/a;

    invoke-direct {p2, p1}, Lcom/gpc/sdk/payment/bean/pricetag/a;-><init>(Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;)V

    iput-object p2, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPrice;

    .line 6
    new-instance p1, Lcom/gpc/sdk/payment/bean/pricetag/b;

    invoke-direct {p1, p2}, Lcom/gpc/sdk/payment/bean/pricetag/b;-><init>(Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPrice;)V

    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;->b:Lcom/gpc/sdk/payment/bean/GPCPromotionPriceTag;

    :cond_0
    return-void
.end method


# virtual methods
.method public getContract()Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;->c:Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    return-object v0
.end method

.method public getContractMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPrice;

    invoke-interface {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPrice;->getPricingContract()Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->getContractMode()I

    move-result v0

    return v0
.end method

.method public getInStorePromotionPrice()Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPrice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPrice;

    return-object v0
.end method

.method public getInStorePromotionPriceTag()Lcom/gpc/sdk/payment/bean/GPCPromotionPriceTag;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;->b:Lcom/gpc/sdk/payment/bean/GPCPromotionPriceTag;

    return-object v0
.end method

.method public isInStorePromotionPriceAvalidable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;->d:Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    sget-object v1, Lcom/gpc/sdk/payment/GPCGameItemPriceSource;->GPCGameItemPriceSourceRealTime:Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;->c:Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
