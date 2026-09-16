.class public Lcom/gpc/sdk/payment/bean/pricetag/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/bean/GPCPromotionPriceTag;


# instance fields
.field public a:Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPrice;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPrice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/pricetag/b;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPrice;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/b;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPrice;

    invoke-interface {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPrice;->getPricingContract()Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->getPrice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public source()Lcom/gpc/sdk/payment/GPCGameItemPriceSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/b;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPrice;

    invoke-interface {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPrice;->source()Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    move-result-object v0

    return-object v0
.end method
