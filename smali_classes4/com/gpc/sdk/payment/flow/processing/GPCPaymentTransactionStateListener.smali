.class public interface abstract Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onCommitGatewayFail(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
.end method

.method public abstract onCommitGatewaySuccess(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;)V
.end method

.method public abstract onConsumeFail(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
.end method

.method public abstract onConsumeSuccess(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
.end method

.method public abstract onReceivedQueryInventoryTaskInterval(I)V
.end method

.method public abstract onSubItemHasCommited()V
.end method
