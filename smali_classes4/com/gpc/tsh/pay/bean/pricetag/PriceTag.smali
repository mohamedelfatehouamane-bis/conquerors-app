.class public Lcom/gpc/tsh/pay/bean/pricetag/PriceTag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/tsh/pay/bean/pricetag/PriceTag$PriceTagProxy;
    }
.end annotation


# instance fields
.field protected paymentLocalize:Lcom/gpc/tsh/pay/utils/PaymentLocalize;

.field protected priceTagProxy:Lcom/gpc/tsh/pay/bean/pricetag/PriceTag$PriceTagProxy;


# direct methods
.method public constructor <init>(Lcom/gpc/tsh/pay/bean/pricetag/PriceTag$PriceTagProxy;Lcom/gpc/tsh/pay/utils/PaymentLocalize;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/pricetag/PriceTag;->priceTagProxy:Lcom/gpc/tsh/pay/bean/pricetag/PriceTag$PriceTagProxy;

    .line 3
    iput-object p2, p0, Lcom/gpc/tsh/pay/bean/pricetag/PriceTag;->paymentLocalize:Lcom/gpc/tsh/pay/utils/PaymentLocalize;

    return-void
.end method


# virtual methods
.method public getOriginalPriceText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/PriceTag;->priceTagProxy:Lcom/gpc/tsh/pay/bean/pricetag/PriceTag$PriceTagProxy;

    invoke-interface {v0}, Lcom/gpc/tsh/pay/bean/pricetag/PriceTag$PriceTagProxy;->getAvailableTagPriceTag()Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/PriceTag;->paymentLocalize:Lcom/gpc/tsh/pay/utils/PaymentLocalize;

    invoke-interface {v0}, Lcom/gpc/tsh/pay/utils/PaymentLocalize;->getGameItemDefaultPriceTagText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/PriceTag;->priceTagProxy:Lcom/gpc/tsh/pay/bean/pricetag/PriceTag$PriceTagProxy;

    invoke-interface {v0}, Lcom/gpc/tsh/pay/bean/pricetag/PriceTag$PriceTagProxy;->getAvailableTagPriceTag()Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;->getOriginalPriceText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/PriceTag;->priceTagProxy:Lcom/gpc/tsh/pay/bean/pricetag/PriceTag$PriceTagProxy;

    invoke-interface {v0}, Lcom/gpc/tsh/pay/bean/pricetag/PriceTag$PriceTagProxy;->getAvailableTagPriceTag()Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/PriceTag;->paymentLocalize:Lcom/gpc/tsh/pay/utils/PaymentLocalize;

    invoke-interface {v0}, Lcom/gpc/tsh/pay/utils/PaymentLocalize;->getGameItemDefaultPriceTagText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/PriceTag;->priceTagProxy:Lcom/gpc/tsh/pay/bean/pricetag/PriceTag$PriceTagProxy;

    invoke-interface {v0}, Lcom/gpc/tsh/pay/bean/pricetag/PriceTag$PriceTagProxy;->getAvailableTagPriceTag()Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDiscounted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/PriceTag;->priceTagProxy:Lcom/gpc/tsh/pay/bean/pricetag/PriceTag$PriceTagProxy;

    invoke-interface {v0}, Lcom/gpc/tsh/pay/bean/pricetag/PriceTag$PriceTagProxy;->getAvailableTagPriceTag()Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/PriceTag;->priceTagProxy:Lcom/gpc/tsh/pay/bean/pricetag/PriceTag$PriceTagProxy;

    invoke-interface {v0}, Lcom/gpc/tsh/pay/bean/pricetag/PriceTag$PriceTagProxy;->getAvailableTagPriceTag()Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;->isDiscounted()Z

    move-result v0

    return v0
.end method

.method public source()Lcom/gpc/tsh/pay/GameItemPriceSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/PriceTag;->priceTagProxy:Lcom/gpc/tsh/pay/bean/pricetag/PriceTag$PriceTagProxy;

    invoke-interface {v0}, Lcom/gpc/tsh/pay/bean/pricetag/PriceTag$PriceTagProxy;->getAvailableTagPriceTag()Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/gpc/tsh/pay/GameItemPriceSource;->GPCGameItemPriceSourceCache:Lcom/gpc/tsh/pay/GameItemPriceSource;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/PriceTag;->priceTagProxy:Lcom/gpc/tsh/pay/bean/pricetag/PriceTag$PriceTagProxy;

    invoke-interface {v0}, Lcom/gpc/tsh/pay/bean/pricetag/PriceTag$PriceTagProxy;->getAvailableTagPriceTag()Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;->source()Lcom/gpc/tsh/pay/GameItemPriceSource;

    move-result-object v0

    return-object v0
.end method
