.class public interface abstract Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GPCPaymentCardsLoadedListener"
.end annotation


# virtual methods
.method public abstract onPaymentCardsLoaded(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;)V
.end method

.method public abstract onPaymentCardsLoadedWithCache(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;)V
.end method
