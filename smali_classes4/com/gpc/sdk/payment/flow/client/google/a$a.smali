.class public Lcom/gpc/sdk/payment/flow/client/google/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$QueryPurchasesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/google/a;->queryPurchases(Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/client/google/a;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/google/a;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/google/a$a;->b:Lcom/gpc/sdk/payment/flow/client/google/a;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/google/a$a;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryPurchasesFinished(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "onQueryPurchasesFinished"

    const-string v1, "GBPaymentClient"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onQueryPurchasesFinished size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/google/a$a;->b:Lcom/gpc/sdk/payment/flow/client/google/a;

    invoke-static {p1}, Lcom/gpc/sdk/payment/flow/client/google/a;->a(Lcom/gpc/sdk/payment/flow/client/google/a;)Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    const-string p1, "query SUBS queryPurchases"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/google/a$a;->b:Lcom/gpc/sdk/payment/flow/client/google/a;

    invoke-static {p1}, Lcom/gpc/sdk/payment/flow/client/google/a;->a(Lcom/gpc/sdk/payment/flow/client/google/a;)Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;

    move-result-object p1

    new-instance v1, Lcom/gpc/sdk/payment/flow/client/google/a$a$a;

    invoke-direct {v1, p0, v0}, Lcom/gpc/sdk/payment/flow/client/google/a$a$a;-><init>(Lcom/gpc/sdk/payment/flow/client/google/a$a;Ljava/util/List;)V

    const-string v0, "subs"

    invoke-virtual {p1, v0, v1}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a(Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$QueryPurchasesListener;)V

    return-void

    .line 21
    :cond_1
    const-string p1, "areSubscriptionsSupported falase"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/google/a$a;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;->onQueryPurchasesFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void
.end method
