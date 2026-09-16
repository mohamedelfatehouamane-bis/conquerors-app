.class public Lcom/gpc/ops/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/client/IGPCPaymentClient;
.implements Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$BillingUpdatesListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/ops/e$f;
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/String; = "GBPaymentClient"

.field public static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

.field public c:Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientInitializeListener;

.field public d:Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientPurchasedListener;

.field public e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumePurchaseListener;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:I

.field public i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gpc/ops/e;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/gpc/ops/e;->g:I

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lcom/gpc/ops/e;->h:I

    .line 4
    const-string v0, "inapp"

    iput-object v0, p0, Lcom/gpc/ops/e;->i:Ljava/lang/String;

    .line 9
    const-string v0, "GBPaymentClient"

    const-string v1, "Google Billing V3 Payment"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/gpc/ops/e;->a:Landroid/app/Activity;

    .line 11
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/gpc/ops/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/gpc/ops/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/ops/e;)Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/ops/e;->b:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    return-object p0
.end method

.method public static synthetic a()Ljava/util/List;
    .locals 1

    .line 2
    sget-object v0, Lcom/gpc/ops/e;->k:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic a(Lcom/gpc/ops/e;Ljava/lang/String;Ljava/util/List;Lcom/gpc/ops/e$f;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/gpc/ops/e;->a(Ljava/lang/String;Ljava/util/List;Lcom/gpc/ops/e$f;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/gpc/ops/e;->c:Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientInitializeListener;

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0, p1}, Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientInitializeListener;->onInitialized(Lcom/gpc/operations/migrate/error/GPCException;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/operations/migrate/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;",
            ">;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/gpc/ops/e;->d:Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientPurchasedListener;

    if-eqz v0, :cond_0

    .line 23
    invoke-interface {v0, p1, p2}, Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientPurchasedListener;->onPurchased(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;Lcom/gpc/ops/e$f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/ops/e$f;",
            ")V"
        }
    .end annotation

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/gpc/ops/e;->b:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    new-instance v1, Lcom/gpc/ops/e$e;

    invoke-direct {v1, p0, p3}, Lcom/gpc/ops/e$e;-><init>(Lcom/gpc/ops/e;Lcom/gpc/ops/e$f;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Ljava/lang/String;Ljava/util/List;Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$ProductsDetailsResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 17
    const-string p2, "GBPaymentClient"

    const-string v0, "querySkuDetailsAsync "

    invoke-static {p2, v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 19
    invoke-virtual {p3, p2, p1}, Lcom/gpc/ops/e$f;->a(Ljava/util/List;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public acknowledgePurchase(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientAcknowledgePurchaseListener;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->isAcknowledged()Z

    move-result v0

    const-string v1, "GBPaymentClient"

    if-nez v0, :cond_1

    sget-object v0, Lcom/gpc/ops/e;->k:Ljava/util/List;

    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/gpc/ops/e;->b:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getToken()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/gpc/ops/e$b;

    invoke-direct {v3, p0, p1, p3}, Lcom/gpc/ops/e$b;-><init>(Lcom/gpc/ops/e;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientAcknowledgePurchaseListener;)V

    invoke-virtual {v0, v2, p2, v3}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 22
    const-string p2, "acknowledgePurchase!!"

    invoke-static {v1, p2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    const-string p1, "-1"

    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientAcknowledgePurchaseListener;->onAcknowledgeFinished(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void

    .line 24
    :cond_1
    :goto_0
    const-string p1, "acknowledge Purchase of isAcknowledged!!"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientAcknowledgePurchaseListener;->onAcknowledgeFinished(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void
.end method

.method public declared-synchronized consume(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumePurchaseListener;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/gpc/ops/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/gpc/ops/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/gpc/ops/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    iget-object p3, p0, Lcom/gpc/ops/e;->b:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    :try_start_3
    const-string p2, "GBPaymentClient"

    const-string p3, "consumeAsync!!"

    invoke-static {p2, p3, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x6

    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/gpc/ops/e;->onConsumeFinished(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
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

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/e;->b:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->b()V

    :cond_0
    return-void
.end method

.method public declared-synchronized init(Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientInitializeListener;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/gpc/ops/e;->g:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iput v1, p0, Lcom/gpc/ops/e;->g:I

    .line 7
    iput-object p1, p0, Lcom/gpc/ops/e;->c:Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientInitializeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    new-instance p1, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    iget-object v0, p0, Lcom/gpc/ops/e;->a:Landroid/app/Activity;

    invoke-direct {p1, v0, p0}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;-><init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$BillingUpdatesListener;)V

    iput-object p1, p0, Lcom/gpc/ops/e;->b:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    :try_start_2
    const-string v0, "GBPaymentClient"

    const-string v1, "init error!"

    invoke-static {v0, v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lcom/gpc/ops/e;->g:I

    .line 14
    sget-object p1, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;->IAB_SETUP:Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    .line 16
    const-string v0, "220301"

    const-string v1, "10"

    invoke-static {v0, v1, p1}, Lcom/gpc/operations/migrate/error/utils/ExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gpc/ops/e;->a(Lcom/gpc/operations/migrate/error/GPCException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    .line 17
    :cond_1
    :goto_1
    :try_start_3
    const-string p1, "GBPaymentClient"

    const-string v0, "Developer Error!"

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
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
    .locals 3

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/gpc/ops/e;->g:I

    .line 2
    sget-object v0, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;->IAB_SETUP:Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 4
    const-string v1, "220301"

    const-string v2, "10"

    invoke-static {v1, v2, v0}, Lcom/gpc/operations/migrate/error/utils/ExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/ops/e;->a(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void
.end method

.method public onBillingClientSetupFinished()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    iput v0, p0, Lcom/gpc/ops/e;->g:I

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/ops/e;->a(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void
.end method

.method public onConsumeFinished(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumePurchaseListener;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/gpc/ops/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    if-nez p2, :cond_0

    .line 5
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumePurchaseListener;->onConsumeFinished(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    return-void

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumePurchaseListener;->onConsumeFinished(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    :cond_1
    return-void
.end method

.method public onPurchasesUpdated(ILjava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "GBPaymentClient"

    if-eqz p3, :cond_0

    .line 1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Purchase isAcknowledged:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->isAcknowledged()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    .line 6
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 7
    const-string p1, "Purchase successful try to post to platform"

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/gpc/ops/e;->a(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    const/4 p3, 0x1

    const/4 v0, 0x0

    if-ne p1, p3, :cond_2

    .line 10
    const-string p1, "-3"

    const-string p2, "USER_CANCELED"

    invoke-static {p1, p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/gpc/ops/e;->a(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V

    goto :goto_1

    .line 12
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/gpc/ops/e;->a(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V

    :goto_1
    const/4 p1, 0x5

    .line 15
    iput p1, p0, Lcom/gpc/ops/e;->h:I

    return-void
.end method

.method public declared-synchronized purchaseFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientPurchasedListener;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/gpc/ops/e;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 2
    const-string p1, "-2"

    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {p5, p1, v1}, Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientPurchasedListener;->onPurchased(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    iput v2, p0, Lcom/gpc/ops/e;->h:I

    .line 7
    iput-object p2, p0, Lcom/gpc/ops/e;->i:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lcom/gpc/ops/e;->d:Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientPurchasedListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    iget-object p5, p0, Lcom/gpc/ops/e;->b:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    :try_start_3
    const-string p2, "GBPaymentClient"

    const-string p3, "purchaseFlow"

    invoke-static {p2, p3, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x2

    .line 14
    iput p1, p0, Lcom/gpc/ops/e;->h:I

    .line 15
    const-string p1, "220303"

    const-string p2, "10"

    invoke-static {p1, p2}, Lcom/gpc/operations/migrate/error/utils/ExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/gpc/ops/e;->a(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
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

.method public queryPurchases(Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQueryPurchasesListener;)V
    .locals 4

    const-string v0, "GBPaymentClient"

    .line 1
    :try_start_0
    const-string v1, "queryPurchases"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/gpc/ops/e;->b:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    const-string v2, "inapp"

    new-instance v3, Lcom/gpc/ops/e$a;

    invoke-direct {v3, p0, p1}, Lcom/gpc/ops/e$a;-><init>(Lcom/gpc/ops/e;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQueryPurchasesListener;)V

    invoke-virtual {v1, v2, v3}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Ljava/lang/String;Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$QueryPurchasesListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 31
    const-string v2, "queryPurchases!"

    invoke-static {v0, v2, v1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQueryPurchasesListener;->onQueryPurchasesFinished(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V

    return-void
.end method

.method public querySkuDetails(Ljava/util/List;Ljava/util/List;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;)V
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
            "Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Lcom/gpc/ops/e$c;

    invoke-direct {v1, p0, v0, p3}, Lcom/gpc/ops/e$c;-><init>(Lcom/gpc/ops/e;Ljava/util/List;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;)V

    .line 33
    new-instance p3, Lcom/gpc/ops/e$d;

    invoke-direct {p3, p0, v1, v0, p2}, Lcom/gpc/ops/e$d;-><init>(Lcom/gpc/ops/e;Lcom/gpc/ops/e$f;Ljava/util/List;Ljava/util/List;)V

    .line 58
    const-string p2, "inapp"

    invoke-virtual {p0, p2, p1, p3}, Lcom/gpc/ops/e;->a(Ljava/lang/String;Ljava/util/List;Lcom/gpc/ops/e$f;)V

    return-void
.end method
