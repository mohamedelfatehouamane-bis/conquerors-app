.class public interface abstract Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/GPCPayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GPCPurchaseListener"
.end annotation


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

.method public abstract onGPCSubscriptionShouldMakeRecurringPaymentsInstead(Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V
.end method
