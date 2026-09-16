.class public Lcom/gpc/sdk/payment/bean/pricetag/StandardPriceTag;
.super Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILcom/gpc/sdk/payment/bean/price/BaseStandardPrice;Lcom/gpc/sdk/payment/utils/PaymentLocalize;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;-><init>(ILcom/gpc/sdk/payment/bean/price/BaseStandardPrice;Lcom/gpc/sdk/payment/utils/PaymentLocalize;)V

    return-void
.end method


# virtual methods
.method public source()Lcom/gpc/sdk/payment/GPCGameItemPriceSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->standardPrice:Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;

    invoke-interface {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPrice;->source()Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    move-result-object v0

    return-object v0
.end method
