.class public Lcom/gpc/tsh/pay/Repayment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/listener/ILoadItemsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/tsh/pay/Repayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/gpc/tsh/pay/flow/listener/IQueryRepaymentProductsListener;

.field public b:Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;


# direct methods
.method public constructor <init>(Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;Lcom/gpc/tsh/pay/flow/listener/IQueryRepaymentProductsListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/tsh/pay/Repayment$a;->b:Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;

    .line 3
    iput-object p2, p0, Lcom/gpc/tsh/pay/Repayment$a;->a:Lcom/gpc/tsh/pay/flow/listener/IQueryRepaymentProductsListener;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/tsh/pay/Repayment$a;)Lcom/gpc/tsh/pay/flow/listener/IQueryRepaymentProductsListener;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/gpc/tsh/pay/Repayment$a;->a:Lcom/gpc/tsh/pay/flow/listener/IQueryRepaymentProductsListener;

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/tsh/pay/Repayment$a;Ljava/util/List;Ljava/util/List;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/gpc/tsh/pay/Repayment$a;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCGameItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCProduct;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/tsh/pay/bean/GPCGameItem;

    .line 12
    invoke-virtual {v1}, Lcom/gpc/tsh/pay/bean/GPCGameItem;->getCategory()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 13
    new-instance v2, Lcom/gpc/tsh/pay/bean/GPCProduct;

    invoke-direct {v2}, Lcom/gpc/tsh/pay/bean/GPCProduct;-><init>()V

    .line 14
    invoke-virtual {v1}, Lcom/gpc/tsh/pay/bean/GPCGameItem;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gpc/tsh/pay/bean/GPCProduct;->id:Ljava/lang/String;

    .line 15
    invoke-virtual {v1}, Lcom/gpc/tsh/pay/bean/GPCGameItem;->getPurchase()Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->getThirdPlatformOriginalCurrencyPrice()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gpc/tsh/pay/bean/GPCProduct;->price:Ljava/lang/String;

    .line 16
    const-string v3, ""

    iput-object v3, v2, Lcom/gpc/tsh/pay/bean/GPCProduct;->currencySymbol:Ljava/lang/String;

    .line 17
    invoke-virtual {v1}, Lcom/gpc/tsh/pay/bean/GPCGameItem;->getPurchase()Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->getThirdPlatformPriceCurrencyCode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gpc/tsh/pay/bean/GPCProduct;->currencyCode:Ljava/lang/String;

    .line 18
    invoke-virtual {v1}, Lcom/gpc/tsh/pay/bean/GPCGameItem;->getPurchase()Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/tsh/pay/bean/GPCGameItemPurchase;->getGooglePlayPriceAmountMicros()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/gpc/tsh/pay/bean/GPCProduct;->priceAmountMicros:J

    .line 19
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;",
            ">;",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCProduct;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/tsh/pay/bean/GPCProduct;

    .line 6
    iget-object v2, v2, Lcom/gpc/tsh/pay/bean/GPCProduct;->id:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    const-string p1, "Repayment"

    const-string p2, "find a order with same order id from orders."

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCGameItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/tsh/pay/Repayment$a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/gpc/tsh/pay/Repayment$a;->a:Lcom/gpc/tsh/pay/flow/listener/IQueryRepaymentProductsListener;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/gpc/tsh/pay/Repayment$a;->b:Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;

    new-instance v1, Lcom/gpc/tsh/pay/Repayment$a$a;

    invoke-direct {v1, p0, p1}, Lcom/gpc/tsh/pay/Repayment$a$a;-><init>(Lcom/gpc/tsh/pay/Repayment$a;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;->a(Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier$GPCQueryTransactionListener;)V

    :cond_0
    return-void
.end method

.method public onPaymentItemsLoadFinished(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/operations/migrate/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCGameItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "Repayment"

    const-string v1, "onPaymentItemsLoadFinished"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p2, p0, Lcom/gpc/tsh/pay/Repayment$a;->a:Lcom/gpc/tsh/pay/flow/listener/IQueryRepaymentProductsListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Lcom/gpc/tsh/pay/flow/listener/IQueryRepaymentProductsListener;->onQueried(Lcom/gpc/operations/migrate/error/GPCException;ZLjava/util/List;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, p2}, Lcom/gpc/tsh/pay/Repayment$a;->b(Ljava/util/List;)V

    return-void
.end method
