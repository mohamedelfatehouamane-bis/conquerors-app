.class public interface abstract Lcom/gpc/sdk/payment/listener/IGPCRepaymentListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onGatewayFailed(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;)V
.end method

.method public abstract onRepaymentFailed(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;)V
.end method

.method public abstract onTransactionPurchaseFailed(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;)V
.end method

.method public abstract onTransactionPurchaseFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;)V
.end method

.method public abstract onTransactionPurchasePurchased(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;)V
.end method

.method public abstract onTransactionPurchasePurchasing(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;)V
.end method
