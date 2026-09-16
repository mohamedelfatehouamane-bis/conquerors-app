.class public Lcom/gpc/tsh/pay/bean/GPCGameItemPricing$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/bean/pricetag/PriceTag$PriceTagProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->create(ILorg/json/JSONObject;Lcom/gpc/tsh/pay/GameItemPriceSource;)Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;


# direct methods
.method public constructor <init>(Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing$a;->a:Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableTagPriceTag()Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing$a;->a:Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;

    iget-object v0, v0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->inStorePrice:Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;

    const-string v1, "GPCGameItemPricing"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/price/BaseInStorePrice;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "inStorePrice source:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing$a;->a:Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;

    iget-object v2, v2, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->inStorePriceTag:Lcom/gpc/tsh/pay/bean/pricetag/BaseInStorePriceTag;

    invoke-interface {v2}, Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;->source()Lcom/gpc/tsh/pay/GameItemPriceSource;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing$a;->a:Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;

    iget-object v0, v0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->inStorePriceTag:Lcom/gpc/tsh/pay/bean/pricetag/BaseInStorePriceTag;

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing$a;->a:Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;

    iget-object v0, v0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->standardPrice:Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "standardPrice source:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing$a;->a:Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;

    iget-object v2, v2, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->standardPrice:Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;

    invoke-interface {v2}, Lcom/gpc/tsh/pay/bean/GPCGameItemPrice;->source()Lcom/gpc/tsh/pay/GameItemPriceSource;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing$a;->a:Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;

    iget-object v0, v0, Lcom/gpc/tsh/pay/bean/GPCGameItemPricing;->standardPriceTag:Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;

    return-object v0

    .line 10
    :cond_1
    const-string v0, "AvailableTagPriceTag is null"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
