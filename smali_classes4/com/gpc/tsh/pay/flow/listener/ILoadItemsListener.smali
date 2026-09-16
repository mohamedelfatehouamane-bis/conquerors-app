.class public interface abstract Lcom/gpc/tsh/pay/flow/listener/ILoadItemsListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onPaymentItemsLoadFinished(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/operations/migrate/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCGameItem;",
            ">;)V"
        }
    .end annotation
.end method
