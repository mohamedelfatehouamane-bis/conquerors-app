.class public Lcom/gpc/ops/q$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier$GPCQueryTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/ops/q$g;->onAcknowledgeFinished(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/ops/q$g;


# direct methods
.method public constructor <init>(Lcom/gpc/ops/q$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/q$g$a;->a:Lcom/gpc/ops/q$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueriedFinish(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/operations/migrate/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;",
            ">;)V"
        }
    .end annotation

    const-string p1, "PurchaseProcessTask"

    if-eqz p2, :cond_2

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    .line 2
    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/ops/q$g$a;->a:Lcom/gpc/ops/q$g;

    iget-object v2, v2, Lcom/gpc/ops/q$g;->a:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    invoke-virtual {v2}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->isAcknowledged()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " process find orderId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", but not Acknowledged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/ops/q$g$a;->a:Lcom/gpc/ops/q$g;

    iget-object v2, v2, Lcom/gpc/ops/q$g;->a:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    invoke-virtual {v2}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->isAcknowledged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "process  paymentClientPurchase:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/gpc/ops/q$g$a;->a:Lcom/gpc/ops/q$g;

    iget-object p1, p1, Lcom/gpc/ops/q$g;->b:Lcom/gpc/ops/q$l;

    invoke-interface {p1, v0}, Lcom/gpc/ops/q$l;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    return-void

    .line 13
    :cond_2
    const-string p2, "purchases is null."

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/gpc/ops/q$g$a;->a:Lcom/gpc/ops/q$g;

    iget-object p1, p1, Lcom/gpc/ops/q$g;->b:Lcom/gpc/ops/q$l;

    invoke-interface {p1}, Lcom/gpc/ops/q$l;->a()V

    return-void
.end method
