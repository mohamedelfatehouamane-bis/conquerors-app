.class public abstract Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/bean/GPCGameItemPriceTag;


# static fields
.field public static final a:Ljava/lang/String; = "BaseStandardPriceTag"


# instance fields
.field protected itemId:I

.field protected locale:Ljava/util/Locale;

.field protected paymentLocalize:Lcom/gpc/sdk/payment/utils/PaymentLocalize;

.field protected standardPrice:Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;


# direct methods
.method public constructor <init>(ILcom/gpc/sdk/payment/bean/price/BaseStandardPrice;Lcom/gpc/sdk/payment/utils/PaymentLocalize;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->locale:Ljava/util/Locale;

    .line 6
    iput p1, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->itemId:I

    .line 7
    iput-object p2, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->standardPrice:Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;

    .line 8
    iput-object p3, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->paymentLocalize:Lcom/gpc/sdk/payment/utils/PaymentLocalize;

    return-void
.end method

.method public static a(ILcom/gpc/sdk/payment/bean/price/BaseStandardPrice;Lcom/gpc/sdk/payment/utils/PaymentLocalize;Lcom/gpc/sdk/payment/GPCGameItemPriceSource;)Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;
    .locals 2

    .line 2
    sget-object v0, Lcom/gpc/sdk/payment/GPCGameItemPriceSource;->GPCGameItemPriceSourceCache:Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    if-ne v0, p3, :cond_0

    .line 3
    new-instance p3, Lcom/gpc/sdk/payment/bean/pricetag/StandardPriceTagCache;

    invoke-direct {p3, p0, p1, p2}, Lcom/gpc/sdk/payment/bean/pricetag/StandardPriceTagCache;-><init>(ILcom/gpc/sdk/payment/bean/price/BaseStandardPrice;Lcom/gpc/sdk/payment/utils/PaymentLocalize;)V

    return-object p3

    .line 4
    :cond_0
    sget-object v0, Lcom/gpc/sdk/payment/GPCGameItemPriceSource;->GPCGameItemPriceSourceRealTime:Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    if-ne v0, p3, :cond_1

    .line 5
    new-instance p3, Lcom/gpc/sdk/payment/bean/pricetag/StandardPriceTag;

    invoke-direct {p3, p0, p1, p2}, Lcom/gpc/sdk/payment/bean/pricetag/StandardPriceTag;-><init>(ILcom/gpc/sdk/payment/bean/price/BaseStandardPrice;Lcom/gpc/sdk/payment/utils/PaymentLocalize;)V

    return-object p3

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "BaseStandardPriceTag"

    invoke-static {v0, p3}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance p3, Lcom/gpc/sdk/payment/bean/pricetag/StandardPriceTagCache;

    invoke-direct {p3, p0, p1, p2}, Lcom/gpc/sdk/payment/bean/pricetag/StandardPriceTagCache;-><init>(ILcom/gpc/sdk/payment/bean/price/BaseStandardPrice;Lcom/gpc/sdk/payment/utils/PaymentLocalize;)V

    return-object p3
.end method


# virtual methods
.method public a(Ljava/util/Locale;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->locale:Ljava/util/Locale;

    return-void
.end method

.method public getOriginalPriceText()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->standardPrice:Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;

    const-string v1, "BaseStandardPriceTag"

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->itemId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " standardPrice is null."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->paymentLocalize:Lcom/gpc/sdk/payment/utils/PaymentLocalize;

    invoke-interface {v0}, Lcom/gpc/sdk/payment/utils/PaymentLocalize;->getGameItemDefaultPriceTagText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->itemId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " standardPrice isAvailable false."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->paymentLocalize:Lcom/gpc/sdk/payment/utils/PaymentLocalize;

    invoke-interface {v0}, Lcom/gpc/sdk/payment/utils/PaymentLocalize;->getGameItemDefaultPriceTagText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->standardPrice:Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->getCurrency()Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->itemId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " standardPrice.getCurrency() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string v2, "CNY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "RMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 15
    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    .line 16
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v3

    .line 17
    iget-object v4, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->locale:Ljava/util/Locale;

    if-eqz v4, :cond_3

    .line 18
    invoke-static {v4}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    .line 19
    :cond_3
    const-string v4, "USD"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    goto :goto_0

    .line 22
    :cond_4
    :goto_1
    invoke-virtual {v3, v2}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    .line 23
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->standardPrice:Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->getOriginalAmount()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "itemId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->itemId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->paymentLocalize:Lcom/gpc/sdk/payment/utils/PaymentLocalize;

    invoke-interface {v0}, Lcom/gpc/sdk/payment/utils/PaymentLocalize;->getGameItemDefaultPriceTagText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 27
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->standardPrice:Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;

    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->getOriginalAmount()D

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
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->standardPrice:Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;

    const-string v1, "BaseStandardPriceTag"

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->itemId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " standardPrice is null."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->paymentLocalize:Lcom/gpc/sdk/payment/utils/PaymentLocalize;

    invoke-interface {v0}, Lcom/gpc/sdk/payment/utils/PaymentLocalize;->getGameItemDefaultPriceTagText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->itemId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " standardPrice isAvailable false."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->paymentLocalize:Lcom/gpc/sdk/payment/utils/PaymentLocalize;

    invoke-interface {v0}, Lcom/gpc/sdk/payment/utils/PaymentLocalize;->getGameItemDefaultPriceTagText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->standardPrice:Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->getCurrency()Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->itemId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " standardPrice.getCurrency() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string v2, "CNY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "RMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 14
    :cond_2
    iget-object v2, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->standardPrice:Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;

    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->getAmount()D

    move-result-wide v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_3

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->itemId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " standardPrice getAmount() is undefine currency."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->paymentLocalize:Lcom/gpc/sdk/payment/utils/PaymentLocalize;

    invoke-interface {v0}, Lcom/gpc/sdk/payment/utils/PaymentLocalize;->getGameItemDefaultPriceTagText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 20
    :cond_3
    :try_start_0
    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v4

    .line 21
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v5

    .line 22
    iget-object v6, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->locale:Ljava/util/Locale;

    if-eqz v6, :cond_4

    .line 23
    invoke-static {v6}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    :goto_0
    move-object v5, v0

    goto :goto_1

    .line 24
    :cond_4
    const-string v6, "USD"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    goto :goto_0

    .line 27
    :cond_5
    :goto_1
    invoke-virtual {v5, v4}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    .line 28
    invoke-virtual {v5, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "itemId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->itemId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->paymentLocalize:Lcom/gpc/sdk/payment/utils/PaymentLocalize;

    invoke-interface {v0}, Lcom/gpc/sdk/payment/utils/PaymentLocalize;->getGameItemDefaultPriceTagText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 32
    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->standardPrice:Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;

    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->getAmount()D

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
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->standardPrice:Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->getAmount()D

    move-result-wide v2

    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/pricetag/BaseStandardPriceTag;->standardPrice:Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->getOriginalAmount()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method
