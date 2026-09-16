.class public Lcom/gpc/ops/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/service/PaymentService;


# static fields
.field public static b:Ljava/lang/String; = "PaymentServiceAGImpl"


# instance fields
.field public a:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;->getService()Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/ops/r;->a:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/ops/r;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcom/gpc/tsh/pay/flow/listener/PaymentItemsAndUserLimitListener;Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 27
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 28
    invoke-interface {p0, p1, p2}, Lcom/gpc/tsh/pay/flow/listener/PaymentItemsAndUserLimitListener;->onPaymentItemsLoadFinished(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/ops/d;)V

    return-void

    .line 30
    :cond_0
    new-instance v0, Lcom/gpc/ops/d;

    sget-object v1, Lcom/gpc/tsh/pay/bean/GPCPaymentPurchaseLimitation;->GPCPaymentPurchaseLimitationNone:Lcom/gpc/tsh/pay/bean/GPCPaymentPurchaseLimitation;

    invoke-virtual {v1}, Lcom/gpc/tsh/pay/bean/GPCPaymentPurchaseLimitation;->getValue()I

    move-result v1

    invoke-direct {v0, p3, p2, v1}, Lcom/gpc/ops/d;-><init>(Ljava/util/List;Ljava/util/List;I)V

    .line 31
    invoke-interface {p0, p1, v0}, Lcom/gpc/tsh/pay/flow/listener/PaymentItemsAndUserLimitListener;->onPaymentItemsLoadFinished(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/ops/d;)V

    return-void
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
            "Lcom/gpc/tsh/pay/bean/GPCGameItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 21
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 23
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 24
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 25
    invoke-static {v2, p2}, Lcom/gpc/tsh/pay/bean/GPCGameItem;->createFromJsonV2(Lorg/json/JSONObject;Z)Lcom/gpc/tsh/pay/bean/GPCGameItem;

    move-result-object v2

    .line 26
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
            "Lcom/gpc/tsh/pay/bean/GPCGameItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 16
    const-string v0, "card_list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 19
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/gpc/ops/r;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/gpc/tsh/pay/listener/PaymentItemsListener;)V
    .locals 9

    .line 2
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 5
    const-string v1, "game_id"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string v0, "pay_method"

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string p2, "user_id"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    const-string p1, "labels"

    invoke-virtual {v3, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/gpc/ops/r;->a:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;

    new-instance v8, Lcom/gpc/ops/r$a;

    invoke-direct {v8, p0, p5}, Lcom/gpc/ops/r$a;-><init>(Lcom/gpc/ops/r;Lcom/gpc/tsh/pay/listener/PaymentItemsListener;)V

    const/16 v5, 0x3a98

    const/4 v7, 0x0

    const-string v2, "/pay/hub/get_card_list"

    const/16 v4, 0x3a98

    move v6, p4

    invoke-interface/range {v1 .. v8}, Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;->getRequest(Ljava/lang/String;Ljava/util/HashMap;IIZLcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

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
            "Lcom/gpc/tsh/pay/bean/GPCGameItem;",
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
    invoke-virtual {p0, p1, p2}, Lcom/gpc/ops/r;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public loadItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/gpc/tsh/pay/flow/listener/PaymentItemsAndUserLimitListener;)V
    .locals 6

    .line 1
    new-instance v5, Lcom/gpc/ops/r$$ExternalSyntheticLambda0;

    invoke-direct {v5, p5}, Lcom/gpc/ops/r$$ExternalSyntheticLambda0;-><init>(Lcom/gpc/tsh/pay/flow/listener/PaymentItemsAndUserLimitListener;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/gpc/ops/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/gpc/tsh/pay/listener/PaymentItemsListener;)V

    return-void
.end method
