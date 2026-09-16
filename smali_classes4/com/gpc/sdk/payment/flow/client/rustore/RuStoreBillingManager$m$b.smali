.class public Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lru/rustore/sdk/core/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lru/rustore/sdk/core/tasks/OnSuccessListener<",
        "Lru/rustore/sdk/pay/model/UserAuthorizationStatus;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lru/rustore/sdk/pay/RuStorePayClient;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m;Lru/rustore/sdk/pay/RuStorePayClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m$b;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m$b;->a:Lru/rustore/sdk/pay/RuStorePayClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lru/rustore/sdk/pay/model/UserAuthorizationStatus;)V
    .locals 4

    const-string v0, "RuStoreBillingManager"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    sget-object v2, Lru/rustore/sdk/pay/model/UserAuthorizationStatus;->AUTHORIZED:Lru/rustore/sdk/pay/model/UserAuthorizationStatus;

    if-ne p1, v2, :cond_0

    .line 2
    const-string p1, "paymentResult AUTHORIZED"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m$b;->a:Lru/rustore/sdk/pay/RuStorePayClient;

    invoke-virtual {p1}, Lru/rustore/sdk/pay/RuStorePayClient;->getPurchaseInteractor()Lru/rustore/sdk/pay/PurchaseInteractor;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lru/rustore/sdk/pay/PurchaseInteractor;->getPurchases(Lru/rustore/sdk/pay/model/ProductType;Lru/rustore/sdk/pay/model/PurchaseStatus;)Lru/rustore/sdk/core/tasks/Task;

    move-result-object p1

    new-instance v2, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m$b$b;

    invoke-direct {v2, p0}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m$b$b;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m$b;)V

    .line 4
    invoke-virtual {p1, v2}, Lru/rustore/sdk/core/tasks/Task;->addOnSuccessListener(Lru/rustore/sdk/core/tasks/OnSuccessListener;)Lru/rustore/sdk/core/tasks/Task;

    move-result-object p1

    new-instance v2, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m$b$a;

    invoke-direct {v2, p0}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m$b$a;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m$b;)V

    .line 10
    invoke-virtual {p1, v2}, Lru/rustore/sdk/core/tasks/Task;->addOnFailureListener(Lru/rustore/sdk/core/tasks/OnFailureListener;)Lru/rustore/sdk/core/tasks/Task;

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 17
    :cond_0
    const-string p1, "paymentResult unAuthorized"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m$b;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;

    const-string v2, "unAuthorized"

    const v3, 0xea5f2

    invoke-interface {p1, v3, v2, v1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;->onQueryPurchasesFinished(ILjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 22
    :goto_0
    const-string v2, "queryPurchases(INAPP)!"

    invoke-static {v0, v2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m$b;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const v2, 0xea5f0

    invoke-interface {v0, v2, p1, v1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;->onQueryPurchasesFinished(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lru/rustore/sdk/pay/model/UserAuthorizationStatus;

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m$b;->a(Lru/rustore/sdk/pay/model/UserAuthorizationStatus;)V

    return-void
.end method
