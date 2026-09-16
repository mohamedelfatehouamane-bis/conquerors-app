.class public Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Ljava/lang/String;Ljava/util/List;Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;

.field public final synthetic d:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;


# direct methods
.method public constructor <init>(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Ljava/util/List;Ljava/lang/String;Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$e;->d:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    iput-object p2, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$e;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$e;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$e;->c:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$e;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$e;->d:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    invoke-static {v1}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->b(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v0

    new-instance v2, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$e$a;

    invoke-direct {v2, p0}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$e$a;-><init>(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$e;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 15
    const-string v1, "BillingManager"

    const-string v2, "querySkuDetailsAsync!"

    invoke-static {v1, v2, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    const/4 v1, 0x6

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    const-string v1, "querySkuDetailsAsync exception"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$e;->c:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;->onSkusResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
