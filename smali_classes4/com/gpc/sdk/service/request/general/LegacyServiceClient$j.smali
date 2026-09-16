.class public Lcom/gpc/sdk/service/request/general/LegacyServiceClient$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/service/request/general/LegacyServiceClient;->getRequestWithCache(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/sdk/service/network/http/HTTPRetryStrategy;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralCacheRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralCacheRequestListener;

.field public final synthetic b:Lcom/gpc/sdk/service/request/general/LegacyServiceClient;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/request/general/LegacyServiceClient;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralCacheRequestListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$j;->b:Lcom/gpc/sdk/service/request/general/LegacyServiceClient;

    iput-object p2, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$j;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralCacheRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionError(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPException;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$j;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralCacheRequestListener;

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$j;->b:Lcom/gpc/sdk/service/request/general/LegacyServiceClient;

    iget-object p2, p2, Lcom/gpc/sdk/service/request/general/LegacyServiceClient;->cacher:Lcom/gpc/sdk/service/helper/HttpReponseCacher;

    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getPathWithParams()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/gpc/sdk/service/helper/HttpReponseCacher;->readResponseFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConnectionError cache path:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getPathWithParams()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LegacyServiceClient"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onConnectionError use cache:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$j;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralCacheRequestListener;

    const-string v0, "4000"

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2, p2}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralCacheRequestListener;->onGeneralRequestFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V
    .locals 8

    const-string v0, "LegacyServiceClient"

    const-string v1, "onResponse use cache:"

    const-string v2, "onResponse cache path:"

    const-string v3, "onResponse url:"

    const-string v4, "onResponse http code:"

    .line 1
    :try_start_0
    iget-object v5, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$j;->b:Lcom/gpc/sdk/service/request/general/LegacyServiceClient;

    iget-object v5, v5, Lcom/gpc/sdk/service/request/general/LegacyServiceClient;->cacher:Lcom/gpc/sdk/service/helper/HttpReponseCacher;

    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getPathWithParams()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/gpc/sdk/service/helper/HttpReponseCacher;->readResponseFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getCode()I

    move-result v6

    .line 3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getPathWithParams()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xc8

    if-eq v6, p1, :cond_1

    const/16 p1, 0x130

    if-ne v6, p1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$j;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralCacheRequestListener;

    if-eqz p1, :cond_3

    .line 17
    const-string v0, "6000"

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p1, v0, p2, v1, v5}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralCacheRequestListener;->onGeneralRequestFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 18
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$j;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralCacheRequestListener;

    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;

    move-result-object p1

    if-nez p1, :cond_2

    .line 20
    iget-object p1, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$j;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralCacheRequestListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, ""

    invoke-interface {p1, v0, p2, v1, v5}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralCacheRequestListener;->onGeneralRequestFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$j;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralCacheRequestListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2, v5}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralCacheRequestListener;->onGeneralRequestFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method
