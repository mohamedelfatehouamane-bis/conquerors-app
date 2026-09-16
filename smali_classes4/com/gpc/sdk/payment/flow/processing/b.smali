.class public Lcom/gpc/sdk/payment/flow/processing/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;


# static fields
.field public static final c:Ljava/lang/String; = "TransactionProcessor"


# instance fields
.field public a:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

.field public b:Lcom/gpc/sdk/payment/flow/processing/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/sdk/payment/flow/processing/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/gpc/sdk/payment/flow/processing/a;-><init>(Landroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;)V

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/b;->b:Lcom/gpc/sdk/payment/flow/processing/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/b;->b:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/processing/a;->a()V

    return-void
.end method

.method public final a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 3

    const-string v0, "TransactionProcessor"

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/processing/b;->b:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-virtual {v1, p1, p0}, Lcom/gpc/sdk/payment/flow/processing/a;->b(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    .line 6
    :cond_0
    const-string v1, "commit gateway purchase is null!"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 9
    :goto_0
    const-string v2, "commitPurchaseToGateway(Processor)"

    invoke-static {v0, v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    :goto_1
    sget-object v0, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;->Processor:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;

    invoke-virtual {p0, v0, p1}, Lcom/gpc/sdk/payment/flow/processing/b;->onCommitGatewayFail(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    return-void
.end method

.method public final a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V
    .locals 2

    const-string v0, "TransactionProcessor"

    if-eqz p1, :cond_0

    .line 13
    :try_start_0
    const-string v1, "purchaseProcessTask.excute commit gateway purchase"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/processing/b;->b:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-virtual {v1, p1, p2}, Lcom/gpc/sdk/payment/flow/processing/a;->b(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V

    return-void

    .line 17
    :cond_0
    const-string p1, "commit gateway purchase is null!"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    const-string v1, "commitPurchaseToGateway(Processor)"

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    :goto_0
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;->onFinish(Lcom/gpc/sdk/error/GPCException;Z)V

    return-void
.end method

.method public a(Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/b;->b:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/flow/processing/a;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V

    return-void
.end method

.method public a(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/b;->a:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    return-void
.end method

.method public b(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/processing/b;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    return-void
.end method

.method public b(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V
    .locals 2

    .line 2
    const-string v0, "TransactionProcessor"

    const-string v1, "processTransactionImmediately"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/processing/b;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V

    return-void
.end method

.method public onCommitGatewayFail(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/b;->a:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;->Processor:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;

    invoke-interface {p1, v0, p2}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onCommitGatewayFail(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    :cond_0
    return-void
.end method

.method public onCommitGatewaySuccess(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/b;->a:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;->Processor:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;

    invoke-interface {p1, v0, p2, p3, p4}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onCommitGatewaySuccess(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;)V

    :cond_0
    return-void
.end method

.method public onConsumeFail(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/b;->a:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;->Processor:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;

    invoke-interface {p1, v0, p2}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onConsumeFail(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    :cond_0
    return-void
.end method

.method public onConsumeSuccess(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/b;->a:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onConsumeSuccess(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    :cond_0
    return-void
.end method

.method public onReceivedQueryInventoryTaskInterval(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/b;->a:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onReceivedQueryInventoryTaskInterval(I)V

    :cond_0
    return-void
.end method

.method public onSubItemHasCommited()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/b;->a:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onSubItemHasCommited()V

    :cond_0
    return-void
.end method
