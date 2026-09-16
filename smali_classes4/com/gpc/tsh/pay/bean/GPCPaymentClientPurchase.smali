.class public Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GPCPaymentClientPurchase"


# instance fields
.field private developerPayload:Ljava/lang/String;

.field private isAcknowledged:Z

.field private isAutoRenewing:Z

.field private isConsumable:Z

.field private itemType:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private originalJson:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private purchaseDate:Ljava/lang/String;

.field private purchaseId:Ljava/lang/String;

.field private purchaseTime:J

.field private signature:Ljava/lang/String;

.field private sku:Ljava/lang/String;

.field private skus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private state:I

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->itemType:Ljava/lang/String;

    iput-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->itemType:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->originalJson:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->orderId:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->packageName:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->sku:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getPurchaseTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->purchaseTime:J

    .line 8
    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->developerPayload:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->token:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->isAutoRenewing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->isAutoRenewing:Z

    .line 11
    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getSignature()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->signature:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getState()I

    move-result v0

    iput v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->state:I

    .line 13
    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->isAcknowledged()Z

    move-result p1

    iput-boolean p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->isAcknowledged:Z

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
    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->itemType:Ljava/lang/String;

    .line 16
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->originalJson:Ljava/lang/String;

    .line 17
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->orderId:Ljava/lang/String;

    .line 18
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->packageName:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->sku:Ljava/lang/String;

    .line 21
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->skus:Ljava/util/List;

    .line 23
    :cond_0
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->purchaseTime:J

    .line 24
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->developerPayload:Ljava/lang/String;

    .line 25
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->token:Ljava/lang/String;

    .line 26
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->isAutoRenewing()Z

    move-result p1

    iput-boolean p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->isAutoRenewing:Z

    .line 27
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->signature:Ljava/lang/String;

    .line 28
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result p1

    iput p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->state:I

    .line 29
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result p1

    iput-boolean p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->isAcknowledged:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->itemType:Ljava/lang/String;

    .line 32
    const-string v0, "inapp"

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->isConsumable:Z

    .line 33
    iput-object p2, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->originalJson:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->signature:Ljava/lang/String;

    .line 37
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->originalJson:Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    const-string p2, "orderId"

    invoke-direct {p0, p1, p2}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->orderId:Ljava/lang/String;

    .line 39
    const-string p2, "packageName"

    invoke-direct {p0, p1, p2}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->packageName:Ljava/lang/String;

    .line 40
    const-string p2, "productId"

    invoke-direct {p0, p1, p2}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->sku:Ljava/lang/String;

    .line 41
    const-string p2, "purchaseTime"

    invoke-direct {p0, p1, p2}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->purchaseTime:J

    .line 42
    const-string p2, "developerPayload"

    invoke-direct {p0, p1, p2}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->developerPayload:Ljava/lang/String;

    .line 43
    const-string p2, "purchaseToken"

    invoke-direct {p0, p1, p2}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->token:Ljava/lang/String;

    .line 44
    const-string p2, "autoRenewing"

    invoke-direct {p0, p1, p2}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->isAutoRenewing:Z

    .line 45
    const-string p2, "purchaseState"

    invoke-direct {p0, p1, p2}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->state:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 47
    const-string p2, "GPCPaymentClientPurchase"

    const-string p3, ""

    invoke-static {p2, p3, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :goto_1
    iput-boolean v1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->isAcknowledged:Z

    return-void
.end method

.method private getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z
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

    invoke-static {p2, v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I
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

    invoke-static {p2, v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J
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

    invoke-static {p2, v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method private getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
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

    invoke-static {p2, v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->developerPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->itemType:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->originalJson:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->purchaseDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->purchaseId:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->purchaseTime:J

    return-wide v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->sku:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->skus:Ljava/util/List;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->state:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->token:Ljava/lang/String;

    return-object v0
.end method

.method public isAcknowledged()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->isAcknowledged:Z

    return v0
.end method

.method public isAutoRenewing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->isAutoRenewing:Z

    return v0
.end method

.method public isConsumable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->isConsumable:Z

    return v0
.end method

.method public isPending()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->state:I

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
    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->skus:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PurchaseInfo(type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->itemType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->originalJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
