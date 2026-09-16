.class public Lcom/gpc/ops/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$QueryPurchasesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/ops/e$a;->onQueryPurchasesFinished(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/gpc/ops/e$a;


# direct methods
.method public constructor <init>(Lcom/gpc/ops/e$a;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/e$a$a;->b:Lcom/gpc/ops/e$a;

    iput-object p2, p0, Lcom/gpc/ops/e$a$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryPurchasesFinished(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onQueryPurchasesFinished SUBS size:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GBPaymentClient"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/ops/e$a$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/gpc/ops/e$a$a;->b:Lcom/gpc/ops/e$a;

    iget-object p1, p1, Lcom/gpc/ops/e$a;->a:Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQueryPurchasesListener;

    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/ops/e$a$a;->a:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQueryPurchasesListener;->onQueryPurchasesFinished(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V

    return-void
.end method
