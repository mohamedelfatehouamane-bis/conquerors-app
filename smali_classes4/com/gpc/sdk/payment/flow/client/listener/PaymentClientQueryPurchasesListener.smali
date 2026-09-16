.class public interface abstract Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onQueryPurchasesFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
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
