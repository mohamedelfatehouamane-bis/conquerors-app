.class public abstract Lcom/gpc/ops/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/network/http/HTTPInterceptor;


# static fields
.field private static final TAG:Ljava/lang/String; = "Abstract304CacheInterceptor"


# instance fields
.field protected cacher:Lcom/gpc/operations/migrate/service/helper/HttpReponseCacher;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->pathModule()Lcom/gpc/operations/migrate/utils/modules/PathModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/PathModule;->getHttpResponsCachePath()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cachePath:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Abstract304CacheInterceptor"

    invoke-static {v2, v1}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcom/gpc/operations/migrate/service/helper/HttpReponseCacher;

    invoke-direct {v1, v0}, Lcom/gpc/operations/migrate/service/helper/HttpReponseCacher;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/gpc/ops/a;->cacher:Lcom/gpc/operations/migrate/service/helper/HttpReponseCacher;

    return-void
.end method


# virtual methods
.method public abstract getEtagKey()Ljava/lang/String;
.end method

.method public interceptHttpNotModified(Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    new-instance v2, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseStringBody;

    invoke-direct {v2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseStringBody;-><init>()V

    .line 3
    iget-object v3, p0, Lcom/gpc/ops/a;->cacher:Lcom/gpc/operations/migrate/service/helper/HttpReponseCacher;

    invoke-virtual {v3, p2}, Lcom/gpc/operations/migrate/service/helper/HttpReponseCacher;->readResponseFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    iget-object v4, p0, Lcom/gpc/ops/a;->cacher:Lcom/gpc/operations/migrate/service/helper/HttpReponseCacher;

    invoke-virtual {v4, p2}, Lcom/gpc/operations/migrate/service/helper/HttpReponseCacher;->readResponseTypeFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {v2, v3}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseStringBody;->setBodyString(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;->setContentType(Ljava/lang/String;)V

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Get data type from cache:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v4, "Abstract304CacheInterceptor"

    invoke-static {v4, p2}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v5, "Get data from cache:"

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, v2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->setBody(Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;)V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "recovery data from cache elapsed time (ms):"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public interceptHttpOk(Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseLowerCaseHeaders;

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getHeaders()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseHeaders;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseLowerCaseHeaders;-><init>(Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseHeaders;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/ops/a;->getEtagKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseLowerCaseHeaders;->getHeaderWithLowerCaseKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;->getString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;->getContentType()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Abstract304CacheInterceptor"

    if-eqz p2, :cond_5

    .line 6
    const-string v3, ""

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 20
    iget-object v5, p0, Lcom/gpc/ops/a;->cacher:Lcom/gpc/operations/migrate/service/helper/HttpReponseCacher;

    invoke-virtual {v5, p2, v0, v1, p1}, Lcom/gpc/operations/migrate/service/helper/HttpReponseCacher;->cacheHttpResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "cache response elapsed time (ms):"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 22
    :cond_3
    :goto_0
    const-string p1, "response data is null, ignore cache."

    invoke-static {v2, p1}, Lcom/gpc/operations/migrate/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 23
    :cond_4
    :goto_1
    const-string p1, "response didn`t contain eTag, ignore cache."

    invoke-static {v2, p1}, Lcom/gpc/operations/migrate/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 24
    :cond_5
    :goto_2
    const-string p1, "URL is null, ignore cache."

    invoke-static {v2, p1}, Lcom/gpc/operations/migrate/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public priority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
