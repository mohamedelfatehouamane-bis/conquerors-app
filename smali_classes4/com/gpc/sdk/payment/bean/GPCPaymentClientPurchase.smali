.class public Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final q:Ljava/lang/String; = "GPCPaymentClientPurchase"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:J

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->i:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getPurchaseTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->f:J

    .line 8
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->g:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->h:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->isAutoRenewing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->k:Z

    .line 11
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSignature()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->j:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getState()I

    move-result v0

    iput v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->l:I

    .line 13
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->isAcknowledged()Z

    move-result p1

    iput-boolean p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->m:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->a:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;->getIsConsumable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->n:Z

    .line 50
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;->getJsonString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->i:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;->getItemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->d:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;->getPurchaseDate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->p:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;->getPassThroughParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->g:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;->getPurchaseId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->o:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;->getPaymentId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->b:Ljava/lang/String;

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->m:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->a:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;->getIsConsumable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->n:Z

    .line 60
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;->getJsonString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->i:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;->getItemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->d:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;->getPurchaseDate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->p:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;->getPassThroughParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->g:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;->getPurchaseId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->o:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;->getPaymentId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->b:Ljava/lang/String;

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->m:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/Purchase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->a:Ljava/lang/String;

    .line 16
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->i:Ljava/lang/String;

    .line 17
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->b:Ljava/lang/String;

    .line 18
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->c:Ljava/lang/String;

    .line 19
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->d:Ljava/lang/String;

    .line 21
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->e:Ljava/util/List;

    .line 23
    :cond_0
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->f:J

    .line 24
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->g:Ljava/lang/String;

    .line 25
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->h:Ljava/lang/String;

    .line 26
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->isAutoRenewing()Z

    move-result p1

    iput-boolean p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->k:Z

    .line 27
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->j:Ljava/lang/String;

    .line 28
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result p1

    iput p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->l:I

    .line 29
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result p1

    iput-boolean p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->m:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->a:Ljava/lang/String;

    .line 69
    const-string v0, "inapp"

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->n:Z

    .line 70
    iput-object p2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->i:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->j:Ljava/lang/String;

    .line 74
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->i:Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    const-string p2, "orderId"

    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->b:Ljava/lang/String;

    .line 76
    const-string p2, "packageName"

    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->c:Ljava/lang/String;

    .line 77
    const-string p2, "productId"

    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->d:Ljava/lang/String;

    .line 78
    const-string p2, "purchaseTime"

    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->f:J

    .line 79
    const-string p2, "developerPayload"

    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->g:Ljava/lang/String;

    .line 80
    const-string p2, "purchaseToken"

    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->h:Ljava/lang/String;

    .line 81
    const-string p2, "autoRenewing"

    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->k:Z

    .line 82
    const-string p2, "purchaseState"

    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 84
    const-string p2, "GPCPaymentClientPurchase"

    const-string p3, ""

    invoke-static {p2, p3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    :goto_1
    iput-boolean v1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->m:Z

    return-void
.end method

.method public constructor <init>(Lru/rustore/sdk/pay/model/ProductPurchase;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Lru/rustore/sdk/pay/model/ProductPurchase;->getProductType()Lru/rustore/sdk/pay/model/ProductType;

    move-result-object v0

    sget-object v1, Lru/rustore/sdk/pay/model/ProductType;->CONSUMABLE_PRODUCT:Lru/rustore/sdk/pay/model/ProductType;

    if-ne v0, v1, :cond_0

    const-string v0, "inapp"

    goto :goto_0

    :cond_0
    const-string v0, "subs"

    :goto_0
    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->a:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->i:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lru/rustore/sdk/pay/model/ProductPurchase;->getOrderId()Lru/rustore/sdk/pay/model/OrderId;

    move-result-object v2

    invoke-virtual {v2}, Lru/rustore/sdk/pay/model/OrderId;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->b:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lru/rustore/sdk/pay/model/ProductPurchase;->getPurchaseId()Lru/rustore/sdk/pay/model/PurchaseId;

    move-result-object v2

    invoke-virtual {v2}, Lru/rustore/sdk/pay/model/PurchaseId;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->o:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->c:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lru/rustore/sdk/pay/model/ProductPurchase;->getProductId()Lru/rustore/sdk/pay/model/ProductId;

    move-result-object v2

    invoke-virtual {v2}, Lru/rustore/sdk/pay/model/ProductId;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->d:Ljava/lang/String;

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set sku: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GPCPaymentClientPurchase"

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lru/rustore/sdk/pay/model/ProductPurchase;->getPurchaseTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->f:J

    .line 41
    invoke-virtual {p1}, Lru/rustore/sdk/pay/model/ProductPurchase;->getDeveloperPayload()Lru/rustore/sdk/pay/model/DeveloperPayload;

    move-result-object v2

    invoke-virtual {v2}, Lru/rustore/sdk/pay/model/DeveloperPayload;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->g:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lru/rustore/sdk/pay/model/ProductPurchase;->getInvoiceId()Lru/rustore/sdk/pay/model/InvoiceId;

    move-result-object v2

    invoke-virtual {v2}, Lru/rustore/sdk/pay/model/InvoiceId;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->h:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lru/rustore/sdk/pay/model/ProductPurchase;->getProductType()Lru/rustore/sdk/pay/model/ProductType;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->k:Z

    .line 44
    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->j:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lru/rustore/sdk/pay/model/ProductPurchase;->getStatus()Lru/rustore/sdk/pay/model/ProductPurchaseStatus;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->l:I

    .line 46
    invoke-virtual {p1}, Lru/rustore/sdk/pay/model/ProductPurchase;->getStatus()Lru/rustore/sdk/pay/model/ProductPurchaseStatus;

    move-result-object p1

    sget-object v0, Lru/rustore/sdk/pay/model/ProductPurchaseStatus;->CONFIRMED:Lru/rustore/sdk/pay/model/ProductPurchaseStatus;

    if-ne p1, v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    iput-boolean v3, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->m:Z

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    const-string p2, "GPCPaymentClientPurchase"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    const-string p2, "GPCPaymentClientPurchase"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final c(Lorg/json/JSONObject;Ljava/lang/String;)J
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 3
    const-string p2, "GPCPaymentClientPurchase"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    const-string p2, "GPCPaymentClientPurchase"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->f:J

    return-wide v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getSkus()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->e:Ljava/util/List;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->l:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->h:Ljava/lang/String;

    return-object v0
.end method

.method public isAcknowledged()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->m:Z

    return v0
.end method

.method public isAutoRenewing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->k:Z

    return v0
.end method

.method public isConsumable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->n:Z

    return v0
.end method

.method public isPending()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setSkus(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->e:Ljava/util/List;

    return-void
.end method

.method public toAllString()Ljava/lang/String;
    .locals 12

    const-string v0, "\'}"

    const-string v1, "\', purchaseDate=\'"

    const-string v2, "\', isAutoRenewing="

    const-string v3, "\', signature=\'"

    const-string v4, "\', originalJson=\'"

    const-string v5, "\', token=\'"

    const-string v6, "\', skus="

    const-string v7, "\', sku=\'"

    const-string v8, "\', packageName=\'"

    const-string v9, "\', orderId=\'"

    const-string v10, "GPCPaymentClientPurchase{itemType=\'"

    .line 1
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->a:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->b:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->c:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->d:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->e:Ljava/util/List;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", purchaseTime="

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->f:J

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", developerPayload=\'"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->g:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->h:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->i:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->j:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->k:Z

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", state="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->l:I

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isAcknowledged="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->m:Z

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isConsumable="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->n:Z

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", purchaseId=\'"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->o:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->p:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 20
    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PurchaseInfo(type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
