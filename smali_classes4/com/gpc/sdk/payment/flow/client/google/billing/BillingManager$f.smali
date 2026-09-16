.class public Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a(Ljava/lang/String;Ljava/util/List;Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;

.field public final synthetic d:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;Ljava/util/List;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$f;->d:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$f;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$f;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$f;->c:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v3

    .line 4
    invoke-virtual {v3, v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$f;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v2

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$f;->d:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;

    invoke-static {v0}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->b(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object v1

    new-instance v2, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$f$a;

    invoke-direct {v2, p0}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$f$a;-><init>(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$f;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 28
    const-string v1, "BillingManager"

    const-string v2, "querySkuDetailsAsync!"

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    const/4 v1, 0x6

    .line 30
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    const-string v1, "querySkuDetailsAsync exception"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$f;->c:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;->onSkusResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
