.class public interface abstract Lcom/gpc/sdk/payment/flow/listener/IGPCLoadItemsListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onPaymentItemsLoadFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;)V"
        }
    .end annotation
.end method
