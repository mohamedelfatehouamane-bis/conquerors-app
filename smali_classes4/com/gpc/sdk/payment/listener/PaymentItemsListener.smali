.class public interface abstract Lcom/gpc/sdk/payment/listener/PaymentItemsListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onCompleteCacheData(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;)V"
        }
    .end annotation
.end method
