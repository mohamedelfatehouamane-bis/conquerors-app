.class public Lcom/gpc/sdk/payment/bean/pricetag/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPrice;


# instance fields
.field public a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/pricetag/a;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    return-void
.end method


# virtual methods
.method public getAmount()D
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/a;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->getPriceAmountMicros()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/a;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalAmount()D
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/a;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->getPriceAmountMicros()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getPricingContract()Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/a;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    return-object v0
.end method

.method public source()Lcom/gpc/sdk/payment/GPCGameItemPriceSource;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/payment/GPCGameItemPriceSource;->GPCGameItemPriceSourceRealTime:Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    return-object v0
.end method
