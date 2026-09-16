.class public Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$e;


# direct methods
.method public constructor <init>(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$e$a;->a:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
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

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$e$a;->a:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$e;

    iget-object v0, v0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$e;->d:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    invoke-static {v0, p2}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$e$a;->a:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$e;

    iget-object v0, v0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$e;->c:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;

    invoke-interface {v0, p1, p2}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;->onSkusResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
