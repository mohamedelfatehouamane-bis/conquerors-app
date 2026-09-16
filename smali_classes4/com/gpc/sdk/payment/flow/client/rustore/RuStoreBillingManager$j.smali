.class public Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->querySkuDetailsAsync(Ljava/util/List;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryProductsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryProductsListener;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryProductsListener;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;->c:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryProductsListener;

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;->c:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    invoke-static {v0}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->a(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryProductsListener;

    const v2, 0xea5ff

    const-string v3, "!mIsServiceConnected"

    invoke-interface {v0, v2, v3, v1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryProductsListener;->onQueryProductsFinished(ILjava/lang/String;Ljava/util/List;)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "RuStoreBillingManager"

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "querySkuDetailsAsync sku:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v4, Lru/rustore/sdk/pay/model/ProductId;

    invoke-direct {v4, v3}, Lru/rustore/sdk/pay/model/ProductId;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    :try_start_0
    sget-object v2, Lru/rustore/sdk/pay/RuStorePayClient;->Companion:Lru/rustore/sdk/pay/RuStorePayClient$Companion;

    invoke-virtual {v2}, Lru/rustore/sdk/pay/RuStorePayClient$Companion;->getInstance()Lru/rustore/sdk/pay/RuStorePayClient;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lru/rustore/sdk/pay/RuStorePayClient;->getUserInteractor()Lru/rustore/sdk/pay/UserInteractor;

    move-result-object v3

    invoke-virtual {v3}, Lru/rustore/sdk/pay/UserInteractor;->getUserAuthorizationStatus()Lru/rustore/sdk/core/tasks/Task;

    move-result-object v3

    new-instance v5, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b;

    invoke-direct {v5, p0, v2, v0}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;Lru/rustore/sdk/pay/RuStorePayClient;Ljava/util/List;)V

    .line 16
    invoke-virtual {v3, v5}, Lru/rustore/sdk/core/tasks/Task;->addOnSuccessListener(Lru/rustore/sdk/core/tasks/OnSuccessListener;)Lru/rustore/sdk/core/tasks/Task;

    move-result-object v0

    new-instance v2, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$a;

    invoke-direct {v2, p0}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$a;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;)V

    .line 47
    invoke-virtual {v0, v2}, Lru/rustore/sdk/core/tasks/Task;->addOnFailureListener(Lru/rustore/sdk/core/tasks/OnFailureListener;)Lru/rustore/sdk/core/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 56
    const-string v2, "querySkuDetailsAsync!"

    invoke-static {v4, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryProductsListener;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const v3, 0xea5fd

    invoke-interface {v2, v3, v0, v1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryProductsListener;->onQueryProductsFinished(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method
