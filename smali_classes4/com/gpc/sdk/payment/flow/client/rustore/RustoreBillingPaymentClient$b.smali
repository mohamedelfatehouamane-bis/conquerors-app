.class public Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->queryPurchases(Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$b;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$b;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryPurchasesFinished(ILjava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lru/rustore/sdk/pay/model/Purchase;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$b;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$b;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;

    invoke-static {v0, p3}, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->a(Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;->onQueryPurchasesFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 3
    :cond_0
    iget-object p3, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$b;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, p1, v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p3, p1, v1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;->onQueryPurchasesFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void
.end method
