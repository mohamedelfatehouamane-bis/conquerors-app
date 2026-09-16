.class public interface abstract Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$ProductsDetailsResponseListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProductsDetailsResponseListener"
.end annotation


# virtual methods
.method public abstract onProductsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;",
            ">;)V"
        }
    .end annotation
.end method
