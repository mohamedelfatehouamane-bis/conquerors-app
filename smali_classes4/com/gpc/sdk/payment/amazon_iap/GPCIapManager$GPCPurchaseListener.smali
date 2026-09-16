.class public interface abstract Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GPCPurchaseListener"
.end annotation


# virtual methods
.method public abstract onGPCGetPurchaseProuduct(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/iap/model/Product;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onGPCPurchaseFailed(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseFailureType;Ljava/lang/String;)V
.end method

.method public abstract onGPCPurchaseFinished(Lcom/amazon/device/iap/model/Receipt;)V
.end method

.method public abstract onGPCPurchasePreparingFailedFinished(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;Ljava/lang/String;)V
.end method
