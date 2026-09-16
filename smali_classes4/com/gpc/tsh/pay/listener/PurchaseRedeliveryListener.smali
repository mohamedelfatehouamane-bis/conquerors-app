.class public interface abstract Lcom/gpc/tsh/pay/listener/PurchaseRedeliveryListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onGPCPurchaseFailed(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
.end method

.method public abstract onGPCPurchaseFinished(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/bean/GPCPaymentGatewayResult;)V
.end method
