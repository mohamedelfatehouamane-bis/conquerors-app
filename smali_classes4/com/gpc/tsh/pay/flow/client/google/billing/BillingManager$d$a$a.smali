.class public Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a;->onSkusResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/android/billingclient/api/BillingResult;

.field public final synthetic c:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a;


# direct methods
.method public constructor <init>(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a;Ljava/util/List;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a$a;->c:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a;

    iput-object p2, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a$a;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a$a;->b:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkusResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3
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
    iget-object p1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a$a;->c:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a;

    iget-object p1, p1, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a;->b:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;

    iget-object p2, p1, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;->e:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a$a;->a:Ljava/util/List;

    iget-object p1, p1, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;->b:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Ljava/util/List;Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetails;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a$a;->c:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a;

    iget-object p2, p2, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a;->b:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;

    iget-object v0, p2, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;->e:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    iget-object v1, p2, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;->b:Ljava/lang/String;

    iget-object p2, p2, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a$a;->b:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v0, p1, v1, p2, v2}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
