.class public Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;
.super Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$APIGatewayCallbackT;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiLinkSyncImpl"


# instance fields
.field private context:Landroid/content/Context;

.field private serviceURLBuilder:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gpc/operations/migrate/service/network/http/HTTPClient;Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;-><init>(Lcom/gpc/operations/migrate/service/network/http/HTTPClient;)V

    .line 2
    iput-object p2, p0, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/operations/migrate/service/network/http/HTTPClient;

    .line 3
    iput-object p3, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;->serviceURLBuilder:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    .line 4
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;->repeat(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p0

    return-object p0
.end method

.method private commonHTTPRequestConfig()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->shouldRetry(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    .line 3
    invoke-virtual {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object v0

    return-object v0
.end method

.method private generatorHTTPRequestConfig(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;->commonHTTPRequestConfig()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;->serviceURLBuilder:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    invoke-interface {v0}, Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;->getPrefixes()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "MultiLinkSyncImpl"

    const/4 v2, 0x1

    if-ge v2, v0, :cond_1

    .line 5
    const-string v0, "link more than 1, close retry"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->setShouldRetry(Z)V

    return-object p1

    .line 8
    :cond_1
    const-string v0, "link selected, retry"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, v2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->setShouldRetry(Z)V

    return-object p1
.end method

.method private repeat(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;",
            "Ljava/util/List<",
            "Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    const-string v0, "/"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;->getPrefix()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p4}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->urlAppendQuery(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p4}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->urlAppendQuery(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 12
    :goto_1
    new-instance p3, Ljava/net/URL;

    invoke-direct {p3, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->setUrl(Ljava/net/URL;)V

    .line 13
    iget-object p2, p0, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/operations/migrate/service/network/http/HTTPClient;

    invoke-interface {p2, p1}, Lcom/gpc/operations/migrate/service/network/http/HTTPClient;->request(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p2
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    :try_start_1
    invoke-interface {p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPCall;->execute()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;

    move-result-object p3

    .line 16
    invoke-interface {p5, p1, p3}, Lcom/gpc/operations/migrate/service/network/http/HTTPCallback;->onResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    :try_end_1
    .catch Lcom/gpc/operations/migrate/service/network/http/HTTPException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p2

    :catch_0
    move-exception p3

    .line 18
    :try_start_2
    invoke-interface {p5, p1, p3}, Lcom/gpc/operations/migrate/service/network/http/HTTPCallback;->onConnectionError(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p2

    :catch_1
    move-exception p1

    .line 22
    const-string p2, "MultiLinkSyncImpl"

    const-string p3, ""

    invoke-static {p2, p3, p1}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private request(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;",
            "Ljava/lang/String;",
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
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;->serviceURLBuilder:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    invoke-interface {v0}, Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;->getPrefixes()Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    .line 2
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->url(Ljava/lang/String;Ljava/util/Map;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->url(Ljava/lang/String;Ljava/util/Map;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    .line 12
    :goto_1
    new-instance v1, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$a;

    iget-object v5, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;->serviceURLBuilder:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    iget-object v6, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;->context:Landroid/content/Context;

    move-object v2, p0

    move-object v7, p2

    move-object v8, p3

    move-object v4, p4

    invoke-direct/range {v1 .. v8}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$a;-><init>(Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;Ljava/util/List;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 19
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;

    move-result-object p1

    .line 20
    iget-object p2, v2, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/operations/migrate/service/network/http/HTTPClient;

    invoke-interface {p2, p1}, Lcom/gpc/operations/migrate/service/network/http/HTTPClient;->request(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p2

    .line 22
    :try_start_0
    invoke-interface {p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPCall;->execute()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;

    move-result-object p3

    .line 23
    invoke-virtual {v1, p1, p3}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$APIGatewayCallbackT;->onResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    :try_end_0
    .catch Lcom/gpc/operations/migrate/service/network/http/HTTPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception v0

    move-object p3, v0

    .line 25
    invoke-virtual {v1, p1, p3}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$APIGatewayCallbackT;->onConnectionError(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V

    return-object p2
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 2
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

    .line 19
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/operations/migrate/service/network/http/HTTPClient;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 23
    :cond_0
    invoke-direct {p0, p5}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;->generatorHTTPRequestConfig(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object p5

    .line 25
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;-><init>()V

    .line 26
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->method(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object v1

    .line 27
    invoke-virtual {v1, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->headers(Ljava/util/Map;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p3

    .line 28
    invoke-virtual {p3, p4}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->headersDelegate(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p3

    .line 29
    invoke-virtual {p3, p5}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->requestConfig(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    .line 31
    invoke-direct {p0, v0, p1, p2, p6}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;->request(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
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
    invoke-virtual/range {v0 .. v5}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

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

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;-><init>()V

    if-eqz p4, :cond_1

    .line 8
    new-instance v2, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStringBody;

    invoke-direct {v2, p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStringBody;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->body(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    .line 11
    :cond_1
    invoke-direct {p0, v1}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;->generatorHTTPRequestConfig(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object v1

    .line 13
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->method(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    .line 14
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->setEnableDoOutput(Ljava/lang/Boolean;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    .line 15
    invoke-virtual {v0, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->headers(Ljava/util/Map;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    .line 16
    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->requestConfig(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    .line 18
    invoke-direct {p0, v0, p1, p2, p5}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;->request(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
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

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;-><init>()V

    .line 6
    invoke-direct {p0, v1}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;->generatorHTTPRequestConfig(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object v1

    .line 8
    const-string v2, "HEAD"

    invoke-virtual {v0, v2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->method(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    .line 9
    const-string v2, "identity"

    invoke-virtual {v0, v2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->acceptEncoding(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    .line 10
    invoke-virtual {v0, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->headers(Ljava/util/Map;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    .line 11
    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->requestConfig(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    .line 13
    invoke-direct {p0, v0, p1, p2, p4}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;->request(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
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

    .line 3
    invoke-virtual/range {v0 .. v7}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

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

    .line 4
    invoke-virtual/range {v0 .. v8}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 2
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
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;->restAPIClient:Lcom/gpc/operations/migrate/service/network/http/HTTPClient;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 9
    :cond_0
    invoke-direct {p0, p7}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;->generatorHTTPRequestConfig(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object p7

    .line 11
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;-><init>()V

    .line 12
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->method(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object v1

    .line 13
    invoke-virtual {v1, p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->headers(Ljava/util/Map;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p2

    .line 14
    invoke-virtual {p2, p4}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->body(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p2

    .line 15
    invoke-virtual {p2, p5}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->headersDelegate(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p2

    .line 16
    invoke-virtual {p2, p6}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->writeListener(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p2

    .line 17
    invoke-virtual {p2, p7}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->requestConfig(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    .line 18
    invoke-direct {p0, v0, p1, p3, p8}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;->request(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

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
    new-instance v3, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStringBody;

    invoke-direct {v3, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStringBody;-><init>(Ljava/util/Map;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;->post(Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
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
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 2
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

    .line 5
    :cond_0
    invoke-direct {p0, p7}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;->generatorHTTPRequestConfig(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object p7

    .line 7
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;-><init>()V

    .line 8
    const-string v1, "PUT"

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->method(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object v1

    .line 9
    invoke-virtual {v1, p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->headers(Ljava/util/Map;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p2

    .line 10
    invoke-virtual {p2, p4}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->body(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p2

    .line 11
    invoke-virtual {p2, p5}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->headersDelegate(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p2

    .line 12
    invoke-virtual {p2, p6}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->writeListener(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    move-result-object p2

    .line 13
    invoke-virtual {p2, p7}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;->requestConfig(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;

    .line 14
    invoke-direct {p0, v0, p1, p3, p8}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;->request(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method
