.class public Lcom/ProductHelper;
.super Ljava/lang/Object;
.source "ProductHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ProductHelper$BuyType;
    }
.end annotation


# static fields
.field private static GameInstance:Lcom/igg/android/conquerors/col; = null

.field private static final TAG:Ljava/lang/String; = "ProductHelper"

.field static s_Instance:Lcom/ProductHelper;

.field static s_nConsumptionID:J

.field static s_nProductID:J

.field static s_strServer:Ljava/lang/String;


# instance fields
.field _products:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_strGameId:Ljava/lang/String;

.field private m_strIggId:Ljava/lang/String;

.field private paymentManager:Lcom/gpc/sdk/payment/GPCPayment;

.field private paymentReady:Z


# direct methods
.method static bridge synthetic -$$Nest$fputpaymentManager(Lcom/ProductHelper;Lcom/gpc/sdk/payment/GPCPayment;)V
    .locals 0

    iput-object p1, p0, Lcom/ProductHelper;->paymentManager:Lcom/gpc/sdk/payment/GPCPayment;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpaymentReady(Lcom/ProductHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ProductHelper;->paymentReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadItems(Lcom/ProductHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ProductHelper;->loadItems(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monLoadProductFinish(Lcom/ProductHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/ProductHelper;->onLoadProductFinish()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;
    .locals 1

    sget-object v0, Lcom/ProductHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/ProductHelper;->paymentReady:Z

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/ProductHelper;->paymentManager:Lcom/gpc/sdk/payment/GPCPayment;

    return-void
.end method

.method private createPayload()Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;
    .locals 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPCID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ServerID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ProductHelper;->s_strServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCPaymentPayload"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;

    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ProductHelper;->s_strServer:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static init(Lcom/igg/android/conquerors/col;)Lcom/ProductHelper;
    .locals 0

    .line 52
    sput-object p0, Lcom/ProductHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    .line 53
    sget-object p0, Lcom/ProductHelper;->s_Instance:Lcom/ProductHelper;

    if-nez p0, :cond_0

    .line 54
    new-instance p0, Lcom/ProductHelper;

    invoke-direct {p0}, Lcom/ProductHelper;-><init>()V

    sput-object p0, Lcom/ProductHelper;->s_Instance:Lcom/ProductHelper;

    .line 56
    :cond_0
    sget-object p0, Lcom/ProductHelper;->s_Instance:Lcom/ProductHelper;

    return-object p0
.end method

.method private initPay()V
    .locals 4

    .line 205
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    sget-object v1, Lcom/ProductHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    sget-object v2, Lcom/gpc/sdk/GPCSDKConstant$PaymentType;->GOOGLE_PLAY:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    new-instance v3, Lcom/ProductHelper$3;

    invoke-direct {v3, p0}, Lcom/ProductHelper$3;-><init>(Lcom/ProductHelper;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/gpc/sdk/Kungfu;->prepareInAppPurchase(Landroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseListener;)V

    return-void
.end method

.method private loadItems(Z)V
    .locals 2

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/ProductHelper;->paymentManager:Lcom/gpc/sdk/payment/GPCPayment;

    if-nez v0, :cond_0

    .line 502
    const-string p1, "ProductHelper"

    const-string v0, "paymentManager == null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 506
    :cond_0
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/GPCPayment;->setGetThirdPlatormPrice(Z)V

    .line 508
    iget-object p1, p0, Lcom/ProductHelper;->paymentManager:Lcom/gpc/sdk/payment/GPCPayment;

    const-string v0, "android"

    new-instance v1, Lcom/ProductHelper$5;

    invoke-direct {v1, p0}, Lcom/ProductHelper$5;-><init>(Lcom/ProductHelper;)V

    invoke-virtual {p1, v0, v1}, Lcom/gpc/sdk/payment/GPCPayment;->loadItems(Ljava/lang/String;Lcom/gpc/sdk/payment/GPCPayment$GPCPaymentItemsListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 543
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private onLoadProductFinish()V
    .locals 9

    .line 549
    iget-object v0, p0, Lcom/ProductHelper;->_products:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 552
    const-string v0, ""

    const/4 v1, 0x0

    move-object v2, v0

    :goto_0
    iget-object v3, p0, Lcom/ProductHelper;->_products:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 554
    iget-object v3, p0, Lcom/ProductHelper;->_products:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/sdk/payment/bean/GPCGameItem;

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 556
    :cond_0
    invoke-virtual {v3}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 559
    invoke-virtual {v3}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getPricing()Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 564
    :cond_1
    invoke-virtual {v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->isInStorePriceAvailable()Z

    move-result v5

    const-string v6, "ProductHelper"

    if-eqz v5, :cond_2

    .line 566
    invoke-virtual {v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->getInStorePrice()Lcom/gpc/sdk/payment/bean/GPCGameItemPrice;

    move-result-object v5

    invoke-interface {v5}, Lcom/gpc/sdk/payment/bean/GPCGameItemPrice;->getAmount()D

    move-result-wide v7

    .line 567
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v7, v8}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v7, 0x2

    const/4 v8, 0x4

    .line 568
    invoke-virtual {v5, v7, v8}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v7

    .line 569
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    .line 570
    invoke-virtual {v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->getInStorePrice()Lcom/gpc/sdk/payment/bean/GPCGameItemPrice;

    move-result-object v3

    invoke-interface {v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPrice;->getCurrency()Ljava/lang/String;

    move-result-object v3

    .line 571
    const-string v7, "isInStorePriceAvailable"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 573
    :cond_2
    invoke-virtual {v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->getPriceTag()Lcom/gpc/sdk/payment/bean/GPCGameItemPriceTag;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 574
    invoke-virtual {v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->getPriceTag()Lcom/gpc/sdk/payment/bean/GPCGameItemPriceTag;

    move-result-object v3

    invoke-interface {v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPriceTag;->getText()Ljava/lang/String;

    move-result-object v5

    .line 577
    const-string v3, "getPriceTag"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v0

    .line 583
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 584
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 585
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "newTemp :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 589
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 591
    sget-object v0, Lcom/ProductHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jniCallback;->retProductList(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method static requestBuyProduct(JLjava/lang/String;J)V
    .locals 7

    const-string v0, "s_nProductID != 0 --> "

    .line 61
    const-string v1, "requestBuyProduct---------------"

    const-string v2, "ProductHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :try_start_0
    sget-wide v3, Lcom/ProductHelper;->s_nProductID:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Lcom/ProductHelper;->s_nProductID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v0, Lcom/ProductHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    .line 66
    sget-wide v1, Lcom/ProductHelper;->s_nProductID:J

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/jniCallback;->retBuyProduct(IJI)V

    .line 67
    sput-wide v5, Lcom/ProductHelper;->s_nProductID:J

    .line 69
    :cond_0
    sput-wide p0, Lcom/ProductHelper;->s_nProductID:J

    .line 70
    sput-object p2, Lcom/ProductHelper;->s_strServer:Ljava/lang/String;

    .line 71
    sput-wide p3, Lcom/ProductHelper;->s_nConsumptionID:J

    .line 72
    sget-object p0, Lcom/ProductHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    new-instance p1, Lcom/ProductHelper$1;

    invoke-direct {p1}, Lcom/ProductHelper$1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static requestProducts()V
    .locals 2

    .line 157
    sget-object v0, Lcom/ProductHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    new-instance v1, Lcom/ProductHelper$2;

    invoke-direct {v1}, Lcom/ProductHelper$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static requestTranslate(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 612
    sget-object v0, Lcom/ProductHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    new-instance v1, Lcom/ProductHelper$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ProductHelper$6;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method Initialize()V
    .locals 4

    const-string v0, "mlog-Initialize2 : "

    .line 165
    const-string v1, "mlog-Initialize"

    const-string v2, "ProductHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 169
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/ProductHelper;->paymentManager:Lcom/gpc/sdk/payment/GPCPayment;

    if-eqz v1, :cond_3

    .line 176
    iget-boolean v1, p0, Lcom/ProductHelper;->paymentReady:Z

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/ProductHelper;->m_strGameId:Ljava/lang/String;

    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/Kungfu;->getGameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ProductHelper;->m_strIggId:Ljava/lang/String;

    .line 179
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    const-string v1, "no change!"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/ProductHelper;->paymentManager:Lcom/gpc/sdk/payment/GPCPayment;

    invoke-virtual {v1}, Lcom/gpc/sdk/payment/GPCPayment;->destroy()V

    const/4 v1, 0x0

    .line 186
    iput-object v1, p0, Lcom/ProductHelper;->paymentManager:Lcom/gpc/sdk/payment/GPCPayment;

    goto :goto_1

    .line 172
    :cond_2
    :goto_0
    const-string v1, "no request GPCGameItem"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 189
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 195
    :cond_3
    :goto_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " iggid : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getGameId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ProductHelper;->m_strGameId:Ljava/lang/String;

    .line 197
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ProductHelper;->m_strIggId:Ljava/lang/String;

    .line 198
    invoke-direct {p0}, Lcom/ProductHelper;->initPay()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method buyProduct(JLjava/lang/String;J)V
    .locals 6

    .line 92
    const-string p3, "ProductHelper"

    .line 0
    const-string v0, "@@@@1"

    const-string v1, "havePlayerStore:"

    const-string v2, "@@@@0"

    .line 92
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-boolean v2, p0, Lcom/ProductHelper;->paymentReady:Z

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-nez v2, :cond_1

    .line 94
    sget-object p1, Lcom/ProductHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->isMarketInstall()Z

    move-result p1

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 97
    sget-object p1, Lcom/ProductHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    .line 98
    sget-wide p4, Lcom/ProductHelper;->s_nProductID:J

    const/4 p2, 0x4

    invoke-virtual {p1, p2, p4, p5, v3}, Lcom/jniCallback;->retBuyProduct(IJI)V

    goto :goto_0

    .line 101
    :cond_0
    sget-object p1, Lcom/ProductHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->signIn()V

    .line 104
    :goto_0
    sput-wide v4, Lcom/ProductHelper;->s_nProductID:J

    return-void

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/ProductHelper;->paymentManager:Lcom/gpc/sdk/payment/GPCPayment;

    if-nez v1, :cond_2

    return-void

    .line 113
    :cond_2
    invoke-virtual {v1}, Lcom/gpc/sdk/payment/GPCPayment;->getPurchaseLimit()I

    move-result v1

    sget-object v2, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->GPCPaymentPurchaseLimitationBoth:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 115
    sget-object p1, Lcom/ProductHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    sget-wide p4, Lcom/ProductHelper;->s_nProductID:J

    const/16 p2, 0xa

    invoke-virtual {p1, p2, p4, p5, v3}, Lcom/jniCallback;->retBuyProduct(IJI)V

    .line 116
    sput-wide v4, Lcom/ProductHelper;->s_nProductID:J

    return-void

    .line 120
    :cond_3
    iget-object v1, p0, Lcom/ProductHelper;->paymentManager:Lcom/gpc/sdk/payment/GPCPayment;

    invoke-virtual {v1}, Lcom/gpc/sdk/payment/GPCPayment;->getPurchaseLimit()I

    move-result v1

    sget-object v2, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->GPCPaymentPurchaseLimitationDevice:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 122
    sget-object p1, Lcom/ProductHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    sget-wide p4, Lcom/ProductHelper;->s_nProductID:J

    const/16 p2, 0xb

    invoke-virtual {p1, p2, p4, p5, v3}, Lcom/jniCallback;->retBuyProduct(IJI)V

    .line 123
    sput-wide v4, Lcom/ProductHelper;->s_nProductID:J

    return-void

    .line 127
    :cond_4
    iget-object v1, p0, Lcom/ProductHelper;->paymentManager:Lcom/gpc/sdk/payment/GPCPayment;

    invoke-virtual {v1}, Lcom/gpc/sdk/payment/GPCPayment;->getPurchaseLimit()I

    move-result v1

    sget-object v2, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->GPCPaymentPurchaseLimitationUser:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 129
    sget-object p1, Lcom/ProductHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    sget-wide p4, Lcom/ProductHelper;->s_nProductID:J

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p4, p5, v3}, Lcom/jniCallback;->retBuyProduct(IJI)V

    .line 130
    sput-wide v4, Lcom/ProductHelper;->s_nProductID:J

    return-void

    .line 136
    :cond_5
    iget-object v1, p0, Lcom/ProductHelper;->paymentManager:Lcom/gpc/sdk/payment/GPCPayment;

    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/Kungfu;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gpc/sdk/payment/GPCPayment;->setGameId(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 138
    iget-object v2, p0, Lcom/ProductHelper;->paymentManager:Lcom/gpc/sdk/payment/GPCPayment;

    invoke-virtual {v2, v1}, Lcom/gpc/sdk/payment/GPCPayment;->setUserID(Ljava/lang/String;)V

    cmp-long v1, p4, v4

    if-lez v1, :cond_6

    .line 141
    iget-object p4, p0, Lcom/ProductHelper;->paymentManager:Lcom/gpc/sdk/payment/GPCPayment;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p0}, Lcom/ProductHelper;->createPayload()Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;

    move-result-object v1

    invoke-virtual {p4, p5, v1}, Lcom/gpc/sdk/payment/GPCPayment;->subscribeTo(Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V

    goto :goto_1

    .line 145
    :cond_6
    iget-object p4, p0, Lcom/ProductHelper;->paymentManager:Lcom/gpc/sdk/payment/GPCPayment;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p0}, Lcom/ProductHelper;->createPayload()Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;

    move-result-object v1

    invoke-virtual {p4, p5, v1}, Lcom/gpc/sdk/payment/GPCPayment;->pay(Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V

    .line 147
    :goto_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initPayV2()V
    .locals 2

    .line 342
    const-string v0, "ProductHelper"

    const-string v1, "initPayV2()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPreparedInAppPurchase()Lcom/gpc/sdk/payment/GPCPayment;

    move-result-object v0

    new-instance v1, Lcom/ProductHelper$4;

    invoke-direct {v1, p0}, Lcom/ProductHelper$4;-><init>(Lcom/ProductHelper;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/GPCPayment;->initialize(Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 485
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/sdk/Kungfu;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 493
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/ProductHelper;->paymentManager:Lcom/gpc/sdk/payment/GPCPayment;

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {v0}, Lcom/gpc/sdk/payment/GPCPayment;->destroy()V

    const/4 v0, 0x0

    .line 605
    iput-object v0, p0, Lcom/ProductHelper;->paymentManager:Lcom/gpc/sdk/payment/GPCPayment;

    :cond_0
    return-void
.end method

.method onTranslate(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 621
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPreparedTranslator()Lcom/gpc/sdk/translate/GPCTranslator;

    move-result-object v0

    .line 622
    invoke-virtual {v0, p3}, Lcom/gpc/sdk/translate/GPCTranslator;->setTargetLanguage(Ljava/lang/String;)V

    const/16 p3, 0xbb8

    .line 624
    invoke-virtual {v0, p3}, Lcom/gpc/sdk/translate/GPCTranslator;->setTimeout(I)V

    .line 627
    new-instance p3, Lcom/gpc/sdk/translate/GPCTranslationSource;

    invoke-direct {p3, p4}, Lcom/gpc/sdk/translate/GPCTranslationSource;-><init>(Ljava/lang/String;)V

    .line 628
    new-instance p4, Lcom/ProductHelper$7;

    invoke-direct {p4, p0, p1, p2}, Lcom/ProductHelper$7;-><init>(Lcom/ProductHelper;J)V

    invoke-virtual {v0, p3, p4}, Lcom/gpc/sdk/translate/GPCTranslator;->translateText(Lcom/gpc/sdk/translate/GPCTranslationSource;Lcom/gpc/sdk/translate/GPCTranslatorListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p3

    .line 649
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 650
    sget-object p3, Lcom/ProductHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p3}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p3

    const-string p4, ""

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, p4, v0}, Lcom/jniCallback;->retTranslate(JLjava/lang/String;Z)V

    return-void
.end method
