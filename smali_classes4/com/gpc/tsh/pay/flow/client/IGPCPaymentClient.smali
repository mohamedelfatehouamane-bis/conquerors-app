.class public interface abstract Lcom/gpc/tsh/pay/flow/client/IGPCPaymentClient;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract acknowledgePurchase(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientAcknowledgePurchaseListener;)V
.end method

.method public abstract consume(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumePurchaseListener;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract init(Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientInitializeListener;)V
.end method

.method public abstract isAvailable(Ljava/lang/String;Z)Z
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)Z
.end method

.method public abstract purchaseFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientPurchasedListener;)V
.end method

.method public abstract queryPurchases(Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQueryPurchasesListener;)V
.end method

.method public abstract querySkuDetails(Ljava/util/List;Ljava/util/List;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;",
            ")V"
        }
    .end annotation
.end method
