.class public Lcom/gpc/sdk/payment/flow/client/samsung/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/payment/flow/client/samsung/a$f;
    }
.end annotation


# static fields
.field public static final h:Ljava/lang/String; = "SamsungPaymentClient"

.field public static i:Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/app/Activity;

.field public d:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;

.field public e:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;

.field public f:Lcom/gpc/sdk/payment/service/PaymentService;

.field public g:Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/payment/flow/client/samsung/SamsungPaymentConfig;->IAP_MODE:Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;

    sput-object v0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->i:Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->a:I

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->b:I

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->g:Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    .line 14
    const-string v0, "SamsungPaymentClient"

    const-string v1, "SAMSUNG Payment"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->c:Landroid/app/Activity;

    .line 16
    invoke-static {}, Lcom/gpc/sdk/utils/factory/PaymentFactory;->getPaymentService()Lcom/gpc/sdk/payment/service/PaymentService;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->f:Lcom/gpc/sdk/payment/service/PaymentService;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/client/samsung/a;)Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->g:Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/client/samsung/a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/sdk/payment/flow/client/samsung/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 17
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;

    .line 20
    :try_start_0
    new-instance v2, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-direct {v2, v1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;-><init>(Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;)V

    .line 21
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 23
    const-string v2, "SamsungPaymentClient"

    const-string v3, "Convert Purchases"

    invoke-static {v2, v3, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(Lcom/gpc/sdk/error/GPCException;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->d:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;->onInitialized(Lcom/gpc/sdk/error/GPCException;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
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

    const/4 v0, 0x5

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->e:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;

    if-eqz v1, :cond_0

    .line 10
    invoke-interface {v1, p1, p2}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;->onPurchased(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_0
    iput v0, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->b:I

    return-void

    :catchall_0
    move-exception p1

    .line 15
    iput v0, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->b:I

    .line 16
    throw p1
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/client/samsung/a;Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/client/samsung/a;->a(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/gpc/sdk/payment/flow/client/samsung/a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/client/samsung/a;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;

    .line 6
    :try_start_0
    new-instance v2, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;

    invoke-direct {v2, v1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;-><init>(Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;)V

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    const-string v2, "SamsungPaymentClient"

    const-string v3, "Convert SkuDetails"

    invoke-static {v2, v3, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic c(Lcom/gpc/sdk/payment/flow/client/samsung/a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/sdk/payment/flow/client/samsung/a;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IAP_MODE:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gpc/sdk/payment/flow/client/samsung/a;->i:Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungPaymentClient"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->g:Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    .line 8
    sget-object v1, Lcom/gpc/sdk/payment/flow/client/samsung/a;->i:Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->setOperationMode(Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/samsung/a$f;)V
    .locals 4

    .line 24
    const-string v0, ""

    .line 27
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    const-string v2, "server_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :try_start_1
    const-string v3, "cha_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :cond_0
    move-object v2, v0

    .line 36
    :catch_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getOrderSign chaId:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungPaymentClient"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getOrderSign serverId:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->f:Lcom/gpc/sdk/payment/service/PaymentService;

    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gpc/sdk/payment/flow/client/samsung/a$e;

    invoke-direct {v2, p0, p3}, Lcom/gpc/sdk/payment/flow/client/samsung/a$e;-><init>(Lcom/gpc/sdk/payment/flow/client/samsung/a;Lcom/gpc/sdk/payment/flow/client/samsung/a$f;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/gpc/sdk/payment/service/PaymentService;->getSamsungOrdersSerialNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/PaymentItemsOrdersSerialListener;)V

    return-void
.end method

.method public acknowledgePurchase(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientAcknowledgePurchaseListener;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientAcknowledgePurchaseListener;->onAcknowledgeFinished(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public final c(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;

    .line 6
    :try_start_0
    new-instance v2, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-direct {v2, v1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;-><init>(Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;)V

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    const-string v2, "SamsungPaymentClient"

    const-string v3, "Convert SkuDetails"

    invoke-static {v2, v3, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public consume(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;)V
    .locals 2

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Samsung pay consume isConsumable:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->isConsumable()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SamsungPaymentClient"

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->isConsumable()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->g:Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/client/samsung/a;->a()V

    .line 7
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Samsung pay consume item:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->g:Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getPurchaseId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/payment/flow/client/samsung/a$c;

    invoke-direct {v1, p0, p3, p1}, Lcom/gpc/sdk/payment/flow/client/samsung/a$c;-><init>(Lcom/gpc/sdk/payment/flow/client/samsung/a;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->consumePurchasedItems(Ljava/lang/String;Lcom/samsung/android/sdk/iap/lib/listener/OnConsumePurchasedItemsListener;)V

    return-void

    .line 36
    :cond_1
    const-string p2, "120912"

    const-string v0, "20"

    invoke-static {p2, v0}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 37
    invoke-interface {p3, p2, p1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;->onConsumeFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->g:Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->dispose()V

    :cond_0
    return-void
.end method

.method public init(Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->a:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iput v1, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->a:I

    .line 7
    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->d:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;

    .line 8
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/client/samsung/a;->a()V

    .line 9
    iput v0, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->a:I

    .line 10
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gpc/sdk/payment/flow/client/samsung/a;->a(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 11
    :cond_1
    :goto_0
    const-string p1, "SamsungPaymentClient"

    const-string p2, "Developer Error!"

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
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

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public purchaseFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseParams;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;)V
    .locals 0

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "purchaseFlow developPayload:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SamsungPaymentClient"

    invoke-static {p3, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->b:I

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 3
    const-string p1, "-2"

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p6, p1, p2}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;->onPurchased(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 7
    :cond_0
    iput p3, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->b:I

    .line 8
    iput-object p6, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->e:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;

    .line 11
    new-instance p2, Lcom/gpc/sdk/payment/flow/client/samsung/a$a;

    invoke-direct {p2, p0, p1}, Lcom/gpc/sdk/payment/flow/client/samsung/a$a;-><init>(Lcom/gpc/sdk/payment/flow/client/samsung/a;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p4, p2}, Lcom/gpc/sdk/payment/flow/client/samsung/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/samsung/a$f;)V

    return-void
.end method

.method public queryPurchases(Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;)V
    .locals 2

    .line 1
    const-string v0, "Samsung pay queryPurchases"

    const-string v1, "SamsungPaymentClient"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->g:Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/client/samsung/a;->a()V

    .line 6
    :cond_0
    const-string v0, "Samsung pay queryPurchases iapHelper != null"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->g:Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    new-instance v1, Lcom/gpc/sdk/payment/flow/client/samsung/a$b;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/payment/flow/client/samsung/a$b;-><init>(Lcom/gpc/sdk/payment/flow/client/samsung/a;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;)V

    const-string p1, "item"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->getOwnedList(Ljava/lang/String;Lcom/samsung/android/sdk/iap/lib/listener/OnGetOwnedListListener;)V

    return-void
.end method

.method public querySkuDetails(Ljava/util/List;Ljava/util/List;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;)V
    .locals 5
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
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->g:Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/client/samsung/a;->a()V

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "querySkuDetails====== inAppSkus.size:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SamsungPaymentClient"

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 6
    const-string v1, ""

    move-object v3, v1

    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 12
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v3, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 15
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "querySkuDetails====== itemsid:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a;->g:Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    new-instance p2, Lcom/gpc/sdk/payment/flow/client/samsung/a$d;

    invoke-direct {p2, p0, p3}, Lcom/gpc/sdk/payment/flow/client/samsung/a$d;-><init>(Lcom/gpc/sdk/payment/flow/client/samsung/a;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;)V

    invoke-virtual {p1, v3, p2}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->getProductsDetails(Ljava/lang/String;Lcom/samsung/android/sdk/iap/lib/listener/OnGetProductsDetailsListener;)V

    return-void
.end method
