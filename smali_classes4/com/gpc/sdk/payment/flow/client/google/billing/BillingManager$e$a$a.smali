.class public Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e$a;->onSkusResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/android/billingclient/api/BillingResult;

.field public final synthetic c:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e$a;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e$a;Ljava/util/List;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e$a$a;->c:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e$a;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e$a$a;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e$a$a;->b:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkusResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 7
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
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e$a$a;->c:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e$a;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e$a;->b:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e;

    iget-object p2, p1, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e;->f:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e$a$a;->a:Ljava/util/List;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e;->b:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;Ljava/util/List;Ljava/lang/String;)Lcom/android/billingclient/api/ProductDetails;

    move-result-object v2

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e$a$a;->c:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e$a;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e$a;->b:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e;

    iget-object v1, p1, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e;->f:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;

    iget-object v3, p1, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e;->b:Ljava/lang/String;

    iget-object v4, p1, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e;->d:Lcom/gpc/sdk/payment/flow/client/google/b;

    iget-object v5, p1, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e$a$a;->b:Lcom/android/billingclient/api/BillingResult;

    invoke-static/range {v1 .. v6}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/google/b;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
