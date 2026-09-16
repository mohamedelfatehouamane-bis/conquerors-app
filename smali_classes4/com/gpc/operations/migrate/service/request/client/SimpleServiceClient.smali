.class public Lcom/gpc/operations/migrate/service/request/client/SimpleServiceClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/client/IServiceClient;


# static fields
.field private static final CONNECTION_TIMEOUT_DEFAULT:I = 0x3a98

.field private static final SO_TIMEOUT_DEFAULT:I = 0x3a98

.field public static final TAG:Ljava/lang/String; = "SimpleServiceClient"


# instance fields
.field protected apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

.field protected requestConfig:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/service/request/api/HTTPService;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/migrate/service/request/client/SimpleServiceClient;->requestConfig:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    .line 28
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/client/SimpleServiceClient;->apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    .line 29
    invoke-virtual {p0}, Lcom/gpc/operations/migrate/service/request/client/SimpleServiceClient;->connectTimeout()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->setConnectTimeOut(I)V

    .line 30
    iget-object p1, p0, Lcom/gpc/operations/migrate/service/request/client/SimpleServiceClient;->requestConfig:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    invoke-virtual {p0}, Lcom/gpc/operations/migrate/service/request/client/SimpleServiceClient;->readTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->setReadTimeOut(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/migrate/service/request/client/SimpleServiceClient;->requestConfig:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    .line 10
    new-instance v0, Lcom/gpc/operations/migrate/service/request/client/ServiceClientHeadersBuilder;

    new-instance v1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallDefaultCommonHeadsBuilder;

    invoke-direct {v1, p3, p4, p2}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallDefaultCommonHeadsBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lcom/gpc/operations/migrate/service/request/client/ServiceClientHeadersBuilder;-><init>(Ljava/lang/String;Lcom/gpc/operations/migrate/service/request/prefixe/IServiceCallCommonHeadsBuilder;)V

    invoke-static {p1, v0}, Lcom/gpc/operations/migrate/service/request/api/GenericSingleLinkImpl;->create(Ljava/lang/String;Lcom/gpc/operations/migrate/service/request/api/APIGatewayHeadersBuilder;)Lcom/gpc/operations/migrate/service/request/api/GenericSingleLinkImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/client/SimpleServiceClient;->apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    .line 11
    iget-object p1, p0, Lcom/gpc/operations/migrate/service/request/client/SimpleServiceClient;->requestConfig:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    invoke-virtual {p0}, Lcom/gpc/operations/migrate/service/request/client/SimpleServiceClient;->connectTimeout()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->setConnectTimeOut(I)V

    .line 12
    iget-object p1, p0, Lcom/gpc/operations/migrate/service/request/client/SimpleServiceClient;->requestConfig:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    invoke-virtual {p0}, Lcom/gpc/operations/migrate/service/request/client/SimpleServiceClient;->readTimeout()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->setReadTimeOut(I)V

    return-void
.end method

.method private instantiatedResponseListener(Lcom/gpc/operations/migrate/service/request/client/ServiceClientResponseListener;)Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/service/request/client/SimpleServiceClient$a;

    invoke-direct {v0, p0, p1}, Lcom/gpc/operations/migrate/service/request/client/SimpleServiceClient$a;-><init>(Lcom/gpc/operations/migrate/service/request/client/SimpleServiceClient;Lcom/gpc/operations/migrate/service/request/client/ServiceClientResponseListener;)V

    return-object v0
.end method


# virtual methods
.method public connectTimeout()I
    .locals 1

    const/16 v0, 0x3a98

    return v0
.end method

.method public get(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/client/ServiceClientResponseListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/client/ServiceClientResponseListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/client/SimpleServiceClient;->apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    iget-object v5, p0, Lcom/gpc/operations/migrate/service/request/client/SimpleServiceClient;->requestConfig:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    invoke-direct {p0, p4}, Lcom/gpc/operations/migrate/service/request/client/SimpleServiceClient;->instantiatedResponseListener(Lcom/gpc/operations/migrate/service/request/client/ServiceClientResponseListener;)Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;

    move-result-object v6

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    return-void
.end method

.method public post(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/client/ServiceClientResponseListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/client/ServiceClientResponseListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/client/SimpleServiceClient;->apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    iget-object v5, p0, Lcom/gpc/operations/migrate/service/request/client/SimpleServiceClient;->requestConfig:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    invoke-direct {p0, p4}, Lcom/gpc/operations/migrate/service/request/client/SimpleServiceClient;->instantiatedResponseListener(Lcom/gpc/operations/migrate/service/request/client/ServiceClientResponseListener;)Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;

    move-result-object v6

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    return-void
.end method

.method public readTimeout()I
    .locals 1

    const/16 v0, 0x3a98

    return v0
.end method
