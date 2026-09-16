.class public Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;,
        Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryProductsListener;,
        Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$ConsumePurchaseListener;,
        Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;
    }
.end annotation


# static fields
.field public static final BILLING_MANAGER_NOT_INITIALIZED:I = 0xea5ff

.field public static final CONFIRM_PURCHASE_FAIL_FOR_INVOKE_EXCEPTION:I = 0xea5f9

.field public static final CONFIRM_PURCHASE_FAIL_FOR_PLATFORM_API:I = 0xea5f8

.field public static final GET_USER_AUTHORIZATION_FAIL_FOR_INNER_EXEC_EXCEPTION:I = 0xea5f0

.field public static final GET_USER_AUTHORIZATION_FAIL_FOR_INVOKE_EXCEPTION:I = 0xea5f1

.field public static final GET_USER_AUTHORIZATION_FAIL_FOR_PLATFORM_API:I = 0xea5f3

.field public static final GET_USER_AUTHORIZATION_FAIL_FOR_PLATFORM_API_UNAUTHORIZED:I = 0xea5f2

.field public static final PURCHASE_FAIL_FOR_CANCEL:I = 0xea5f5

.field public static final PURCHASE_FAIL_FOR_EXCEPTION:I = 0xea5f4

.field public static final PURCHASE_FAIL_FOR_PLATFORM_API:I = 0xea5f7

.field public static final PURCHASE_FAIL_FOR_UNAUTH:I = 0xea5f6

.field public static final QUERY_PRODUCTS_FAIL_FOR_INVOKE_EXCEPTION:I = 0xea5fd

.field public static final QUERY_PRODUCTS_FAIL_FOR_PLATFORM_API:I = 0xea5fe

.field public static final QUERY_PURCHASES_FAIL_FOR_EXCUTE_QUERY_TASK_EXCEPTION:I = 0xea5fc

.field public static final QUERY_PURCHASES_FAIL_FOR_INVOKE_EXCEPTION:I = 0xea5fb

.field public static final QUERY_PURCHASES_FAIL_FOR_PLATFORM_API:I = 0xea5fa

.field public static final g:Ljava/lang/String; = "RuStoreBillingManager"


# instance fields
.field public a:Z

.field public final b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;

.field public c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public final e:Landroid/app/Activity;

.field public final f:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xea5ff

    .line 2
    iput v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->d:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->f:Z

    .line 31
    const-string v0, "RuStoreBillingManager"

    const-string v1, "Creating Billing client."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->e:Landroid/app/Activity;

    .line 33
    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;

    .line 34
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->initRuStoreBilling()V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->a:Z

    return p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->a:Z

    return p1
.end method

.method public static synthetic b(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;)Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;

    return-object p0
.end method

.method public static synthetic c(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->e:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic d(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->c:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rustore/sdk/pay/model/Purchase;",
            ">;)",
            "Ljava/util/List<",
            "Lru/rustore/sdk/pay/model/Purchase;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rustore/sdk/pay/model/Purchase;

    .line 101
    instance-of v2, v1, Lru/rustore/sdk/pay/model/ProductPurchase;

    if-eqz v2, :cond_1

    .line 102
    move-object v2, v1

    check-cast v2, Lru/rustore/sdk/pay/model/ProductPurchase;

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Status:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lru/rustore/sdk/pay/model/ProductPurchase;->getStatus()Lru/rustore/sdk/pay/model/ProductPurchaseStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RuStoreBillingManager"

    invoke-static {v4, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Lru/rustore/sdk/pay/model/ProductPurchase;->getStatus()Lru/rustore/sdk/pay/model/ProductPurchaseStatus;

    move-result-object v2

    sget-object v3, Lru/rustore/sdk/pay/model/ProductPurchaseStatus;->PAID:Lru/rustore/sdk/pay/model/ProductPurchaseStatus;

    if-ne v2, v3, :cond_0

    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_1
    instance-of v2, v1, Lru/rustore/sdk/pay/model/SubscriptionPurchase;

    if-eqz v2, :cond_0

    .line 108
    move-object v2, v1

    check-cast v2, Lru/rustore/sdk/pay/model/SubscriptionPurchase;

    .line 109
    invoke-virtual {v2}, Lru/rustore/sdk/pay/model/SubscriptionPurchase;->getStatus()Lru/rustore/sdk/pay/model/SubscriptionPurchaseStatus;

    move-result-object v2

    sget-object v3, Lru/rustore/sdk/pay/model/SubscriptionPurchaseStatus;->ACTIVE:Lru/rustore/sdk/pay/model/SubscriptionPurchaseStatus;

    if-ne v2, v3, :cond_0

    .line 110
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final a(Landroid/app/Activity;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;)V
    .locals 2

    .line 5
    const-string p1, "RuStoreBillingManager"

    :try_start_0
    const-string v0, "Starting setup."

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lru/rustore/sdk/pay/RuStorePayClient;->Companion:Lru/rustore/sdk/pay/RuStorePayClient$Companion;

    invoke-virtual {v0}, Lru/rustore/sdk/pay/RuStorePayClient$Companion;->getInstance()Lru/rustore/sdk/pay/RuStorePayClient;

    move-result-object v0

    invoke-virtual {v0}, Lru/rustore/sdk/pay/RuStorePayClient;->getPurchaseInteractor()Lru/rustore/sdk/pay/PurchaseInteractor;

    move-result-object v0

    invoke-virtual {v0}, Lru/rustore/sdk/pay/PurchaseInteractor;->getPurchaseAvailability()Lru/rustore/sdk/core/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$f;

    invoke-direct {v1, p0, p2}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$f;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;)V

    .line 7
    invoke-virtual {v0, v1}, Lru/rustore/sdk/core/tasks/Task;->addOnSuccessListener(Lru/rustore/sdk/core/tasks/OnSuccessListener;)Lru/rustore/sdk/core/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$e;

    invoke-direct {v1, p0, p2}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$e;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;)V

    .line 28
    invoke-virtual {v0, v1}, Lru/rustore/sdk/core/tasks/Task;->addOnFailureListener(Lru/rustore/sdk/core/tasks/OnFailureListener;)Lru/rustore/sdk/core/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 38
    const-string v1, "initRuStoreBilling Exception!"

    invoke-static {p1, v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->a:Z

    .line 40
    invoke-interface {p2}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;->onBillingClientSetupFail()V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 2

    .line 111
    iget-boolean v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->a:Z

    const-string v1, "RuStoreBillingManager"

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "executeServiceRequest mIsServiceConnected!"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 115
    :cond_0
    const-string v0, "executeServiceRequest !mIsServiceConnected"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, p1, p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->startServiceConnection(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "orderNumber:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "RuStoreBillingManager"

    invoke-static {p3, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :try_start_0
    sget-object p2, Lru/rustore/sdk/pay/RuStorePayClient;->Companion:Lru/rustore/sdk/pay/RuStorePayClient$Companion;

    invoke-virtual {p2}, Lru/rustore/sdk/pay/RuStorePayClient$Companion;->getInstance()Lru/rustore/sdk/pay/RuStorePayClient;

    move-result-object p2

    .line 44
    invoke-virtual {p2}, Lru/rustore/sdk/pay/RuStorePayClient;->getUserInteractor()Lru/rustore/sdk/pay/UserInteractor;

    move-result-object v0

    invoke-virtual {v0}, Lru/rustore/sdk/pay/UserInteractor;->getUserAuthorizationStatus()Lru/rustore/sdk/core/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;

    invoke-direct {v1, p0, p1, p4, p2}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;Ljava/lang/String;Ljava/lang/String;Lru/rustore/sdk/pay/RuStorePayClient;)V

    .line 45
    invoke-virtual {v0, v1}, Lru/rustore/sdk/core/tasks/Task;->addOnSuccessListener(Lru/rustore/sdk/core/tasks/OnSuccessListener;)Lru/rustore/sdk/core/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$h;

    invoke-direct {p2, p0}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$h;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;)V

    .line 87
    invoke-virtual {p1, p2}, Lru/rustore/sdk/core/tasks/Task;->addOnFailureListener(Lru/rustore/sdk/core/tasks/OnFailureListener;)Lru/rustore/sdk/core/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 96
    const-string p2, "startPurchaseFlow Exception!"

    invoke-static {p3, p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const p1, 0xea5f4

    const/4 p2, 0x0

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->onPurchasesUpdated(ILru/rustore/sdk/pay/model/ProductPurchaseResult;)V

    return-void
.end method

.method public consumeAsync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 18
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->c:Ljava/util/Set;

    const-string v0, "RuStoreBillingManager"

    if-nez p2, :cond_0

    .line 19
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->c:Ljava/util/Set;

    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 21
    const-string p1, "Token was already scheduled to be consumed - skipping..."

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 24
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->c:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "consumeAsync:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance p2, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$l;

    invoke-direct {p2, p0, p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$l;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public consumeAsync(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$ConsumePurchaseListener;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "consumeAsync other:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RuStoreBillingManager"

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p2, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$k;

    invoke-direct {p2, p0, p3, p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$k;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$ConsumePurchaseListener;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p2}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    const-string v0, "RuStoreBillingManager"

    const-string v1, "Destroying the manager."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->e:Landroid/app/Activity;

    return-object v0
.end method

.method public getPurchaseInfoById(Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$b;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;)V

    .line 33
    new-instance p1, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$c;

    invoke-direct {p1, p0, v0, p2}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$c;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;Ljava/lang/Runnable;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initRuStoreBilling()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->e:Landroid/app/Activity;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;

    invoke-virtual {p0, v0, v1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->a(Landroid/app/Activity;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;)V

    return-void
.end method

.method public initiatePurchaseFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$g;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$g;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, v0}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNewIntent\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RuStoreBillingManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v0, Lru/rustore/sdk/pay/RuStorePayClient;->Companion:Lru/rustore/sdk/pay/RuStorePayClient$Companion;

    invoke-virtual {v0}, Lru/rustore/sdk/pay/RuStorePayClient$Companion;->getInstance()Lru/rustore/sdk/pay/RuStorePayClient;

    move-result-object v0

    invoke-virtual {v0}, Lru/rustore/sdk/pay/RuStorePayClient;->getIntentInteractor()Lru/rustore/sdk/pay/IntentInteractor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/rustore/sdk/pay/IntentInteractor;->proceedIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    const-string v0, "onNewIntent Exception!"

    invoke-static {v1, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onPurchasesUpdated(ILru/rustore/sdk/pay/model/ProductPurchaseResult;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPurchasesUpdated:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RuStoreBillingManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;->onPurchasesUpdated(ILru/rustore/sdk/pay/model/ProductPurchaseResult;)V

    return-void
.end method

.method public queryPurchases(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m;

    invoke-direct {v0, p0, p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;)V

    .line 53
    new-instance v1, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$a;

    invoke-direct {v1, p0, v0, p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$a;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;Ljava/lang/Runnable;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public querySkuDetailsAsync(Ljava/util/List;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryProductsListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryProductsListener;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;

    invoke-direct {v0, p0, p2, p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryProductsListener;Ljava/util/List;)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startServiceConnection(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->e:Landroid/app/Activity;

    new-instance v1, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$d;

    invoke-direct {v1, p0, p1, p2}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$d;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, v1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->a(Landroid/app/Activity;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;)V

    return-void
.end method
