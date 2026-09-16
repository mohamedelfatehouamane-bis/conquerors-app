.class public Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FRAUD_REPAY_ORDER_TYPE:Ljava/lang/String; = "5"

.field public static final NORMAL_ORDER_TYPE:Ljava/lang/String; = "1"

.field public static final h:Ljava/lang/String; = "GPCGatewayPayload"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateInAppItemPayload(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$OrderType;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;-><init>()V

    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;->getCharId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;->getCharId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->setCharacterId(Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-virtual {p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;->getServerId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->setServerId(I)V

    .line 10
    invoke-virtual {p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;->getVaules()Ljava/util/Map;

    move-result-object p3

    .line 11
    invoke-virtual {v0, p3}, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->setCustomInfo(Ljava/util/Map;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Lcom/gpc/sdk/GPCConfiguration;->getGameDelegate()Lcom/gpc/sdk/GPCGameDelegate;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 16
    invoke-interface {p3}, Lcom/gpc/sdk/GPCGameDelegate;->getCharacter()Lcom/gpc/sdk/bean/GPCCharacter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 17
    invoke-virtual {v1}, Lcom/gpc/sdk/bean/GPCCharacter;->getCharId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 18
    invoke-virtual {v1}, Lcom/gpc/sdk/bean/GPCCharacter;->getCharId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->setCharacterId(Ljava/lang/String;)V

    .line 21
    :cond_2
    invoke-interface {p3}, Lcom/gpc/sdk/GPCGameDelegate;->getServerInfo()Lcom/gpc/sdk/bean/GPCServerInfo;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 23
    invoke-virtual {p3}, Lcom/gpc/sdk/bean/GPCServerInfo;->getServerId()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->setServerId(I)V

    .line 28
    :cond_3
    :goto_0
    invoke-virtual {v0, p0}, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->setUserId(Ljava/lang/String;)V

    .line 30
    sget-object p0, Lcom/gpc/sdk/GPCSDKConstant$OrderType;->FRAUD_REPAY:Lcom/gpc/sdk/GPCSDKConstant$OrderType;

    if-ne p1, p0, :cond_4

    .line 31
    const-string p0, "5"

    invoke-virtual {v0, p0}, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->setOrderType(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, p2}, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->setRmId(Ljava/lang/String;)V

    goto :goto_1

    .line 34
    :cond_4
    const-string p0, "1"

    invoke-virtual {v0, p0}, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->setOrderType(Ljava/lang/String;)V

    .line 36
    :goto_1
    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->toJson()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateSubItemPayload(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ""

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4
    :try_start_0
    const-string v2, "u_id"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v2, "game_id"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string p1, "payload"

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, p2}, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->generateInAppItemPayload(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$OrderType;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-static {v0, v0, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCharacterId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->g:Ljava/util/Map;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getRmId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->a:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setCharacterId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->b:Ljava/lang/String;

    return-void
.end method

.method public setCustomInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->g:Ljava/util/Map;

    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->d:Ljava/lang/String;

    return-void
.end method

.method public setOrderType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->e:Ljava/lang/String;

    return-void
.end method

.method public setRmId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->f:Ljava/lang/String;

    return-void
.end method

.method public setServerId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->a:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->c:Ljava/lang/String;

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v1, "u_id"

    iget-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v1, "server_id"

    iget v2, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5
    const-string v1, "cha_id"

    iget-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string v1, "game_item_id"

    iget-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string v1, "pm_type"

    iget-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string v1, "rmid"

    iget-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    iget-object v1, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->g:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 13
    iget-object v3, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->g:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 17
    const-string v2, ""

    const-string v3, "GPCGatewayPayload"

    invoke-static {v3, v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    const-string v1, "failed to toJson:"

    invoke-static {v3, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "userId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "serverId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "characterId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "itemId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "orderType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rmid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->g:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->g:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    return-object v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
