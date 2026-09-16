.class public interface abstract Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onPurchased(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;)V"
        }
    .end annotation
.end method
