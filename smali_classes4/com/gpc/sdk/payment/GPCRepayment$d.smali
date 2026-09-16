.class public Lcom/gpc/sdk/payment/GPCRepayment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/listener/IGPCLoadItemsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/GPCRepayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Lcom/gpc/sdk/payment/listener/IQueryRepaymentProductsListener;

.field public b:Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

.field public c:Z

.field public d:Lcom/gpc/sdk/payment/GPCRepayment$e;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;Lcom/gpc/sdk/payment/GPCRepayment$e;Lcom/gpc/sdk/payment/listener/IQueryRepaymentProductsListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/gpc/sdk/payment/GPCRepayment$d;->c:Z

    .line 6
    iput-object p1, p0, Lcom/gpc/sdk/payment/GPCRepayment$d;->b:Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

    .line 7
    iput-object p3, p0, Lcom/gpc/sdk/payment/GPCRepayment$d;->a:Lcom/gpc/sdk/payment/listener/IQueryRepaymentProductsListener;

    .line 8
    iput-object p2, p0, Lcom/gpc/sdk/payment/GPCRepayment$d;->d:Lcom/gpc/sdk/payment/GPCRepayment$e;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/GPCRepayment$d;)Lcom/gpc/sdk/payment/listener/IQueryRepaymentProductsListener;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/gpc/sdk/payment/GPCRepayment$d;->a:Lcom/gpc/sdk/payment/listener/IQueryRepaymentProductsListener;

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/GPCRepayment$d;Ljava/util/List;Ljava/util/List;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/GPCRepayment$d;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCProduct;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCRepayment$d;->d:Lcom/gpc/sdk/payment/GPCRepayment$e;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/GPCRepayment$e;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCProduct;",
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

    check-cast v0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/payment/bean/GPCProduct;

    .line 6
    iget-object v2, v2, Lcom/gpc/sdk/payment/bean/GPCProduct;->id:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    const-string p1, "GPCRepayment"

    const-string p2, "find a order with same order id from orders."

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCProduct;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/payment/bean/GPCGameItem;

    .line 5
    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getCategory()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 6
    new-instance v2, Lcom/gpc/sdk/payment/bean/GPCProduct;

    invoke-direct {v2}, Lcom/gpc/sdk/payment/bean/GPCProduct;-><init>()V

    .line 7
    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gpc/sdk/payment/bean/GPCProduct;->id:Ljava/lang/String;

    .line 8
    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getPurchase()Lcom/gpc/sdk/payment/bean/GPCGameItemPurchase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPurchase;->getThirdPlatformOriginalCurrencyPrice()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gpc/sdk/payment/bean/GPCProduct;->price:Ljava/lang/String;

    .line 9
    const-string v3, ""

    iput-object v3, v2, Lcom/gpc/sdk/payment/bean/GPCProduct;->currencySymbol:Ljava/lang/String;

    .line 10
    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getPurchase()Lcom/gpc/sdk/payment/bean/GPCGameItemPurchase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPurchase;->getThirdPlatformPriceCurrencyCode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gpc/sdk/payment/bean/GPCProduct;->currencyCode:Ljava/lang/String;

    .line 11
    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getPurchase()Lcom/gpc/sdk/payment/bean/GPCGameItemPurchase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItemPurchase;->getGooglePlayPriceAmountMicros()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/gpc/sdk/payment/bean/GPCProduct;->priceAmountMicros:J

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/GPCRepayment$d;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/payment/GPCRepayment$d;->d:Lcom/gpc/sdk/payment/GPCRepayment$e;

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/GPCRepayment$e;->a()Ljava/util/List;

    move-result-object p1

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/gpc/sdk/payment/GPCRepayment$d;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCRepayment$d;->a:Lcom/gpc/sdk/payment/listener/IQueryRepaymentProductsListener;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/gpc/sdk/payment/GPCRepayment$d;->c:Z

    .line 10
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCRepayment$d;->b:Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

    new-instance v1, Lcom/gpc/sdk/payment/GPCRepayment$d$a;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/payment/GPCRepayment$d$a;-><init>(Lcom/gpc/sdk/payment/GPCRepayment$d;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;->a(Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier$GPCQueryTransactionListener;)V

    :cond_2
    return-void
.end method

.method public onPaymentItemsLoadFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p1, "GPCRepayment"

    const-string v0, "onPaymentItemsLoadFinished"

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/gpc/sdk/payment/GPCRepayment$d;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/GPCRepayment$d;->a(Ljava/util/List;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/gpc/sdk/payment/GPCRepayment$d;->c(Ljava/util/List;)V

    return-void
.end method
