.class public interface abstract Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQueryPurchasesListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onQueryPurchasesFinished(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/operations/migrate/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;",
            ">;)V"
        }
    .end annotation
.end method
