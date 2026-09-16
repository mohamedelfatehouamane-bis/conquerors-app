.class public Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;
    }
.end annotation


# static fields
.field public static final GPCPricingContractModeGeneral:I = 0x0

.field public static final GPCPricingContractModeMultipleDiscount:I = 0x3

.field public static final GPCPricingContractModeSingleDisount:I = 0x2

.field public static final GPCPricingContractModeTrial:I = 0x1

.field public static final GPCPricingContractPeriodUnitDay:I = 0x0

.field public static final GPCPricingContractPeriodUnitMonth:I = 0x2

.field public static final GPCPricingContractPeriodUnitWeek:I = 0x1

.field public static final GPCPricingContractPeriodUnitYear:I = 0x3

.field public static final k:Ljava/lang/String; = "GPCGameItemPricingContract"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/lang/String;

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->d:Ljava/util/List;

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/util/List;Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;)Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;",
            ")",
            "Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;"
        }
    .end annotation

    const-string v0, "GPCGameItemPricingContract"

    const-string v1, "BillingPeriod parse unknown "

    const-string v2, "BillingPeriod parse error "

    .line 1
    new-instance v3, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    invoke-direct {v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;-><init>()V

    .line 2
    invoke-virtual {v3, p0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->setOfferToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v3, p1}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->setPromotionTags(Ljava/util/List;)V

    .line 4
    invoke-virtual {p2}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getPrice()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->setPrice(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getPriceAmountMicros()J

    move-result-wide p0

    invoke-virtual {v3, p0, p1}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->setPriceAmountMicros(J)V

    .line 6
    invoke-virtual {p2}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getCurrencyCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->setCurrencyCode(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getBillingPeriod()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->setOriginalBillingPeriod(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getBillingCycleCount()I

    move-result p0

    invoke-virtual {v3, p0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->setNumberOfPeriods(I)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 11
    :try_start_0
    invoke-virtual {p2}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getBillingPeriod()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;->parse(Ljava/lang/CharSequence;)Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 13
    invoke-static {v6}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;->a(Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {v3, p0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->setUnit(I)V

    .line 15
    invoke-static {v6}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;->a(Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->setNumberOfUnits(I)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {v6}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;->b(Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    invoke-virtual {v3, v4}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->setUnit(I)V

    .line 18
    invoke-static {v6}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;->b(Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->setNumberOfUnits(I)V

    goto :goto_0

    .line 19
    :cond_1
    invoke-static {v6}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;->c(Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 20
    invoke-virtual {v3, v5}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->setUnit(I)V

    .line 21
    invoke-static {v6}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;->c(Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->setNumberOfUnits(I)V

    goto :goto_0

    .line 22
    :cond_2
    invoke-static {v6}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;->d(Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 23
    invoke-virtual {v3, p1}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->setUnit(I)V

    .line 24
    invoke-static {v6}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;->d(Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->setNumberOfUnits(I)V

    goto :goto_0

    .line 26
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getBillingPeriod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getBillingPeriod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 33
    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, -0x1

    .line 34
    invoke-virtual {v3, v1}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->setNumberOfUnits(I)V

    .line 38
    :goto_0
    invoke-virtual {p2}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getRecurrenceMode()I

    move-result v1

    if-ne v5, v1, :cond_5

    .line 40
    invoke-virtual {v3, p1}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->setContractMode(I)V

    goto :goto_1

    .line 41
    :cond_5
    invoke-virtual {p2}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getRecurrenceMode()I

    move-result p1

    const-string v1, "ContractMode error mode: "

    if-ne v4, p1, :cond_9

    .line 43
    invoke-virtual {p2}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getPriceAmountMicros()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long p1, v8, v6

    if-nez p1, :cond_6

    .line 45
    invoke-virtual {v3, v5}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->setContractMode(I)V

    goto :goto_1

    .line 46
    :cond_6
    invoke-virtual {p2}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getBillingCycleCount()I

    move-result p1

    if-ge v5, p1, :cond_7

    .line 48
    invoke-virtual {v3, p0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->setContractMode(I)V

    goto :goto_1

    .line 49
    :cond_7
    invoke-virtual {p2}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getBillingCycleCount()I

    move-result p0

    if-ne v5, p0, :cond_8

    .line 51
    invoke-virtual {v3, v4}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->setContractMode(I)V

    goto :goto_1

    .line 54
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getRecurrenceMode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", CycleCount:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getBillingCycleCount()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 58
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->getRecurrenceMode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v3
.end method


# virtual methods
.method public createGameItemPriceProxy()Lcom/gpc/sdk/payment/bean/price/GameItemPriceProxy;
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$a;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$a;-><init>(Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;)V

    return-object v0
.end method

.method public getContractMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->j:I

    return v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfPeriods()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->f:I

    return v0
.end method

.method public getNumberOfUnits()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->g:I

    return v0
.end method

.method public getOfferToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalBillingPeriod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceAmountMicros()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->b:J

    return-wide v0
.end method

.method public getPromotionTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->d:Ljava/util/List;

    return-object v0
.end method

.method public getUnit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->h:I

    return v0
.end method

.method public setContractMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->j:I

    return-void
.end method

.method public setCurrencyCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->e:Ljava/lang/String;

    return-void
.end method

.method public setNumberOfPeriods(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->f:I

    return-void
.end method

.method public setNumberOfUnits(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->g:I

    return-void
.end method

.method public setOfferToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->c:Ljava/lang/String;

    return-void
.end method

.method public setOriginalBillingPeriod(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->i:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->a:Ljava/lang/String;

    return-void
.end method

.method public setPriceAmountMicros(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->b:J

    return-void
.end method

.method public setPromotionTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->d:Ljava/util/List;

    return-void
.end method

.method public setUnit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->h:I

    return-void
.end method
