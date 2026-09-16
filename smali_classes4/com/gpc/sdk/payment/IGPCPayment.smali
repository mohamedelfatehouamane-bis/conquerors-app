.class public interface abstract Lcom/gpc/sdk/payment/IGPCPayment;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract fraudPay(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getGameId()Ljava/lang/String;
.end method

.method public abstract getPaymentType()Lcom/gpc/sdk/GPCSDKConstant$PaymentType;
.end method

.method public abstract getUserID()Ljava/lang/String;
.end method

.method public abstract initialize(Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseListener;)V
.end method

.method public abstract initialize(Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseListener;)V
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)Z
.end method

.method public abstract onNewIntent(Landroid/content/Intent;)V
.end method

.method public abstract pay(Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V
.end method

.method public abstract setGameId(Ljava/lang/String;)V
.end method

.method public abstract setUserID(Ljava/lang/String;)V
.end method

.method public abstract subscribeTo(Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V
.end method

.method public abstract subscribeToDeprecated(Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V
.end method
