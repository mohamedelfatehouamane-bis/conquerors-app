.class public interface abstract Lcom/gpc/sdk/payment/listener/GPCPurchaseRedeliveryListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onGPCPurchaseFailed(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
.end method

.method public abstract onGPCPurchaseFinished(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/bean/GPCPaymentGatewayResult;)V
.end method
