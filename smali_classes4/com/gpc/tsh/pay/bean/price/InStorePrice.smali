.class public Lcom/gpc/tsh/pay/bean/price/InStorePrice;
.super Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;-><init>(ILcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;)V

    return-void
.end method


# virtual methods
.method public source()Lcom/gpc/tsh/pay/GameItemPriceSource;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/tsh/pay/GameItemPriceSource;->GPCGameItemPriceSourceRealTime:Lcom/gpc/tsh/pay/GameItemPriceSource;

    return-object v0
.end method
