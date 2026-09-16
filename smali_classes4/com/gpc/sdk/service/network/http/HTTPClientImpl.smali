.class public Lcom/gpc/sdk/service/network/http/HTTPClientImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/network/http/HTTPClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;
    }
.end annotation


# static fields
.field public static final CONNECTION_TIMEOUT_DEFAULT:I = 0x3a98

.field private static final CONNECTION_TIMEOUT_MIN:I = 0xbb8

.field public static final SO_TIMEOUT_DEFAULT:I = 0x3a98

.field private static final SO_TIMEOUT_MIN:I = 0xbb8

.field public static final TAG:Ljava/lang/String; = "HTTPClientImpl"


# instance fields
.field private connectionTimeout:I

.field private context:Landroid/content/Context;

.field private headers:Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

.field private interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/service/network/http/HTTPInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private soTimeout:I

.field private sslCompatInterceptor:Lcom/gpc/sdk/service/network/http/HTTPInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->interceptors:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    invoke-direct {v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->headers:Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    const/16 v0, 0x3a98

    .line 4
    iput v0, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->soTimeout:I

    .line 5
    iput v0, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->connectionTimeout:I

    .line 386
    new-instance v0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$c;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$c;-><init>(Lcom/gpc/sdk/service/network/http/HTTPClientImpl;)V

    iput-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->sslCompatInterceptor:Lcom/gpc/sdk/service/network/http/HTTPInterceptor;

    .line 387
    invoke-static {}, Lcom/gpc/util/backgroundcheck/GPCBaseApplication;->getBaseApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 389
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->context:Landroid/content/Context;

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 392
    const-string v0, "HTTPClientImpl"

    const-string v1, "context is null !"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->sslCompatInterceptor:Lcom/gpc/sdk/service/network/http/HTTPInterceptor;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->addHTTPInterceptor(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/sdk/service/network/http/HTTPClientImpl;Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPConnection;)Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->requestInnerWithRetry(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPConnection;)Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/gpc/sdk/service/network/http/HTTPClientImpl;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->context:Landroid/content/Context;

    return-object p0
.end method

.method private config(Lcom/gpc/sdk/service/network/http/HTTPConnection;Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHttpRequestConfig()Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget p2, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->connectionTimeout:I

    invoke-interface {p1, p2}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->setConnectTimeout(I)V

    .line 3
    iget p2, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->soTimeout:I

    invoke-interface {p1, p2}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->setReadTimeout(I)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHttpRequestConfig()Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->getConnectTimeOut()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->setConnectTimeout(I)V

    .line 6
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHttpRequestConfig()Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->getReadTimeOut()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->setReadTimeout(I)V

    .line 7
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->enableDoOutput()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHttpRequestConfig()Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->isUseCaches()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->setUseCaches(Z)V

    .line 9
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHttpRequestConfig()Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->isDoOutput()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->setDoOutput(Z)V

    .line 10
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHttpRequestConfig()Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->isDoInput()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->setDoInput(Z)V

    :cond_1
    return-void
.end method

.method private interceptExcetption(Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->interceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/service/network/http/HTTPInterceptor;

    .line 2
    iget-object v2, p1, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->a:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    iget-object v3, p1, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->b:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    iget-object v4, p1, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->d:Lcom/gpc/sdk/service/network/http/HTTPException;

    invoke-interface {v1, v2, v3, v4}, Lcom/gpc/sdk/service/network/http/HTTPInterceptor;->interceptException(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    const-string v0, "HTTPClientImpl"

    const-string v1, "interceptExcetption Exception happend!!!"

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private interceptRequest(Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest;
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->a:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->newBuilder()Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest$Builder;->build()Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->interceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/service/network/http/HTTPInterceptor;

    .line 3
    invoke-interface {v1, p1}, Lcom/gpc/sdk/service/network/http/HTTPInterceptor;->interceptRequest(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private interceptResponse(Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->interceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/service/network/http/HTTPInterceptor;

    .line 2
    iget-object v2, p1, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->a:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    iget-object v3, p1, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->b:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    iget-object v4, p1, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->c:Lcom/gpc/sdk/service/network/http/response/HTTPResponse;

    invoke-interface {v1, v2, v3, v4}, Lcom/gpc/sdk/service/network/http/HTTPInterceptor;->interceptResponse(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private requestInner(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPConnection;)Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;
    .locals 12

    const-string v0, "HTTPClientImpl"

    const-string v1, "responseCode:"

    const-string v2, "unsupport request "

    const-string v3, "request \u57fa\u7840\u91cd\u8bd5\u673a\u5236\uff1a"

    const-string v4, "---Link---request address:"

    const-string v5, "Resource api:"

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->sortInterceptorsByPriority()V

    const/4 v6, 0x1

    .line 3
    :try_start_0
    new-instance v7, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;

    iget-object v8, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    move-result-object v8

    if-nez v8, :cond_0

    .line 5
    new-instance v8, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    invoke-direct {v8}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;-><init>()V

    invoke-virtual {p1, v8}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->setHeaders(Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;)V

    .line 7
    :cond_0
    iget-object v8, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->headers:Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    if-eqz v8, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    move-result-object v8

    iget-object v9, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->headers:Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    invoke-virtual {v9}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;->getHeaders()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;->addHeaders(Ljava/util/Map;)V

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeadersDelegate()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 11
    const-string v8, "custom headers delegate."

    invoke-static {v0, v8}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeadersDelegate()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;

    move-result-object v8

    invoke-interface {v8}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;->getHeaders()Ljava/util/Map;

    move-result-object v8

    .line 13
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;->addHeaders(Ljava/util/Map;)V

    .line 17
    :cond_2
    iput-object p1, v7, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->a:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    .line 19
    invoke-direct {p0, v7}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->interceptRequest(Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;)Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    move-result-object v8

    .line 20
    iput-object v8, v7, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->b:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    .line 21
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v8}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHttpRequestConfig()Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 25
    invoke-virtual {v8}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHttpRequestConfig()Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->isShouldRetry()Z

    move-result v4

    iput-boolean v4, v7, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->f:Z

    goto :goto_0

    .line 27
    :cond_3
    iput-boolean v6, v7, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->f:Z

    .line 29
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v7, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->f:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v8}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object v3

    if-nez v3, :cond_4

    .line 32
    new-instance p2, Lcom/gpc/sdk/service/network/http/HTTPException;

    sget-object v1, Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;->INVALID_REQUEST_URL:Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;

    const-string v2, "domain is null."

    invoke-direct {p2, v1, v2}, Lcom/gpc/sdk/service/network/http/HTTPException;-><init>(Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;Ljava/lang/String;)V

    iput-object p2, v7, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->d:Lcom/gpc/sdk/service/network/http/HTTPException;

    .line 33
    invoke-direct {p0, v7}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->interceptExcetption(Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v7

    .line 38
    :cond_4
    :try_start_1
    invoke-interface {p2, v8}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->openConnection(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V

    .line 39
    invoke-direct {p0, p2, v8}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->config(Lcom/gpc/sdk/service/network/http/HTTPConnection;Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V

    .line 40
    invoke-virtual {v8}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->headers(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 47
    :try_start_2
    invoke-interface {p2}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->isConnected()Z

    move-result v3

    if-nez v3, :cond_5

    .line 48
    const-string p2, "Connection is closed!"

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance p2, Lcom/gpc/sdk/service/network/http/HTTPException;

    sget-object v1, Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;->CREATE_REQUEST_FAIL:Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "http connect closed."

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v1, v2}, Lcom/gpc/sdk/service/network/http/HTTPException;-><init>(Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;Ljava/lang/Throwable;)V

    iput-object p2, v7, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->d:Lcom/gpc/sdk/service/network/http/HTTPException;

    .line 50
    invoke-direct {p0, v7}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->interceptExcetption(Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    return-object v7

    :cond_5
    const/4 v3, 0x0

    .line 56
    :try_start_3
    invoke-virtual {v8}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v9, 0x11336

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eq v5, v9, :cond_9

    const v9, 0x136ef

    if-eq v5, v9, :cond_8

    const v9, 0x2590a0

    if-eq v5, v9, :cond_7

    const v9, 0x4862828

    if-eq v5, v9, :cond_6

    goto :goto_1

    :cond_6
    const-string v5, "PATCH"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x3

    goto :goto_2

    .line 57
    :cond_7
    const-string v5, "POST"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_2

    .line 58
    :cond_8
    const-string v5, "PUT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x2

    goto :goto_2

    .line 59
    :cond_9
    const-string v5, "GET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    goto :goto_2

    :cond_a
    :goto_1
    const/4 v4, -0x1

    :goto_2
    if-eqz v4, :cond_e

    if-eq v4, v6, :cond_d

    if-eq v4, v11, :cond_c

    if-eq v4, v10, :cond_b

    .line 73
    new-instance v1, Lcom/gpc/sdk/service/network/http/HTTPException;

    sget-object v4, Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;->REQUEST_METHOD_UNSUPPORT:Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;

    new-instance v5, Ljava/lang/Exception;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4, v5}, Lcom/gpc/sdk/service/network/http/HTTPException;-><init>(Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;Ljava/lang/Throwable;)V

    iput-object v1, v7, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->d:Lcom/gpc/sdk/service/network/http/HTTPException;

    .line 74
    invoke-direct {p0, v7}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->interceptExcetption(Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    :try_start_4
    invoke-interface {p2}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    return-object v7

    .line 136
    :cond_b
    :try_start_5
    invoke-interface {p2, v8}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->patch(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V

    goto :goto_3

    .line 137
    :cond_c
    invoke-interface {p2, v8}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->update(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V

    goto :goto_3

    .line 138
    :cond_d
    invoke-interface {p2, v8}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->create(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V

    goto :goto_3

    .line 139
    :cond_e
    invoke-interface {p2, v8}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->list(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V

    .line 156
    :goto_3
    new-instance v2, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;

    invoke-direct {v2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;-><init>()V

    .line 157
    invoke-interface {p2}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->getResponseCode()I

    move-result v4

    .line 158
    invoke-virtual {v2, v4}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->setCode(I)V

    .line 159
    invoke-interface {p2}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    .line 160
    invoke-virtual {v2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getHeaders()Lcom/gpc/sdk/service/network/http/response/HTTPResponseHeaders;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseHeaders;->setOriginalHeaders(Ljava/util/Map;)V

    .line 161
    invoke-virtual {v2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getHeaders()Lcom/gpc/sdk/service/network/http/response/HTTPResponseHeaders;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseHeaders;->parseHeaderFileds()V

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_11

    .line 165
    invoke-interface {p2}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "application/octet-stream"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 166
    invoke-interface {p2}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "application/gzip"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 167
    invoke-interface {p2}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "image/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 168
    invoke-interface {p2}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "video/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_4

    .line 174
    :cond_f
    new-instance v1, Lcom/gpc/sdk/service/network/http/response/HTTPResponseStringBody;

    invoke-direct {v1}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseStringBody;-><init>()V

    .line 175
    invoke-interface {p2}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->streamToBytes(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseStringBody;->setBodyBytes([B)V

    .line 176
    invoke-virtual {v1}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseStringBody;->parseString()Ljava/lang/String;

    .line 177
    const-string v4, "Response is String."

    invoke-static {v0, v4}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 178
    :cond_10
    :goto_4
    const-string v1, "Response is stream."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v1, Lcom/gpc/sdk/service/network/http/response/HTTPResponseStreamBody;

    invoke-interface {p2}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4, p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseStreamBody;-><init>(Ljava/io/InputStream;Lcom/gpc/sdk/service/network/http/HTTPConnection;)V

    const/4 v3, 0x1

    .line 189
    :goto_5
    invoke-interface {p2}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;->setContentType(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v2, v1}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->setBody(Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    .line 194
    :cond_11
    :try_start_6
    invoke-interface {p2}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->streamToBytes(Ljava/io/InputStream;)[B

    move-result-object v5

    if-eqz v5, :cond_12

    .line 195
    array-length v8, v5

    if-eqz v8, :cond_12

    .line 196
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",Response is exist."

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v1, Lcom/gpc/sdk/service/network/http/response/HTTPResponseStringBody;

    invoke-direct {v1}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseStringBody;-><init>()V

    .line 198
    invoke-virtual {v1, v5}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseStringBody;->setBodyBytes([B)V

    .line 200
    invoke-virtual {v1}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseStringBody;->parseString()Ljava/lang/String;

    .line 203
    invoke-interface {p2}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;->setContentType(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v2, v1}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->setBody(Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :catch_0
    move-exception v1

    .line 208
    :try_start_7
    const-string v4, "response code is not 200, read body error."

    invoke-static {v0, v4, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    :cond_12
    :goto_6
    iput-object v2, v7, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->c:Lcom/gpc/sdk/service/network/http/response/HTTPResponse;

    .line 213
    invoke-direct {p0, v7}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->interceptResponse(Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v3, :cond_14

    .line 221
    :try_start_8
    invoke-interface {p2}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_8

    :catchall_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    .line 222
    :try_start_9
    new-instance v2, Lcom/gpc/sdk/service/network/http/HTTPException;

    sget-object v4, Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;->REQUEST_THROW_EXCEPTION_FAIL:Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;

    new-instance v5, Ljava/lang/Exception;

    const-string v8, "http read error."

    invoke-direct {v5, v8, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v2, v4, v5}, Lcom/gpc/sdk/service/network/http/HTTPException;-><init>(Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;Ljava/lang/Throwable;)V

    iput-object v2, v7, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->d:Lcom/gpc/sdk/service/network/http/HTTPException;

    .line 223
    invoke-direct {p0, v7}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->interceptExcetption(Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v3, :cond_14

    .line 228
    :try_start_a
    invoke-interface {p2}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->disconnect()V

    goto :goto_8

    :goto_7
    if-nez v3, :cond_13

    .line 229
    invoke-interface {p2}, Lcom/gpc/sdk/service/network/http/HTTPConnection;->disconnect()V

    .line 231
    :cond_13
    throw v1

    :catch_2
    move-exception p2

    .line 232
    new-instance v1, Lcom/gpc/sdk/service/network/http/HTTPException;

    sget-object v2, Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;->CREATE_REQUEST_FAIL:Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "http connect error."

    invoke-direct {v3, v4, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v3}, Lcom/gpc/sdk/service/network/http/HTTPException;-><init>(Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;Ljava/lang/Throwable;)V

    iput-object v1, v7, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->d:Lcom/gpc/sdk/service/network/http/HTTPException;

    .line 233
    invoke-direct {p0, v7}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->interceptExcetption(Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3

    :cond_14
    :goto_8
    return-object v7

    :catch_3
    move-exception p2

    .line 328
    const-string v1, "Exception in network thread."

    invoke-static {v0, v1, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    new-instance v0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;

    iget-object v1, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;-><init>(Landroid/content/Context;)V

    .line 330
    iput-object p1, v0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->a:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    .line 331
    new-instance p1, Lcom/gpc/sdk/service/network/http/HTTPException;

    sget-object v1, Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;->REQUEST_THROW_RUNTIME_EXCEPTION_FAIL:Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "http error for RuntimeException!!"

    invoke-direct {v2, v3, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p1, v1, v2}, Lcom/gpc/sdk/service/network/http/HTTPException;-><init>(Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;Ljava/lang/Throwable;)V

    iput-object p1, v0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->d:Lcom/gpc/sdk/service/network/http/HTTPException;

    .line 332
    iput-boolean v6, v0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->e:Z

    return-object v0
.end method

.method private requestInnerWithRetry(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPConnection;)Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->requestInner(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPConnection;)Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->b()V

    .line 3
    iget-boolean v1, v0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->f:Z

    if-eqz v1, :cond_4

    .line 4
    iget-boolean v1, v0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->g:Z

    if-eqz v1, :cond_4

    .line 6
    iget-object v1, v0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->d:Lcom/gpc/sdk/service/network/http/HTTPException;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->e:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v4, v0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->c:Lcom/gpc/sdk/service/network/http/response/HTTPResponse;

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {v4}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v5, v4, :cond_1

    iget-object v4, v0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->c:Lcom/gpc/sdk/service/network/http/response/HTTPResponse;

    invoke-virtual {v4}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getCode()I

    move-result v4

    const/16 v5, 0x130

    if-ne v4, v5, :cond_2

    :cond_1
    const/4 v2, 0x0

    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    .line 17
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "request \u57fa\u7840\u91cd\u8bd5\u673a\u5236 \u5c1d\u8bd5\u91cd\u8bd5:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTPClientImpl"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->requestInner(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPConnection;)Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->b()V

    return-object p1

    :cond_4
    return-object v0
.end method

.method private sortInterceptorsByPriority()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->interceptors:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->interceptors:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    new-instance v1, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$b;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$b;-><init>(Lcom/gpc/sdk/service/network/http/HTTPClientImpl;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 16
    iget-object v1, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->interceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 17
    iget-object v1, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->interceptors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 19
    const-string v1, "HTTPClientImpl"

    const-string v2, "sortInterceptorsByPriority Exception happend!!!"

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private streamToBytes(Ljava/io/InputStream;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    const-string v1, "HTTPClientImpl"

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v2, 0x1000

    .line 1
    new-array v2, v2, [B

    .line 2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7
    :goto_0
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    const/4 v5, 0x0

    .line 8
    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception v2

    .line 15
    invoke-static {v1, v0, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 16
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 18
    invoke-static {v1, v0, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    :goto_1
    throw p1
.end method


# virtual methods
.method public addHTTPInterceptor(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->interceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public removeHTTPInterceptor(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public request(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->request(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPConnection;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public request(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPConnection;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .locals 2

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/gpc/sdk/service/network/http/HTTPConnectionImpl;

    invoke-direct {p2}, Lcom/gpc/sdk/service/network/http/HTTPConnectionImpl;-><init>()V

    .line 5
    :cond_0
    new-instance v0, Lcom/gpc/sdk/service/network/http/HTTPTask;

    new-instance v1, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$a;-><init>(Lcom/gpc/sdk/service/network/http/HTTPClientImpl;Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPConnection;)V

    invoke-direct {v0, v1}, Lcom/gpc/sdk/service/network/http/HTTPTask;-><init>(Lcom/gpc/sdk/service/network/http/HTTPTask$TaksRunnable;)V

    .line 22
    new-instance p2, Lcom/gpc/sdk/service/network/http/HTTPCallImpl;

    invoke-direct {p2, v0}, Lcom/gpc/sdk/service/network/http/HTTPCallImpl;-><init>(Lcom/gpc/sdk/service/network/http/HTTPTask;)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "request:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", call hashCode:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HTTPClientImpl"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public setConnectionTimeout(I)V
    .locals 1

    const/16 v0, 0xbb8

    if-le p1, v0, :cond_0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->connectionTimeout:I

    return-void

    .line 3
    :cond_0
    iput v0, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->connectionTimeout:I

    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 1
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
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->headers:Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;->setHeaders(Ljava/util/Map;)V

    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1

    const/16 v0, 0xbb8

    if-le p1, v0, :cond_0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->soTimeout:I

    return-void

    .line 3
    :cond_0
    iput v0, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->soTimeout:I

    return-void
.end method
