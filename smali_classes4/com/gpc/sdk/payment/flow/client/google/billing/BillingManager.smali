.class public Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$BillingUpdatesListener;,
        Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;,
        Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$ProductsDetailsResponseListener;,
        Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$QueryPurchasesListener;,
        Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$ServiceConnectedListener;
    }
.end annotation


# static fields
.field public static final l:Ljava/lang/String; = "BillingManager"

.field public static final m:I = -0x1


# instance fields
.field public a:Lcom/android/billingclient/api/BillingClient;

.field public b:Z

.field public final c:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$BillingUpdatesListener;

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
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public j:Lcom/gpc/util/SDKTask;

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$BillingUpdatesListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->e:Ljava/util/List;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->g:I

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->h:Ljava/util/List;

    .line 10
    const-string v0, "unknow"

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->i:Ljava/lang/String;

    .line 12
    new-instance v0, Lcom/gpc/util/SDKTask;

    invoke-direct {v0}, Lcom/gpc/util/SDKTask;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->j:Lcom/gpc/util/SDKTask;

    .line 14
    const-string v0, "inapp"

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->k:Ljava/lang/String;

    .line 42
    const-string v0, "Creating Billing client."

    const-string v1, "BillingManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->d:Landroid/app/Activity;

    .line 44
    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->c:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$BillingUpdatesListener;

    .line 45
    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object p2

    .line 46
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a:Lcom/android/billingclient/api/BillingClient;

    .line 48
    const-string p1, "Starting setup."

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance p1, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$c;

    invoke-direct {p1, p0}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$c;-><init>(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;)V

    new-instance p2, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$d;

    invoke-direct {p2, p0}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$d;-><init>(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;)V

    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->g:I

    return p1
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;Ljava/util/List;Ljava/lang/String;)Lcom/android/billingclient/api/ProductDetails;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a(Ljava/util/List;Ljava/lang/String;)Lcom/android/billingclient/api/ProductDetails;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;)Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$BillingUpdatesListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->c:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$BillingUpdatesListener;

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->i:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->b(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/google/b;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 4
    invoke-virtual/range {p0 .. p5}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a(Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/google/b;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;Ljava/util/List;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->b:Z

    return p1
.end method

.method public static synthetic b(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a:Lcom/android/billingclient/api/BillingClient;

    return-object p0
.end method

.method public static synthetic b(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->f:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/billingclient/api/ProductDetails;
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails;

    .line 111
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;)Lcom/android/billingclient/api/ProductDetails;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/billingclient/api/ProductDetails;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 48
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails;

    .line 50
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Launching in-app purchase flow. find SKU? "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BillingManager"

    invoke-static {p2, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/android/billingclient/api/ProductDetails;)Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 287
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;-><init>()V

    .line 288
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->setItemType(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->setSku(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->setType(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->setTitle(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->setDescription(Ljava/lang/String;)V

    .line 294
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "ProductDetails "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BillingManager"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v2, "inapp"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 296
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 297
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->setPrice(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->setPriceAmountMicros(J)V

    .line 299
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->setPriceCurrencyCode(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->setOriginalPrice(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->setPriceAmountMicros(J)V

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ProductDetails Price:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->getPrice()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->getPriceAmountMicros()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 304
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->getSku()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": getOneTimePurchaseOfferDetails is null !!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 308
    :cond_1
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 309
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_3

    .line 312
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 313
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 314
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 315
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    .line 316
    new-instance v3, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;

    invoke-direct {v3}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;-><init>()V

    const/4 v4, 0x1

    .line 317
    invoke-virtual {v3, v4}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->setType(I)V

    .line 318
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferTags()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->setTags(Ljava/util/List;)V

    .line 319
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ProductDetails OfferTags:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferTags()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/gpc/util/CollectionUtils;->toArrayString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->setToken(Ljava/lang/String;)V

    .line 321
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ProductDetails OfferToken:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 324
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 325
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 327
    new-instance v6, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;

    invoke-direct {v6}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;-><init>()V

    .line 328
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingPeriod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->setBillingPeriod(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->setPrice(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->setPriceAmountMicros(J)V

    .line 331
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->setCurrencyCode(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingCycleCount()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->setBillingCycleCount(I)V

    .line 333
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getRecurrenceMode()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;->setRecurrenceMode(I)V

    .line 335
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getRecurrenceMode()I

    move-result v7

    if-ne v7, v4, :cond_3

    .line 336
    invoke-virtual {v3, v6}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->setOriginalContract(Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;)V

    .line 338
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->setPrice(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->setPriceAmountMicros(J)V

    .line 340
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->setPriceCurrencyCode(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->setOriginalPrice(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->setOriginalPriceAmountMicros(J)V

    goto :goto_2

    .line 344
    :cond_3
    invoke-virtual {v3}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->getPromotionContracts()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ProductDetails PricingPhase BillingPeriod:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingPeriod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ProductDetails PricingPhase FormattedPrice:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ProductDetails PricingPhase PriceAmountMicros:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ProductDetails PricingPhase PriceCurrencyCode:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ProductDetails PricingPhase BillingCycleCount:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingCycleCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ProductDetails PricingPhase RecurrenceMode:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getRecurrenceMode()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v5, "--------------------------------------------------------------------------------"

    invoke-static {v1, v5}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 357
    :cond_4
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    const-string v2, "=============================================================================="

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 360
    :cond_5
    invoke-virtual {v0, p2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->setSubscriptionOfferDetails(Ljava/util/List;)V

    return-object v0

    .line 361
    :cond_6
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->getSku()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": getSubscriptionOfferDetails is null !!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
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
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;"
        }
    .end annotation

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 364
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 366
    :try_start_0
    new-instance v2, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-direct {v2, p1, v1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/Purchase;)V

    .line 367
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 369
    const-string v2, "BillingManager"

    const-string v3, "Convert Purchases"

    invoke-static {v2, v3, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/android/billingclient/api/ProductDetails;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/google/b;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    if-nez p1, :cond_0

    .line 52
    invoke-virtual {p0, p2}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a(Ljava/lang/String;)Lcom/android/billingclient/api/ProductDetails;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_7

    if-eqz p3, :cond_1

    .line 58
    invoke-virtual {p3}, Lcom/gpc/sdk/payment/flow/client/google/b;->d()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 56
    :cond_1
    const-string p2, ""

    .line 61
    :goto_0
    invoke-static {p4, p2}, Lcom/gpc/sdk/payment/flow/client/google/billing/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/payment/flow/client/google/billing/a$a;

    move-result-object p2

    .line 62
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p5

    const-string v0, "BillingManager"

    if-eqz p2, :cond_2

    .line 64
    iget-object p4, p2, Lcom/gpc/sdk/payment/flow/client/google/billing/a$a;->a:Ljava/lang/String;

    invoke-virtual {p5, p4}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 65
    iget-object p2, p2, Lcom/gpc/sdk/payment/flow/client/google/billing/a$a;->b:Ljava/lang/String;

    invoke-virtual {p5, p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedProfileId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    goto :goto_1

    .line 67
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "obfuscated data is null! payload:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_1
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p2

    .line 71
    invoke-virtual {p2, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    if-eqz p3, :cond_6

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "purchaseExtraParams.getType():"

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/gpc/sdk/payment/flow/client/google/b;->f()I

    move-result p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p3}, Lcom/gpc/sdk/payment/flow/client/google/b;->f()I

    move-result p1

    const-string p4, "purchaseExtraParams.getOfferToken():"

    if-nez p1, :cond_3

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/gpc/sdk/payment/flow/client/google/b;->a()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p3}, Lcom/gpc/sdk/payment/flow/client/google/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 77
    invoke-virtual {p3}, Lcom/gpc/sdk/payment/flow/client/google/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    goto/16 :goto_2

    .line 79
    :cond_3
    invoke-virtual {p3}, Lcom/gpc/sdk/payment/flow/client/google/b;->f()I

    move-result p1

    const/4 v1, 0x1

    if-ne v1, p1, :cond_5

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/gpc/sdk/payment/flow/client/google/b;->a()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "purchaseExtraParams.getOldPurchaseToken():"

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/gpc/sdk/payment/flow/client/google/b;->b()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "purchaseExtraParams.getProrationMode():"

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/gpc/sdk/payment/flow/client/google/b;->e()I

    move-result p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object p1

    .line 84
    invoke-virtual {p3}, Lcom/gpc/sdk/payment/flow/client/google/b;->b()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->setOldPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object p1

    .line 85
    invoke-virtual {p3}, Lcom/gpc/sdk/payment/flow/client/google/b;->e()I

    move-result p4

    if-ltz p4, :cond_4

    .line 86
    invoke-virtual {p3}, Lcom/gpc/sdk/payment/flow/client/google/b;->e()I

    move-result p4

    invoke-virtual {p1, p4}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->setSubscriptionReplacementMode(I)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    .line 88
    :cond_4
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSubscriptionUpdateParams(Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 89
    invoke-virtual {p3}, Lcom/gpc/sdk/payment/flow/client/google/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 90
    invoke-virtual {p3}, Lcom/gpc/sdk/payment/flow/client/google/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    goto :goto_2

    .line 93
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "purchaseExtraParams.getType() is not defined."

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/gpc/sdk/payment/flow/client/google/b;->f()I

    move-result p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p3}, Lcom/gpc/sdk/payment/flow/client/google/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 95
    invoke-virtual {p3}, Lcom/gpc/sdk/payment/flow/client/google/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    .line 100
    :cond_6
    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p5, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 103
    invoke-virtual {p5}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    .line 104
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a:Lcom/android/billingclient/api/BillingClient;

    iget-object p3, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->d:Landroid/app/Activity;

    invoke-virtual {p2, p3, p1}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    return-void

    .line 106
    :cond_7
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    .line 107
    invoke-virtual {p5}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    invoke-virtual {p5}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    const/4 p2, 0x0

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .line 281
    iget-boolean v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->b:Z

    if-eqz v0, :cond_0

    .line 282
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 286
    :cond_0
    invoke-virtual {p0, p1, p1}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$b;-><init>(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$QueryPurchasesListener;)V
    .locals 1

    .line 246
    new-instance v0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$k;

    invoke-direct {v0, p0, p1, p2}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$k;-><init>(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$QueryPurchasesListener;)V

    .line 279
    invoke-virtual {p0, v0}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->f:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->f:Ljava/util/Set;

    goto :goto_0

    .line 196
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    const-string p1, "BillingManager"

    const-string p2, "Token was already scheduled to be consumed - skipping..."

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 200
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$i;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$i;-><init>(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;)V

    .line 217
    new-instance v1, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$j;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$j;-><init>(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    .line 241
    invoke-virtual {p0, v1}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .locals 1

    .line 168
    new-instance v0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$h;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$h;-><init>(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    .line 193
    invoke-virtual {p0, v0}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentParams;Ljava/lang/String;)V
    .locals 8

    .line 9
    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->k:Ljava/lang/String;

    if-eqz p4, :cond_0

    .line 12
    new-instance v0, Lcom/gpc/sdk/payment/flow/client/google/b;

    invoke-direct {v0, p4}, Lcom/gpc/sdk/payment/flow/client/google/b;-><init>(Lcom/gpc/sdk/payment/bean/GPCPaymentParams;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    .line 14
    invoke-virtual/range {v1 .. v7}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/google/b;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/google/b;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/gpc/sdk/payment/flow/client/google/b;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e;

    move-object v1, p0

    move-object v3, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$e;-><init>(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/google/b;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$ProductsDetailsResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$ProductsDetailsResponseListener;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 157
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    new-instance v0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$g;

    invoke-direct {v0, p0, p1, p3}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$g;-><init>(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$ProductsDetailsResponseListener;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a(Ljava/lang/String;Ljava/util/List;Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;)V

    return-void

    .line 165
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 166
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-interface {p3, p1, p2}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$ProductsDetailsResponseListener;->onProductsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;",
            ")V"
        }
    .end annotation

    .line 118
    new-instance v0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$f;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$f;-><init>(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;Ljava/util/List;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;)V

    .line 156
    invoke-virtual {p0, v0}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails;

    .line 113
    invoke-virtual {p0, v0}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->b(Lcom/android/billingclient/api/ProductDetails;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p0, v0}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->c(Lcom/android/billingclient/api/ProductDetails;)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0, v0}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a(Lcom/android/billingclient/api/ProductDetails;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a:Lcom/android/billingclient/api/BillingClient;

    const-string v1, "subscriptions"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "areSubscriptionsSupported() got an error response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BillingManager"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

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
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;",
            ">;"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 12
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails;

    .line 15
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a(Ljava/lang/String;Lcom/android/billingclient/api/ProductDetails;)Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;

    move-result-object v1

    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 18
    const-string v2, "BillingManager"

    const-string v3, "Convert SkuDetails"

    invoke-static {v2, v3, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public b()V
    .locals 2

    .line 5
    const-string v0, "BillingManager"

    const-string v1, "Destroying the manager."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a:Lcom/android/billingclient/api/BillingClient;

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/billingclient/api/ProductDetails;)Z
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails;

    .line 4
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

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
    iget v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->g:I

    return v0
.end method

.method public final c(Lcom/android/billingclient/api/ProductDetails;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails;

    .line 3
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public d()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->d:Landroid/app/Activity;

    return-object v0
.end method

.method public e()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/android/billingclient/api/GetBillingConfigParams;->newBuilder()Lcom/android/billingclient/api/GetBillingConfigParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/GetBillingConfigParams$Builder;->build()Lcom/android/billingclient/api/GetBillingConfigParams;

    move-result-object v1

    new-instance v2, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$a;

    invoke-direct {v2, p0}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$a;-><init>(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->getBillingConfigAsync(Lcom/android/billingclient/api/GetBillingConfigParams;Lcom/android/billingclient/api/BillingConfigResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 13
    const-string v1, "BillingManager"

    const-string v2, "cacheCurrentUserCountryCode!"

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
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

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onPurchasesUpdated countryCode:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->c:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$BillingUpdatesListener;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->i:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->k:Ljava/lang/String;

    invoke-virtual {p0, v2, p2}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, v1, p1, p2}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$BillingUpdatesListener;->onPurchasesUpdated(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method
