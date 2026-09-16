.class public Lcom/gpc/sdk/payment/flow/processing/a$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier$GPCQueryTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/processing/a$i;->onAcknowledgeFinished(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/processing/a$i;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/processing/a$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$i$a;->a:Lcom/gpc/sdk/payment/flow/processing/a$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueriedFinish(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "payment.purchase.ack.error"

    if-eqz p2, :cond_3

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 2
    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/gpc/sdk/payment/flow/processing/a$i$a;->a:Lcom/gpc/sdk/payment/flow/processing/a$i;

    iget-object v3, v3, Lcom/gpc/sdk/payment/flow/processing/a$i;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-virtual {v3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "PurchaseProcessTask"

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->isAcknowledged()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " process find orderId:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", but not Acknowledged"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/processing/a$i$a;->a:Lcom/gpc/sdk/payment/flow/processing/a$i;

    iget-object v2, v2, Lcom/gpc/sdk/payment/flow/processing/a$i;->c:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-static {v2}, Lcom/gpc/sdk/payment/flow/processing/a;->a(Lcom/gpc/sdk/payment/flow/processing/a;)Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    move-result-object v2

    iget-object v4, p0, Lcom/gpc/sdk/payment/flow/processing/a$i$a;->a:Lcom/gpc/sdk/payment/flow/processing/a$i;

    iget-object v4, v4, Lcom/gpc/sdk/payment/flow/processing/a$i;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[case-1] [exception] "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v4, v5}, Lcom/gpc/sdk/payment/utils/b;->a(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/processing/a$i$a;->a:Lcom/gpc/sdk/payment/flow/processing/a$i;

    iget-object v2, v2, Lcom/gpc/sdk/payment/flow/processing/a$i;->b:Lcom/gpc/sdk/payment/flow/processing/a$n;

    invoke-interface {v2}, Lcom/gpc/sdk/payment/flow/processing/a$n;->a()V

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/gpc/sdk/payment/flow/processing/a$i$a;->a:Lcom/gpc/sdk/payment/flow/processing/a$i;

    iget-object v4, v4, Lcom/gpc/sdk/payment/flow/processing/a$i;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-virtual {v4}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->isAcknowledged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "process  paymentClientPurchase:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOriginalJson()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$i$a;->a:Lcom/gpc/sdk/payment/flow/processing/a$i;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/processing/a$i;->c:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-static {p1}, Lcom/gpc/sdk/payment/flow/processing/a;->a(Lcom/gpc/sdk/payment/flow/processing/a;)Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    move-result-object p1

    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/processing/a$i$a;->a:Lcom/gpc/sdk/payment/flow/processing/a$i;

    iget-object p2, p2, Lcom/gpc/sdk/payment/flow/processing/a$i;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    const-string v0, "payment.purchase.ack.success"

    invoke-static {v0, p1, p2}, Lcom/gpc/sdk/payment/utils/b;->a(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    .line 11
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$i$a;->a:Lcom/gpc/sdk/payment/flow/processing/a$i;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/processing/a$i;->b:Lcom/gpc/sdk/payment/flow/processing/a$n;

    invoke-interface {p1, v1}, Lcom/gpc/sdk/payment/flow/processing/a$n;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    :cond_2
    return-void

    .line 16
    :cond_3
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/processing/a$i$a;->a:Lcom/gpc/sdk/payment/flow/processing/a$i;

    iget-object p2, p2, Lcom/gpc/sdk/payment/flow/processing/a$i;->c:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-static {p2}, Lcom/gpc/sdk/payment/flow/processing/a;->a(Lcom/gpc/sdk/payment/flow/processing/a;)Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    move-result-object p2

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/processing/a$i$a;->a:Lcom/gpc/sdk/payment/flow/processing/a$i;

    iget-object v1, v1, Lcom/gpc/sdk/payment/flow/processing/a$i;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[case-2] [exception] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, v1, p1}, Lcom/gpc/sdk/payment/utils/b;->a(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$i$a;->a:Lcom/gpc/sdk/payment/flow/processing/a$i;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/processing/a$i;->b:Lcom/gpc/sdk/payment/flow/processing/a$n;

    invoke-interface {p1}, Lcom/gpc/sdk/payment/flow/processing/a$n;->a()V

    return-void
.end method
