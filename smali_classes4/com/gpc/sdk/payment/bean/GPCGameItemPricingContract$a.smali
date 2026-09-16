.class public Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->createGameItemPriceProxy()Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$a;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOriginalPrice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$a;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->getPrice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalPriceAmountMicros()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$a;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->getPriceAmountMicros()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$a;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->getPrice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriceAmountMicros()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$a;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->getPriceAmountMicros()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$a;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
