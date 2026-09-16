.class public interface abstract Lcom/gpc/sdk/payment/service/SubscriptionService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract checkSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/GPCCheckSubscriptionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/service/bean/GPCSubscriptionReceiptData;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/gpc/sdk/payment/service/listener/GPCCheckSubscriptionListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract isSubscriptionAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionAvailableListener;)V
.end method

.method public abstract notifySubscription(Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionNotifiedListener;)V
.end method
