.class public interface abstract Lcom/gpc/sdk/payment/external/ExPaymentService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract antiAddiction(Ljava/lang/String;ILjava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/GPCPaymentAntiAddictionResultListener;)V
.end method

.method public abstract getAlipayOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/PaymentOrdersNoListener;)V
.end method

.method public abstract getApprovalAppNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/ApprovalAppNotifyListener;)V
.end method

.method public abstract getWeChatOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/PaymentAdvanceOrderDataListener;)V
.end method

.method public abstract loadItemsAndUserLimit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/gpc/sdk/payment/listener/PaymentItemsAndUserLimitListener;)V
.end method

.method public abstract requestLimitState(Ljava/lang/String;Ljava/lang/String;IIFLjava/lang/String;Lcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;)V
.end method

.method public abstract requestLimitState(Ljava/lang/String;Ljava/lang/String;ILcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/PaymentLimitStateWithPriorityListener;)V
.end method
