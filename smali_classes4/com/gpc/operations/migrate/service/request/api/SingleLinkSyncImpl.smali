.class public Lcom/gpc/operations/migrate/service/request/api/SingleLinkSyncImpl;
.super Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SingleLinkSyncImpl"


# instance fields
.field protected baseUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/gpc/operations/migrate/service/network/http/HTTPClient;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;-><init>(Lcom/gpc/operations/migrate/service/network/http/HTTPClient;)V

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

    iput-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/SingleLinkSyncImpl;->baseUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    const-string v0, "SingleLinkSyncImpl"

    invoke-static {v0, p2, p1}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
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
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/operations/migrate/service/network/http/HTTPClient;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 28
    :cond_0
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;-><init>()V

    .line 29
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/api/SingleLinkSyncImpl;->baseUrl:Ljava/net/URL;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gpc/operations/migrate/service/request/api/SingleLinkSyncImpl;->baseUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->url(Ljava/lang/String;Ljava/util/Map;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 30
    const-string p2, "GET"

    invoke-virtual {p1, p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->method(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 31
    invoke-virtual {p1, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->headers(Ljava/util/Map;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 32
    invoke-virtual {p1, p4}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->headersDelegate(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 33
    invoke-virtual {p1, p5}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->requestConfig(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;

    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/operations/migrate/service/network/http/HTTPClient;

    invoke-interface {p2, p1}, Lcom/gpc/operations/migrate/service/network/http/HTTPClient;->request(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p2

    .line 38
    :try_start_0
    invoke-interface {p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPCall;->execute()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;

    move-result-object p3

    .line 39
    invoke-interface {p6, p1, p3}, Lcom/gpc/operations/migrate/service/network/http/HTTPCallback;->onResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    :try_end_0
    .catch Lcom/gpc/operations/migrate/service/network/http/HTTPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p3

    .line 41
    invoke-interface {p6, p1, p3}, Lcom/gpc/operations/migrate/service/network/http/HTTPCallback;->onConnectionError(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V

    return-object p2
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
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
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/gpc/operations/migrate/service/request/api/SingleLinkSyncImpl;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
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
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/operations/migrate/service/network/http/HTTPClient;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;-><init>()V

    if-eqz p4, :cond_2

    .line 8
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/api/SingleLinkSyncImpl;->baseUrl:Ljava/net/URL;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gpc/operations/migrate/service/request/api/SingleLinkSyncImpl;->baseUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->url(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    .line 9
    new-instance p1, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStringBody;

    invoke-direct {p1, p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStringBody;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->body(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    goto :goto_0

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/api/SingleLinkSyncImpl;->baseUrl:Ljava/net/URL;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gpc/operations/migrate/service/request/api/SingleLinkSyncImpl;->baseUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->url(Ljava/lang/String;Ljava/util/Map;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    .line 14
    :goto_0
    const-string p1, "GET"

    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->method(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    .line 15
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->setEnableDoOutput(Ljava/lang/Boolean;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    .line 16
    invoke-virtual {v0, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->headers(Ljava/util/Map;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    .line 17
    invoke-virtual {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;

    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/operations/migrate/service/network/http/HTTPClient;

    invoke-interface {p2, p1}, Lcom/gpc/operations/migrate/service/network/http/HTTPClient;->request(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p2

    .line 21
    :try_start_0
    invoke-interface {p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPCall;->execute()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;

    move-result-object p3

    .line 22
    invoke-interface {p5, p1, p3}, Lcom/gpc/operations/migrate/service/network/http/HTTPCallback;->onResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    :try_end_0
    .catch Lcom/gpc/operations/migrate/service/network/http/HTTPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p3

    .line 24
    invoke-interface {p5, p1, p3}, Lcom/gpc/operations/migrate/service/network/http/HTTPCallback;->onConnectionError(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V

    return-object p2
.end method

.method public head(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
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
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/operations/migrate/service/network/http/HTTPClient;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/api/SingleLinkSyncImpl;->baseUrl:Ljava/net/URL;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gpc/operations/migrate/service/request/api/SingleLinkSyncImpl;->baseUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->url(Ljava/lang/String;Ljava/util/Map;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    .line 8
    const-string p1, "HEAD"

    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->method(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    .line 9
    const-string p1, "identity"

    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->acceptEncoding(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    .line 10
    invoke-virtual {v0, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->headers(Ljava/util/Map;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    .line 11
    invoke-virtual {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;

    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/operations/migrate/service/network/http/HTTPClient;

    invoke-interface {p2, p1}, Lcom/gpc/operations/migrate/service/network/http/HTTPClient;->request(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p2

    .line 15
    :try_start_0
    invoke-interface {p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPCall;->execute()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;

    move-result-object p3

    .line 16
    invoke-interface {p4, p1, p3}, Lcom/gpc/operations/migrate/service/network/http/HTTPCallback;->onResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    :try_end_0
    .catch Lcom/gpc/operations/migrate/service/network/http/HTTPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p3

    .line 18
    invoke-interface {p4, p1, p3}, Lcom/gpc/operations/migrate/service/network/http/HTTPCallback;->onConnectionError(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V

    return-object p2
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 8
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

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 35
    invoke-virtual/range {v0 .. v7}, Lcom/gpc/operations/migrate/service/request/api/SingleLinkSyncImpl;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
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
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
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

    .line 36
    invoke-virtual/range {v0 .. v8}, Lcom/gpc/operations/migrate/service/request/api/SingleLinkSyncImpl;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
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
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/operations/migrate/service/network/http/HTTPClient;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 40
    :cond_0
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/api/SingleLinkSyncImpl;->baseUrl:Ljava/net/URL;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gpc/operations/migrate/service/request/api/SingleLinkSyncImpl;->baseUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->url(Ljava/lang/String;Ljava/util/Map;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 42
    const-string p3, "POST"

    invoke-virtual {p1, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->method(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 43
    invoke-virtual {p1, p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->headers(Ljava/util/Map;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 44
    invoke-virtual {p1, p4}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->body(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 45
    invoke-virtual {p1, p5}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->headersDelegate(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 46
    invoke-virtual {p1, p6}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->writeListener(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 47
    invoke-virtual {p1, p7}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->requestConfig(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;

    move-result-object p1

    .line 50
    iget-object p2, p0, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/operations/migrate/service/network/http/HTTPClient;

    invoke-interface {p2, p1}, Lcom/gpc/operations/migrate/service/network/http/HTTPClient;->request(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p2

    .line 52
    :try_start_0
    invoke-interface {p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPCall;->execute()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;

    move-result-object p3

    .line 53
    invoke-interface {p8, p1, p3}, Lcom/gpc/operations/migrate/service/network/http/HTTPCallback;->onResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    :try_end_0
    .catch Lcom/gpc/operations/migrate/service/network/http/HTTPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p3

    .line 55
    invoke-interface {p8, p1, p3}, Lcom/gpc/operations/migrate/service/network/http/HTTPCallback;->onConnectionError(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V

    return-object p2
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
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
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/operations/migrate/service/network/http/HTTPClient;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 20
    :cond_0
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;-><init>()V

    .line 21
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/api/SingleLinkSyncImpl;->baseUrl:Ljava/net/URL;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gpc/operations/migrate/service/request/api/SingleLinkSyncImpl;->baseUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->url(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 22
    const-string v0, "POST"

    invoke-virtual {p1, v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->method(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p1, p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->headers(Ljava/util/Map;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    new-instance p2, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStringBody;

    invoke-direct {p2, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStringBody;-><init>(Ljava/util/Map;)V

    .line 24
    invoke-virtual {p1, p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->body(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 25
    invoke-virtual {p1, p4}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->headersDelegate(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 26
    invoke-virtual {p1, p5}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->requestConfig(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;

    move-result-object p1

    .line 29
    iget-object p2, p0, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/operations/migrate/service/network/http/HTTPClient;

    invoke-interface {p2, p1}, Lcom/gpc/operations/migrate/service/network/http/HTTPClient;->request(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p2

    .line 31
    :try_start_0
    invoke-interface {p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPCall;->execute()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;

    move-result-object p3

    .line 32
    invoke-interface {p6, p1, p3}, Lcom/gpc/operations/migrate/service/network/http/HTTPCallback;->onResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    :try_end_0
    .catch Lcom/gpc/operations/migrate/service/network/http/HTTPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p3

    .line 34
    invoke-interface {p6, p1, p3}, Lcom/gpc/operations/migrate/service/network/http/HTTPCallback;->onConnectionError(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V

    return-object p2
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
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/operations/migrate/service/network/http/HTTPClient;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/api/SingleLinkSyncImpl;->baseUrl:Ljava/net/URL;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gpc/operations/migrate/service/request/api/SingleLinkSyncImpl;->baseUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->url(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 6
    const-string v0, "POST"

    invoke-virtual {p1, v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->method(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->headers(Ljava/util/Map;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    new-instance p2, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStringBody;

    invoke-direct {p2, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStringBody;-><init>(Ljava/util/Map;)V

    .line 8
    invoke-virtual {p1, p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->body(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/operations/migrate/service/network/http/HTTPClient;

    invoke-interface {p2, p1}, Lcom/gpc/operations/migrate/service/network/http/HTTPClient;->request(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p2

    .line 13
    :try_start_0
    invoke-interface {p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPCall;->execute()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;

    move-result-object p3

    .line 14
    invoke-interface {p4, p1, p3}, Lcom/gpc/operations/migrate/service/network/http/HTTPCallback;->onResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    :try_end_0
    .catch Lcom/gpc/operations/migrate/service/network/http/HTTPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p3

    .line 16
    invoke-interface {p4, p1, p3}, Lcom/gpc/operations/migrate/service/network/http/HTTPCallback;->onConnectionError(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V

    return-object p2
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
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
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/operations/migrate/service/network/http/HTTPClient;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/api/SingleLinkSyncImpl;->baseUrl:Ljava/net/URL;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gpc/operations/migrate/service/request/api/SingleLinkSyncImpl;->baseUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->url(Ljava/lang/String;Ljava/util/Map;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 6
    const-string p3, "PUT"

    invoke-virtual {p1, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->method(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->headers(Ljava/util/Map;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p4}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->body(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p5}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->headersDelegate(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p6}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->writeListener(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p7}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->requestConfig(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;

    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/operations/migrate/service/network/http/HTTPClient;

    invoke-interface {p2, p1}, Lcom/gpc/operations/migrate/service/network/http/HTTPClient;->request(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p2

    .line 16
    :try_start_0
    invoke-interface {p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPCall;->execute()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;

    move-result-object p3

    .line 17
    invoke-interface {p8, p1, p3}, Lcom/gpc/operations/migrate/service/network/http/HTTPCallback;->onResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    :try_end_0
    .catch Lcom/gpc/operations/migrate/service/network/http/HTTPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p3

    .line 19
    invoke-interface {p8, p1, p3}, Lcom/gpc/operations/migrate/service/network/http/HTTPCallback;->onConnectionError(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V

    return-object p2
.end method
