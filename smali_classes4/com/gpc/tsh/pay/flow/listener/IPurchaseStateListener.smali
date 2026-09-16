.class public interface abstract Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract OnGPCPurchaseFailedDueToThePendingPurchaseOfTheSameItem(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V
.end method

.method public abstract onGPCPurchaseFailed(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
.end method

.method public abstract onGPCPurchaseFinished(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/bean/GPCPaymentGatewayResult;)V
.end method

.method public abstract onGPCPurchasePreparingFinished(Lcom/gpc/operations/migrate/error/GPCException;)V
.end method

.method public abstract onGPCPurchaseStartingFinished(Lcom/gpc/operations/migrate/error/GPCException;)V
.end method

.method public abstract onGPCPurchaseSuccessFromPlatfrom(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
.end method

.method public abstract onGPCSubscriptionShouldMakeRecurringPaymentsInstead(Lcom/gpc/tsh/pay/bean/GPCGameItem;)V
.end method
