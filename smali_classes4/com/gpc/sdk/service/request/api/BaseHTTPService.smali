.class public abstract Lcom/gpc/sdk/service/request/api/BaseHTTPService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/api/HTTPService;


# instance fields
.field private authHeadersInterceptor:Lcom/gpc/sdk/service/network/http/HTTPInterceptor;

.field protected headersBuilder:Lcom/gpc/sdk/service/request/api/APIGatewayHeadersBuilder;

.field protected restAPIClient:Lcom/gpc/sdk/service/network/http/HTTPClient;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/network/http/HTTPClient;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/gpc/sdk/service/request/api/BaseHTTPService$a;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/service/request/api/BaseHTTPService$a;-><init>(Lcom/gpc/sdk/service/request/api/BaseHTTPService;)V

    iput-object v0, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->authHeadersInterceptor:Lcom/gpc/sdk/service/network/http/HTTPInterceptor;

    .line 36
    iput-object p1, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/sdk/service/network/http/HTTPClient;

    .line 37
    invoke-virtual {p0}, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->initInterceptor()V

    return-void
.end method


# virtual methods
.method public addHTTPInterceptor(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/sdk/service/network/http/HTTPClient;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/service/network/http/HTTPClient;->addHTTPInterceptor(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)V

    return-void
.end method

.method public initInterceptor()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/sdk/service/network/http/HTTPClient;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/gpc/sdk/service/interceptors/UserAgentInterceptor;

    invoke-direct {v1}, Lcom/gpc/sdk/service/interceptors/UserAgentInterceptor;-><init>()V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/service/network/http/HTTPClient;->addHTTPInterceptor(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/sdk/service/network/http/HTTPClient;

    iget-object v1, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->authHeadersInterceptor:Lcom/gpc/sdk/service/network/http/HTTPInterceptor;

    invoke-interface {v0, v1}, Lcom/gpc/sdk/service/network/http/HTTPClient;->addHTTPInterceptor(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)V

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/sdk/service/network/http/HTTPClient;

    new-instance v1, Lcom/gpc/sdk/service/interceptors/HTTPLogInterceptor;

    invoke-direct {v1}, Lcom/gpc/sdk/service/interceptors/HTTPLogInterceptor;-><init>()V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/service/network/http/HTTPClient;->addHTTPInterceptor(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)V

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/sdk/service/network/http/HTTPClient;

    new-instance v1, Lcom/gpc/sdk/service/interceptors/EventCollectionLogInterceptor;

    invoke-direct {v1}, Lcom/gpc/sdk/service/interceptors/EventCollectionLogInterceptor;-><init>()V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/service/network/http/HTTPClient;->addHTTPInterceptor(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)V

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/sdk/service/network/http/HTTPClient;

    new-instance v1, Lcom/gpc/sdk/service/interceptors/PreDebugInterceptor;

    invoke-direct {v1}, Lcom/gpc/sdk/service/interceptors/PreDebugInterceptor;-><init>()V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/service/network/http/HTTPClient;->addHTTPInterceptor(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)V

    .line 7
    iget-object v0, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/sdk/service/network/http/HTTPClient;

    new-instance v1, Lcom/gpc/sdk/service/interceptors/HttpHeaderLowerCaseInterceptor;

    invoke-direct {v1}, Lcom/gpc/sdk/service/interceptors/HttpHeaderLowerCaseInterceptor;-><init>()V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/service/network/http/HTTPClient;->addHTTPInterceptor(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)V

    :cond_0
    return-void
.end method

.method public removeHTTPInterceptor(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/sdk/service/network/http/HTTPClient;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/service/network/http/HTTPClient;->removeHTTPInterceptor(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)V

    return-void
.end method

.method public setHeadersBuilder(Lcom/gpc/sdk/service/request/api/APIGatewayHeadersBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->headersBuilder:Lcom/gpc/sdk/service/request/api/APIGatewayHeadersBuilder;

    return-void
.end method
