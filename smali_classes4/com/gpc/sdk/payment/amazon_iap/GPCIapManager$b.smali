.class public Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/service/listener/SubmittalAmazonOfPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->handleConsumablePurchase(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/amazon/device/iap/model/Receipt;

.field public final synthetic b:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;Lcom/amazon/device/iap/model/Receipt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$b;->b:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;

    iput-object p2, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$b;->a:Lcom/amazon/device/iap/model/Receipt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchaseSubmittalFinished(ZZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    const-string p1, "------------PurchasingService.notifyFulfillment-----------------."

    const-string p2, "GPCLapManager"

    invoke-static {p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$b;->a:Lcom/amazon/device/iap/model/Receipt;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/amazon/device/iap/model/FulfillmentResult;->FULFILLED:Lcom/amazon/device/iap/model/FulfillmentResult;

    invoke-static {p1, p3}, Lcom/amazon/device/iap/PurchasingService;->notifyFulfillment(Ljava/lang/String;Lcom/amazon/device/iap/model/FulfillmentResult;)V

    .line 4
    const-string p1, "purchase success."

    invoke-static {p2, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$b;->b:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;

    invoke-static {p1}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->c(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;)Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseListener;

    move-result-object p1

    iget-object p2, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$b;->a:Lcom/amazon/device/iap/model/Receipt;

    invoke-interface {p1, p2}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseListener;->onGPCPurchaseFinished(Lcom/amazon/device/iap/model/Receipt;)V

    return-void

    .line 6
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$b;->b:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;

    invoke-static {p3}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->c(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;)Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseListener;

    move-result-object p3

    sget-object v0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseFailureType;->GPC_GATEWAY:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseFailureType;

    iget-object v1, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$b;->a:Lcom/amazon/device/iap/model/Receipt;

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseListener;->onGPCPurchaseFailed(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseFailureType;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 10
    iget-object p1, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$b;->a:Lcom/amazon/device/iap/model/Receipt;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/amazon/device/iap/model/FulfillmentResult;->FULFILLED:Lcom/amazon/device/iap/model/FulfillmentResult;

    invoke-static {p1, p2}, Lcom/amazon/device/iap/PurchasingService;->notifyFulfillment(Ljava/lang/String;Lcom/amazon/device/iap/model/FulfillmentResult;)V

    :cond_2
    return-void
.end method
