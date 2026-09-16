.class public Lcom/gpc/sdk/service/interceptors/GPCStringContentCacheInterceptor;
.super Lcom/gpc/sdk/core/a;
.source "SourceFile"


# static fields
.field public static final HEADERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STRING_CONTENT_CACHE_ENABLE:Ljava/lang/String; = "STRING_CONTENT_CACHE_ENABLE"

.field private static final TAG:Ljava/lang/String; = "StringContentCacheInterceptor"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gpc/sdk/service/interceptors/GPCStringContentCacheInterceptor;->HEADERS:Ljava/util/Map;

    .line 2
    const-string v1, "STRING_CONTENT_CACHE_ENABLE"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/core/a;-><init>()V

    return-void
.end method

.method private isEnable(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;->getHeaders()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    const-string v0, "STRING_CONTENT_CACHE_ENABLE"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getEtagKey()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ETag"

    return-object v0
.end method

.method public interceptException(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPException;)V
    .locals 0

    return-void
.end method

.method public interceptRequest(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/sdk/service/interceptors/GPCStringContentCacheInterceptor;->isEnable(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/gpc/sdk/core/a;->cacher:Lcom/gpc/sdk/service/helper/HttpReponseCacher;

    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getPathWithParams()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/service/helper/HttpReponseCacher;->readETagFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get eTag from cache elapsed time (ms):"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringContentCacheInterceptor"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    move-result-object v0

    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "STRING_CONTENT_CACHE_ENABLE"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public interceptResponse(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/sdk/service/interceptors/GPCStringContentCacheInterceptor;->isEnable(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getPathWithParams()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p3}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getCode()I

    move-result p2

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_2

    const/16 v0, 0x130

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0, p3, p1}, Lcom/gpc/sdk/core/a;->interceptHttpNotModified(Lcom/gpc/sdk/service/network/http/response/HTTPResponse;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_2
    invoke-virtual {p0, p3, p1}, Lcom/gpc/sdk/core/a;->interceptHttpOk(Lcom/gpc/sdk/service/network/http/response/HTTPResponse;Ljava/lang/String;)V

    :cond_3
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
