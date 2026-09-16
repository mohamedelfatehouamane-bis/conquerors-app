.class public interface abstract Lcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onPaymentLimitStateFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;",
            ">;)V"
        }
    .end annotation
.end method
