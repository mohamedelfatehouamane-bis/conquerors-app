.class public interface abstract Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract OnGPCPurchaseFailedDueToThePendingPurchaseOfTheSameItem(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
.end method

.method public abstract onGPCPurchaseFailed(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
.end method

.method public abstract onGPCPurchaseFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/bean/GPCPaymentGatewayResult;)V
.end method

.method public abstract onGPCPurchasePreparingFinished(Lcom/gpc/sdk/error/GPCException;)V
.end method

.method public abstract onGPCPurchaseStartingFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V
.end method

.method public abstract onGPCPurchaseSuccessFromPlatfrom(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
.end method

.method public abstract onGPCSubscriptionShouldMakeRecurringPaymentsInstead(Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V
.end method
