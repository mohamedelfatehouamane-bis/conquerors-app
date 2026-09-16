.class public abstract Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$APIGatewayCallbackT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "APIGatewayCallbackT"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;

.field private prefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private serviceURLBuilder:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;",
            ">;",
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            "Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$APIGatewayCallbackT;->listener:Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;

    .line 3
    iput-object p3, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$APIGatewayCallbackT;->serviceURLBuilder:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    .line 4
    iput-object p4, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$APIGatewayCallbackT;->context:Landroid/content/Context;

    .line 5
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$APIGatewayCallbackT;->prefixes:Ljava/util/List;

    return-void
.end method

.method private canSelectThisPrefixe(Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v1, v0, :cond_0

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getCode()I

    move-result p1

    const/16 v0, 0x130

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isNeedRetry(Lcom/gpc/operations/migrate/service/network/http/HTTPException;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/HTTPException;->isNetworkAvailable()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "isNeedRetry isNetworkAvailable false"

    const-string v3, "MultiLinkSyncImpl"

    if-nez v0, :cond_0

    .line 3
    invoke-static {v3, v2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 6
    :cond_0
    sget-object v0, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;->REQUEST_THROW_RUNTIME_EXCEPTION_FAIL:Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/HTTPException;->getError()Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    move-result-object p1

    if-ne v0, p1, :cond_1

    .line 8
    invoke-static {v3, v2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 12
    :cond_1
    const-string p1, "httpException, retry."

    invoke-static {v3, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private isNeedRetry(Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)Z
    .locals 3

    .line 13
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    const-string v2, "MultiLinkSyncImpl"

    if-eq v1, v0, :cond_1

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getCode()I

    move-result p1

    const/16 v0, 0x130

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    const-string p1, "HTTP Response code is not Available."

    invoke-static {v2, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 20
    :cond_1
    :goto_0
    const-string p1, "HTTP Response success."

    invoke-static {v2, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onConnectionError(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$APIGatewayCallbackT;->prefixes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 2
    invoke-direct {p0, p2}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$APIGatewayCallbackT;->isNeedRetry(Lcom/gpc/operations/migrate/service/network/http/HTTPException;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p2, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$APIGatewayCallbackT;->prefixes:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    iget-object p2, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$APIGatewayCallbackT;->prefixes:Ljava/util/List;

    invoke-virtual {p0, p2, p1}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$APIGatewayCallbackT;->repeat(Ljava/util/List;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$APIGatewayCallbackT;->listener:Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0, p1, p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPCallback;->onConnectionError(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V

    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$APIGatewayCallbackT;->listener:Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;

    if-eqz v0, :cond_2

    .line 12
    invoke-interface {v0, p1, p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPCallback;->onConnectionError(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V

    :cond_2
    return-void
.end method

.method public onResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$APIGatewayCallbackT;->prefixes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p2}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$APIGatewayCallbackT;->isNeedRetry(Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p2, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$APIGatewayCallbackT;->prefixes:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5
    iget-object p2, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$APIGatewayCallbackT;->prefixes:Ljava/util/List;

    invoke-virtual {p0, p2, p1}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$APIGatewayCallbackT;->repeat(Ljava/util/List;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)V

    return-void

    .line 11
    :cond_0
    invoke-direct {p0, p2}, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$APIGatewayCallbackT;->canSelectThisPrefixe(Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$APIGatewayCallbackT;->serviceURLBuilder:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$APIGatewayCallbackT;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$APIGatewayCallbackT;->prefixes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;

    invoke-interface {v0, v1, v2}, Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;->setPickPrefix(Landroid/content/Context;Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;)V

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/api/MultiLinkSyncImpl$APIGatewayCallbackT;->listener:Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;

    if-eqz v0, :cond_2

    .line 16
    invoke-interface {v0, p1, p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPCallback;->onResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V

    :cond_2
    return-void
.end method

.method public abstract repeat(Ljava/util/List;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;",
            ">;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;",
            ")V"
        }
    .end annotation
.end method
