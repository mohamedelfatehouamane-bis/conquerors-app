.class public Lcom/gpc/sdk/payment/bean/pricetag/PriceTag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/bean/GPCGameItemPriceTag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/payment/bean/pricetag/PriceTag$PriceTagProxy;
    }
.end annotation


# instance fields
.field protected paymentLocalize:Lcom/gpc/sdk/payment/utils/PaymentLocalize;

.field protected priceTagProxy:Lcom/gpc/sdk/payment/bean/pricetag/PriceTag$PriceTagProxy;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/bean/pricetag/PriceTag$PriceTagProxy;Lcom/gpc/sdk/payment/utils/PaymentLocalize;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/pricetag/PriceTag;->priceTagProxy:Lcom/gpc/sdk/payment/bean/pricetag/PriceTag$PriceTagProxy;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/payment/bean/pricetag/PriceTag;->paymentLocalize:Lcom/gpc/sdk/payment/utils/PaymentLocalize;

    return-void
.end method


# virtual methods
.method public getOriginalPriceText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/PriceTag;->priceTagProxy:Lcom/gpc/sdk/payment/bean/pricetag/PriceTag$PriceTagProxy;

    invoke-interface {v0}, Lcom/gpc/sdk/payment/bean/pricetag/PriceTag$PriceTagProxy;->getAvailableTagPriceTag()Lcom/gpc/sdk/payment/bean/GPCGameItemPriceTag;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPriceTag;->getOriginalPriceText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/PriceTag;->priceTagProxy:Lcom/gpc/sdk/payment/bean/pricetag/PriceTag$PriceTagProxy;

    invoke-interface {v0}, Lcom/gpc/sdk/payment/bean/pricetag/PriceTag$PriceTagProxy;->getAvailableTagPriceTag()Lcom/gpc/sdk/payment/bean/GPCGameItemPriceTag;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPriceTag;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDiscounted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/PriceTag;->priceTagProxy:Lcom/gpc/sdk/payment/bean/pricetag/PriceTag$PriceTagProxy;

    invoke-interface {v0}, Lcom/gpc/sdk/payment/bean/pricetag/PriceTag$PriceTagProxy;->getAvailableTagPriceTag()Lcom/gpc/sdk/payment/bean/GPCGameItemPriceTag;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPriceTag;->isDiscounted()Z

    move-result v0

    return v0
.end method

.method public source()Lcom/gpc/sdk/payment/GPCGameItemPriceSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/PriceTag;->priceTagProxy:Lcom/gpc/sdk/payment/bean/pricetag/PriceTag$PriceTagProxy;

    invoke-interface {v0}, Lcom/gpc/sdk/payment/bean/pricetag/PriceTag$PriceTagProxy;->getAvailableTagPriceTag()Lcom/gpc/sdk/payment/bean/GPCGameItemPriceTag;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPriceTag;->source()Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    move-result-object v0

    return-object v0
.end method
