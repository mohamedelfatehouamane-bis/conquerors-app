.class public Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/bean/pricetag/PriceTag$PriceTagProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->create(IILorg/json/JSONObject;Lcom/gpc/sdk/payment/GPCGameItemPriceSource;)Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableTagPriceTag()Lcom/gpc/sdk/payment/bean/GPCGameItemPriceTag;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    iget-object v0, v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->inStorePrice:Lcom/gpc/sdk/payment/bean/price/BaseInStorePrice;

    const-string v1, "GPCGameItemPricing"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/price/BaseInStorePrice;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "inStorePrice source:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    iget-object v2, v2, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->inStorePriceTag:Lcom/gpc/sdk/payment/bean/pricetag/BaseInStorePriceTag;

    invoke-interface {v2}, Lcom/gpc/sdk/payment/bean/GPCGameItemPriceTag;->source()Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    iget-object v0, v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->inStorePriceTag:Lcom/gpc/sdk/payment/bean/pricetag/BaseInStorePriceTag;

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    iget-object v0, v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->standardPrice:Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "standardPrice source:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    iget-object v2, v2, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->standardPrice:Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;

    invoke-interface {v2}, Lcom/gpc/sdk/payment/bean/GPCGameItemPrice;->source()Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    iget-object v0, v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->standardPriceTag:Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;

    return-object v0

    .line 9
    :cond_1
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2$1;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2$1;-><init>(Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2;)V

    .line 30
    const-string v2, "AvailableTagPriceTag is null"

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
