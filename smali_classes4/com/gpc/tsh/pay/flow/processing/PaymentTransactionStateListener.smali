.class public interface abstract Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onCommitGatewayFail(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
.end method

.method public abstract onCommitGatewaySuccess(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/tsh/pay/service/PaymentDeliveryState;)V
.end method

.method public abstract onConsumeFail(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
.end method

.method public abstract onConsumeSuccess(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
.end method

.method public abstract onReceivedQueryInventoryTaskInterval(I)V
.end method

.method public abstract onSubItemHasCommited()V
.end method
