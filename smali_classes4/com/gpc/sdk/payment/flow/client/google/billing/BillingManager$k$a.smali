.class public Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$k;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$k;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$k;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$k$a;->b:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$k;

    iput-wide p2, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$k$a;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "BillingManager"

    const-string v1, "Querying subscriptions result code: "

    const-string v2, "Querying purchases and subscriptions elapsed time: "

    .line 1
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$k$a;->a:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    .line 8
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    :cond_1
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$k$a;->b:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$k;

    iget-object v1, p2, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$k;->b:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$QueryPurchasesListener;

    iget-object v2, p2, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$k;->c:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;

    iget-object p2, p2, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$k;->a:Ljava/lang/String;

    invoke-static {v2, p2, p1}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->b(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$QueryPurchasesListener;->onQueryPurchasesFinished(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 13
    const-string p2, "queryPurchases(SUBS)!"

    invoke-static {v0, p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
