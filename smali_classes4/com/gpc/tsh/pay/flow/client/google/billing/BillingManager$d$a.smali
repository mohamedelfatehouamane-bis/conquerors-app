.class public Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;


# direct methods
.method public constructor <init>(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a;->b:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;

    iput-object p2, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkusResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 4
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

    const-string v1, "initiatePurchaseFlow-querySkuDetailsAsync:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingManager"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a;->b:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;

    iget-object v1, v0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;->e:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    iget-object v0, v0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;->b:Ljava/lang/String;

    invoke-static {v1, p2, v0}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Ljava/util/List;Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetails;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a;->b:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;

    iget-object v1, v0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;->e:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    iget-object v0, v0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a;->a:Ljava/util/List;

    new-instance v3, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a$a;

    invoke-direct {v3, p0, p2, p1}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a$a;-><init>(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a;Ljava/util/List;Lcom/android/billingclient/api/BillingResult;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Ljava/lang/String;Ljava/util/List;Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;)V

    return-void

    .line 12
    :cond_0
    iget-object p2, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a;->b:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;

    iget-object v1, p2, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;->e:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    iget-object v2, p2, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;->b:Ljava/lang/String;

    iget-object p2, p2, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;->d:Ljava/lang/String;

    invoke-static {v1, v0, v2, p2, p1}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
