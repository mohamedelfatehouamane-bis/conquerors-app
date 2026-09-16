.class public Lcom/gpc/ops/e$c;
.super Lcom/gpc/ops/e$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/ops/e;->querySkuDetails(Ljava/util/List;Ljava/util/List;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;

.field public final synthetic e:Lcom/gpc/ops/e;


# direct methods
.method public constructor <init>(Lcom/gpc/ops/e;Ljava/util/List;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/e$c;->e:Lcom/gpc/ops/e;

    iput-object p2, p0, Lcom/gpc/ops/e$c;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/gpc/ops/e$c;->d:Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/gpc/ops/e$f;-><init>(Lcom/gpc/ops/e;Lcom/gpc/ops/e$a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 14
    iget-object v0, p0, Lcom/gpc/ops/e$c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/gpc/ops/e$c;->d:Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;

    iget-object v0, p0, Lcom/gpc/ops/e$f;->a:Lcom/gpc/operations/migrate/error/GPCException;

    iget-object v1, p0, Lcom/gpc/ops/e$c;->c:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;Lcom/android/billingclient/api/BillingResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;",
            ">;",
            "Lcom/android/billingclient/api/BillingResult;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/e$f;->a:Lcom/gpc/operations/migrate/error/GPCException;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/error/GPCException;->isNone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-string v0, "220307"

    invoke-static {v0}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    iput-object p2, p0, Lcom/gpc/ops/e$f;->a:Lcom/gpc/operations/migrate/error/GPCException;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    iput-object p2, p0, Lcom/gpc/ops/e$f;->a:Lcom/gpc/operations/migrate/error/GPCException;

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/gpc/ops/e$c;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/gpc/ops/e$f;->a:Lcom/gpc/operations/migrate/error/GPCException;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/error/GPCException;->isNone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "220307"

    invoke-static {v0, p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    iput-object p2, p0, Lcom/gpc/ops/e$f;->a:Lcom/gpc/operations/migrate/error/GPCException;

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lcom/gpc/ops/e$c;->a(Ljava/util/List;)V

    return-void
.end method
