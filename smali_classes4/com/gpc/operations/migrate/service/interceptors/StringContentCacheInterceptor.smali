.class public Lcom/gpc/operations/migrate/service/interceptors/StringContentCacheInterceptor;
.super Lcom/gpc/ops/a;
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

    sput-object v0, Lcom/gpc/operations/migrate/service/interceptors/StringContentCacheInterceptor;->HEADERS:Ljava/util/Map;

    .line 2
    const-string v1, "STRING_CONTENT_CACHE_ENABLE"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/ops/a;-><init>()V

    return-void
.end method

.method private isEnable(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeaders;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeaders;->getHeaders()Ljava/util/Map;

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

.method public interceptException(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V
    .locals 0

    return-void
.end method

.method public interceptRequest(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/operations/migrate/service/interceptors/StringContentCacheInterceptor;->isEnable(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/gpc/ops/a;->cacher:Lcom/gpc/operations/migrate/service/helper/HttpReponseCacher;

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/operations/migrate/service/helper/HttpReponseCacher;->readETagFromCache(Ljava/lang/String;)Ljava/lang/String;

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

    invoke-static {v1, v0}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeaders;

    move-result-object v0

    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1, v2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeaders;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeaders;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "STRING_CONTENT_CACHE_ENABLE"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public interceptResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/operations/migrate/service/interceptors/StringContentCacheInterceptor;->isEnable(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x130

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/gpc/ops/a;->interceptHttpNotModified(Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_2
    invoke-virtual {p0, p2, p1}, Lcom/gpc/ops/a;->interceptHttpOk(Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic priority()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/gpc/ops/a;->priority()I

    move-result v0

    return v0
.end method
