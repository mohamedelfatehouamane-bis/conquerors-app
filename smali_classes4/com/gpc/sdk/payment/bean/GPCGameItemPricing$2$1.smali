.class Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/bean/GPCGameItemPriceTag;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2;->getAvailableTagPriceTag()Lcom/gpc/sdk/payment/bean/GPCGameItemPriceTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2$1;->this$0:Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOriginalPriceText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2$1;->this$0:Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2;

    iget-object v0, v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    iget-object v0, v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->standardPriceTag:Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->getOriginalPriceText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2$1;->this$0:Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2;

    iget-object v0, v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    iget-object v0, v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->standardPriceTag:Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDiscounted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2$1;->this$0:Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2;

    iget-object v0, v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    iget-object v0, v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->standardPriceTag:Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->isDiscounted()Z

    move-result v0

    return v0
.end method

.method public source()Lcom/gpc/sdk/payment/GPCGameItemPriceSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2$1;->this$0:Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2;

    iget-object v0, v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing$2;->a:Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    iget-object v0, v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->standardPriceTag:Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;

    invoke-interface {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPriceTag;->source()Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    move-result-object v0

    return-object v0
.end method
