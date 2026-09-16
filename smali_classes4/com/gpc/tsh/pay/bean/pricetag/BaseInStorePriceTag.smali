.class public abstract Lcom/gpc/tsh/pay/bean/pricetag/BaseInStorePriceTag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseInStorePriceTag"


# instance fields
.field protected inStorePrice:Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;

.field protected itemId:I

.field protected paymentLocalize:Lcom/gpc/tsh/pay/utils/PaymentLocalize;

.field protected preferPriceTag:Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;


# direct methods
.method public constructor <init>(ILcom/gpc/tsh/pay/bean/price/BaseInStorePrice;Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;Lcom/gpc/tsh/pay/utils/PaymentLocalize;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseInStorePriceTag;->itemId:I

    .line 3
    iput-object p2, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseInStorePriceTag;->inStorePrice:Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;

    .line 4
    iput-object p4, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseInStorePriceTag;->paymentLocalize:Lcom/gpc/tsh/pay/utils/PaymentLocalize;

    .line 5
    iput-object p3, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseInStorePriceTag;->preferPriceTag:Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;

    return-void
.end method


# virtual methods
.method public getOriginalPriceText()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseInStorePriceTag;->inStorePrice:Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;->getSkuDetails()Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseInStorePriceTag;->inStorePrice:Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;->getSkuDetails()Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->getOriginalPrice()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseInStorePriceTag;->itemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " getOriginalPriceText.Get In Store Price failed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseInStorePriceTag"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseInStorePriceTag;->paymentLocalize:Lcom/gpc/tsh/pay/utils/PaymentLocalize;

    invoke-interface {v0}, Lcom/gpc/tsh/pay/utils/PaymentLocalize;->getGameItemDefaultPriceTagText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseInStorePriceTag;->inStorePrice:Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;->getSkuDetails()Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseInStorePriceTag;->inStorePrice:Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;->getSkuDetails()Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseInStorePriceTag;->itemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " getOriginalPriceText.Get In Store Price failed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseInStorePriceTag"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseInStorePriceTag;->paymentLocalize:Lcom/gpc/tsh/pay/utils/PaymentLocalize;

    invoke-interface {v0}, Lcom/gpc/tsh/pay/utils/PaymentLocalize;->getGameItemDefaultPriceTagText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDiscounted()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseInStorePriceTag;->inStorePrice:Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;->getSkuDetails()Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseInStorePriceTag;->inStorePrice:Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;->getAmount()D

    move-result-wide v2

    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseInStorePriceTag;->inStorePrice:Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;->getOriginalAmount()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method
