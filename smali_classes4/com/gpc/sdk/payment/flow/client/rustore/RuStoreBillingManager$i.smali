.class public Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lru/rustore/sdk/core/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lru/rustore/sdk/pay/RuStorePayClient;

.field public final synthetic d:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;Ljava/lang/String;Ljava/lang/String;Lru/rustore/sdk/pay/RuStorePayClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;->d:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;->c:Lru/rustore/sdk/pay/RuStorePayClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lru/rustore/sdk/pay/model/UserAuthorizationStatus;)V
    .locals 9

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    sget-object v0, Lru/rustore/sdk/pay/model/UserAuthorizationStatus;->AUTHORIZED:Lru/rustore/sdk/pay/model/UserAuthorizationStatus;

    if-ne p1, v0, :cond_0

    .line 2
    new-instance v2, Lru/rustore/sdk/pay/model/ProductPurchaseParams;

    new-instance v3, Lru/rustore/sdk/pay/model/ProductId;

    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;->a:Ljava/lang/String;

    invoke-direct {v3, p1}, Lru/rustore/sdk/pay/model/ProductId;-><init>(Ljava/lang/String;)V

    new-instance v4, Lru/rustore/sdk/pay/model/Quantity;

    const/4 p1, 0x1

    invoke-direct {v4, p1}, Lru/rustore/sdk/pay/model/Quantity;-><init>(I)V

    new-instance v5, Lru/rustore/sdk/pay/model/OrderId;

    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;->b:Ljava/lang/String;

    invoke-direct {v5, p1}, Lru/rustore/sdk/pay/model/OrderId;-><init>(Ljava/lang/String;)V

    new-instance v6, Lru/rustore/sdk/pay/model/DeveloperPayload;

    const-string p1, ""

    invoke-direct {v6, p1}, Lru/rustore/sdk/pay/model/DeveloperPayload;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lru/rustore/sdk/pay/model/ProductPurchaseParams;-><init>(Lru/rustore/sdk/pay/model/ProductId;Lru/rustore/sdk/pay/model/Quantity;Lru/rustore/sdk/pay/model/OrderId;Lru/rustore/sdk/pay/model/DeveloperPayload;Lru/rustore/sdk/pay/model/AppUserId;Lru/rustore/sdk/pay/model/AppUserEmail;)V

    .line 5
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;->c:Lru/rustore/sdk/pay/RuStorePayClient;

    invoke-virtual {p1}, Lru/rustore/sdk/pay/RuStorePayClient;->getPurchaseInteractor()Lru/rustore/sdk/pay/PurchaseInteractor;

    move-result-object p1

    sget-object v0, Lru/rustore/sdk/pay/model/PreferredPurchaseType;->ONE_STEP:Lru/rustore/sdk/pay/model/PreferredPurchaseType;

    invoke-virtual {p1, v2, v0}, Lru/rustore/sdk/pay/PurchaseInteractor;->purchase(Lru/rustore/sdk/pay/model/ProductPurchaseParams;Lru/rustore/sdk/pay/model/PreferredPurchaseType;)Lru/rustore/sdk/core/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i$b;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i$b;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;)V

    .line 6
    invoke-virtual {p1, v0}, Lru/rustore/sdk/core/tasks/Task;->addOnSuccessListener(Lru/rustore/sdk/core/tasks/OnSuccessListener;)Lru/rustore/sdk/core/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i$a;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i$a;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;)V

    .line 13
    invoke-virtual {p1, v0}, Lru/rustore/sdk/core/tasks/Task;->addOnFailureListener(Lru/rustore/sdk/core/tasks/OnFailureListener;)Lru/rustore/sdk/core/tasks/Task;

    return-void

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;->d:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    const v0, 0xea5f6

    invoke-virtual {p1, v0, v1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->onPurchasesUpdated(ILru/rustore/sdk/pay/model/ProductPurchaseResult;)V

    .line 29
    sget-object p1, Lru/rustore/sdk/core/util/RuStoreUtils;->INSTANCE:Lru/rustore/sdk/core/util/RuStoreUtils;

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;->d:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    invoke-static {v0}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->c(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rustore/sdk/core/util/RuStoreUtils;->openRuStoreAuthorization(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 33
    const-string v0, "RuStoreBillingManager"

    const-string v2, "startPurchaseFlow Exception!"

    invoke-static {v0, v2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;->d:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    const v0, 0xea5f4

    invoke-virtual {p1, v0, v1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->onPurchasesUpdated(ILru/rustore/sdk/pay/model/ProductPurchaseResult;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lru/rustore/sdk/pay/model/UserAuthorizationStatus;

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;->a(Lru/rustore/sdk/pay/model/UserAuthorizationStatus;)V

    return-void
.end method
