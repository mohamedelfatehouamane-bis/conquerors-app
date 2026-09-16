.class public Lcom/gpc/sdk/payment/bean/GPCGameItemPricingGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingGroup;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getPrice()Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingGroup;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    return-object v0
.end method

.method public getPromotionPrices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingGroup;->b:Ljava/util/List;

    return-object v0
.end method

.method public setPrice(Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingGroup;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    return-void
.end method

.method public setPromotionPrices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingGroup;->b:Ljava/util/List;

    return-void
.end method
