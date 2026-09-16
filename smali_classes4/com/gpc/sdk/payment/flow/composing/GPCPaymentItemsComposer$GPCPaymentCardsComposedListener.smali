.class public interface abstract Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$GPCPaymentCardsComposedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GPCPaymentCardsComposedListener"
.end annotation


# virtual methods
.method public abstract onPaymentCardsComposed(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;",
            ">;)V"
        }
    .end annotation
.end method
