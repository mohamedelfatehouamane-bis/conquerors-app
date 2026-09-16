.class public Lcom/gpc/ops/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;


# static fields
.field public static final c:Ljava/lang/String; = "TransactionProcessor"


# instance fields
.field public a:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

.field public b:Lcom/gpc/ops/q;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/ops/q;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/gpc/ops/q;-><init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/ops/t;->b:Lcom/gpc/ops/q;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/gpc/ops/t;->b:Lcom/gpc/ops/q;

    invoke-virtual {v0}, Lcom/gpc/ops/q;->a()V

    return-void
.end method

.method public final a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 3

    const-string v0, "TransactionProcessor"

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/gpc/ops/t;->b:Lcom/gpc/ops/q;

    invoke-virtual {v1, p1, p0}, Lcom/gpc/ops/q;->b(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    .line 6
    :cond_0
    const-string v1, "commit gateway purchase is null!"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 9
    :goto_0
    const-string v2, "commitPurchaseToGateway(Processor)"

    invoke-static {v0, v2, v1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    :goto_1
    sget-object v0, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;->Processor:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;

    invoke-virtual {p0, v0, p1}, Lcom/gpc/ops/t;->onCommitGatewayFail(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    return-void
.end method

.method public final a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V
    .locals 2

    const-string v0, "TransactionProcessor"

    if-eqz p1, :cond_0

    .line 13
    :try_start_0
    const-string v1, "purchaseProcessTask.excute commit gateway purchase"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/gpc/ops/t;->b:Lcom/gpc/ops/q;

    invoke-virtual {v1, p1, p2}, Lcom/gpc/ops/q;->b(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V

    return-void

    .line 17
    :cond_0
    const-string p1, "commit gateway purchase is null!"

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    const-string v1, "commitPurchaseToGateway(Processor)"

    invoke-static {v0, v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    :goto_0
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;->onFinish(Lcom/gpc/operations/migrate/error/GPCException;Z)V

    return-void
.end method

.method public a(Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/t;->b:Lcom/gpc/ops/q;

    invoke-virtual {v0, p1}, Lcom/gpc/ops/q;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;)V

    return-void
.end method

.method public a(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/gpc/ops/t;->a:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

    return-void
.end method

.method public b(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/ops/t;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    return-void
.end method

.method public b(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V
    .locals 2

    .line 2
    const-string v0, "TransactionProcessor"

    const-string v1, "processTransactionImmediately"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/gpc/ops/t;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V

    return-void
.end method

.method public onCommitGatewayFail(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/gpc/ops/t;->a:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;->Processor:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;

    invoke-interface {p1, v0, p2}, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;->onCommitGatewayFail(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    :cond_0
    return-void
.end method

.method public onCommitGatewaySuccess(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/tsh/pay/service/PaymentDeliveryState;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/gpc/ops/t;->a:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;->Processor:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;

    invoke-interface {p1, v0, p2, p3, p4}, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;->onCommitGatewaySuccess(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/tsh/pay/service/PaymentDeliveryState;)V

    :cond_0
    return-void
.end method

.method public onConsumeFail(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/gpc/ops/t;->a:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;->Processor:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;

    invoke-interface {p1, v0, p2}, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;->onConsumeFail(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    :cond_0
    return-void
.end method

.method public onConsumeSuccess(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/t;->a:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;->onConsumeSuccess(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    :cond_0
    return-void
.end method

.method public onReceivedQueryInventoryTaskInterval(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/t;->a:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;->onReceivedQueryInventoryTaskInterval(I)V

    :cond_0
    return-void
.end method

.method public onSubItemHasCommited()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/t;->a:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;->onSubItemHasCommited()V

    :cond_0
    return-void
.end method
