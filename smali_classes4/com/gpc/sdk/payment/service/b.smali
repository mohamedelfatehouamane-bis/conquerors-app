.class public Lcom/gpc/sdk/payment/service/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/service/PaymentService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/payment/service/b$l;
    }
.end annotation


# static fields
.field public static c:Ljava/lang/String; = "PaymentServiceAGImpl"

.field public static final d:I = 0x186a1

.field public static final e:I = 0x186a2

.field public static final f:I = 0x3a98

.field public static final g:I = 0x3a98


# instance fields
.field public a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

.field public b:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getService()Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/service/b;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    .line 3
    new-instance v1, Lcom/gpc/sdk/service/interceptors/GPCStringContentCacheInterceptor;

    invoke-direct {v1}, Lcom/gpc/sdk/service/interceptors/GPCStringContentCacheInterceptor;-><init>()V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;->addHTTPInterceptor(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)V

    .line 5
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getServiceRefactor()Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/service/b;->b:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    .line 6
    new-instance v1, Lcom/gpc/sdk/service/interceptors/GPCStringContentCacheInterceptor;

    invoke-direct {v1}, Lcom/gpc/sdk/service/interceptors/GPCStringContentCacheInterceptor;-><init>()V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;->addHTTPInterceptor(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)V

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/payment/service/b;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 61
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 63
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 64
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 65
    invoke-static {v2, p2}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->createFromJsonV2(Lorg/json/JSONObject;Z)Lcom/gpc/sdk/payment/bean/GPCGameItem;

    move-result-object v2

    .line 66
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public a(Lorg/json/JSONObject;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 56
    const-string v0, "card_list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 59
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/service/b;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IIFLjava/lang/String;ZLcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;)V
    .locals 11

    move/from16 v0, p5

    float-to-double v6, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    .line 28
    invoke-virtual/range {v0 .. v10}, Lcom/gpc/sdk/payment/service/b;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;DLjava/lang/String;ZLcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;DLjava/lang/String;ZLcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;)V
    .locals 2

    move v0, p3

    .line 2
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 3
    const-string v1, "user_id"

    invoke-virtual {p3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string p1, "g_id"

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string p1, "pay_method"

    invoke-virtual {p3, p1, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, ""

    if-ltz v0, :cond_0

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p8, "pc_id"

    invoke-virtual {p3, p8, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-ltz p4, :cond_1

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "anti_addiction_enabled"

    invoke-virtual {p3, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 15
    const-string p2, "anti_addiction_time_range"

    invoke-virtual {p3, p2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-wide/16 p4, 0x0

    cmpl-double p2, p6, p4

    if-ltz p2, :cond_3

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p6, p7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "anti_addiction_pcq"

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_3
    sget-object p1, Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;->CLOSE:Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    if-eqz p9, :cond_4

    .line 24
    sget-object p1, Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;->IMMEDIATELY_ONCE:Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    :cond_4
    move-object p6, p1

    .line 27
    iget-object p1, p0, Lcom/gpc/sdk/payment/service/b;->b:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    new-instance p7, Lcom/gpc/sdk/payment/service/a;

    invoke-direct {p7}, Lcom/gpc/sdk/payment/service/a;-><init>()V

    new-instance p8, Lcom/gpc/sdk/payment/service/b$d;

    invoke-direct {p8, p0, p10}, Lcom/gpc/sdk/payment/service/b$d;-><init>(Lcom/gpc/sdk/payment/service/b;Lcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;)V

    const-string p2, "/pay/hub/get_user_limit"

    const/16 p4, 0x1388

    const/16 p5, 0x1388

    invoke-interface/range {p1 .. p8}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;->getRequest(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/sdk/service/network/http/HTTPRetryStrategy;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILcom/gpc/sdk/payment/listener/PaymentQRWaitingForPayListener;)V
    .locals 10

    .line 79
    sget-object v0, Lcom/gpc/sdk/payment/service/b;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "waitingForQRPay:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 81
    const-string v0, "sn"

    invoke-virtual {v4, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v0, p3, 0x3e8

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "timeout"

    invoke-virtual {v4, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 85
    iget-object v2, p0, Lcom/gpc/sdk/payment/service/b;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    new-instance v8, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;

    invoke-direct {v8}, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;-><init>()V

    new-instance v9, Lcom/gpc/sdk/payment/service/b$a;

    invoke-direct {v9, p0, p4}, Lcom/gpc/sdk/payment/service/b$a;-><init>(Lcom/gpc/sdk/payment/service/b;Lcom/gpc/sdk/payment/listener/PaymentQRWaitingForPayListener;)V

    const/16 v6, 0x3a98

    move-object v3, p1

    move v7, p3

    invoke-interface/range {v2 .. v9}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;->postRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/PaymentQRPayListener;)V
    .locals 9

    .line 67
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 70
    const-string v1, "user_id"

    invoke-virtual {v3, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string p2, "game_id"

    invoke-virtual {v3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string p2, "pc_id"

    invoke-virtual {v3, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string p2, "quantity"

    invoke-virtual {v3, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 76
    const-string p2, "payload"

    invoke-virtual {v4, p2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v1, p0, Lcom/gpc/sdk/payment/service/b;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    new-instance v7, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;

    invoke-direct {v7}, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;-><init>()V

    new-instance v8, Lcom/gpc/sdk/payment/service/b$k;

    invoke-direct {v8, p0, p6}, Lcom/gpc/sdk/payment/service/b$k;-><init>(Lcom/gpc/sdk/payment/service/b;Lcom/gpc/sdk/payment/listener/PaymentQRPayListener;)V

    const/16 v5, 0x3a98

    const/16 v6, 0x3a98

    move-object v2, p1

    invoke-interface/range {v1 .. v8}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;->postRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/gpc/sdk/payment/listener/PaymentItemsListener;)V
    .locals 9

    .line 29
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfiguration;->inComplianceReview()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    sget-object p2, Lcom/gpc/sdk/payment/service/b;->c:Ljava/lang/String;

    const-string v1, "\u5408\u89c4\u6027\u5ba1\u67e5\u4e2d\uff0c\u4f7f\u7528\u9001\u5ba1\u6e20\u9053"

    invoke-static {p2, v1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string p2, "approval"

    .line 36
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 37
    const-string v1, "game_id"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v0, "pay_method"

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v0, "user_id"

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 41
    const-string p1, "labels"

    invoke-virtual {v3, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_1
    const-string p1, "android"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "amazonmobile"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "samsung"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x3a98

    const/16 v4, 0x3a98

    const/16 v5, 0x3a98

    goto :goto_1

    :cond_3
    :goto_0
    const/16 p1, 0xfa0

    const/16 p2, 0x1770

    const/16 v4, 0xfa0

    const/16 v5, 0x1770

    .line 50
    :goto_1
    sget-object p1, Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;->CLOSE:Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    if-eqz p4, :cond_4

    .line 52
    sget-object p1, Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;->IMMEDIATELY_ONCE:Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    :cond_4
    move-object v6, p1

    .line 55
    iget-object v1, p0, Lcom/gpc/sdk/payment/service/b;->b:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    new-instance v7, Lcom/gpc/sdk/payment/service/a;

    invoke-direct {v7}, Lcom/gpc/sdk/payment/service/a;-><init>()V

    new-instance v8, Lcom/gpc/sdk/payment/service/b$f;

    invoke-direct {v8, p0, p5}, Lcom/gpc/sdk/payment/service/b$f;-><init>(Lcom/gpc/sdk/payment/service/b;Lcom/gpc/sdk/payment/listener/PaymentItemsListener;)V

    const-string v2, "/pay/hub/get_card_list"

    invoke-interface/range {v1 .. v8}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;->getRequestWithCache(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/sdk/service/network/http/HTTPRetryStrategy;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralCacheRequestListener;)V

    return-void
.end method

.method public antiAddiction(Ljava/lang/String;ILjava/lang/String;DDDLjava/lang/String;Lcom/gpc/sdk/payment/listener/GPCPaymentAntiAddictionResultListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/gpc/sdk/payment/service/b;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "antiAddiction pcId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", payMethod:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", dailyQuota:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", monthlyQuota:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p8, p9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", currency:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/gpc/sdk/payment/service/b;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ssoToken is null?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string v1, "sso_token"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, ""

    if-ltz p2, :cond_0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "pc_id"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 13
    const-string p2, "pay_method"

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-wide/16 p2, 0x0

    cmpl-double v1, p4, p2

    if-lez v1, :cond_2

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "single_quota"

    invoke-virtual {v0, p5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    cmpl-double p4, p6, p2

    if-lez p4, :cond_3

    .line 21
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p6, p7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "daily_quota"

    invoke-virtual {v0, p5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    cmpl-double p4, p8, p2

    if-lez p4, :cond_4

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p8, p9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "monthly_quota"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_4
    invoke-static {p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 29
    const-string p1, "currency"

    invoke-virtual {v0, p1, p10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_5
    iget-object p1, p0, Lcom/gpc/sdk/payment/service/b;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    new-instance p2, Lcom/gpc/sdk/payment/service/a;

    invoke-direct {p2}, Lcom/gpc/sdk/payment/service/a;-><init>()V

    new-instance p3, Lcom/gpc/sdk/payment/service/b$c;

    invoke-direct {p3, p0, p11}, Lcom/gpc/sdk/payment/service/b$c;-><init>(Lcom/gpc/sdk/payment/service/b;Lcom/gpc/sdk/payment/listener/GPCPaymentAntiAddictionResultListener;)V

    const-string p4, "/pay/hub/anti_addiction"

    invoke-interface {p1, p4, v0, p2, p3}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;->getRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    return-void
.end method

.method public b(Lorg/json/JSONObject;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "sub_card_list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/service/b;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAlipayOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/PaymentOrdersNoListener;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object p3

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4
    const-string p4, "user_id"

    invoke-virtual {v2, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string p1, "game_id"

    invoke-virtual {v2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string p1, "item_id"

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string p1, "quantity"

    invoke-virtual {v2, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 10
    const-string p1, "payload"

    invoke-virtual {v3, p1, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "orderInfo"

    invoke-virtual {v3, p1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/b;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    new-instance v6, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;

    invoke-direct {v6}, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;-><init>()V

    new-instance v7, Lcom/gpc/sdk/payment/service/b$i;

    move-object/from16 p1, p8

    invoke-direct {v7, p0, p1}, Lcom/gpc/sdk/payment/service/b$i;-><init>(Lcom/gpc/sdk/payment/service/b;Lcom/gpc/sdk/payment/listener/PaymentOrdersNoListener;)V

    const/16 v4, 0x3a98

    const/16 v5, 0x3a98

    const-string v1, "/pay/gateway/alipay/app/create"

    invoke-interface/range {v0 .. v7}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;->postRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    return-void
.end method

.method public getAlipayQRPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/PaymentQRPayListener;)V
    .locals 7

    .line 1
    const-string v1, "/pay/gateway/alipay/qrpay/create"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/gpc/sdk/payment/service/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/PaymentQRPayListener;)V

    return-void
.end method

.method public getAlipayWaitingForQRPay(Ljava/lang/String;ILcom/gpc/sdk/payment/listener/PaymentQRWaitingForPayListener;)V
    .locals 1

    .line 1
    const-string v0, "/pay/gateway/alipay/qrpay/waiting_for_pay"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/gpc/sdk/payment/service/b;->a(Ljava/lang/String;Ljava/lang/String;ILcom/gpc/sdk/payment/listener/PaymentQRWaitingForPayListener;)V

    return-void
.end method

.method public getApprovalAppNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/ApprovalAppNotifyListener;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/factory/PaymentFactory;->getPurchaseService()Lcom/gpc/sdk/payment/service/PurchaseService;

    move-result-object v0

    .line 2
    new-instance v7, Lcom/gpc/sdk/payment/service/b$j;

    invoke-direct {v7, p0, p7}, Lcom/gpc/sdk/payment/service/b$j;-><init>(Lcom/gpc/sdk/payment/service/b;Lcom/gpc/sdk/payment/service/listener/ApprovalAppNotifyListener;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/gpc/sdk/payment/service/PurchaseService;->getApprovalAppNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/ApprovalAppNotifyListener;)V

    return-void
.end method

.method public getRustoreOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/PaymentItemsOrdersSerialListener;)V
    .locals 8

    .line 1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v0, "user_id"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-string p1, "game_id"

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string p1, "product_id"

    invoke-virtual {v2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string p1, "payload"

    invoke-virtual {v2, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 9
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/b;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    new-instance v6, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;

    invoke-direct {v6}, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;-><init>()V

    new-instance v7, Lcom/gpc/sdk/payment/service/b$b;

    invoke-direct {v7, p0, p5}, Lcom/gpc/sdk/payment/service/b$b;-><init>(Lcom/gpc/sdk/payment/service/b;Lcom/gpc/sdk/payment/listener/PaymentItemsOrdersSerialListener;)V

    const/16 v4, 0x3a98

    const/16 v5, 0x3a98

    const-string v1, "/pay/gateway/rustore/app/create"

    invoke-interface/range {v0 .. v7}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;->postRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    return-void
.end method

.method public getSamsungOrdersSerialNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/PaymentItemsOrdersSerialListener;)V
    .locals 8

    .line 1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "game_id"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-string v0, "user_id"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string p1, "item_id"

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 7
    const-string p1, "payload"

    invoke-virtual {v3, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/b;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    new-instance v6, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;

    invoke-direct {v6}, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;-><init>()V

    new-instance v7, Lcom/gpc/sdk/payment/service/b$g;

    invoke-direct {v7, p0, p4}, Lcom/gpc/sdk/payment/service/b$g;-><init>(Lcom/gpc/sdk/payment/service/b;Lcom/gpc/sdk/payment/listener/PaymentItemsOrdersSerialListener;)V

    const/16 v4, 0x3a98

    const/16 v5, 0x3a98

    const-string v1, "/pay/gateway/samsung/app/create"

    invoke-interface/range {v0 .. v7}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;->postRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    return-void
.end method

.method public getWeChatOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/PaymentAdvanceOrderDataListener;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object p4

    invoke-virtual {p4}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object p4

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3
    const-string v0, "game_id"

    invoke-virtual {v2, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string p4, "user_id"

    invoke-virtual {v2, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string p1, "item_id"

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string p1, "quantity"

    invoke-virtual {v2, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string p1, "item_name"

    invoke-virtual {v2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 11
    const-string p1, "payload"

    invoke-virtual {v3, p1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/b;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    new-instance v6, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;

    invoke-direct {v6}, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;-><init>()V

    new-instance v7, Lcom/gpc/sdk/payment/service/b$h;

    invoke-direct {v7, p0, p7}, Lcom/gpc/sdk/payment/service/b$h;-><init>(Lcom/gpc/sdk/payment/service/b;Lcom/gpc/sdk/payment/listener/PaymentAdvanceOrderDataListener;)V

    const/16 v4, 0x3a98

    const/16 v5, 0x3a98

    const-string v1, "/pay/gateway/wechat/app/create"

    invoke-interface/range {v0 .. v7}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;->postRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    return-void
.end method

.method public getWeChatQRPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/PaymentQRPayListener;)V
    .locals 7

    .line 1
    const-string v1, "/pay/gateway/wechat/qrpay/create"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/gpc/sdk/payment/service/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/PaymentQRPayListener;)V

    return-void
.end method

.method public getWeChatWaitingForQRPay(Ljava/lang/String;ILcom/gpc/sdk/payment/listener/PaymentQRWaitingForPayListener;)V
    .locals 1

    .line 1
    const-string v0, "/pay/gateway/wechat/qrpay/waiting_for_pay"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/gpc/sdk/payment/service/b;->a(Ljava/lang/String;Ljava/lang/String;ILcom/gpc/sdk/payment/listener/PaymentQRWaitingForPayListener;)V

    return-void
.end method

.method public loadItemsAndUserLimit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/gpc/sdk/payment/listener/PaymentItemsAndUserLimitListener;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/gpc/sdk/payment/service/b$l;

    invoke-direct {v0, p5}, Lcom/gpc/sdk/payment/service/b$l;-><init>(Lcom/gpc/sdk/payment/listener/PaymentItemsAndUserLimitListener;)V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object p5

    invoke-virtual {p5}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/gpc/sdk/payment/service/b$l;->a(Lcom/gpc/sdk/payment/service/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v4, v3

    move-object v3, p5

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/gpc/sdk/payment/service/b$l;->b(Lcom/gpc/sdk/payment/service/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public requestLimitState(Ljava/lang/String;Ljava/lang/String;IIFLjava/lang/String;Lcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;)V
    .locals 9

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    .line 2
    invoke-virtual/range {v0 .. v8}, Lcom/gpc/sdk/payment/service/b;->a(Ljava/lang/String;Ljava/lang/String;IIFLjava/lang/String;ZLcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;)V

    return-void
.end method

.method public requestLimitState(Ljava/lang/String;Ljava/lang/String;ILcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/PaymentLimitStateWithPriorityListener;)V
    .locals 11

    .line 1
    invoke-virtual {p4}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->getMonthly()D

    move-result-wide v6

    new-instance v10, Lcom/gpc/sdk/payment/service/b$e;

    move-object/from16 p4, p6

    invoke-direct {v10, p0, p4}, Lcom/gpc/sdk/payment/service/b$e;-><init>(Lcom/gpc/sdk/payment/service/b;Lcom/gpc/sdk/payment/listener/PaymentLimitStateWithPriorityListener;)V

    const-string v5, "month"

    const/4 v9, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v8, p5

    invoke-virtual/range {v0 .. v10}, Lcom/gpc/sdk/payment/service/b;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;DLjava/lang/String;ZLcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;)V

    return-void
.end method
