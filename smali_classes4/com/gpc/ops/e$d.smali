.class public Lcom/gpc/ops/e$d;
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
.field public final synthetic c:Lcom/gpc/ops/e$f;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Lcom/gpc/ops/e;


# direct methods
.method public constructor <init>(Lcom/gpc/ops/e;Lcom/gpc/ops/e$f;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/e$d;->f:Lcom/gpc/ops/e;

    iput-object p2, p0, Lcom/gpc/ops/e$d;->c:Lcom/gpc/ops/e$f;

    iput-object p3, p0, Lcom/gpc/ops/e$d;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/gpc/ops/e$d;->e:Ljava/util/List;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/gpc/ops/e$f;-><init>(Lcom/gpc/ops/e;Lcom/gpc/ops/e$a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/gpc/ops/e$d;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/gpc/ops/e$d;->f:Lcom/gpc/ops/e;

    iget-object v0, p0, Lcom/gpc/ops/e$d;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/gpc/ops/e$d;->c:Lcom/gpc/ops/e$f;

    const-string v2, "subs"

    invoke-static {p1, v2, v0, v1}, Lcom/gpc/ops/e;->a(Lcom/gpc/ops/e;Ljava/lang/String;Ljava/util/List;Lcom/gpc/ops/e$f;)V

    return-void
.end method

.method public a(Ljava/util/List;Lcom/android/billingclient/api/BillingResult;)V
    .locals 4
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
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/ops/e$d;->c:Lcom/gpc/ops/e$f;

    const-string v1, "220307"

    invoke-static {v1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    iput-object p2, v0, Lcom/gpc/ops/e$f;->a:Lcom/gpc/operations/migrate/error/GPCException;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/gpc/ops/e$d;->c:Lcom/gpc/ops/e$f;

    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    iput-object v0, p2, Lcom/gpc/ops/e$f;->a:Lcom/gpc/operations/migrate/error/GPCException;

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lcom/gpc/ops/e$d;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 2
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

    .line 7
    iget-object v0, p0, Lcom/gpc/ops/e$d;->c:Lcom/gpc/ops/e$f;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "220307"

    invoke-static {v1, p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    iput-object p2, v0, Lcom/gpc/ops/e$f;->a:Lcom/gpc/operations/migrate/error/GPCException;

    .line 8
    invoke-virtual {p0, p1}, Lcom/gpc/ops/e$d;->a(Ljava/util/List;)V

    return-void
.end method
