.class public Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->getPurchaseInfoById(Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;

.field public final synthetic c:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$b;->c:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$b;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lru/rustore/sdk/pay/RuStorePayClient;->Companion:Lru/rustore/sdk/pay/RuStorePayClient$Companion;

    invoke-virtual {v0}, Lru/rustore/sdk/pay/RuStorePayClient$Companion;->getInstance()Lru/rustore/sdk/pay/RuStorePayClient;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lru/rustore/sdk/pay/RuStorePayClient;->getPurchaseInteractor()Lru/rustore/sdk/pay/PurchaseInteractor;

    move-result-object v0

    new-instance v1, Lru/rustore/sdk/pay/model/PurchaseId;

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$b;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lru/rustore/sdk/pay/model/PurchaseId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lru/rustore/sdk/pay/PurchaseInteractor;->getPurchase(Lru/rustore/sdk/pay/model/PurchaseId;)Lru/rustore/sdk/core/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$b$b;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$b$b;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$b;)V

    .line 3
    invoke-virtual {v0, v1}, Lru/rustore/sdk/core/tasks/Task;->addOnSuccessListener(Lru/rustore/sdk/core/tasks/OnSuccessListener;)Lru/rustore/sdk/core/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$b$a;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$b$a;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$b;)V

    .line 12
    invoke-virtual {v0, v1}, Lru/rustore/sdk/core/tasks/Task;->addOnFailureListener(Lru/rustore/sdk/core/tasks/OnFailureListener;)Lru/rustore/sdk/core/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 22
    const-string v1, "RuStoreBillingManager"

    const-string v2, "queryPurchases(INAPP)!"

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$b;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const v2, 0xea5fb

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;->onQueryPurchasesFinished(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method
