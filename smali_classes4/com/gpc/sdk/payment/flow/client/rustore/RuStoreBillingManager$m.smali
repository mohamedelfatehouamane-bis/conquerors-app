.class public Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->queryPurchases(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const-string v0, "RuStoreBillingManager"

    :try_start_0
    const-string v1, "queryPurchases"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lru/rustore/sdk/pay/RuStorePayClient;->Companion:Lru/rustore/sdk/pay/RuStorePayClient$Companion;

    invoke-virtual {v1}, Lru/rustore/sdk/pay/RuStorePayClient$Companion;->getInstance()Lru/rustore/sdk/pay/RuStorePayClient;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lru/rustore/sdk/pay/RuStorePayClient;->getUserInteractor()Lru/rustore/sdk/pay/UserInteractor;

    move-result-object v2

    invoke-virtual {v2}, Lru/rustore/sdk/pay/UserInteractor;->getUserAuthorizationStatus()Lru/rustore/sdk/core/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m$b;

    invoke-direct {v3, p0, v1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m$b;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m;Lru/rustore/sdk/pay/RuStorePayClient;)V

    .line 4
    invoke-virtual {v2, v3}, Lru/rustore/sdk/core/tasks/Task;->addOnSuccessListener(Lru/rustore/sdk/core/tasks/OnSuccessListener;)Lru/rustore/sdk/core/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m$a;

    invoke-direct {v2, p0}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m$a;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m;)V

    .line 34
    invoke-virtual {v1, v2}, Lru/rustore/sdk/core/tasks/Task;->addOnFailureListener(Lru/rustore/sdk/core/tasks/OnFailureListener;)Lru/rustore/sdk/core/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 42
    const-string v2, "queryPurchases(INAPP)!"

    invoke-static {v0, v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const v2, 0xea5f1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;->onQueryPurchasesFinished(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method
