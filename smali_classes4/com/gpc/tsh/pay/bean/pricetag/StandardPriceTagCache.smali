.class public Lcom/gpc/tsh/pay/bean/pricetag/StandardPriceTagCache;
.super Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILcom/gpc/tsh/pay/bean/price/BaseStandardPrice;Lcom/gpc/tsh/pay/utils/PaymentLocalize;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;-><init>(ILcom/gpc/tsh/pay/bean/price/BaseStandardPrice;Lcom/gpc/tsh/pay/utils/PaymentLocalize;)V

    return-void
.end method


# virtual methods
.method public source()Lcom/gpc/tsh/pay/GameItemPriceSource;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/tsh/pay/GameItemPriceSource;->GPCGameItemPriceSourceCache:Lcom/gpc/tsh/pay/GameItemPriceSource;

    return-object v0
.end method
