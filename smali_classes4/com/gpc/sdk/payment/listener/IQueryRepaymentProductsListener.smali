.class public interface abstract Lcom/gpc/sdk/payment/listener/IQueryRepaymentProductsListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onQueried(Lcom/gpc/sdk/error/GPCException;ZLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Z",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCProduct;",
            ">;)V"
        }
    .end annotation
.end method
