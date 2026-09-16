.class public Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseListener;,
        Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$PaymentItemsListener;,
        Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseFailureType;,
        Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;
    }
.end annotation


# static fields
.field public static final GPCPaymentPurchaseLimitationBoth:I = 0x3

.field public static final GPCPaymentPurchaseLimitationDevice:I = 0x2

.field public static final GPCPaymentPurchaseLimitationNone:I = 0x0

.field public static final GPCPaymentPurchaseLimitationUser:I = 0x1

.field public static final SEARCHPRECOUNT:I = 0x14

.field public static final n:Ljava/lang/String; = "GPCLapManager"

.field public static final o:Ljava/lang/String; = "payload_info_cache.tmp"


# instance fields
.field public a:I

.field public b:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseListener;

.field public final c:Landroid/content/Context;

.field public d:Lcom/gpc/sdk/payment/amazon_iap/GPCUserIapData;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/iap/model/Product;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:I

.field public j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public k:Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;

.field public l:Lcom/gpc/util/LocalStorage;

.field public m:Lcom/gpc/sdk/payment/service/PurchaseService;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->a:I

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    iput-object p2, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->e:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->f:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->c:Landroid/content/Context;

    .line 29
    new-instance p2, Lcom/gpc/util/LocalStorage;

    const-string p3, "payload_info_cache.tmp"

    invoke-direct {p2, p1, p3}, Lcom/gpc/util/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->l:Lcom/gpc/util/LocalStorage;

    .line 30
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->g:Ljava/util/Map;

    .line 31
    invoke-static {}, Lcom/gpc/sdk/utils/factory/PaymentFactory;->getPurchaseService()Lcom/gpc/sdk/payment/service/PurchaseService;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->m:Lcom/gpc/sdk/payment/service/PurchaseService;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->a:I

    return p1
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->a(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic b(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->h:I

    return p0
.end method

.method public static synthetic b(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->h:I

    return p1
.end method

.method public static synthetic c(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->i:I

    return p1
.end method

.method public static synthetic c(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;)Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseListener;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->b:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseListener;

    return-object p0
.end method

.method public static synthetic d(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->i:I

    return v0
.end method


# virtual methods
.method public PurchasePrepare(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->b:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseListener;

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseListener;->onGPCPurchasePreparingFailedFinished(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;
    .locals 4

    .line 13
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    .line 18
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCodeInteger()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    const-string v1, "GPCLapManager"

    const-string v2, ""

    invoke-static {v1, v2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    const/16 v1, 0xfa0

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1770

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1388

    const-string v2, "20"

    const-string v3, "120403"

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1389

    if-eq p1, v1, :cond_0

    .line 38
    const-string p1, "120401"

    const-string v1, "10"

    invoke-static {p1, v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    goto :goto_1

    .line 39
    :cond_0
    invoke-static {v3, v2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    goto :goto_1

    .line 40
    :cond_1
    invoke-static {v3, v2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    goto :goto_1

    .line 41
    :cond_2
    const-string p1, "120402"

    const-string v1, "32"

    invoke-static {p1, v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/payment/amazon_iap/GPCUserIapData;
    .locals 1

    .line 12
    new-instance v0, Lcom/gpc/sdk/payment/amazon_iap/GPCUserIapData;

    invoke-direct {v0, p1, p2}, Lcom/gpc/sdk/payment/amazon_iap/GPCUserIapData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->l:Lcom/gpc/util/LocalStorage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    sget-object v0, Lcom/gpc/sdk/GPCSDKConstant$OrderType;->NORMAL:Lcom/gpc/sdk/GPCSDKConstant$OrderType;

    iget-object v1, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->k:Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;

    const-string v2, ""

    invoke-static {p1, v0, v2, v1}, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->generateInAppItemPayload(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$OrderType;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->l:Lcom/gpc/util/LocalStorage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)V
    .locals 8

    .line 9
    iget-object v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->m:Lcom/gpc/sdk/payment/service/PurchaseService;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->f:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v6, p1, p2}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$c;

    invoke-direct {v7, p0}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$c;-><init>(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;)V

    .line 11
    invoke-interface/range {v0 .. v7}, Lcom/gpc/sdk/payment/service/PurchaseService;->submitAmazon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/SubmittalAmazonOfPurchaseFinishedListener;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public getPurchaseLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->a:I

    return v0
.end method

.method public getPurchaseUpdates(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/amazon/device/iap/PurchasingService;->getPurchaseUpdates(Z)Lcom/amazon/device/iap/model/RequestId;

    return-void
.end method

.method public getUserData()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/amazon/device/iap/PurchasingService;->getUserData()Lcom/amazon/device/iap/model/RequestId;

    return-void
.end method

.method public getUserIapData()Lcom/gpc/sdk/payment/amazon_iap/GPCUserIapData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->d:Lcom/gpc/sdk/payment/amazon_iap/GPCUserIapData;

    return-object v0
.end method

.method public getValidPurchaseForSkus(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/iap/model/Product;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2
    iget p1, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->i:I

    const/4 v0, 0x1

    const-string v1, "GPCLapManager"

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "searchTimes"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->i:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget p1, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->i:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->i:I

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "second searchTimes:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->i:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget p1, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->i:I

    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    iget-object p1, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->b:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseListener;

    iget-object v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->g:Ljava/util/Map;

    invoke-interface {p1, v0}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseListener;->onGPCGetPurchaseProuduct(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public handleConsumablePurchase(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)V
    .locals 10

    const-string v0, "GPCLapManager"

    const-string v1, "sku:"

    const-string v2, "userId:"

    const-string v3, "Canceled receiptId:"

    const-string v4, "receiptId:"

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->a(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)V

    return-void

    .line 5
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->f:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->m:Lcom/gpc/sdk/payment/service/PurchaseService;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->f:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->f:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v1, v8, p2}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$b;

    invoke-direct {v9, p0, p1}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$b;-><init>(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;Lcom/amazon/device/iap/model/Receipt;)V

    .line 13
    invoke-interface/range {v2 .. v9}, Lcom/gpc/sdk/payment/service/PurchaseService;->submitAmazon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/SubmittalAmazonOfPurchaseFinishedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    nop

    .line 42
    const-string p2, "Purchase cannot be completed, please retry"

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 45
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 48
    :goto_0
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->purchaseFailed(Ljava/lang/String;)V

    return-void
.end method

.method public handleReceipt(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$d;->a:[I

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->getProductType()Lcom/amazon/device/iap/model/ProductType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->handleConsumablePurchase(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)V

    return-void
.end method

.method public initialize(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->b:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseListener;

    return-void
.end method

.method public isLoadItemsEnd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public loadItems(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$PaymentItemsListener;)V
    .locals 1

    .line 1
    const-string v0, "amazonmobile"

    invoke-virtual {p0, v0, p1}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->loadItems(Ljava/lang/String;Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$PaymentItemsListener;)V

    return-void
.end method

.method public loadItems(Ljava/lang/String;Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$PaymentItemsListener;)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->g:Ljava/util/Map;

    const/4 v1, 0x0

    const-string v2, "10"

    const-string v3, "120405"

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/16 p1, 0x65

    .line 3
    invoke-static {v3, v2, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1, v1}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$PaymentItemsListener;->onPaymentItemsLoadFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    const-string p1, "GPCLapManager"

    const-string v0, "\u4e0a\u6b21\u8bf7\u6c42\u672a\u7ed3\u675f\uff0c\u8bf7\u7b49\u5f85\u7ed3\u675f\u540e\u91cd\u65b0\u83b7\u53d6\u5546\u54c1\u4fe1\u606f"

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x66

    .line 11
    invoke-static {v3, v2, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1, v1}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$PaymentItemsListener;->onPaymentItemsLoadFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 14
    :cond_1
    invoke-static {}, Lcom/gpc/sdk/utils/factory/PaymentFactory;->getPaymentService()Lcom/gpc/sdk/payment/service/PaymentService;

    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->f:Ljava/lang/String;

    new-instance v7, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$a;

    invoke-direct {v7, p0, p2}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$a;-><init>(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$PaymentItemsListener;)V

    const-string v5, ""

    const/4 v6, 0x1

    move-object v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/gpc/sdk/payment/service/PaymentService;->loadItemsAndUserLimit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/gpc/sdk/payment/listener/PaymentItemsAndUserLimitListener;)V

    return-void
.end method

.method public pay(Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)Z
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->k:Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;

    .line 3
    iget-object p2, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->g:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-static {p1}, Lcom/amazon/device/iap/PurchasingService;->purchase(Ljava/lang/String;)Lcom/amazon/device/iap/model/RequestId;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public purchaseFailed(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "purchaseFailed sku:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCLapManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->b:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseListener;

    sget-object v1, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseFailureType;->IAB_PURCHASE:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseFailureType;

    invoke-interface {v0, v1, p1}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseListener;->onGPCPurchaseFailed(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseFailureType;Ljava/lang/String;)V

    return-void
.end method

.method public purchaseInvalidProductFailed(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "purchaseInvalidProductFailed sku:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCLapManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->b:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseListener;

    sget-object v1, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseFailureType;->INVALID_PRODUCT_PURCHASE:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseFailureType;

    invoke-interface {v0, v1, p1}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseListener;->onGPCPurchaseFailed(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$GPCPurchaseFailureType;Ljava/lang/String;)V

    return-void
.end method

.method public setAmazonUserId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->d:Lcom/gpc/sdk/payment/amazon_iap/GPCUserIapData;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->d:Lcom/gpc/sdk/payment/amazon_iap/GPCUserIapData;

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->d:Lcom/gpc/sdk/payment/amazon_iap/GPCUserIapData;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/amazon_iap/GPCUserIapData;->getAmazonUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/payment/amazon_iap/GPCUserIapData;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->d:Lcom/gpc/sdk/payment/amazon_iap/GPCUserIapData;

    return-void
.end method
