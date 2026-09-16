.class public interface abstract Lcom/gpc/tsh/pay/flow/listener/IRepaymentListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onGatewayFailed(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;)V
.end method

.method public abstract onRepaymentFailed(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;)V
.end method

.method public abstract onTransactionPurchaseFailed(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;)V
.end method

.method public abstract onTransactionPurchaseFinished(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;)V
.end method

.method public abstract onTransactionPurchasePurchased(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;)V
.end method

.method public abstract onTransactionPurchasePurchasing(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;)V
.end method
