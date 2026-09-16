.class public Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$BillingUpdatesListener;,
        Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;,
        Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$ProductsDetailsResponseListener;,
        Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$QueryPurchasesListener;,
        Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$ServiceConnectedListener;
    }
.end annotation


# static fields
.field public static final k:Ljava/lang/String; = "BillingManager"

.field public static final l:I = -0x1


# instance fields
.field public a:Lcom/android/billingclient/api/BillingClient;

.field public b:Z

.field public final c:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$BillingUpdatesListener;

.field public final d:Landroid/app/Activity;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/gpc/operations/migrate/utils/SDKTask;

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$BillingUpdatesListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->e:Ljava/util/List;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->g:I

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->h:Ljava/util/List;

    .line 10
    new-instance v0, Lcom/gpc/operations/migrate/utils/SDKTask;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/SDKTask;-><init>()V

    iput-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->i:Lcom/gpc/operations/migrate/utils/SDKTask;

    .line 12
    const-string v0, "inapp"

    iput-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->j:Ljava/lang/String;

    .line 40
    const-string v0, "Creating Billing client."

    const-string v1, "BillingManager"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->d:Landroid/app/Activity;

    .line 42
    iput-object p2, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->c:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$BillingUpdatesListener;

    .line 43
    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object p2

    .line 44
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a:Lcom/android/billingclient/api/BillingClient;

    .line 46
    const-string p1, "Starting setup."

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance p1, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$b;

    invoke-direct {p1, p0}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$b;-><init>(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;)V

    new-instance p2, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$c;

    invoke-direct {p2, p0}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$c;-><init>(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;)V

    invoke-virtual {p0, p1, p2}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;I)I
    .locals 0

    .line 7
    iput p1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->g:I

    return p1
.end method

.method public static synthetic a(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Ljava/util/List;Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetails;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Ljava/util/List;Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetails;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;)Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$BillingUpdatesListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->c:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$BillingUpdatesListener;

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->b(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Ljava/util/List;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Z)Z
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->b:Z

    return p1
.end method

.method public static synthetic b(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a:Lcom/android/billingclient/api/BillingClient;

    return-object p0
.end method

.method public static synthetic b(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->f:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetails;
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/SkuDetails;

    .line 68
    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetails;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/billingclient/api/SkuDetails;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 43
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/SkuDetails;

    .line 45
    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Launching in-app purchase flow. find SKU? "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BillingManager"

    invoke-static {p2, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;",
            ">;"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 226
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 228
    :try_start_0
    new-instance v2, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    invoke-direct {v2, p1, v1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/Purchase;)V

    .line 229
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 231
    const-string v2, "BillingManager"

    const-string v3, "Convert Purchases"

    invoke-static {v2, v3, v1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/android/billingclient/api/SkuDetails;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)V
    .locals 1

    if-nez p1, :cond_0

    .line 47
    invoke-virtual {p0, p2}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetails;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 51
    invoke-static {p3}, Lcom/gpc/tsh/pay/flow/client/google/billing/a;->b(Ljava/lang/String;)Lcom/gpc/tsh/pay/flow/client/google/billing/a$a;

    move-result-object p2

    .line 52
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p4

    if-eqz p2, :cond_1

    .line 54
    iget-object p3, p2, Lcom/gpc/tsh/pay/flow/client/google/billing/a$a;->a:Ljava/lang/String;

    invoke-virtual {p4, p3}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 55
    iget-object p2, p2, Lcom/gpc/tsh/pay/flow/client/google/billing/a$a;->b:Ljava/lang/String;

    invoke-virtual {p4, p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedProfileId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    goto :goto_0

    .line 57
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "obfuscated data is null! payload:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BillingManager"

    invoke-static {p3, p2}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_0
    invoke-virtual {p4, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 60
    invoke-virtual {p4}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    .line 61
    iget-object p2, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a:Lcom/android/billingclient/api/BillingClient;

    iget-object p3, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->d:Landroid/app/Activity;

    invoke-virtual {p2, p3, p1}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    return-void

    .line 63
    :cond_2
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    .line 64
    invoke-virtual {p4}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    invoke-virtual {p4}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    const/4 p2, 0x0

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->b:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 223
    :cond_0
    invoke-virtual {p0, p1, p1}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$a;-><init>(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$QueryPurchasesListener;)V
    .locals 1

    .line 183
    new-instance v0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$j;

    invoke-direct {v0, p0, p1, p2}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$j;-><init>(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Ljava/lang/String;Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$QueryPurchasesListener;)V

    .line 216
    invoke-virtual {p0, v0}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->f:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->f:Ljava/util/Set;

    goto :goto_0

    .line 133
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    const-string p1, "BillingManager"

    const-string p2, "Token was already scheduled to be consumed - skipping..."

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 137
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$h;

    invoke-direct {v0, p0}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$h;-><init>(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;)V

    .line 154
    new-instance v1, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$i;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$i;-><init>(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    .line 178
    invoke-virtual {p0, v1}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .locals 1

    .line 105
    new-instance v0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$g;-><init>(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    .line 130
    invoke-virtual {p0, v0}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 8
    iput-object p2, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->j:Ljava/lang/String;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 10
    new-instance v0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;

    move-object v1, p0

    move-object v3, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;-><init>(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$ProductsDetailsResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$ProductsDetailsResponseListener;",
            ")V"
        }
    .end annotation

    .line 104
    new-instance v0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$f;

    invoke-direct {v0, p0, p1, p3}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$f;-><init>(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Ljava/lang/String;Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$ProductsDetailsResponseListener;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Ljava/lang/String;Ljava/util/List;Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;",
            ")V"
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$e;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$e;-><init>(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Ljava/util/List;Ljava/lang/String;Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/SkuDetails;

    .line 70
    invoke-virtual {p0, v0}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->b(Lcom/android/billingclient/api/SkuDetails;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {p0, v0}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->c(Lcom/android/billingclient/api/SkuDetails;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0, v0}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Lcom/android/billingclient/api/SkuDetails;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a:Lcom/android/billingclient/api/BillingClient;

    const-string v1, "subscriptions"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "areSubscriptionsSupported() got an error response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BillingManager"

    invoke-static {v2, v1}, Lcom/gpc/operations/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;",
            ">;"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/SkuDetails;

    .line 13
    :try_start_0
    new-instance v2, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;

    invoke-direct {v2, p1, v1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/SkuDetails;)V

    .line 14
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 16
    const-string v2, "BillingManager"

    const-string v3, "Convert SkuDetails"

    invoke-static {v2, v3, v1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public b()V
    .locals 2

    .line 5
    const-string v0, "BillingManager"

    const-string v1, "Destroying the manager."

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a:Lcom/android/billingclient/api/BillingClient;

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/billingclient/api/SkuDetails;)Z
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/SkuDetails;

    .line 4
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->g:I

    return v0
.end method

.method public final c(Lcom/android/billingclient/api/SkuDetails;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/SkuDetails;

    .line 3
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public d()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->d:Landroid/app/Activity;

    return-object v0
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPurchasesUpdated:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingManager"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->c:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$BillingUpdatesListener;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->j:Ljava/lang/String;

    invoke-virtual {p0, v2, p2}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, v1, p1, p2}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$BillingUpdatesListener;->onPurchasesUpdated(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method
