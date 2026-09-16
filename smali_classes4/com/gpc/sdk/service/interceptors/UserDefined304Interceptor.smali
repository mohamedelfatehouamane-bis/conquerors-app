.class public Lcom/gpc/sdk/service/interceptors/UserDefined304Interceptor;
.super Lcom/gpc/sdk/core/a;
.source "SourceFile"


# static fields
.field private static final IF_NONE_MATCH:Ljava/lang/String; = "X-If-None-Match"

.field private static final TAG:Ljava/lang/String; = "UserDefined304Interceptor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/core/a;-><init>()V

    return-void
.end method


# virtual methods
.method public getEtagKey()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "X-ETag"

    return-object v0
.end method

.method public interceptException(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPException;)V
    .locals 0

    return-void
.end method

.method public interceptRequest(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    invoke-direct {v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;-><init>()V

    .line 4
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->setHeaders(Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;)V

    .line 7
    :cond_0
    const-string v1, "X-If-None-Match"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 13
    iget-object v4, p0, Lcom/gpc/sdk/core/a;->cacher:Lcom/gpc/sdk/service/helper/HttpReponseCacher;

    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/gpc/sdk/service/helper/HttpReponseCacher;->readETagFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get eTag from cache elapsed time (ms):"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserDefined304Interceptor"

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 16
    invoke-virtual {v0, v1, p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public interceptResponse(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p3}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getCode()I

    move-result p2

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance p2, Lcom/gpc/sdk/service/network/http/response/HTTPResponseLowerCaseHeaders;

    invoke-virtual {p3}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getHeaders()Lcom/gpc/sdk/service/network/http/response/HTTPResponseHeaders;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseLowerCaseHeaders;-><init>(Lcom/gpc/sdk/service/network/http/response/HTTPResponseHeaders;)V

    .line 12
    const-string v0, "X-Status"

    invoke-virtual {p2, v0}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseLowerCaseHeaders;->getHeaderWithLowerCaseKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {p0, p3, p1}, Lcom/gpc/sdk/core/a;->interceptHttpOk(Lcom/gpc/sdk/service/network/http/response/HTTPResponse;Ljava/lang/String;)V

    return-void

    .line 20
    :cond_2
    invoke-static {p2}, Lcom/gpc/util/safelang/Integer;->parseIntSafety(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x130

    if-ne p2, v0, :cond_4

    .line 27
    invoke-virtual {p0, p3, p1}, Lcom/gpc/sdk/core/a;->interceptHttpNotModified(Lcom/gpc/sdk/service/network/http/response/HTTPResponse;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public bridge synthetic priority()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/gpc/sdk/core/a;->priority()I

    move-result v0

    return v0
.end method
