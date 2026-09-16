.class public Lcom/gpc/sdk/service/request/api/SingleLinkImpl;
.super Lcom/gpc/sdk/service/request/api/BaseHTTPService;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SingleLinkHTTPServiceImpl"


# instance fields
.field protected baseUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/gpc/sdk/service/network/http/HTTPClient;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/gpc/sdk/service/request/api/BaseHTTPService;-><init>(Lcom/gpc/sdk/service/network/http/HTTPClient;)V

    if-eqz p1, :cond_0

    .line 2
    const-string p2, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/service/request/api/SingleLinkImpl;->baseUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    const-string v0, "SingleLinkHTTPServiceImpl"

    invoke-static {v0, p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;)Lcom/gpc/sdk/service/network/http/HTTPCall;
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
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/sdk/service/network/http/HTTPClient;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 24
    :cond_0
    new-instance v0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    invoke-direct {v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/gpc/sdk/service/request/api/SingleLinkImpl;->baseUrl:Ljava/net/URL;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gpc/sdk/service/request/api/SingleLinkImpl;->baseUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->url(Ljava/lang/String;Ljava/util/Map;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 26
    const-string p2, "GET"

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->method(Ljava/lang/String;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 27
    invoke-virtual {p1, p3}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->headers(Ljava/util/Map;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 28
    invoke-virtual {p1, p4}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->headersDelegate(Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 29
    invoke-virtual {p1, p5}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->requestConfig(Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->build()Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    move-result-object p1

    .line 32
    iget-object p2, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/sdk/service/network/http/HTTPClient;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/service/network/http/HTTPClient;->request(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    move-result-object p1

    .line 33
    invoke-interface {p1, p6}, Lcom/gpc/sdk/service/network/http/HTTPCall;->enqueue(Lcom/gpc/sdk/service/network/http/HTTPCallback;)V

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;)Lcom/gpc/sdk/service/network/http/HTTPCall;
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
            ">;",
            "Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/gpc/sdk/service/request/api/SingleLinkImpl;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/gpc/sdk/service/request/api/HTTPServiceCallback;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/gpc/sdk/service/request/api/HTTPServiceCallback;)Lcom/gpc/sdk/service/network/http/HTTPCall;
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
            ">;Z",
            "Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/sdk/service/network/http/HTTPClient;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    new-instance v0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    invoke-direct {v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;-><init>()V

    if-eqz p4, :cond_2

    .line 8
    iget-object v1, p0, Lcom/gpc/sdk/service/request/api/SingleLinkImpl;->baseUrl:Ljava/net/URL;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gpc/sdk/service/request/api/SingleLinkImpl;->baseUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->url(Ljava/lang/String;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    .line 9
    new-instance p1, Lcom/gpc/sdk/service/network/http/request/HTTPRequestStringBody;

    invoke-direct {p1, p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestStringBody;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->body(Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    goto :goto_0

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/gpc/sdk/service/request/api/SingleLinkImpl;->baseUrl:Ljava/net/URL;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gpc/sdk/service/request/api/SingleLinkImpl;->baseUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->url(Ljava/lang/String;Ljava/util/Map;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    .line 14
    :goto_0
    const-string p1, "GET"

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->method(Ljava/lang/String;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    .line 15
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->setEnableDoOutput(Ljava/lang/Boolean;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    .line 16
    invoke-virtual {v0, p3}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->headers(Ljava/util/Map;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    .line 17
    invoke-virtual {v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->build()Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/sdk/service/network/http/HTTPClient;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/service/network/http/HTTPClient;->request(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    move-result-object p1

    .line 20
    invoke-interface {p1, p5}, Lcom/gpc/sdk/service/network/http/HTTPCall;->enqueue(Lcom/gpc/sdk/service/network/http/HTTPCallback;)V

    return-object p1
.end method

.method public getSync(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;)V
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
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;",
            ")V"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/sdk/service/network/http/HTTPClient;

    if-nez v0, :cond_0

    return-void

    .line 27
    :cond_0
    new-instance v0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    invoke-direct {v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;-><init>()V

    .line 28
    iget-object v1, p0, Lcom/gpc/sdk/service/request/api/SingleLinkImpl;->baseUrl:Ljava/net/URL;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gpc/sdk/service/request/api/SingleLinkImpl;->baseUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->url(Ljava/lang/String;Ljava/util/Map;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 29
    const-string p2, "GET"

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->method(Ljava/lang/String;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 30
    invoke-virtual {p1, p3}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->headers(Ljava/util/Map;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 31
    invoke-virtual {p1, p4}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->headersDelegate(Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 32
    invoke-virtual {p1, p5}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->requestConfig(Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->build()Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    move-result-object p1

    .line 35
    iget-object p2, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/sdk/service/network/http/HTTPClient;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/service/network/http/HTTPClient;->request(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    move-result-object p2

    .line 36
    invoke-interface {p2}, Lcom/gpc/sdk/service/network/http/HTTPCall;->execute()Lcom/gpc/sdk/service/network/http/HTTPResult;

    move-result-object p2

    .line 37
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/HTTPResult;->getException()Lcom/gpc/sdk/service/network/http/HTTPException;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 38
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/HTTPResult;->getException()Lcom/gpc/sdk/service/network/http/HTTPException;

    move-result-object p2

    invoke-interface {p6, p1, p2}, Lcom/gpc/sdk/service/network/http/HTTPCallback;->onConnectionError(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPException;)V

    return-void

    .line 40
    :cond_2
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/HTTPResult;->getOriginalRequest()Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    move-result-object p1

    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/HTTPResult;->getResponse()Lcom/gpc/sdk/service/network/http/response/HTTPResponse;

    move-result-object p2

    invoke-interface {p6, p1, p2}, Lcom/gpc/sdk/service/network/http/HTTPCallback;->onResponse(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V

    return-void
.end method

.method public getSync(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/gpc/sdk/service/request/api/HTTPServiceCallback;)V
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
            ">;Z",
            "Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/sdk/service/network/http/HTTPClient;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    invoke-direct {v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;-><init>()V

    if-eqz p4, :cond_2

    .line 7
    iget-object v1, p0, Lcom/gpc/sdk/service/request/api/SingleLinkImpl;->baseUrl:Ljava/net/URL;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gpc/sdk/service/request/api/SingleLinkImpl;->baseUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->url(Ljava/lang/String;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    .line 8
    new-instance p1, Lcom/gpc/sdk/service/network/http/request/HTTPRequestStringBody;

    invoke-direct {p1, p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestStringBody;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->body(Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/gpc/sdk/service/request/api/SingleLinkImpl;->baseUrl:Ljava/net/URL;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gpc/sdk/service/request/api/SingleLinkImpl;->baseUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->url(Ljava/lang/String;Ljava/util/Map;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    .line 13
    :goto_0
    const-string p1, "GET"

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->method(Ljava/lang/String;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    .line 14
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->setEnableDoOutput(Ljava/lang/Boolean;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    .line 15
    invoke-virtual {v0, p3}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->headers(Ljava/util/Map;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    .line 16
    invoke-virtual {v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->build()Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    move-result-object p1

    .line 18
    iget-object p2, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/sdk/service/network/http/HTTPClient;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/service/network/http/HTTPClient;->request(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    move-result-object p2

    .line 19
    invoke-interface {p2}, Lcom/gpc/sdk/service/network/http/HTTPCall;->execute()Lcom/gpc/sdk/service/network/http/HTTPResult;

    move-result-object p2

    .line 20
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/HTTPResult;->getException()Lcom/gpc/sdk/service/network/http/HTTPException;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 21
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/HTTPResult;->getException()Lcom/gpc/sdk/service/network/http/HTTPException;

    move-result-object p2

    invoke-interface {p5, p1, p2}, Lcom/gpc/sdk/service/network/http/HTTPCallback;->onConnectionError(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPException;)V

    return-void

    .line 23
    :cond_4
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/HTTPResult;->getOriginalRequest()Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    move-result-object p1

    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/HTTPResult;->getResponse()Lcom/gpc/sdk/service/network/http/response/HTTPResponse;

    move-result-object p2

    invoke-interface {p5, p1, p2}, Lcom/gpc/sdk/service/network/http/HTTPCallback;->onResponse(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V

    return-void
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 27
    invoke-virtual/range {v0 .. v7}, Lcom/gpc/sdk/service/request/api/SingleLinkImpl;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;)Lcom/gpc/sdk/service/network/http/HTTPCall;
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
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 28
    invoke-virtual/range {v0 .. v8}, Lcom/gpc/sdk/service/request/api/SingleLinkImpl;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/network/http/request/HTTPRequestWriteListener;Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/network/http/request/HTTPRequestWriteListener;Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;)Lcom/gpc/sdk/service/network/http/HTTPCall;
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
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestWriteListener;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/sdk/service/network/http/HTTPClient;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 32
    :cond_0
    new-instance v0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    invoke-direct {v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;-><init>()V

    .line 33
    iget-object v1, p0, Lcom/gpc/sdk/service/request/api/SingleLinkImpl;->baseUrl:Ljava/net/URL;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gpc/sdk/service/request/api/SingleLinkImpl;->baseUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1, p3}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->url(Ljava/lang/String;Ljava/util/Map;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 34
    const-string p3, "POST"

    invoke-virtual {p1, p3}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->method(Ljava/lang/String;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 35
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->headers(Ljava/util/Map;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 36
    invoke-virtual {p1, p4}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->body(Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 37
    invoke-virtual {p1, p5}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->headersDelegate(Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 38
    invoke-virtual {p1, p6}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->writeListener(Lcom/gpc/sdk/service/network/http/request/HTTPRequestWriteListener;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 39
    invoke-virtual {p1, p7}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->requestConfig(Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->build()Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    move-result-object p1

    .line 42
    iget-object p2, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/sdk/service/network/http/HTTPClient;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/service/network/http/HTTPClient;->request(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    move-result-object p1

    .line 43
    invoke-interface {p1, p8}, Lcom/gpc/sdk/service/network/http/HTTPCall;->enqueue(Lcom/gpc/sdk/service/network/http/HTTPCallback;)V

    return-object p1
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;)Lcom/gpc/sdk/service/network/http/HTTPCall;
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
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/sdk/service/network/http/HTTPClient;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 16
    :cond_0
    new-instance v0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    invoke-direct {v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;-><init>()V

    .line 17
    iget-object v1, p0, Lcom/gpc/sdk/service/request/api/SingleLinkImpl;->baseUrl:Ljava/net/URL;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gpc/sdk/service/request/api/SingleLinkImpl;->baseUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->url(Ljava/lang/String;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 18
    const-string v0, "POST"

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->method(Ljava/lang/String;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 19
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->headers(Ljava/util/Map;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    new-instance p2, Lcom/gpc/sdk/service/network/http/request/HTTPRequestStringBody;

    invoke-direct {p2, p3}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestStringBody;-><init>(Ljava/util/Map;)V

    .line 20
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->body(Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 21
    invoke-virtual {p1, p4}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->headersDelegate(Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 22
    invoke-virtual {p1, p5}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->requestConfig(Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->build()Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/sdk/service/network/http/HTTPClient;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/service/network/http/HTTPClient;->request(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    move-result-object p1

    .line 26
    invoke-interface {p1, p6}, Lcom/gpc/sdk/service/network/http/HTTPCall;->enqueue(Lcom/gpc/sdk/service/network/http/HTTPCallback;)V

    return-object p1
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;)Lcom/gpc/sdk/service/network/http/HTTPCall;
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
            "Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/sdk/service/network/http/HTTPClient;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    invoke-direct {v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/gpc/sdk/service/request/api/SingleLinkImpl;->baseUrl:Ljava/net/URL;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gpc/sdk/service/request/api/SingleLinkImpl;->baseUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->url(Ljava/lang/String;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 6
    const-string v0, "POST"

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->method(Ljava/lang/String;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->headers(Ljava/util/Map;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    new-instance p2, Lcom/gpc/sdk/service/network/http/request/HTTPRequestStringBody;

    invoke-direct {p2, p3}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestStringBody;-><init>(Ljava/util/Map;)V

    .line 8
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->body(Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->build()Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/sdk/service/network/http/HTTPClient;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/service/network/http/HTTPClient;->request(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    move-result-object p1

    .line 12
    invoke-interface {p1, p4}, Lcom/gpc/sdk/service/network/http/HTTPCall;->enqueue(Lcom/gpc/sdk/service/network/http/HTTPCallback;)V

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/network/http/request/HTTPRequestWriteListener;Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;)Lcom/gpc/sdk/service/network/http/HTTPCall;
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
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestWriteListener;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/sdk/service/network/http/HTTPClient;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    invoke-direct {v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/gpc/sdk/service/request/api/SingleLinkImpl;->baseUrl:Ljava/net/URL;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gpc/sdk/service/request/api/SingleLinkImpl;->baseUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1, p3}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->url(Ljava/lang/String;Ljava/util/Map;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 6
    const-string p3, "PUT"

    invoke-virtual {p1, p3}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->method(Ljava/lang/String;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->headers(Ljava/util/Map;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p4}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->body(Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p5}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->headersDelegate(Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p6}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->writeListener(Lcom/gpc/sdk/service/network/http/request/HTTPRequestWriteListener;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p7}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->requestConfig(Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->build()Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/sdk/service/network/http/HTTPClient;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/service/network/http/HTTPClient;->request(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    move-result-object p1

    .line 15
    invoke-interface {p1, p8}, Lcom/gpc/sdk/service/network/http/HTTPCall;->enqueue(Lcom/gpc/sdk/service/network/http/HTTPCallback;)V

    return-object p1
.end method
