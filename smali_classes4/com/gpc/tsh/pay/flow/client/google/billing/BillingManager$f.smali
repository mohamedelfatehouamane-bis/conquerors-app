.class public Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Ljava/lang/String;Ljava/util/List;Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$ProductsDetailsResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$ProductsDetailsResponseListener;

.field public final synthetic c:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;


# direct methods
.method public constructor <init>(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Ljava/lang/String;Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$ProductsDetailsResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$f;->c:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    iput-object p2, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$f;->b:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$ProductsDetailsResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkusResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$f;->c:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    iget-object v1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$f;->a:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$f;->b:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$ProductsDetailsResponseListener;

    invoke-interface {v0, p1, p2}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$ProductsDetailsResponseListener;->onProductsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$f;->b:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$ProductsDetailsResponseListener;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$ProductsDetailsResponseListener;->onProductsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
