.class public Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$f;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$f$a;->a:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "querySkuDetailsAsync:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$f$a;->a:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$f;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$f;->d:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;

    invoke-static {v0, p2}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$f$a;->a:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$f;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$f;->c:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;->onSkusResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
