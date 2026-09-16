.class public Lcom/gpc/operations/migrate/service/request/api/APIGatewaySingleLinkImpl;
.super Lcom/gpc/operations/migrate/service/request/api/SingleLinkImpl;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "APIGatewaySingleLinkImpl"


# instance fields
.field private config:Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;

.field private handler:Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback$Handler;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/gpc/operations/migrate/service/network/http/HTTPClient;Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback$Handler;Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/gpc/operations/migrate/service/request/api/SingleLinkImpl;-><init>(Ljava/lang/String;Lcom/gpc/operations/migrate/service/network/http/HTTPClient;)V

    .line 2
    new-instance p1, Lcom/gpc/operations/migrate/service/interceptors/HeaderIGXVerInterceptor;

    invoke-direct {p1}, Lcom/gpc/operations/migrate/service/interceptors/HeaderIGXVerInterceptor;-><init>()V

    invoke-virtual {p0, p1}, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;->addHTTPInterceptor(Lcom/gpc/operations/migrate/service/network/http/HTTPInterceptor;)V

    .line 3
    iput-object p3, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewaySingleLinkImpl;->handler:Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback$Handler;

    .line 4
    iput-object p4, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewaySingleLinkImpl;->config:Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;

    return-void
.end method

.method public static create(Ljava/lang/String;Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback$Handler;Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;)Lcom/gpc/operations/migrate/service/request/api/APIGatewaySingleLinkImpl;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/service/request/api/APIGatewaySingleLinkImpl;

    invoke-static {}, Lcom/gpc/operations/migrate/utils/factory/Factory;->httpFactory()Lcom/gpc/operations/migrate/utils/factory/IHTTPFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/gpc/operations/migrate/utils/factory/IHTTPFactory;->createHTTPClient()Lcom/gpc/operations/migrate/service/network/http/HTTPClient;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/gpc/operations/migrate/service/request/api/APIGatewaySingleLinkImpl;-><init>(Ljava/lang/String;Lcom/gpc/operations/migrate/service/network/http/HTTPClient;Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback$Handler;Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 3
    new-instance v6, Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback;

    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewaySingleLinkImpl;->handler:Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback$Handler;

    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewaySingleLinkImpl;->config:Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;

    invoke-direct {v6, p6, v0, v1}, Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback;-><init>(Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback$Handler;Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/api/SingleLinkImpl;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback;

    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewaySingleLinkImpl;->handler:Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback$Handler;

    iget-object v2, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewaySingleLinkImpl;->config:Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;

    invoke-direct {v0, p4, v1, v2}, Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback;-><init>(Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback$Handler;Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;)V

    invoke-super {p0, p1, p2, p3, v0}, Lcom/gpc/operations/migrate/service/request/api/SingleLinkImpl;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 2
    new-instance v5, Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback;

    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewaySingleLinkImpl;->handler:Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback$Handler;

    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewaySingleLinkImpl;->config:Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;

    invoke-direct {v5, p5, v0, v1}, Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback;-><init>(Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback$Handler;Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Lcom/gpc/operations/migrate/service/request/api/SingleLinkImpl;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 3
    new-instance v6, Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback;

    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewaySingleLinkImpl;->handler:Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback$Handler;

    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewaySingleLinkImpl;->config:Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;

    invoke-direct {v6, p6, v0, v1}, Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback;-><init>(Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback$Handler;Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/api/SingleLinkImpl;->post(Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 4
    new-instance v7, Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback;

    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewaySingleLinkImpl;->handler:Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback$Handler;

    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewaySingleLinkImpl;->config:Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;

    invoke-direct {v7, p7, v0, v1}, Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback;-><init>(Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback$Handler;Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-super/range {v0 .. v7}, Lcom/gpc/operations/migrate/service/request/api/SingleLinkImpl;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 5
    new-instance v8, Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback;

    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewaySingleLinkImpl;->handler:Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback$Handler;

    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewaySingleLinkImpl;->config:Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;

    move-object/from16 v2, p8

    invoke-direct {v8, v2, v0, v1}, Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback;-><init>(Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback$Handler;Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-super/range {v0 .. v8}, Lcom/gpc/operations/migrate/service/request/api/SingleLinkImpl;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 2
    new-instance v6, Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback;

    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewaySingleLinkImpl;->handler:Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback$Handler;

    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewaySingleLinkImpl;->config:Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;

    invoke-direct {v6, p6, v0, v1}, Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback;-><init>(Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback$Handler;Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/api/SingleLinkImpl;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback;

    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewaySingleLinkImpl;->handler:Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback$Handler;

    iget-object v2, p0, Lcom/gpc/operations/migrate/service/request/api/APIGatewaySingleLinkImpl;->config:Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;

    invoke-direct {v0, p4, v1, v2}, Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback;-><init>(Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback$Handler;Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;)V

    invoke-super {p0, p1, p2, p3, v0}, Lcom/gpc/operations/migrate/service/request/api/SingleLinkImpl;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method
