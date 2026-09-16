.class public Lcom/gpc/sdk/payment/service/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/service/SubscriptionService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/payment/service/d$d;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "SubscriptionGatewayServiceAGImpl"


# instance fields
.field public a:Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/gpc/sdk/payment/service/a;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/service/a;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/payment/service/d;->a:Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/service/d;Lorg/json/JSONObject;)Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/service/d;->a(Lorg/json/JSONObject;)Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2
    const-string v0, "server_id"

    const-string v1, "payload"

    const-string v2, "expires_at"

    const-string v3, "linked_product_id"

    const-string v4, "promotion_token"

    const-string v5, "promotion_tag"

    const-string v6, "changeable"

    const-string v7, ""

    const-string v8, "SubscriptionGatewayServiceAGImpl"

    new-instance v9, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;

    invoke-direct {v9}, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;-><init>()V

    .line 4
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v10, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v9, p1}, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->setChangeable(Z)V

    .line 8
    :cond_0
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->setPromotionTag(Ljava/lang/String;)V

    .line 11
    :cond_1
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 12
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->setPromotionToken(Ljava/lang/String;)V

    .line 14
    :cond_2
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 15
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->setLinkedProductId(Ljava/lang/String;)V

    .line 18
    :cond_3
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 19
    new-instance p1, Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;

    invoke-direct {p1}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;-><init>()V

    .line 20
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 21
    invoke-virtual {p1, v2, v3}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;->setExpiredAt(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :try_start_1
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 27
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 28
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    move-object v5, v7

    .line 30
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 32
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 33
    const-string v11, "cha_id"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v5, v10

    goto :goto_0

    .line 35
    :cond_4
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 36
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 38
    :cond_5
    invoke-interface {v2, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 41
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subscribed cha_id\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", server_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;

    invoke-direct {v0, v5, v4}, Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;-><init>(Ljava/lang/String;I)V

    .line 44
    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;->getVaules()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 45
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;->setAssociatedPaymentPayload(Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V

    .line 46
    invoke-virtual {v9, p1}, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->setSubscriptionPayload(Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v9

    :catch_0
    move-exception p1

    .line 49
    :try_start_2
    invoke-static {v8, v7, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 53
    invoke-static {v8, v7, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    return-object v9
.end method

.method public checkSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/GPCCheckSubscriptionListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/service/bean/GPCSubscriptionReceiptData;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/gpc/sdk/payment/service/listener/GPCCheckSubscriptionListener;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-string p1, "game_id"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string p1, "product_id"

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "receipt_data"

    if-eqz p4, :cond_1

    .line 5
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 7
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 8
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 9
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/gpc/sdk/payment/service/bean/GPCSubscriptionReceiptData;

    .line 11
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p4}, Lcom/gpc/sdk/payment/service/bean/GPCSubscriptionReceiptData;->getOriginalJson()Ljava/lang/String;

    move-result-object p4

    invoke-direct {v1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    .line 14
    const-string v1, "SubscriptionGatewayServiceAGImpl"

    const-string v2, ""

    invoke-static {v1, v2, p4}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 19
    :cond_1
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 20
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :goto_1
    const-string p1, "payload"

    invoke-virtual {v0, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance p1, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;

    const-string p2, "/pay/gateway/android/sub/check_subscription"

    invoke-direct {p1, p2}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/gpc/sdk/payment/service/d;->a:Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;

    .line 25
    invoke-interface {p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;->getHeaders()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;->heads(Ljava/util/Map;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 26
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->parameters(Ljava/util/HashMap;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    sget-object p2, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->POST:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    .line 27
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->method(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    new-instance p2, Lcom/gpc/sdk/payment/service/d$c;

    invoke-direct {p2, p0, p6}, Lcom/gpc/sdk/payment/service/d$c;-><init>(Lcom/gpc/sdk/payment/service/d;Lcom/gpc/sdk/payment/service/listener/GPCCheckSubscriptionListener;)V

    .line 28
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->requestFinishListener(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 87
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getServiceCall()Lcom/gpc/sdk/service/request/prefixe/IServiceCall;

    move-result-object p2

    .line 88
    invoke-virtual {p1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->build()Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/service/request/prefixe/IServiceCall;->call(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;)V

    return-void
.end method

.method public isSubscriptionAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionAvailableListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-string p1, "game_id"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string p1, "item_id"

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance p1, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;

    const-string p2, "/pay/gateway/trade/app/is_subscription_available"

    invoke-direct {p1, p2}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/gpc/sdk/payment/service/d;->a:Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;

    .line 7
    invoke-interface {p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;->getHeaders()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;->heads(Ljava/util/Map;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->parameters(Ljava/util/HashMap;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    sget-object p2, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->POST:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    .line 9
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->method(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    new-instance p2, Lcom/gpc/sdk/payment/service/d$b;

    invoke-direct {p2, p0, p4}, Lcom/gpc/sdk/payment/service/d$b;-><init>(Lcom/gpc/sdk/payment/service/d;Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionAvailableListener;)V

    .line 10
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->requestFinishListener(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 69
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getServiceCall()Lcom/gpc/sdk/service/request/prefixe/IServiceCall;

    move-result-object p2

    .line 70
    invoke-virtual {p1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->build()Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/service/request/prefixe/IServiceCall;->call(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;)V

    return-void
.end method

.method public notifySubscription(Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionNotifiedListener;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v0, "user_id"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-string p2, "game_id"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string p2, "signature"

    invoke-virtual {p1, p2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string p2, "transaction_id"

    invoke-virtual {p1, p2, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 8
    const-string p3, "payload"

    invoke-virtual {p2, p3, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-string p3, "signed_data"

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance p3, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;

    const-string p4, "/pay/gateway/android/sub/notify"

    invoke-direct {p3, p4}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/gpc/sdk/payment/service/d;->a:Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;

    .line 12
    invoke-interface {p4}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;->getHeaders()Ljava/util/Map;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;->heads(Ljava/util/Map;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p3

    .line 13
    invoke-virtual {p3, p2}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->body(Ljava/util/HashMap;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p2

    .line 14
    invoke-virtual {p2, p1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->parameters(Ljava/util/HashMap;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    sget-object p2, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->POST:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    .line 15
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->method(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    new-instance p2, Lcom/gpc/sdk/payment/service/d$a;

    invoke-direct {p2, p0, p8}, Lcom/gpc/sdk/payment/service/d$a;-><init>(Lcom/gpc/sdk/payment/service/d;Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionNotifiedListener;)V

    .line 16
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->requestFinishListener(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 69
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getServiceCall()Lcom/gpc/sdk/service/request/prefixe/IServiceCall;

    move-result-object p2

    .line 70
    invoke-virtual {p1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->build()Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/service/request/prefixe/IServiceCall;->call(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;)V

    return-void
.end method
