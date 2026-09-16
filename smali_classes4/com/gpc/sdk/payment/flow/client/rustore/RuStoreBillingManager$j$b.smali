.class public Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lru/rustore/sdk/core/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;->run()V
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

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;Lru/rustore/sdk/pay/RuStorePayClient;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b;->c:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b;->a:Lru/rustore/sdk/pay/RuStorePayClient;

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lru/rustore/sdk/pay/model/UserAuthorizationStatus;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    sget-object v1, Lru/rustore/sdk/pay/model/UserAuthorizationStatus;->AUTHORIZED:Lru/rustore/sdk/pay/model/UserAuthorizationStatus;

    if-ne p1, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b;->a:Lru/rustore/sdk/pay/RuStorePayClient;

    invoke-virtual {p1}, Lru/rustore/sdk/pay/RuStorePayClient;->getProductInteractor()Lru/rustore/sdk/pay/ProductInteractor;

    move-result-object p1

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b;->b:Ljava/util/List;

    invoke-virtual {p1, v1}, Lru/rustore/sdk/pay/ProductInteractor;->getProducts(Ljava/util/List;)Lru/rustore/sdk/core/tasks/Task;

    move-result-object p1

    new-instance v1, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b$b;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b$b;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b;)V

    .line 4
    invoke-virtual {p1, v1}, Lru/rustore/sdk/core/tasks/Task;->addOnSuccessListener(Lru/rustore/sdk/core/tasks/OnSuccessListener;)Lru/rustore/sdk/core/tasks/Task;

    move-result-object p1

    new-instance v1, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b$a;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b$a;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b;)V

    .line 11
    invoke-virtual {p1, v1}, Lru/rustore/sdk/core/tasks/Task;->addOnFailureListener(Lru/rustore/sdk/core/tasks/OnFailureListener;)Lru/rustore/sdk/core/tasks/Task;

    return-void

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b;->c:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryProductsListener;

    const-string v1, ""

    const v2, 0xea5fe

    invoke-interface {p1, v2, v1, v0}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryProductsListener;->onQueryProductsFinished(ILjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 23
    const-string v1, "RuStoreBillingManager"

    const-string v2, "querySkuDetailsAsync!"

    invoke-static {v1, v2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b;->c:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;

    iget-object v1, v1, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryProductsListener;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const v2, 0xea5fd

    invoke-interface {v1, v2, p1, v0}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryProductsListener;->onQueryProductsFinished(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lru/rustore/sdk/pay/model/UserAuthorizationStatus;

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b;->a(Lru/rustore/sdk/pay/model/UserAuthorizationStatus;)V

    return-void
.end method
