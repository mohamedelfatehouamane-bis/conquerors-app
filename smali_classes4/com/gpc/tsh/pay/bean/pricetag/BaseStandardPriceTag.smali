.class public abstract Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/bean/GPCGameItemPriceTag;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseStandardPriceTag"


# instance fields
.field protected itemId:I

.field protected locale:Ljava/util/Locale;

.field protected paymentLocalize:Lcom/gpc/tsh/pay/utils/PaymentLocalize;

.field protected standardPrice:Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;


# direct methods
.method public constructor <init>(ILcom/gpc/tsh/pay/bean/price/BaseStandardPrice;Lcom/gpc/tsh/pay/utils/PaymentLocalize;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->locale:Ljava/util/Locale;

    .line 6
    iput p1, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->itemId:I

    .line 7
    iput-object p2, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->standardPrice:Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;

    .line 8
    iput-object p3, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->paymentLocalize:Lcom/gpc/tsh/pay/utils/PaymentLocalize;

    return-void
.end method

.method public static create(ILcom/gpc/tsh/pay/bean/price/BaseStandardPrice;Lcom/gpc/tsh/pay/utils/PaymentLocalize;Lcom/gpc/tsh/pay/GameItemPriceSource;)Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/tsh/pay/GameItemPriceSource;->GPCGameItemPriceSourceCache:Lcom/gpc/tsh/pay/GameItemPriceSource;

    if-ne v0, p3, :cond_0

    .line 2
    new-instance p3, Lcom/gpc/tsh/pay/bean/pricetag/StandardPriceTagCache;

    invoke-direct {p3, p0, p1, p2}, Lcom/gpc/tsh/pay/bean/pricetag/StandardPriceTagCache;-><init>(ILcom/gpc/tsh/pay/bean/price/BaseStandardPrice;Lcom/gpc/tsh/pay/utils/PaymentLocalize;)V

    return-object p3

    .line 3
    :cond_0
    sget-object v0, Lcom/gpc/tsh/pay/GameItemPriceSource;->GPCGameItemPriceSourceRealTime:Lcom/gpc/tsh/pay/GameItemPriceSource;

    if-ne v0, p3, :cond_1

    .line 4
    new-instance p3, Lcom/gpc/tsh/pay/bean/pricetag/StandardPriceTag;

    invoke-direct {p3, p0, p1, p2}, Lcom/gpc/tsh/pay/bean/pricetag/StandardPriceTag;-><init>(ILcom/gpc/tsh/pay/bean/price/BaseStandardPrice;Lcom/gpc/tsh/pay/utils/PaymentLocalize;)V

    return-object p3

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "BaseStandardPriceTag"

    invoke-static {v0, p3}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p3, Lcom/gpc/tsh/pay/bean/pricetag/StandardPriceTagCache;

    invoke-direct {p3, p0, p1, p2}, Lcom/gpc/tsh/pay/bean/pricetag/StandardPriceTagCache;-><init>(ILcom/gpc/tsh/pay/bean/price/BaseStandardPrice;Lcom/gpc/tsh/pay/utils/PaymentLocalize;)V

    return-object p3
.end method


# virtual methods
.method public getOriginalPriceText()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->standardPrice:Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;

    const-string v1, "BaseStandardPriceTag"

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->itemId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " standardPrice is null."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->paymentLocalize:Lcom/gpc/tsh/pay/utils/PaymentLocalize;

    invoke-interface {v0}, Lcom/gpc/tsh/pay/utils/PaymentLocalize;->getGameItemDefaultPriceTagText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->itemId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " standardPrice isAvailable false."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->paymentLocalize:Lcom/gpc/tsh/pay/utils/PaymentLocalize;

    invoke-interface {v0}, Lcom/gpc/tsh/pay/utils/PaymentLocalize;->getGameItemDefaultPriceTagText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->standardPrice:Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;->getCurrency()Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->itemId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " standardPrice.getCurrency() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string v2, "CNY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "RMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    .line 16
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v2

    .line 17
    iget-object v3, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->locale:Ljava/util/Locale;

    if-eqz v3, :cond_3

    .line 18
    invoke-static {v3}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    .line 20
    :cond_3
    invoke-virtual {v2, v0}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    .line 21
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->standardPrice:Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;->getOriginalAmount()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "itemId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->itemId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/gpc/operations/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->paymentLocalize:Lcom/gpc/tsh/pay/utils/PaymentLocalize;

    invoke-interface {v0}, Lcom/gpc/tsh/pay/utils/PaymentLocalize;->getGameItemDefaultPriceTagText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 25
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->standardPrice:Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;

    invoke-virtual {v1}, Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;->getOriginalAmount()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " \u5143"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->standardPrice:Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;

    const-string v1, "BaseStandardPriceTag"

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->itemId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " standardPrice is null."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->paymentLocalize:Lcom/gpc/tsh/pay/utils/PaymentLocalize;

    invoke-interface {v0}, Lcom/gpc/tsh/pay/utils/PaymentLocalize;->getGameItemDefaultPriceTagText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->itemId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " standardPrice isAvailable false."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->paymentLocalize:Lcom/gpc/tsh/pay/utils/PaymentLocalize;

    invoke-interface {v0}, Lcom/gpc/tsh/pay/utils/PaymentLocalize;->getGameItemDefaultPriceTagText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->standardPrice:Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;->getCurrency()Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->itemId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " standardPrice.getCurrency() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string v2, "CNY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "RMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    iget-object v2, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->standardPrice:Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;

    invoke-virtual {v2}, Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;->getAmount()D

    move-result-wide v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_3

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->itemId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " standardPrice getAmount() is undefine currency."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->paymentLocalize:Lcom/gpc/tsh/pay/utils/PaymentLocalize;

    invoke-interface {v0}, Lcom/gpc/tsh/pay/utils/PaymentLocalize;->getGameItemDefaultPriceTagText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 20
    :cond_3
    :try_start_0
    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    .line 21
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v4

    .line 22
    iget-object v5, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->locale:Ljava/util/Locale;

    if-eqz v5, :cond_4

    .line 23
    invoke-static {v5}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    .line 25
    :cond_4
    invoke-virtual {v4, v0}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    .line 26
    invoke-virtual {v4, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "itemId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->itemId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/gpc/operations/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->paymentLocalize:Lcom/gpc/tsh/pay/utils/PaymentLocalize;

    invoke-interface {v0}, Lcom/gpc/tsh/pay/utils/PaymentLocalize;->getGameItemDefaultPriceTagText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->standardPrice:Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;

    invoke-virtual {v1}, Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;->getAmount()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " \u5143"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDiscounted()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->standardPrice:Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;->getAmount()D

    move-result-wide v2

    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->standardPrice:Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;->getOriginalAmount()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/pricetag/BaseStandardPriceTag;->locale:Ljava/util/Locale;

    return-void
.end method
