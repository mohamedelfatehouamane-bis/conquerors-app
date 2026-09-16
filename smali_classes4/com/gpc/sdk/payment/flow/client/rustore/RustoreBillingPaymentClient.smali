.class public Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;
.implements Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;


# static fields
.field public static final k:Ljava/lang/String; = "RuStoreBillingPaymentClient"

.field public static l:Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

.field public c:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;

.field public d:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;

.field public e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Lcom/gpc/sdk/payment/service/PaymentService;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->g:I

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->h:I

    .line 4
    const-string v0, "inapp"

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->i:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RuStoreBillingPaymentClient\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RuStoreBillingPaymentClient"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->a:Landroid/app/Activity;

    .line 11
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    invoke-static {}, Lcom/gpc/sdk/utils/factory/PaymentFactory;->getPaymentService()Lcom/gpc/sdk/payment/service/PaymentService;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->j:Lcom/gpc/sdk/payment/service/PaymentService;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->h:I

    return p1
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;)Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->a(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static createClient(Landroid/app/Activity;)Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->l:Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->a:Landroid/app/Activity;

    if-eq v0, p0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->l:Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;

    .line 4
    :cond_1
    sget-object p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->l:Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rustore/sdk/pay/model/Purchase;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;"
        }
    .end annotation

    const-string v0, "Purchase "

    const-string v1, "RuStoreBillingPaymentClient"

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/rustore/sdk/pay/model/Purchase;

    .line 22
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    instance-of v4, v3, Lru/rustore/sdk/pay/model/ProductPurchase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, " isAcknowledged:"

    if-eqz v4, :cond_2

    .line 26
    :try_start_1
    move-object v4, v3

    check-cast v4, Lru/rustore/sdk/pay/model/ProductPurchase;

    .line 27
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lru/rustore/sdk/pay/model/Purchase;->getPurchaseId()Lru/rustore/sdk/pay/model/PurchaseId;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lru/rustore/sdk/pay/model/ProductPurchase;->getStatus()Lru/rustore/sdk/pay/model/ProductPurchaseStatus;

    move-result-object v3

    sget-object v7, Lru/rustore/sdk/pay/model/ProductPurchaseStatus;->CONFIRMED:Lru/rustore/sdk/pay/model/ProductPurchaseStatus;

    if-ne v3, v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v3, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-direct {v3, v4}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;-><init>(Lru/rustore/sdk/pay/model/ProductPurchase;)V

    .line 29
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    :cond_2
    instance-of v4, v3, Lru/rustore/sdk/pay/model/SubscriptionPurchase;

    if-eqz v4, :cond_0

    .line 31
    move-object v4, v3

    check-cast v4, Lru/rustore/sdk/pay/model/SubscriptionPurchase;

    .line 32
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lru/rustore/sdk/pay/model/Purchase;->getPurchaseId()Lru/rustore/sdk/pay/model/PurchaseId;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lru/rustore/sdk/pay/model/SubscriptionPurchase;->getStatus()Lru/rustore/sdk/pay/model/SubscriptionPurchaseStatus;

    move-result-object v3

    sget-object v4, Lru/rustore/sdk/pay/model/SubscriptionPurchaseStatus;->ACTIVE:Lru/rustore/sdk/pay/model/SubscriptionPurchaseStatus;

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    .line 37
    const-string v4, "Convert Purchases"

    invoke-static {v1, v4, v3}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    return-object v2
.end method

.method public final a(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;)V"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->d:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;

    if-eqz v0, :cond_0

    .line 17
    const-string v0, "RuStoreBillingPaymentClient"

    const-string v1, "purchasedListener != null"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->d:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;->onPurchased(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;Lcom/gpc/sdk/error/GPCException;)V
    .locals 2

    .line 5
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/service/network/NetworkExcutor;->instance()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$e;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;Lcom/gpc/sdk/error/GPCException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    nop

    if-eqz p1, :cond_0

    .line 15
    invoke-interface {p1, p2}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;->onInitialized(Lcom/gpc/sdk/error/GPCException;)V

    :cond_0
    return-void
.end method

.method public acknowledgePurchase(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientAcknowledgePurchaseListener;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "acknowledgePurchase billingManager:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " this:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RuStoreBillingPaymentClient"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "acknowledge Purchase of isAcknowledged!!:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->isAcknowledged()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->isAcknowledged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    const-string p1, "acknowledge Purchase of isAcknowledged!!"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientAcknowledgePurchaseListener;->onAcknowledgeFinished(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getPurchaseId()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$c;

    invoke-direct {v1, p0, p3}, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$c;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientAcknowledgePurchaseListener;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->consumeAsync(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$ConsumePurchaseListener;)V

    return-void
.end method

.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rustore/sdk/pay/model/Product;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rustore/sdk/pay/model/Product;

    .line 5
    :try_start_0
    new-instance v2, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;

    invoke-direct {v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;-><init>()V

    .line 6
    invoke-virtual {v1}, Lru/rustore/sdk/pay/model/Product;->getProductId()Lru/rustore/sdk/pay/model/ProductId;

    move-result-object v3

    invoke-virtual {v3}, Lru/rustore/sdk/pay/model/ProductId;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->setSku(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Lru/rustore/sdk/pay/model/Product;->getType()Lru/rustore/sdk/pay/model/ProductType;

    move-result-object v3

    sget-object v4, Lru/rustore/sdk/pay/model/ProductType;->CONSUMABLE_PRODUCT:Lru/rustore/sdk/pay/model/ProductType;

    if-ne v3, v4, :cond_0

    const-string v3, "inapp"

    goto :goto_1

    .line 8
    :cond_0
    const-string v3, "subs"

    :goto_1
    invoke-virtual {v2, v3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->setType(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Lru/rustore/sdk/pay/model/Product;->getTitle()Lru/rustore/sdk/pay/model/Title;

    move-result-object v3

    invoke-virtual {v3}, Lru/rustore/sdk/pay/model/Title;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->setTitle(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Lru/rustore/sdk/pay/model/Product;->getDescription()Lru/rustore/sdk/pay/model/Description;

    move-result-object v3

    invoke-virtual {v3}, Lru/rustore/sdk/pay/model/Description;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->setDescription(Ljava/lang/String;)V

    .line 12
    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->setJson(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Lru/rustore/sdk/pay/model/Product;->getAmountLabel()Lru/rustore/sdk/pay/model/AmountLabel;

    move-result-object v3

    invoke-virtual {v3}, Lru/rustore/sdk/pay/model/AmountLabel;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->setPrice(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Lru/rustore/sdk/pay/model/Product;->getPrice()Lru/rustore/sdk/pay/model/Price;

    move-result-object v3

    invoke-virtual {v3}, Lru/rustore/sdk/pay/model/Price;->getValue()I

    move-result v3

    mul-int/lit16 v3, v3, 0x2710

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->setPriceAmountMicros(J)V

    .line 15
    invoke-virtual {v1}, Lru/rustore/sdk/pay/model/Product;->getCurrency()Lru/rustore/sdk/pay/model/Currency;

    move-result-object v1

    invoke-virtual {v1}, Lru/rustore/sdk/pay/model/Currency;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->setPriceCurrencyCode(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->setOriginalPrice(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->getPriceAmountMicros()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->setOriginalPriceAmountMicros(J)V

    .line 19
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 21
    const-string v2, "RuStoreBillingPaymentClient"

    const-string v3, "Convert SkuDetails"

    invoke-static {v2, v3, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_1
    return-object v0
.end method

.method public declared-synchronized consume(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;)V
    .locals 1

    const-string p2, "consume billingManager:"

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " this:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RuStoreBillingPaymentClient"

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;->onConsumeFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public destroy()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "destroy billingManager:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " this:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RuStoreBillingPaymentClient"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->destroy()V

    return-void
.end method

.method public declared-synchronized init(Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;)V
    .locals 2

    const-string p1, "rustore activity\uff1a"

    monitor-enter p0

    .line 1
    :try_start_0
    const-string v0, "RuStoreBillingPaymentClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->a:Landroid/app/Activity;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->g:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    iput v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->g:I

    .line 9
    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->c:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    if-nez p1, :cond_2

    .line 13
    const-string p1, "RuStoreBillingPaymentClient"

    const-string p2, "create billingManager"

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance p1, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->a:Landroid/app/Activity;

    invoke-direct {p1, p2, p0}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;-><init>(Landroid/app/Activity;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;)V

    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->initRuStoreBilling()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 19
    :try_start_2
    const-string p2, "RuStoreBillingPaymentClient"

    const-string v0, "init error!"

    invoke-static {p2, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->g:I

    .line 21
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->c:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;

    sget-object p2, Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;->IAB_SETUP:Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;

    .line 22
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    .line 23
    const-string v0, "120303"

    const-string v1, "10"

    invoke-static {v0, v1, p2}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->a(Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;Lcom/gpc/sdk/error/GPCException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    .line 24
    :cond_3
    :goto_2
    :try_start_3
    const-string p1, "RuStoreBillingPaymentClient"

    const-string v0, "Developer Error!"

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->a(Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;Lcom/gpc/sdk/error/GPCException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public isAvailable(Ljava/lang/String;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBillingClientSetupFail()V
    .locals 4

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->g:I

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->c:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;

    sget-object v1, Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;->IAB_SETUP:Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 4
    const-string v2, "120303"

    const-string v3, "10"

    invoke-static {v2, v3, v1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->a(Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public onBillingClientSetupFinished()V
    .locals 2

    const/4 v0, 0x3

    .line 1
    iput v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->g:I

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->c:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->a(Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public onConsumeFinished(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    if-nez p2, :cond_0

    .line 5
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;->onConsumeFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    return-void

    .line 7
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;->onConsumeFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    :cond_1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPurchasesUpdated(ILru/rustore/sdk/pay/model/ProductPurchaseResult;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    const-string p1, "RuStoreBillingPaymentClient"

    const-string v0, "Purchase successful try to post to gpc"

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    invoke-virtual {p2}, Lru/rustore/sdk/pay/model/ProductPurchaseResult;->getPurchaseId()Lru/rustore/sdk/pay/model/PurchaseId;

    move-result-object p2

    invoke-virtual {p2}, Lru/rustore/sdk/pay/model/PurchaseId;->getValue()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$f;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$f;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;)V

    invoke-virtual {p1, p2, v0}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->getPurchaseInfoById(Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->a(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    :goto_0
    const/4 p1, 0x5

    .line 15
    iput p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->h:I

    return-void
.end method

.method public declared-synchronized purchaseFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseParams;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;)V
    .locals 11

    move-object v5, p4

    move-object/from16 v0, p6

    const-string v1, "developPayload:"

    const-string v2, "sku:"

    const-string v3, "iggid:"

    const-string v6, "gameid:"

    const-string v7, "purchaseFlow billingManager:"

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " this:"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "RuStoreBillingPaymentClient"

    invoke-static {v8, v7}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v7, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->h:I

    const/4 v8, 0x0

    const/4 v9, 0x4

    if-ne v7, v9, :cond_0

    .line 3
    const-string v1, "-2"

    invoke-static {v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;->onPurchased(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 7
    :cond_0
    :try_start_1
    iput v9, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->h:I

    .line 8
    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->i:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->d:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v7

    .line 14
    const-string v9, "RuStoreBillingPaymentClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string v6, "RuStoreBillingPaymentClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string v3, "RuStoreBillingPaymentClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v2, "RuStoreBillingPaymentClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->j:Lcom/gpc/sdk/payment/service/PaymentService;

    new-instance v6, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$a;

    invoke-direct {v6, p0, p1, v7, p4}, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$a;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, p1

    move-object v2, v0

    move-object v3, v7

    invoke-interface/range {v1 .. v6}, Lcom/gpc/sdk/payment/service/PaymentService;->getRustoreOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/PaymentItemsOrdersSerialListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 31
    :try_start_3
    const-string v1, "RuStoreBillingPaymentClient"

    const-string v2, "purchaseFlow"

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x2

    .line 32
    iput v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->h:I

    .line 33
    const-string v0, "120306"

    const-string v1, "10"

    invoke-static {v0, v1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->a(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public queryPurchases(Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "queryPurchases billingManager:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " this:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RuStoreBillingPaymentClient"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    new-instance v1, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$b;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$b;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->queryPurchases(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;)V

    return-void
.end method

.method public querySkuDetails(Ljava/util/List;Ljava/util/List;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "querySkuDetails billingManager 2:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RuStoreBillingPaymentClient"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 7
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    new-instance p2, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$d;

    invoke-direct {p2, p0, p3}, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$d;-><init>(Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;)V

    invoke-virtual {p1, v0, p2}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->querySkuDetailsAsync(Ljava/util/List;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryProductsListener;)V

    return-void
.end method
