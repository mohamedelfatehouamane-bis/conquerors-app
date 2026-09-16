.class public Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e$a;->b:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkusResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 8
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

    const-string v1, "initiatePurchaseFlow-querySkuDetailsAsync:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e$a;->b:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e;

    iget-object v1, v0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e;->f:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e;->b:Ljava/lang/String;

    invoke-static {v1, p2, v0}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;Ljava/util/List;Ljava/lang/String;)Lcom/android/billingclient/api/ProductDetails;

    move-result-object v3

    if-nez v3, :cond_0

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e$a;->b:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e;

    iget-object v1, v0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e;->f:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e$a;->a:Ljava/util/List;

    new-instance v3, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e$a$a;

    invoke-direct {v3, p0, p2, p1}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e$a$a;-><init>(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e$a;Ljava/util/List;Lcom/android/billingclient/api/BillingResult;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a(Ljava/lang/String;Ljava/util/List;Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;)V

    return-void

    .line 12
    :cond_0
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e$a;->b:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e;

    iget-object v2, p2, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e;->f:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;

    iget-object v4, p2, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e;->b:Ljava/lang/String;

    iget-object v5, p2, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e;->d:Lcom/gpc/sdk/payment/flow/client/google/b;

    iget-object v6, p2, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e;->e:Ljava/lang/String;

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/google/b;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
