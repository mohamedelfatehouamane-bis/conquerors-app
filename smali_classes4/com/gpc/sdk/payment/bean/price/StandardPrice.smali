.class public Lcom/gpc/sdk/payment/bean/price/StandardPrice;
.super Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;-><init>()V

    return-void
.end method


# virtual methods
.method public source()Lcom/gpc/sdk/payment/GPCGameItemPriceSource;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/payment/GPCGameItemPriceSource;->GPCGameItemPriceSourceRealTime:Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    return-object v0
.end method
